package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.ordersPojo;
import com.pojo.shippingPojo;

public interface ordersMapper {
	//ѭ���������Ҫ�������Ʒ
	public List<ordersPojo> list(@Param("userid")String id);
	//��������ܼ۸�
	public int sum(@Param("userid")String id);
	//����û�Ĭ�ϵ�ַ
	public shippingPojo address(@Param("id")String id);
	//��Ӷ���
	public int ins(@Param("type")int type,@Param("totalprice")String totalprice,@Param("quantity")int quantity,@Param("orderNumber")String orderNumber,@Param("data")String data,@Param("userid")String userid,@Param("storeid")int storeid,@Param("detailsid")int detailsid,
		@Param("address")String address,@Param("consignee")String consignee,@Param("phone")String phone,@Param("pay")String pay,
		@Param("distribution")String distribution,@Param("message")String message);
}
