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
	//�ж��û����Ƿ����
	@RequestMapping("/user")
	@ResponseBody
	public Object useradmin(String root){
			int i = admin.user(root);
			System.out.println(i);
		return i;
	}
	//���ӹ���Ա�û�
	@RequestMapping("/add")
	@ResponseBody
	public Object addadmin(adminPojo pojo){
		Date date = new Date();
		// ��ȡ��ǰϵͳ������
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		String dateNowStr = sdf.format(date);
			pojo.setJointime(dateNowStr);
			pojo.setLogintime(dateNowStr);
			int i = admin.add(pojo);
		return i;
	}
	//��ѯ���й���Ա�û�
	@RequestMapping("/list")
	public String inadmin(Map map){
		map.put("list",admin.list());
		return "admin_list";
	}
	//ɾ������Ա
	@RequestMapping("/del")
	@ResponseBody
	public Object del(int id){
			admin.del(id);
		return "1";
	}
	//��¼�����޸Ĺ���Ա��¼ʱ��
	@RequestMapping("/login")
	@ResponseBody
	public Object login(adminPojo pojo,HttpSession session){
			int i = admin.login(pojo);
			if(i == 1){
				Date date = new Date();
				// ��ȡ��ǰϵͳ������
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
				String dateNowStr = sdf.format(date);
				admin.uptime(dateNowStr,pojo.getRoot());
				session.setAttribute("pojo", pojo);
			}
		return i;
	}
	//�޸Ĺ���Ա����
	@RequestMapping("/upadmin")
	@ResponseBody
	public Object upadmin(adminPojo pojo){
			int i = admin.upadmin(pojo);
		return i;
	}

}