package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityOrder;
import com.pojo.Citypostertype;

//起始页统计信息:陈旭超
public interface countMapper {
	// 统计订单
	int countOrder(@Param("typeid")int typeid,@Param("shopsid")int shopsid);
	// 店铺数量
	int countShops();
	// 商品数量
	int countItem(@Param("shopid")int shopid);
	// 统计金额
	double countPrice(@Param("shopsid")int shopsid);
	// 广告数量
	int countPoster(@Param("store")int store);
	// 用户统计
	int countPersonal(@Param("gender")int gender);
	// 查询所有可以播放广告的位置
	List<Citypostertype> selPosterType();
	
	int selcountposterType(@Param("pid")int pid,@Param("store")int store);
}
