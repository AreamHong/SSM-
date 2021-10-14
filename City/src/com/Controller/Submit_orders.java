package com.Controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ordersMapper;
import com.dao.shippingMapper;
import com.pojo.ordersPojo;
import com.pojo.shippingPojo;
@Controller
@RequestMapping("/order")
public class Submit_orders {
	@Resource
	shippingMapper shi;
	@Resource
	ordersMapper or;
	//添加用户地址
	@RequestMapping(value="/inshow",method=RequestMethod.GET)
	public String insert(shippingPojo pojo){
			shi.in(pojo);
		return "redirect:/order/listshi?id="+pojo.getId();
	}
	//加载用户地址页面
	@RequestMapping(value="/listshi",method=RequestMethod.GET)
	public String shilist(String id,Map map){
		//加载用户信息
		map.put("pojo", shi.listper(id));
		List<shippingPojo> list = new ArrayList<shippingPojo>();
		for (shippingPojo pojo : shi.list(id)) {
			shippingPojo ship = new shippingPojo();
			ship.setId(pojo.getId());
			if(pojo.getAddressdef().equals("1")){
				ship.setAddressdef("当前默认地址");
			}else{
				ship.setAddressdef("设为默认地址");				
			}
			ship.setAddress(pojo.getAddress());
			ship.setArea(pojo.getArea());
			ship.setCity(pojo.getCity());
			ship.setContact(pojo.getContact());
			ship.setPhone(pojo.getPhone());
			ship.setProvince(pojo.getProvince());
			ship.setPid(pojo.getPid());
			list.add(ship);
		}
		//循环输出用户所有收货地址
		map.put("list", list);
		//循环输出这个用户所有要购买的商品
		map.put("list1", or.list(id));	
		//输出总价格
		map.put("sum", or.sum(id));
		//加载用户默认地址
		map.put("address",or.address(id));
		return "tij_dingd";
	}
	//修改用户收货地址
	@RequestMapping(value="/up",method=RequestMethod.GET)
	public String up(shippingPojo pojo,String pid){
			shi.up(pojo);
		return "redirect:/order/listshi?id="+pid;
	}
	//生成订单录入到数据库
	@RequestMapping(value="/ins",method=RequestMethod.GET)
	public String Dingdan(int type,String id,String distribution, String pay, String liuyan,String address, String contact,String phone){	
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (ordersPojo pojo : or.list(id)) {				
			int note = (int)(Math.random()*(999999999-100000000+1)+100000000);
			String no = String.valueOf(note);
			or.ins(type,pojo.getTotalprice(),pojo.getQuantity(),no,df.format(new Date()),id, pojo.getMerchants(), pojo.getId(), address, contact, phone, pay, distribution, liuyan);
				
		}
		
		return "1";
	}
}
