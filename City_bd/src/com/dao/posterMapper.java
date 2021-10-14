package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Cityposter;
import com.pojo.Citypostertype;
// 广告-----------陈旭超
public interface posterMapper {
	// 分页
	List<Cityposter> sellist(@Param("pid")int pid,@Param("store")int stroe,
			@Param("index")int index,@Param("size")int size);
	int count(Cityposter p);
	// 查询所有的可以播放广告的位置
	List<Citypostertype> seltype();
	// 单个删除
	int delId(int id);
	// 多个删除
	int delAll(List<Integer> list);
	// 根据id进行查询所有信息跳转修改页面使用
	Cityposter selId(int id);
	// 修改
	int upd(Cityposter p);
	// 添加
	int add(Cityposter p);
	// 查看广告播放队列
	int selStore(int postertypeid);
	// 批量修改广告播放状态
		int updStore(@Param("store")int store,@Param("list")List<Integer> list);
}
