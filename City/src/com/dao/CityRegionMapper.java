package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.CityRegion;

// ����  ����dao��
public interface CityRegionMapper {
	List<CityRegion> sel(@Param("pid")int pid);

}
