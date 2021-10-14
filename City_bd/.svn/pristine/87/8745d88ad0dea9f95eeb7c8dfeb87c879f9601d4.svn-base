package com.Controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.userMapper;
import com.pojo.userPojo;

@Controller
@RequestMapping("/user")
public class userController {
	
	@Resource
	userMapper user;
	
	//查询所有用户信息  暂时作废  直接引用sel方法
	/*@RequestMapping("/list")
	public String list(Map map){
		map.put("list", user.list());
		return "user_list";
	}*/
	//查询单个用户
	@RequestMapping("/sel")
	public String sel(String username,int index,int state,Map map){
		map.put("list",user.sel("%"+username+"%",(index - 1) * 12, state));
		int sum = user.sum("%"+username+"%",state);
		sum = sum % 12 == 0?sum / 12:sum / 12 + 1;
		map.put("sum", sum);
		map.put("username", username);
		map.put("index", index);
		map.put("state", state);
		return "user_list";
	}
	//查询用户信息状态
	@RequestMapping("/seluser")
	public String seluser(int id,Map map){
		map.put("pojo", user.seluser(id));
		return "user_re";
	}
	//更改用户状态
	@RequestMapping("/upuser")
	@ResponseBody
	public Object upuser(userPojo pojo){
		int i = user.upuser(pojo);
		System.out.println(i);
		return i;
	}

}
