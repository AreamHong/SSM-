package com.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.GoodsMapper;
import com.dao.ItemMapper;
import com.pojo.CategoryHelp;
import com.pojo.CategoryListHelp;
import com.pojo.Goods3Pojo;
import com.pojo.ItemPojo;

@Controller
@RequestMapping("/Item")
public class ItemController {
	
	@Autowired
	ItemMapper ItemDao;
	@Autowired
	GoodsMapper GoodsDao;
	
	@RequestMapping("/getItem")
	public Object getItem(String name1,String name2,int id,int pid3,Map map){
		Goods3Pojo goods3 = GoodsDao.getSomeGoods3(pid3);
		List<ItemPojo> itemList = ItemDao.getItem(pid3,1);
		int itemCount = ItemDao.getItemCount(pid3);
		List<List<String>> catecoryList = new ArrayList<>();
		for (int i = 1; i <= goods3.getCategoryCount(); i++) {
			List<String> category = ItemDao.getCategory(i,pid3);
			catecoryList.add(category);
		}
		int count = ItemDao.getItemCount(pid3);
		int page = count%10==0?count/10:count/10+1;
		map.put("page", page);
		map.put("nowPage", 1);
		map.put("catecoryList", catecoryList);
		map.put("itemCount", itemCount);
		map.put("name1", name1);
		map.put("name2", name2);
		map.put("goods3", goods3);
		map.put("itemList", itemList);
		return "shangp_lieb";  
	}
	
	@RequestMapping("/refresh")
	public Object refresh(CategoryListHelp list,String goods3id,String order,int index,Map smap){
		 Map map = new HashMap<>();
		 map.put("pid", goods3id);
		 map.put("order", order);
		 
		 StringBuffer sql = new StringBuffer();
		 sql.append("");
		 if(list.getList()!=null){
			 sql.append(" and item.id in");
			 sql.append(" (select item0.id from");
			 for (int i = 0; i < list.getList().size(); i++) {
				 sql.append(" (select id from item where "
				 +list.getList().get(i).getCgkey()+" = '"
				 +list.getList().get(i).getCgvalue()+"') item"+i);
				 if(list.getList().size()>1 && i<(list.getList().size()-1)){
					 sql.append(",");
				 }
			 }
			 if(list.getList().size()>1){
				 sql.append(" where");
				 for (int j = 0; j < list.getList().size(); j++) {
					 if(j<list.getList().size()-1){
						 sql.append(" item"+j+".id = item"+(j+1)+".id");
					 }
					 if(list.getList().size()>2&&j<list.getList().size()-2){
						 sql.append(" and");
					 }
				 }
			 }
			 sql.append(" )");
		 }
		
		 map.put("sql", sql.toString());
		 map.put("index", index);
		 List<ItemPojo> itemList = ItemDao.getCategoryItems(map);
		 int count = ItemDao.getCategoryItemsCount(map);
		 int page = count%10==0?count/10:count/10+1;
		 smap.put("itemList", itemList);
		 smap.put("nowPage", index);
		 smap.put("page",page);
		return "itemList";
	}
}
