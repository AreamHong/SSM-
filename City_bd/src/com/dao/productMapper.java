package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.productPojo;
import com.pojo.shop_details;

public interface productMapper {
	//��ѯһ������
	public List<productPojo> t1();
	//��ѯ��������
	public List<productPojo> t2(@Param("val")int val);
	//��ѯ��������
	public List<productPojo> t3(@Param("val")int val);
	//������Ʒ����
	public int proin(productPojo Pojo);
	//������Ʒpid������
	public shop_details sel(@Param("pid")int pid);
	//�����Ʒ��������
	public int add(shop_details shop);
}
