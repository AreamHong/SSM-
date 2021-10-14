package com.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.personalMapper;
import com.dao.shippingMapper;
import com.pojo.shippingPojo;
@Controller
@RequestMapping("/shipping")
public class shipping {
	@Resource
	shippingMapper shi;
	//�����û���ַ
	@RequestMapping(value="/inshow",method=RequestMethod.GET)
	public String insert(shippingPojo pojo){
			shi.in(pojo);
		return "redirect:/shipping/listshi?id="+pojo.getId();
	}
	//�����û���ַҳ��
	@RequestMapping(value="/listshi",method=RequestMethod.GET)
	public String shilist(String id,Map map){
		map.put("pojo", shi.listper(id));
		List<shippingPojo> list = new ArrayList<shippingPojo>();
		for (shippingPojo pojo : shi.list(id)) {
			shippingPojo ship = new shippingPojo();
			ship.setId(pojo.getId());
			if(pojo.getAddressdef().equals("1")){
				ship.setAddressdef("��ǰĬ�ϵ�ַ");
			}else{
				ship.setAddressdef("��ΪĬ�ϵ�ַ");				
			}
			ship.setAddress(pojo.getAddress());
			ship.setArea(pojo.getArea());
			ship.setCity(pojo.getCity());
			ship.setContact(pojo.getContact());
			ship.setPhone(pojo.getPhone());
			ship.setProvince(pojo.getProvince());
			ship.setPid(pojo.getPid());
			list.add(ship);
		}
		map.put("list", list);
		return "shapping";
	}
	//�޸��û��ջ���ַ
	@RequestMapping(value="/up",method=RequestMethod.GET)
	public String up(shippingPojo pojo,String pid){
			shi.up(pojo);
		return "redirect:/shipping/listshi?id="+pid;
	}
	//ɾ���û��ջ���ַ
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String dele(String id , String pid){
			shi.dele(id);
		return "redirect:/shipping/listshi?id="+pid;
	}
	//�޸��û�Ĭ�ϵ�ַ
	@RequestMapping(value="/updef",method=RequestMethod.GET)
	@ResponseBody
	public String updef(int id,String def,String pid){
		//ȡ���û�ԭ����Ĭ�ϵ�ַ
		shi.updef(pid);
		//����һ���µ�Ĭ�ϵ�ַ
		shi.updefone(id);
		//�ж��Ƿ���ĳɹ�

		return "1";
	}
}