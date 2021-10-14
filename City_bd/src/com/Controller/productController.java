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
	
	//��ѯһ������
	@RequestMapping("/t1")
	@ResponseBody
	public Object t1(){
		return pro.t1();
	}
	//��ѯ��������
	@RequestMapping("/t2")
	@ResponseBody
	public Object t2(int val){
		return pro.t2(val);
	}
	//��ѯ��������
	@RequestMapping("/t3")
	@ResponseBody
	public Object t3(int val){
		return pro.t3(val);
	}
	//�ϴ��ļ�
	@RequestMapping(value="/t4",method=RequestMethod.POST)
	public String appadd(@RequestParam("f1")MultipartFile fileob,productPojo pojo,HttpServletRequest request) throws IllegalStateException, IOException
	{
		System.out.println("����");
		//fuleob �ͻ����ļ�����
		
		String newname = UUID.randomUUID().toString();
		String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");
		//��������󴫵ݸ��µ��ļ�����
		File f1 = new File(path+"/"+newname+".jpg");
		if(!f1.exists()){
			//�༶Ŀ¼����
			f1.mkdirs();
			}
		
		pojo.setPicture(newname+".jpg");
	
		fileob.transferTo(f1);
		
		int i = pro.proin(pojo);
		System.out.println("����"+i);
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
	//�����Ʒ�����-�༭��Ʒ����
	@RequestMapping("/addshop")
	public String adddetails(shop_details shop,Map map){
			//����pid���Ҹ���Ʒ����
			 map.put("list1", pro.sel(shop.getPid()));
			 //�����Ʒ�����ݴ����list��
			map.put("list", shop);
		return "edit_addproduct";
	}
	//�ϴ��ļ�
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String appadd1(@RequestParam("f1")MultipartFile fileob,shop_details pojo,HttpServletRequest request) throws IllegalStateException, IOException
	{
		System.out.println("����");
		//fuleob �ͻ����ļ�����
		
		String newname = UUID.randomUUID().toString();
		String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");
		//��������󴫵ݸ��µ��ļ�����
		File f1 = new File(path+"/"+newname+".jpg");
		if(!f1.exists()){
			//�༶Ŀ¼����
			f1.mkdirs();
			}
		
		pojo.setImages(newname+".jpg");
	
		fileob.transferTo(f1);
		pro.add(pojo);
		return "redirect:/Item/getItemList";
	}
}
