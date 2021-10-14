package com.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.CityRegionMapper;
import com.pojo.CityRegion;

// ³ÂÐñ³¬  ³ÇÊÐcontroller²ã
@Controller
@RequestMapping("/cityregion")
public class CityRegionController {
	
	@Resource
	CityRegionMapper dao;
	
	@RequestMapping("/sel")
	@ResponseBody
	public Object sel(int pid){
		List<CityRegion> list = new ArrayList<CityRegion>();
		for (CityRegion c : dao.sel(pid)) {
			if(c.getName().length() <= 3){
				list.add(c);
			}
		}
		return list;
	}
	
}
