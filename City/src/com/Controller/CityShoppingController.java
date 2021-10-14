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

// ����:���ﳵ
@Controller
@RequestMapping("/shopping")
public class CityShoppingController {
	
	@Resource
	CityShoppingMapper dao;
	
	// ���빺�ﳵҳ��
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
	// �޸�
	@RequestMapping("/upd")
	@ResponseBody
	public Object upd(CityShopping sh){
		System.out.println(sh.getId()+"\n"+sh.getQuantity()+"\n"+sh.getTotalprice());
		int result = dao.upd(sh);
		return result;
	}
	// ��ҳͳ�ƹ��ﳵ����
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
		// ����ַ�����Ϊ�����ǽ��㰴ť
		if(str != ""){
			List<Integer> list = new ArrayList<Integer>();
			
			for (String i : str.split(",")) {
				if(i!=null && i!=""){
					list.add(new Integer(i));
				}
			}
			result = dao.updType(list,type,0);
		// ���Ϊ��,�ս���ҳ��
		}else{
			result = dao.updType(null,type,uid);
		}
		return result;
	}
	
}
