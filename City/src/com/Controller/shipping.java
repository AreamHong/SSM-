package com.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.personalMapper;
import com.dao.shippingMapper;
import com.pojo.shippingPojo;
@Controller
@RequestMapping("/shipping")
public class shipping {
	@Resource
	shippingMapper shi;
	//添加用户地址
	@RequestMapping(value="/inshow",method=RequestMethod.GET)
	public String insert(shippingPojo pojo){
			shi.in(pojo);
		return "redirect:/shipping/listshi?id="+pojo.getId();
	}
	//加载用户地址页面
	@RequestMapping(value="/listshi",method=RequestMethod.GET)
	public String shilist(String id,Map map){
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
		map.put("list", list);
		return "shapping";
	}
	//修改用户收货地址
	@RequestMapping(value="/up",method=RequestMethod.GET)
	public String up(shippingPojo pojo,String pid){
			shi.up(pojo);
		return "redirect:/shipping/listshi?id="+pid;
	}
	//删除用户收货地址
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String dele(String id , String pid){
			shi.dele(id);
		return "redirect:/shipping/listshi?id="+pid;
	}
	//修改用户默认地址
	@RequestMapping(value="/updef",method=RequestMethod.GET)
	@ResponseBody
	public String updef(int id,String def,String pid){
		//取消用户原来的默认地址
		shi.updef(pid);
		//设置一个新的默认地址
		shi.updefone(id);
		//判断是否更改成功

		return "1";
	}
}
