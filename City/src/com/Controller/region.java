package com.Controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.regionMapper;
import com.dao.shippingMapper;

@Controller
@RequestMapping("/region")
public class region {
	@Resource
	regionMapper reg;
	@RequestMapping(value="/showregion",method=RequestMethod.GET)
	@ResponseBody
	public Object showRegion(String id,Map map){
	
		return reg.alist(id);
	}
}