package com.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.CityShoppingMapper;
import com.pojo.CityShopping;
import com.pojo.CityStore;

// 陈旭超:购物车
@Controller
@RequestMapping("/shopping")
public class CityShoppingController {
	
	@Resource
	CityShoppingMapper dao;
	
	// 进入购物车页面
	@RequestMapping("/list")
	public Object list(int id,Map map){
		List<CityShopping> list = dao.selList(id);

		map.put("list", list);
		map.put("count", dao.count(id));
		return "gouw_che";
	}
	
	@RequestMapping("/delall")
	@ResponseBody
	public Object delall(String d){
		List<Integer> list = new ArrayList<Integer>();
		
		for (String i : d.split(",")) {
			if(i!=null && i!=""){
				list.add(new Integer(i));
			}
		}
		int result = dao.delall(list);
		return result;
	}
	@RequestMapping("/del")
	@ResponseBody
	public Object del(int id){
		int result = dao.del(id);
		return result;
	}
	// 修改
	@RequestMapping("/upd")
	@ResponseBody
	public Object upd(CityShopping sh){
		System.out.println(sh.getId()+"\n"+sh.getQuantity()+"\n"+sh.getTotalprice());
		int result = dao.upd(sh);
		return result;
	}
	// 首页统计购物车数量
	@RequestMapping("/indexcount")
	@ResponseBody
	public Object indexcount(int id,Map map){
		int result = dao.indexcount(id);
		List<Object> list = new ArrayList<Object>();
		list.add(result);
		list.add(dao.selList(id));
		return list;
	}
	
	@RequestMapping("/updType")
	@ResponseBody
	public Object updType(String str,int type,int uid){
		int result = 0;
		// 如果字符串不为空则是结算按钮
		if(str != ""){
			List<Integer> list = new ArrayList<Integer>();
			
			for (String i : str.split(",")) {
				if(i!=null && i!=""){
					list.add(new Integer(i));
				}
			}
			result = dao.updType(list,type,0);
		// 如果为空,刚进入页面
		}else{
			result = dao.updType(null,type,uid);
		}
		return result;
	}
	
}
