package com.Controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.shopdetailsMapper;
import com.pojo.CityShopping;
import com.pojo.shop_details;

@Controller
@RequestMapping("/shop")
public class shopController {
	
	@Resource
	shopdetailsMapper shop;
	
	@RequestMapping("/shoptype")
	public String shoptypelist(String id,Map map){
		map.put("pojo", shop.shoptype(id));
		map.put("list1", shop.list(id));
		map.put("list2", shop.list2(id));
		map.put("images", shop.img(id));
		return "shop_xiangq";
	}
	@RequestMapping("/shopshow")
	@ResponseBody
	public Object shopshow(String images,String attribute2,int id){
			System.out.println(images+attribute2);
			
		return shop.show(images, attribute2,id);
	}
	@RequestMapping("/gouwu")
	@ResponseBody
	public Object gouwu(CityShopping city){
		int i =	shop.gouwu(city);
		return i;
	}
}
