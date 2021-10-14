package com.Controller;

import java.text.NumberFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.countMapper;
import com.pojo.CityOrder;
import com.pojo.Citypostertype;
import com.pojo.shopsPojo;
import com.util.countUtil;

//��ʼҳͳ����Ϣ:����
@Controller
@RequestMapping("/count")
public class countController {
	
	@Resource
	countMapper dao;
	
	@RequestMapping("/count")
	@ResponseBody
	public Object count(HttpServletRequest request){
		// ͳ�ƵĹ�����
		countUtil c = new countUtil();
		// ����session
		HttpSession session = request.getSession();
		
		// ��ȡ����session���¼�Ķ���
		Object sh = session.getAttribute("pojo");
		// ���ܴ�ȡ���������
		String str = sh.getClass().getName();
		// ����idĬ��Ϊ0
		int shopsid = 0;
		if(str.equals("com.pojo.shopsPojo")){
			// ���̵�¼
			// �������̶���,�ѻ�ȡ����sessionǿת
			shopsPojo shops = (shopsPojo)sh;
			// ��shopsid��ֵ
			shopsid = shops.getId();
			// ��ѯ����Ͷ�Ź���λ��
			List<Citypostertype> list = dao.selPosterType();
			String postertype = "";
			String nopostertype = "";
			String yespostertype = "";
			int i = 1;
			int j = 1;
			int q = 1;
			for (Citypostertype s : list) {
				if(i != 1){
					postertype += "��";
				}
				// �����п��ԷŹ���λ��ƴ�ӳ�һ���ַ���
				postertype += s.getType();
				i++;
				// ��ȡͶ�Ź��λ�����ڷ��ż������
				int countpostertype = dao.selcountposterType(s.getId(), 1);
				// >=4��������
				if(countpostertype >= 4){
					// ��һ�ν������Ӷ���
					if(j != 1){
						nopostertype += "��";
					}
					// Ͷ�Ź��λ��Ͷ�ŵĹ������ƴ��һ���ַ���
					nopostertype += s.getType();
					j++;
				// <4����δ��
				}else if(countpostertype < 4){
					// ��һ�ν������Ӷ���
					if(q != 1){
						yespostertype += "��";
					}
					// Ͷ�Ź��λ��Ͷ�ŵĹ��δ��ƴ��һ���ַ���
					yespostertype += s.getType();
					q++;
				}
			}
			c.setPostertype(postertype);// ��ѯ���п��ԷŹ��ĵط�
			c.setYespostertype(yespostertype);// ��ֵ�����Ͷ��δ����
			c.setNopostertype(nopostertype);// ��ֵ�����Ͷ��������
		}else{
			// ����Ա��¼
			
			// ����ͳ����Ϣ
			c.setShopscount(dao.countShops());// ��������
			// ���ͳ��
			c.setPostercount(dao.countPoster(0));// �������
			c.setYesposter(dao.countPoster(1));// ���ڲ��ŵĹ������
			c.setNoposter(dao.countPoster(2));// δ���ŵĹ������
			// �û�ͳ��
			int usercount = dao.countPersonal(-1);// �û�����
			c.setUsercount(usercount);
			int boy = dao.countPersonal(0);// �����û�����
			c.setBoy(compute(boy,usercount));// ����ռ��
			int woman = dao.countPersonal(1);// Ů���û�����
			c.setWoman(compute(woman, usercount));// Ů��ռ��
			int unknown = dao.countPersonal(2);// δ֪�Ա�����
			c.setUnknown(compute(unknown, usercount));// δ֪�Ա�ռ��
		}
		// ����ͳ����Ϣ
		c.setShipping(dao.countOrder(2, shopsid));// ������
		c.setUnconfirmed(dao.countOrder(1, shopsid));// δȷ��
		c.setTraded(dao.countOrder(4, shopsid));// �����
		c.setCommodity(dao.countItem(shopsid));// ��Ʒ����
		c.setCountprice(dao.countPrice(shopsid));// ͳ�ƽ��
		
		
		
		
		return c;
	}
	// ����ٷֱ�
	public double compute(int num1,int num2){
		// ����һ����ֵ��ʽ������  
		NumberFormat numberFormat = NumberFormat.getInstance();  
		// ���þ�ȷ��С�����2λ  
		numberFormat.setMaximumFractionDigits(2);  
		String result = numberFormat.format((float) num1 / (float) num2 * 100);
		double r = Double.valueOf(result);
		return r;
	}
	
}
