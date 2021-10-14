package com.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.shopsMapper;

@Controller
@RequestMapping("/shops")
public class shopsController {
	
	@Resource
	shopsMapper shops;
	
	//���̵�¼
	@RequestMapping("/shopsLogin")
	@ResponseBody
	public Object shopsLogin(String root , String rootpwd ,HttpSession session){
		int i =	shops.shopsLogin(root, rootpwd);
			//�������û���Ϣ
			if(i == 1){
				session.setAttribute("pojo", shops.pojo(root));
			}
		return i;
	}
	@RequestMapping("uplogin")
	@ResponseBody
	public Object uplogin(int root,String email,String rootpwd ,String pwd){
		return shops.uplogin(root, email, rootpwd, pwd);
	}
	
}
