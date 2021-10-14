package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityStore;
import com.pojo.Goods1Pojo;
import com.pojo.Goods2Pojo;
import com.pojo.ItemPojo;
import com.pojo.shopsPojo;

public interface ItemMapper {
	public List<ItemPojo> getItemList(@Param("name")String name,@Param("shopid")String a,@Param("index")int b);
	public List<shopsPojo> getStore();
	public int getItemCount(@Param("name")String name,@Param("shopid")String a);
	public int delAll(@Param("list")List<Integer> list);
	public int del(@Param("id")int id);
	public int isDisplay(@Param("id")int id,@Param("isDisplay")int isDisplay);
	public ItemPojo getItem(@Param("id")int id);
	public Goods2Pojo getGoods2(@Param("pid")int pid);
	public Goods1Pojo getGoods1(@Param("pid")int pid);
}
