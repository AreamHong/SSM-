package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.adminPojo;

public interface adminMapper {
	//判断用户名是否重复
	public int user(@Param("root")String root);
	//添加管理员用户
	public int add(adminPojo pojo);
	//查询所有管理员用户
	public List<adminPojo> list();
	//删除管理员用户
	public int del(@Param("id")int id);
	//登录
	public int login(adminPojo pojo);
	//更改管理员登录时间
	public int uptime(@Param("logintime")String logintime,@Param("root")String root);
	//修改密码
	public int upadmin(adminPojo pojo);
}
