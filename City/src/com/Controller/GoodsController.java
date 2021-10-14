package com.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.dao.GoodsMapper;
import com.pojo.Goods1Pojo;
import com.pojo.Goods2Pojo;
import com.pojo.Goods3Pojo;

@Controller
@RequestMapping("/Goods")
public class GoodsController {
	
	@Autowired
	GoodsMapper dao;
	
	@RequestMapping("/getGoods1")
	public Object getGoods1(Map map){
		List<Goods1Pojo> goods1 = dao.getGoods1();
		map.put("goods1", goods1);
		return "index";
	}
	@RequestMapping(value="/getGoods23")
	@ResponseBody
	public Object getGoods23(int id){
		Map map = new HashMap<>();
		List<Goods2Pojo> goods2 = dao.getGoods2(id);
		List<List<Goods3Pojo>> goods3 = new ArrayList<>();
		for (Goods2Pojo goods2Pojo : goods2) {
			List<Goods3Pojo> list = dao.getGoods3(goods2Pojo.getId());
			goods3.add(list);
		}
		map.put("goods2", goods2);
		map.put("goods3", goods3);
		return map;	
	}
}
