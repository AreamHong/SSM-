package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityOrder;

public interface CityOrderMapper {
	
	
	List<CityOrder> selList(@Param("uid")int id,@Param("tid")int tid,
			@Param("num")String o,@Param("index")int index,@Param("size")int size);
	int count(@Param("uid")int id,@Param("tid")int tid,
			@Param("num")String o);
	
	int del(@Param("id")int id);
	
	List<CityOrderMapper> seltype();
	
	int seltypecount(@Param("tid")int tid,@Param("uid") int uid);
}
