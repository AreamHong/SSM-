package com.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.CollectMapper;
import com.pojo.CollectHelp;
import com.pojo.ShopDetailPojo;
import com.pojo.shop_details;
// ’≤ÿ
@Controller
@RequestMapping("/Collect")
public class CollectController {
	@Autowired
	CollectMapper dao;
	
	
	@RequestMapping("/getCollectCategory")
	public Object getCollectCategory(Map map,int userid){
		List<CollectHelp> categoryList= dao.getCollectCategory(userid);
		List<shop_details> collectShop = dao.getCollectShop(null,userid,1);
		int count = dao.getCollectShopCount(null, userid);
		int page = count%5==0?count/5:count/5+1;
		map.put("categoryList", categoryList);
		map.put("collectShop", collectShop);
		map.put("nowPage",1);
		map.put("page",page);
		return "wod_shouc";
	}
	@RequestMapping("/refreshCg")
	public Object refreshList(Map map,int userid){
		List<CollectHelp> categoryList= dao.getCollectCategory(userid);
		map.put("categoryList", categoryList);
		return "CollectCg";
	}
	@RequestMapping("/refreshList")
	public Object refreshList(String pid,Map map,int userid,int index){
		List<shop_details> collectShop = dao.getCollectShop(pid,userid,index);
		map.put("collectShop", collectShop);
		int count = dao.getCollectShopCount(pid, userid);
		int page = count%5==0?count/5:count/5+1;
		map.put("nowPage",index);
		map.put("page",page);
		return "CollectList";
	}
	
	@RequestMapping("/cancelCollectShop")
	public Object cancelCollect(String id,String pid,int userid,int index){
		dao.cancelCollectShop(id,userid);
		return "redirect:/Collect/refreshList?pid="+pid+"&userid="+userid+"&index="+index;
	}
	@RequestMapping("/delShop")
	public Object delShop(String str,int userid,String pid,int index){
	
		List<Integer> list = new ArrayList<Integer>();
		for (String i :	str.split(",")) {
			if(i!=null&&i!=""){
				list.add(new Integer(i));
			}
		}
		dao.delShop(list, userid);
		return "redirect:/Collect/refreshList?pid="+pid+"&userid="+userid+"&index="+index;
	}
	
}
