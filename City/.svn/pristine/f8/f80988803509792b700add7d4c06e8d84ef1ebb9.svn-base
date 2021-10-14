package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityShopping;
// ³ÂÐñ³¬:¹ºÎï³µ
public interface CityShoppingMapper {
	
	List<CityShopping> selList(@Param("userid")int id);
	int count(@Param("userid")int id);
	
	int delall(List<Integer> list);
	int del(@Param("id")int id);
	
	int upd(CityShopping cityShopping);
	
	int updType(@Param("list")List<Integer> list,@Param("type")int type,@Param("userid")int uid);
	
	int indexcount(int id);
}
