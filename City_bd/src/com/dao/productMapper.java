package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.productPojo;
import com.pojo.shop_details;

public interface productMapper {
	//查询一级分类
	public List<productPojo> t1();
	//查询二级分类
	public List<productPojo> t2(@Param("val")int val);
	//查询三级分类
	public List<productPojo> t3(@Param("val")int val);
	//插入商品数据
	public int proin(productPojo Pojo);
	//查找商品pid绑定属性
	public shop_details sel(@Param("pid")int pid);
	//添加商品详情属性
	public int add(shop_details shop);
}
