package com.Controller;

import java.text.NumberFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.countMapper;
import com.pojo.CityOrder;
import com.pojo.Citypostertype;
import com.pojo.shopsPojo;
import com.util.countUtil;

//起始页统计信息:陈旭超
@Controller
@RequestMapping("/count")
public class countController {
	
	@Resource
	countMapper dao;
	
	@RequestMapping("/count")
	@ResponseBody
	public Object count(HttpServletRequest request){
		// 统计的功能类
		countUtil c = new countUtil();
		// 创建session
		HttpSession session = request.getSession();
		
		// 获取存在session里登录的对象
		Object sh = session.getAttribute("pojo");
		// 接受存取对象的名称
		String str = sh.getClass().getName();
		// 店铺id默认为0
		int shopsid = 0;
		if(str.equals("com.pojo.shopsPojo")){
			// 店铺登录
			// 创建店铺对象,把获取到的session强转
			shopsPojo shops = (shopsPojo)sh;
			// 给shopsid赋值
			shopsid = shops.getId();
			// 查询所有投放广告的位置
			List<Citypostertype> list = dao.selPosterType();
			String postertype = "";
			String nopostertype = "";
			String yespostertype = "";
			int i = 1;
			int j = 1;
			int q = 1;
			for (Citypostertype s : list) {
				if(i != 1){
					postertype += "，";
				}
				// 把所有可以放广告的位置拼接成一个字符串
				postertype += s.getType();
				i++;
				// 获取投放广告位置现在放着几个广告
				int countpostertype = dao.selcountposterType(s.getId(), 1);
				// >=4代表已满
				if(countpostertype >= 4){
					// 第一次进来不加逗号
					if(j != 1){
						nopostertype += "，";
					}
					// 投放广告位置投放的广告已满拼接一个字符串
					nopostertype += s.getType();
					j++;
				// <4代表未满
				}else if(countpostertype < 4){
					// 第一次进来不加逗号
					if(q != 1){
						yespostertype += "，";
					}
					// 投放广告位置投放的广告未满拼接一个字符串
					yespostertype += s.getType();
					q++;
				}
			}
			c.setPostertype(postertype);// 查询所有可以放广告的地方
			c.setYespostertype(yespostertype);// 赋值给广告投放未满的
			c.setNopostertype(nopostertype);// 赋值给广告投放已满的
		}else{
			// 管理员登录
			
			// 店铺统计信息
			c.setShopscount(dao.countShops());// 店铺数量
			// 广告统计
			c.setPostercount(dao.countPoster(0));// 广告数量
			c.setYesposter(dao.countPoster(1));// 正在播放的广告数量
			c.setNoposter(dao.countPoster(2));// 未播放的广告数量
			// 用户统计
			int usercount = dao.countPersonal(-1);// 用户数量
			c.setUsercount(usercount);
			int boy = dao.countPersonal(0);// 男性用户数量
			c.setBoy(compute(boy,usercount));// 男性占比
			int woman = dao.countPersonal(1);// 女性用户数量
			c.setWoman(compute(woman, usercount));// 女性占比
			int unknown = dao.countPersonal(2);// 未知性别数量
			c.setUnknown(compute(unknown, usercount));// 未知性别占比
		}
		// 订单统计信息
		c.setShipping(dao.countOrder(2, shopsid));// 代发货
		c.setUnconfirmed(dao.countOrder(1, shopsid));// 未确认
		c.setTraded(dao.countOrder(4, shopsid));// 已完成
		c.setCommodity(dao.countItem(shopsid));// 商品数量
		c.setCountprice(dao.countPrice(shopsid));// 统计金额
		
		
		
		
		return c;
	}
	// 计算百分比
	public double compute(int num1,int num2){
		// 创建一个数值格式化对象  
		NumberFormat numberFormat = NumberFormat.getInstance();  
		// 设置精确到小数点后2位  
		numberFormat.setMaximumFractionDigits(2);  
		String result = numberFormat.format((float) num1 / (float) num2 * 100);
		double r = Double.valueOf(result);
		return r;
	}
	
}
