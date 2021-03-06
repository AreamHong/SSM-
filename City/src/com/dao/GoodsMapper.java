package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Goods1Pojo;
import com.pojo.Goods2Pojo;
import com.pojo.Goods3Pojo;

public interface GoodsMapper {
	public List<Goods1Pojo> getGoods1();
	public List<Goods2Pojo> getGoods2(@Param("pid")int a);
	public List<Goods3Pojo> getGoods3(@Param("pid")int a);
	public Goods3Pojo getSomeGoods3(@Param("id")int a);
	
}