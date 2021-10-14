package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.pojo.Goods1Pojo;
import com.pojo.Goods2Pojo;
import com.pojo.Goods3Pojo;

public interface GoodsMapper {
	public List<Goods1Pojo> getGoods1();
	public List<Goods2Pojo> getGoods2(@Param("pid")int a);
	public List<Goods3Pojo> getGoods3(@Param("pid")int a);
	public int isDisplay(@Param("id")int id,@Param("goodsId")int goodsId,@Param("isDisplay")int isDisplay);
	public int del(@Param("id")int id,@Param("goodsId") int goodsId);
	public int addGoods1(Goods1Pojo goods1);
	public int addGoods2(Goods2Pojo goods2);
	public int addGoods3(Map map);
} 
