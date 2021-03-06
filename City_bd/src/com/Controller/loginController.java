package com.Controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.adminMapper;
import com.pojo.adminPojo;

@Controller
@RequestMapping("/admin")
public class loginController {
	
	@Resource
	adminMapper admin;
	//判断用户名是否存在
	@RequestMapping("/user")
	@ResponseBody
	public Object useradmin(String root){
			int i = admin.user(root);
			System.out.println(i);
		return i;
	}
	//添加管理员用户
	@RequestMapping("/add")
	@ResponseBody
	public Object addadmin(adminPojo pojo){
		Date date = new Date();
		// 获取当前系统年月日
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		String dateNowStr = sdf.format(date);
			pojo.setJointime(dateNowStr);
			pojo.setLogintime(dateNowStr);
			int i = admin.add(pojo);
		return i;
	}
	//查询所有管理员用户
	@RequestMapping("/list")
	public String inadmin(Map map){
		map.put("list",admin.list());
		return "admin_list";
	}
	//删除管理员
	@RequestMapping("/del")
	@ResponseBody
	public Object del(int id){
			admin.del(id);
		return "1";
	}
	//登录并且修改管理员登录时间
	@RequestMapping("/login")
	@ResponseBody
	public Object login(adminPojo pojo,HttpSession session){
			int i = admin.login(pojo);
			if(i == 1){
				Date date = new Date();
				// 获取当前系统年月日
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
				String dateNowStr = sdf.format(date);
				admin.uptime(dateNowStr,pojo.getRoot());
				session.setAttribute("pojo", pojo);
			}
		return i;
	}
	//修改管理员密码
	@RequestMapping("/upadmin")
	@ResponseBody
	public Object upadmin(adminPojo pojo){
			int i = admin.upadmin(pojo);
		return i;
	}

}
