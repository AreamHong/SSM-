package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityShopping;
import com.pojo.shop_details;

public interface shopdetailsMapper {
	//查询商品类型属性
	public shop_details shoptype(@Param("id")String id);
	//查询商品属性1值
	public List<shop_details> list(@Param("id")String id);
	//查询商品属性2值
	public List<shop_details> list2(@Param("id")String id);
	//查询商品展示图片
	public List<shop_details> img(@Param("id")String id);
	//查询商品的价格跟货源
	public shop_details show(@Param("images")String images,@Param("attribute2")String attribute2,@Param("id")int id);
	//给购物车表添加信息
	public int gouwu(CityShopping city);
}
