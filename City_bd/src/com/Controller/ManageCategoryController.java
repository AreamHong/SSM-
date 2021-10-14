package com.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.GoodsMapper;
import com.pojo.Goods1Pojo;
import com.pojo.Goods2Pojo;
import com.pojo.Goods3Pojo;

@Controller
@RequestMapping("/ManageCategory")
public class ManageCategoryController {
	@Autowired
	GoodsMapper dao;
	
	@RequestMapping("/getGoods")
	public Object getGoods(Map map){
		List<Goods1Pojo> goods1 = dao.getGoods1();
		List<List<Goods2Pojo>> goods2 = new ArrayList<>();
		List<List<List<Goods3Pojo>>> goods3 = new ArrayList<>();
		for (Goods1Pojo goods1Pojo : goods1) {
			List<Goods2Pojo> list2 = dao.getGoods2(goods1Pojo.getId());
			goods2.add(list2);
			List<List<Goods3Pojo>> goods23 = new ArrayList<>();
				for (Goods2Pojo goods2Pojo : list2) {
					List<Goods3Pojo> list3 = dao.getGoods3(goods2Pojo.getId());
					goods23.add(list3);
				}
			goods3.add(goods23);		
		}
		map.put("goods1", goods1);
		map.put("goods2", goods2);
		map.put("goods3", goods3);
		return "product_category";
	}
	@RequestMapping("/isDisplay")
	public Object isDisplay(int id,int goodsId,int isDisplay){
		dao.isDisplay(id,goodsId,isDisplay);
		return "redirect:/ManageCategory/getGoods";
	}
	@RequestMapping("/Del")
	public Object del(int id,int goodsId){
		dao.del(id,goodsId);
		return "redirect:/ManageCategory/getGoods";
	}
	@RequestMapping(value="/addGoods1",method=RequestMethod.POST)
	public Object addGoods1(Goods1Pojo goods1){
		dao.addGoods1(goods1);
		return "redirect:/ManageCategory/getGoods";
	}
	@RequestMapping(value="/addGoods2",method=RequestMethod.POST)
	public Object addGoods2(Goods2Pojo goods2){
		dao.addGoods2(goods2);
		return "redirect:/ManageCategory/getGoods";
	}
	@RequestMapping(value="/addGoods3",method=RequestMethod.POST)
	public Object addGoods3(Goods3Pojo goods3){
		String str1 = "";
		for(int i =1;i<=goods3.getCategoryCount();i++){
			str1+=",category"+i;
		}
		String str2= "";
		if(goods3.getCategory1()!=null){
			str2+=",'"+goods3.getCategory1()+"'";
		}
		if(goods3.getCategory2()!=null){
			str2+=",'"+goods3.getCategory2()+"'";
		}
		if(goods3.getCategory3()!=null){
			str2+=",'"+goods3.getCategory3()+"'";
		}
		if(goods3.getCategory4()!=null){
			str2+=",'"+goods3.getCategory4()+"'";
		}
		if(goods3.getCategory5()!=null){
			str2+=",'"+goods3.getCategory5()+"'";
		}
		
		HashMap map = new HashMap<>();
		map.put("goods3",goods3);
		map.put("str1", str1);
		map.put("str2", str2);
		dao.addGoods3(map);
		return "redirect:/ManageCategory/getGoods";
	}
	
	@RequestMapping("getCategoryCount")
	@ResponseBody
	public int getCategoryCount(String count){
		 int categoryCount = new Integer(count);
		 return categoryCount;
	}
}
