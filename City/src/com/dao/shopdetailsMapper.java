package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityShopping;
import com.pojo.shop_details;

public interface shopdetailsMapper {
	//��ѯ��Ʒ��������
	public shop_details shoptype(@Param("id")String id);
	//��ѯ��Ʒ����1ֵ
	public List<shop_details> list(@Param("id")String id);
	//��ѯ��Ʒ����2ֵ
	public List<shop_details> list2(@Param("id")String id);
	//��ѯ��ƷչʾͼƬ
	public List<shop_details> img(@Param("id")String id);
	//��ѯ��Ʒ�ļ۸����Դ
	public shop_details show(@Param("images")String images,@Param("attribute2")String attribute2,@Param("id")int id);
	//�����ﳵ�������Ϣ
	public int gouwu(CityShopping city);
}
