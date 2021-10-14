package com.Controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ordersMapper;
import com.dao.shippingMapper;
import com.pojo.ordersPojo;
import com.pojo.shippingPojo;
@Controller
@RequestMapping("/order")
public class Submit_orders {
	@Resource
	shippingMapper shi;
	@Resource
	ordersMapper or;
	//����û���ַ
	@RequestMapping(value="/inshow",method=RequestMethod.GET)
	public String insert(shippingPojo pojo){
			shi.in(pojo);
		return "redirect:/order/listshi?id="+pojo.getId();
	}
	//�����û���ַҳ��
	@RequestMapping(value="/listshi",method=RequestMethod.GET)
	public String shilist(String id,Map map){
		//�����û���Ϣ
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
		//ѭ������û������ջ���ַ
		map.put("list", list);
		//ѭ���������û�����Ҫ�������Ʒ
		map.put("list1", or.list(id));	
		//����ܼ۸�
		map.put("sum", or.sum(id));
		//�����û�Ĭ�ϵ�ַ
		map.put("address",or.address(id));
		return "tij_dingd";
	}
	//�޸��û��ջ���ַ
	@RequestMapping(value="/up",method=RequestMethod.GET)
	public String up(shippingPojo pojo,String pid){
			shi.up(pojo);
		return "redirect:/order/listshi?id="+pid;
	}
	//���ɶ���¼�뵽���ݿ�
	@RequestMapping(value="/ins",method=RequestMethod.GET)
	public String Dingdan(int type,String id,String distribution, String pay, String liuyan,String address, String contact,String phone){	
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (ordersPojo pojo : or.list(id)) {				
			int note = (int)(Math.random()*(999999999-100000000+1)+100000000);
			String no = String.valueOf(note);
			or.ins(type,pojo.getTotalprice(),pojo.getQuantity(),no,df.format(new Date()),id, pojo.getMerchants(), pojo.getId(), address, contact, phone, pay, distribution, liuyan);
				
		}
		
		return "1";
	}
}
