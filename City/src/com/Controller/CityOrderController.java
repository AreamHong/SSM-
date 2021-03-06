package com.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.CityOrderMapper;
import com.pojo.CityOrder;
import com.util.pageUtil;


// 陈旭超  
@Controller
@RequestMapping("/cityorder")
public class CityOrderController {
	
	@Resource
	CityOrderMapper dao;
	
	@RequestMapping("/sel")
	public String sel(CityOrder o,int index,Map map){
		pageUtil<CityOrder> p = new pageUtil<CityOrder>();
		int size = 5;// 每页数据量
		
		List<CityOrder> list = dao.selList(o.getUserid(),o.getTypeid(),o.getOrderNumber(),(index-1)*size,size);
		// 获取总页数
		int count = dao.count(o.getUserid(),o.getTypeid(),o.getOrderNumber());
		// 计算总页数
		int pageCount = count % size == 0 ? count / size :count / size + 1;
		
		p.setIndex(index);
		p.setPagecount(pageCount);
		p.setList(list);
		map.put("typelist", dao.seltype());
		map.put("p", p);
		map.put("tid", o.getTypeid());
		map.put("num", o.getOrderNumber());
		System.out.println(p.getPagecount());
		return "wod_dingd";
	}
	
	@RequestMapping("/del")
	@ResponseBody
	public Object del(int id){
		int result = dao.del(id);
		return result;
	}
	
	@RequestMapping("/seltypecount")
	@ResponseBody
	public Object seltypecount(int uid){
		List<Integer> list = new ArrayList<Integer>();
		list.add(dao.seltypecount(1,uid));
		list.add(dao.seltypecount(2,uid));
		list.add(dao.seltypecount(3,uid));
		list.add(dao.seltypecount(5,uid));
		return list;
	}
	
}
