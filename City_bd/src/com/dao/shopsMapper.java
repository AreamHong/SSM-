package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.shopsPojo;

public interface shopsMapper {
	//���̵�¼
	public int shopsLogin(@Param("root")String root,@Param("rootpwd")String rootpwd);
	//��ѯ�û�����������������id
	public shopsPojo pojo(@Param("root")String root);
	//������������
	public int uplogin(@Param("root")int root,@Param("email")String email,@Param("rootpwd")String rootpwd,@Param("pwd")String pwd);
}
