package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.shopsPojo;

public interface shopsMapper {
	//����ע������
	public int in(shopsPojo pojo);
	//�ж��˺��û����Ƿ����
	public int ifacc(@Param("account")String account);
	//�жϵ��������Ƿ����
	public int ifshopname(@Param("shopname")String shopname);
}
