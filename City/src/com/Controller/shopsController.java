package com.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.shopsMapper;
import com.pojo.shopsPojo;
@Controller
@RequestMapping("/shops")
public class shopsController {
	
	@Resource
	shopsMapper shops;
	
	@RequestMapping("/in")
	public String in(shopsPojo pojo,Map map){
		Date date = new Date();
		// 获取当前系统年月日
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		String dateNowStr = sdf.format(date);
		pojo.setJointime(dateNowStr);
		int i = shops.in(pojo);
		map.put("i", i);
		return "index";
	}
	//判断账号是否存在
	@RequestMapping("/ifacconut")
	@ResponseBody
	public Object ifacc(String account){
			int i = shops.ifacc(account);
		return i;
	}
	@RequestMapping("/ifshopname")
	@ResponseBody
	public Object ifshopname(String shopname){
			int i = shops.ifshopname(shopname);
		return i;
	}
}
