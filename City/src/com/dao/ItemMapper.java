package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.pojo.ItemPojo;

public interface ItemMapper {
	public List<ItemPojo> getItem(@Param("pid")int a,@Param("index")int b);
	public int getItemCount(@Param("pid")int a);
	public List<String> getCategory(@Param("i")int a,@Param("pid")int b);
	public List<ItemPojo> getCategoryItems(Map map);
	public int getCategoryItemsCount(Map map);
}
