package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.ordersPojo;
import com.pojo.shippingPojo;

public interface ordersMapper {
	//循环查出所有要购买的商品
	public List<ordersPojo> list(@Param("userid")String id);
	//查出结算总价格
	public int sum(@Param("userid")String id);
	//查出用户默认地址
	public shippingPojo address(@Param("id")String id);
	//添加订单
	public int ins(@Param("type")int type,@Param("totalprice")String totalprice,@Param("quantity")int quantity,@Param("orderNumber")String orderNumber,@Param("data")String data,@Param("userid")String userid,@Param("storeid")int storeid,@Param("detailsid")int detailsid,
		@Param("address")String address,@Param("consignee")String consignee,@Param("phone")String phone,@Param("pay")String pay,
		@Param("distribution")String distribution,@Param("message")String message);
}
