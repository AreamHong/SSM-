package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.personalPojo;

public interface personalMapper {
	//返回用户信息
	public personalPojo list(@Param("id")String id);
	//判断用户名是否重复
	public int sele(@Param("username")String username,@Param("id")String id);
	//更改用户信息
	public int up(personalPojo pojo);
	//更改用户头像
	public int up1(personalPojo pojo);

}
