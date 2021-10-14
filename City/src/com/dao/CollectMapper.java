package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CollectHelp;
import com.pojo.ShopDetailPojo;
import com.pojo.shop_details;

public interface CollectMapper {
	public List<CollectHelp> getCollectCategory(@Param("userid")int b);
	public List<shop_details> getCollectShop(@Param("pid")String id,@Param("userid")int b,@Param("index")int a);
	public int cancelCollectShop(@Param("id")String i,@Param("userid")int b);
	public int delShop(@Param("list")List<Integer> a,@Param("userid")int b);
	public int getCollectShopCount(@Param("pid")String id,@Param("userid")int b);
}
