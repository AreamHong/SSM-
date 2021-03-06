package com.Controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.ItemMapper;
import com.pojo.CityStore;
import com.pojo.Goods1Pojo;
import com.pojo.Goods2Pojo;
import com.pojo.ItemPojo;
import com.pojo.shopsPojo;

@Controller
@RequestMapping("/Item")
public class ItemController {

	@Autowired
	ItemMapper dao;
	@RequestMapping("/getItemList")
	public Object getItemList(String name,String shopid,Map map){
		name = name==null?"":name;
		List<ItemPojo> itemList = dao.getItemList("%"+name+"%", shopid, 1);
		int itemCount = dao.getItemCount("%"+name+"%", shopid);
		int pageCount = itemCount%10==0?itemCount/10:itemCount/10+1;
		List<shopsPojo> store = dao.getStore();
		map.put("page",pageCount);
		map.put("nowPage",1);
		map.put("itemList", itemList);
		map.put("store",store);
		map.put("name",name);
		return "product_list";
	}
	@RequestMapping("/refreshList")
	public Object refreshList(String name,String shopid,int index,Map map){
		name = name==null?"":name;
		shopid = shopid.equals("ȫ??????")?null:shopid;
		List<ItemPojo> itemList = dao.getItemList("%"+name+"%",shopid,index);
		int itemCount = dao.getItemCount("%"+name+"%", shopid);
		int pageCount = itemCount%10==0?itemCount/10:itemCount/10+1;
		map.put("nowPage", index);
		map.put("page",pageCount);
		map.put("itemList", itemList);
		map.put("name",name);
		return "ItemList";
	}
	@RequestMapping("/del")
	public Object cancelCollect(int id,String name,String shopid,int index,RedirectAttributes redirectAttributes){
		dao.del(id);
		shopid = shopid.equals("ȫ??????")?null:shopid;
		redirectAttributes.addAttribute("name", name);
		redirectAttributes.addAttribute("shopid", shopid);
		redirectAttributes.addAttribute("index", index);
		return "redirect:/Item/refreshList";
	}
	@RequestMapping("/delAll")
	public Object delShop(String str,String name,String shopid,int index,RedirectAttributes redirectAttributes){
		List<Integer> list = new ArrayList<Integer>();
		for (String i :	str.split(",")) {
			if(i!=null&&i!=""){
				list.add(new Integer(i));
			}
		}
		dao.delAll(list);
		shopid = shopid.equals("ȫ??????")?null:shopid;
		redirectAttributes.addAttribute("name", name);
		redirectAttributes.addAttribute("shopid", shopid);
		redirectAttributes.addAttribute("index", index);
		return "redirect:/Item/refreshList";
	}
	@RequestMapping("/isDisplay")
	public Object isDisplay(int id,int isDisplay,String name,String shopid,int index,RedirectAttributes redirectAttributes){
		dao.isDisplay(id,isDisplay);
		shopid = shopid.equals("ȫ??????")?null:shopid;
		redirectAttributes.addAttribute("name", name);
		redirectAttributes.addAttribute("shopid", shopid);
		redirectAttributes.addAttribute("index", index);
		return "redirect:/Item/refreshList";
	}
	@RequestMapping("/getItem")
	public Object getItem(int id,int index,Map map){
		ItemPojo item = dao.getItem(id);
		Goods2Pojo goods2 = dao.getGoods2(item.getGoods3().getPid());
		Goods1Pojo goods1 = dao.getGoods1(goods2.getPid());
		map.put("item", item);
		map.put("goods1", goods1);
		map.put("goods2", goods2);
		map.put("nowPage", index);
		return "ItemDetail";
	}
}
