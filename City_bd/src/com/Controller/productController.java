package com.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dao.ItemMapper;
import com.dao.productMapper;
import com.pojo.CityStore;
import com.pojo.ItemPojo;
import com.pojo.productPojo;
import com.pojo.shop_details;
import com.pojo.shopsPojo;
@RequestMapping("/product")
@Controller
public class productController {
	
	@Resource
	productMapper pro;
	@Resource
	ItemMapper dao;
	
	//查询一级分类
	@RequestMapping("/t1")
	@ResponseBody
	public Object t1(){
		return pro.t1();
	}
	//查询二级分类
	@RequestMapping("/t2")
	@ResponseBody
	public Object t2(int val){
		return pro.t2(val);
	}
	//查询三级分类
	@RequestMapping("/t3")
	@ResponseBody
	public Object t3(int val){
		return pro.t3(val);
	}
	//上传文件
	@RequestMapping(value="/t4",method=RequestMethod.POST)
	public String appadd(@RequestParam("f1")MultipartFile fileob,productPojo pojo,HttpServletRequest request) throws IllegalStateException, IOException
	{
		System.out.println("进入");
		//fuleob 客户端文件对象
		
		String newname = UUID.randomUUID().toString();
		String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");
		//把这个对象传递给新的文件对象
		File f1 = new File(path+"/"+newname+".jpg");
		if(!f1.exists()){
			//多级目录创建
			f1.mkdirs();
			}
		
		pojo.setPicture(newname+".jpg");
	
		fileob.transferTo(f1);
		
		int i = pro.proin(pojo);
		System.out.println("测试"+i);
		return "redirect:/Item/getItemList";
	}
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
	//添加商品详情表-编辑商品属性
	@RequestMapping("/addshop")
	public String adddetails(shop_details shop,Map map){
			//关联pid查找该商品属性
			 map.put("list1", pro.sel(shop.getPid()));
			 //这个商品的数据存放在list里
			map.put("list", shop);
		return "edit_addproduct";
	}
	//上传文件
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String appadd1(@RequestParam("f1")MultipartFile fileob,shop_details pojo,HttpServletRequest request) throws IllegalStateException, IOException
	{
		System.out.println("进入");
		//fuleob 客户端文件对象
		
		String newname = UUID.randomUUID().toString();
		String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");
		//把这个对象传递给新的文件对象
		File f1 = new File(path+"/"+newname+".jpg");
		if(!f1.exists()){
			//多级目录创建
			f1.mkdirs();
			}
		
		pojo.setImages(newname+".jpg");
	
		fileob.transferTo(f1);
		pro.add(pojo);
		return "redirect:/Item/getItemList";
	}
}
