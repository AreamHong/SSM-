package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityOrder;
import com.pojo.Citypostertype;

//��ʼҳͳ����Ϣ:����
public interface countMapper {
	// ͳ�ƶ���
	int countOrder(@Param("typeid")int typeid,@Param("shopsid")int shopsid);
	// ��������
	int countShops();
	// ��Ʒ����
	int countItem(@Param("shopid")int shopid);
	// ͳ�ƽ��
	double countPrice(@Param("shopsid")int shopsid);
	// �������
	int countPoster(@Param("store")int store);
	// �û�ͳ��
	int countPersonal(@Param("gender")int gender);
	// ��ѯ���п��Բ��Ź���λ��
	List<Citypostertype> selPosterType();
	
	int selcountposterType(@Param("pid")int pid,@Param("store")int store);
}
