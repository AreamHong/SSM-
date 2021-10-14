package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.personalPojo;
import com.pojo.shippingPojo;

public interface shippingMapper {
	//添加用户地址
	public int in(shippingPojo pojo);
	//查询所有用户收货地址,用 用户id查询
	public List<shippingPojo> list(@Param("id")String id);
	//加载用户信息
	public personalPojo listper(@Param("id")String id);
	//修改用户收货地址
	public int up(shippingPojo pojo);
	//删除用户收货地址
	public int dele(@Param("id")String id);
	//取消用户原来的默认地址
	public int updef(@Param("pid")String pid);
	//设置用户一个新的默认地址
	public int updefone(@Param("id")int id);
}
