package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.adminPojo;

public interface adminMapper {
	//�ж��û����Ƿ��ظ�
	public int user(@Param("root")String root);
	//��ӹ���Ա�û�
	public int add(adminPojo pojo);
	//��ѯ���й���Ա�û�
	public List<adminPojo> list();
	//ɾ������Ա�û�
	public int del(@Param("id")int id);
	//��¼
	public int login(adminPojo pojo);
	//���Ĺ���Ա��¼ʱ��
	public int uptime(@Param("logintime")String logintime,@Param("root")String root);
	//�޸�����
	public int upadmin(adminPojo pojo);
}
