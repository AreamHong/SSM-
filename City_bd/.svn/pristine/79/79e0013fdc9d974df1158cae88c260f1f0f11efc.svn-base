package com.Controller;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.dao.ordersMapper;
import com.pojo.CityOrder;
import com.util.pageUtil;
// 后台订单---陈旭超
@Controller
@RequestMapping("/orders")
public class ordersController {
	
	
	@Resource
	ordersMapper dao;
	// 分页查询
	@RequestMapping("/list")
	public String selList(CityOrder o,int storeid ,int index,Map map){
		// 分页功能类
		pageUtil<CityOrder> p = new pageUtil<CityOrder>();
		int size = 10;// 每页数据量
		
		List<CityOrder> list = dao.selList(storeid,o.getOrderNumber(),o.getTypeid(),(index-1)*size,size,storeid);
		// 获取总页数
		int count = dao.count(o.getStoreid(),o.getOrderNumber(),o.getTypeid());
		// 计算总页数
		int pageCount = count % size == 0 ? count / size :count / size + 1;
		
		for (CityOrder c : list) {
			System.out.println(c.getAddress());
		}
		p.setIndex(index);
		p.setPagecount(pageCount);
		p.setList(list);
		// p是分页对象
		map.put("p", p);
		// 订单所有类别
		map.put("typelist", dao.seltype());
		// 订单id
		map.put("tid", o.getTypeid());
		// 订单号
		map.put("num", o.getOrderNumber());
		// 当前页数有几条数据量
		map.put("count", list.size());
		return "order_list";
	}
	// 单个删除
	@RequestMapping("/del")
	@ResponseBody
	public Object del(int id){
		int result = dao.del(id);
		return result;
	}
	// 多个删除
	@RequestMapping("/continuous")
	@ResponseBody
	public Object continuous(String str){
		List<Integer> list = new ArrayList<Integer>();
		
		for (String i : str.split(",")) {
			if(i!=null && i!=""){
				list.add(new Integer(i));
			}
		}
		int result = dao.delcontinuous(list);
		return result;
	}
	@RequestMapping("/selorderId")
	public String selorderId(int id,Map map){
		CityOrder o = dao.selorderId(id);
		
		// 把省市区详细地址查询出来拼接成一个字符串
		/*String a1 = dao.selreginId(o.getShipping().getProvince());
		String a2 = dao.selreginId(o.getShipping().getCity());
		String a3 = dao.selreginId(o.getShipping().getArea());
		// str功能字符串是用户地址
		o.setStr(a1+a2+a3+o.getShipping().getAddress());*/
		
		map.put("o", o);
		
		return "order_detail";
	}
	
	@RequestMapping("/upd")
	@ResponseBody
	public Object upd(CityOrder o){
		int result = dao.upd(o);
		return result;
	}
	
	@RequestMapping("/upds")
	@ResponseBody
	public Object upds(CityOrder o){
		Date date = new Date();
		// 获取当前系统年月日
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		String dateNowStr = sdf.format(date);
		o.setData(dateNowStr);
		int result = 0;
		for (int i = 1; i <= 71; i++) {
			int note = (int)(Math.random()*(999999999-100000000+1)+100000000);
			String no = String.valueOf(note);
			o.setOrderNumber(no);
			
			
			double a2=Math.random()*1000;
		    DecimalFormat df = new DecimalFormat("0.00");
		    String str=df.format(a2);
			o.setTotalprice(Double.parseDouble(str));
			
			
			int note3 = (int)(Math.random()*(9-1)+1);
			o.setQuantity(note3);
			System.out.println(o.getTotalprice());
			o.setId(i);
			System.out.println(o.getQuantity());
			o.setAddress("河北省唐山市路北区北大青鸟"+i);
			o.setConsignee("姜云飞"+i);
			if(i%2 == 0){
				o.setPay("在线支付");
				o.setDistribution("申通快递");
			}else{
				o.setPay("货到付款");
				o.setDistribution("韵达快递");
			}
			o.setPhone("13836500331");
			o.setMessage("快速发货");
			int a = dao.upds(o);
			if(a != 0){
				result++;
			}
		}
		return result;
	}
	
}
