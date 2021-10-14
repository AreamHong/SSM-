package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.userPojo;

public interface userMapper {
	//查询所有用户
	public List<userPojo> list();
	//查询单个用户
	public List<userPojo> sel(@Param("username")String username,@Param("index")int index,@Param("state")int state);
	//查询总条数
	public int sum(@Param("username")String username,@Param("state")int state);
	//查询用户信息状态
	public userPojo seluser(@Param("id")int id);
	//更改用户账号状态
	public int upuser(userPojo pojo);

}
