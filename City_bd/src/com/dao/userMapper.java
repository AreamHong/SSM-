package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.userPojo;

public interface userMapper {
	//��ѯ�����û�
	public List<userPojo> list();
	//��ѯ�����û�
	public List<userPojo> sel(@Param("username")String username,@Param("index")int index,@Param("state")int state);
	//��ѯ������
	public int sum(@Param("username")String username,@Param("state")int state);
	//��ѯ�û���Ϣ״̬
	public userPojo seluser(@Param("id")int id);
	//�����û��˺�״̬
	public int upuser(userPojo pojo);

}
