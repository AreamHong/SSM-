package com.Controller;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.dao.ordersMapper;
import com.pojo.CityOrder;
import com.util.pageUtil;
// ��̨����---����
@Controller
@RequestMapping("/orders")
public class ordersController {
	
	
	@Resource
	ordersMapper dao;
	// ��ҳ��ѯ
	@RequestMapping("/list")
	public String selList(CityOrder o,int storeid ,int index,Map map){
		// ��ҳ������
		pageUtil<CityOrder> p = new pageUtil<CityOrder>();
		int size = 10;// ÿҳ������
		
		List<CityOrder> list = dao.selList(storeid,o.getOrderNumber(),o.getTypeid(),(index-1)*size,size,storeid);
		// ��ȡ��ҳ��
		int count = dao.count(o.getStoreid(),o.getOrderNumber(),o.getTypeid());
		// ������ҳ��
		int pageCount = count % size == 0 ? count / size :count / size + 1;
		
		for (CityOrder c : list) {
			System.out.println(c.getAddress());
		}
		p.setIndex(index);
		p.setPagecount(pageCount);
		p.setList(list);
		// p�Ƿ�ҳ����
		map.put("p", p);
		// �����������
		map.put("typelist", dao.seltype());
		// ����id
		map.put("tid", o.getTypeid());
		// ������
		map.put("num", o.getOrderNumber());
		// ��ǰҳ���м���������
		map.put("count", list.size());
		return "order_list";
	}
	// ����ɾ��
	@RequestMapping("/del")
	@ResponseBody
	public Object del(int id){
		int result = dao.del(id);
		return result;
	}
	// ���ɾ��
	@RequestMapping("/continuous")
	@ResponseBody
	public Object continuous(String str){
		List<Integer> list = new ArrayList<Integer>();
		
		for (String i : str.split(",")) {
			if(i!=null && i!=""){
				list.add(new Integer(i));
			}
		}
		int result = dao.delcontinuous(list);
		return result;
	}
	@RequestMapping("/selorderId")
	public String selorderId(int id,Map map){
		CityOrder o = dao.selorderId(id);
		
		// ��ʡ������ϸ��ַ��ѯ����ƴ�ӳ�һ���ַ���
		/*String a1 = dao.selreginId(o.getShipping().getProvince());
		String a2 = dao.selreginId(o.getShipping().getCity());
		String a3 = dao.selreginId(o.getShipping().getArea());
		// str�����ַ������û���ַ
		o.setStr(a1+a2+a3+o.getShipping().getAddress());*/
		
		map.put("o", o);
		
		return "order_detail";
	}
	
	@RequestMapping("/upd")
	@ResponseBody
	public Object upd(CityOrder o){
		int result = dao.upd(o);
		return result;
	}
	
	@RequestMapping("/upds")
	@ResponseBody
	public Object upds(CityOrder o){
		Date date = new Date();
		// ��ȡ��ǰϵͳ������
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		String dateNowStr = sdf.format(date);
		o.setData(dateNowStr);
		int result = 0;
		for (int i = 1; i <= 71; i++) {
			int note = (int)(Math.random()*(999999999-100000000+1)+100000000);
			String no = String.valueOf(note);
			o.setOrderNumber(no);
			
			
			double a2=Math.random()*1000;
		    DecimalFormat df = new DecimalFormat("0.00");
		    String str=df.format(a2);
			o.setTotalprice(Double.parseDouble(str));
			
			
			int note3 = (int)(Math.random()*(9-1)+1);
			o.setQuantity(note3);
			System.out.println(o.getTotalprice());
			o.setId(i);
			System.out.println(o.getQuantity());
			o.setAddress("�ӱ�ʡ��ɽ��·������������"+i);
			o.setConsignee("���Ʒ�"+i);
			if(i%2 == 0){
				o.setPay("����֧��");
				o.setDistribution("��ͨ���");
			}else{
				o.setPay("��������");
				o.setDistribution("�ϴ���");
			}
			o.setPhone("13836500331");
			o.setMessage("���ٷ���");
			int a = dao.upds(o);
			if(a != 0){
				result++;
			}
		}
		return result;
	}
	
}
