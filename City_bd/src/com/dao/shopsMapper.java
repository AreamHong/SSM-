package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.shopsPojo;

public interface shopsMapper {
	//商铺登录
	public int shopsLogin(@Param("root")String root,@Param("rootpwd")String rootpwd);
	//查询用户名及商铺名、商铺id
	public shopsPojo pojo(@Param("root")String root);
	//更改商铺密码
	public int uplogin(@Param("root")int root,@Param("email")String email,@Param("rootpwd")String rootpwd,@Param("pwd")String pwd);
}
