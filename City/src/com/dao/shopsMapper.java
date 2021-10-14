package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.shopsPojo;

public interface shopsMapper {
	//申请注册商铺
	public int in(shopsPojo pojo);
	//判断账号用户名是否存在
	public int ifacc(@Param("account")String account);
	//判断店铺名字是否存在
	public int ifshopname(@Param("shopname")String shopname);
}
