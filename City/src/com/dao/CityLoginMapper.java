package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.personalPojo;

// ����  ע���¼
public interface CityLoginMapper {
	
	// ע��ʱ��ѯ�Ƿ�ע���
	int selRegistered(@Param("username")String n,@Param("phone")String p);
	// �û�ע�����
	int add(personalPojo p);
	// ��¼
	personalPojo login(@Param("name")String n,@Param("pwd")String pwd,@Param("p")String p,@Param("t")String t);
	// ��¼�޸ĵ�¼ʱ��
	int updlogintime(personalPojo p);
	
}
