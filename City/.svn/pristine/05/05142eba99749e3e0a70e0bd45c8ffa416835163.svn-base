package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.personalPojo;

// ³ÂÐñ³¬  ×¢²áµÇÂ¼
public interface CityLoginMapper {
	
	// ×¢²áÊ±²éÑ¯ÊÇ·ñ×¢²á¹ý
	int selRegistered(@Param("username")String n,@Param("phone")String p);
	// ÓÃ»§×¢²áÌí¼Ó
	int add(personalPojo p);
	// µÇÂ¼
	personalPojo login(@Param("name")String n,@Param("pwd")String pwd,@Param("p")String p,@Param("t")String t);
	// µÇÂ¼ÐÞ¸ÄµÇÂ¼Ê±¼ä
	int updlogintime(personalPojo p);
	
}
