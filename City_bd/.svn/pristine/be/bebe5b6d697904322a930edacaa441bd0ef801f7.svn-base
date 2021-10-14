package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityOrder;
import com.pojo.CityOrdertype;
// 后台订单---陈旭超
public interface ordersMapper {
	// 分页查询
	List<CityOrder> selList(@Param("sid")int id,@Param("num")String num,@Param("tid")int tid,
			@Param("index")int i,@Param("size")int size,@Param("storeid")int storeid);
	
	int count(@Param("sid")int id,@Param("num")String num,@Param("tid")int tid);
	//单个删除
	int del(int id);
	// 多个删除
	int delcontinuous(List<Integer> list);
	// 查询所有订单类别
	List<CityOrdertype> seltype();
	// 根据城市id查询城市名称
	String selreginId(String id);
	
	CityOrder selorderId(int id);
	
	int upd(CityOrder o);
	
	int upds(CityOrder o);
}
