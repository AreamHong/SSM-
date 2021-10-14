package com.Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dao.personalMapper;
import com.pojo.personalPojo;

@Controller
@RequestMapping("/personal")
public class personal {
	//自动装配
	@Resource
	personalMapper per;
	//返回数据个人信息页
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(String id,Map map){
		personalPojo pojo = per.list(id);
		if(pojo.getAge() != null){
			String date1 = pojo.getAge();
			List<String> list = new ArrayList<String>();
			int i1 = 0;
			//i1作用于map接收字符串拆分后用于循环接收的key值。循环变量 准备循环
			for (String i : date1.split("-")) {
				if(i!=""&&i!=null){
					map.put("i"+i1, i);
					i1++;
				}
			}
		}
		map.put("i", per.list(id));
		return "personal";
	
	}
	//加载用户头像
	@RequestMapping(value="/list1",method=RequestMethod.GET)
	public String list1(String id,Map map){
		map.put("i",per.list(id));
		return "portrait";
	
	}
	//实时查询数据库名字有没有重复，返回数据进行提示。
	@RequestMapping(value="/sele",method=RequestMethod.GET)
	@ResponseBody
	public int select(String id,String username){
			int i = per.sele(username, id);
		return i;  
	}
	//更改个人信息。
	@RequestMapping(value="/update",method=RequestMethod.GET)
	@ResponseBody
	public int update(personalPojo pojo,HttpSession session){
			int i = per.up(pojo);
			session.setAttribute("pojo", pojo);
		return i;
	}
	//上传文件
	@RequestMapping(value="/portrait",method=RequestMethod.POST)
	public String appadd(@RequestParam("f1")MultipartFile fileob,personalPojo pojo,HttpServletRequest request) throws IllegalStateException, IOException
	{
		//fuleob 客户端文件对象
		
		String newname = UUID.randomUUID().toString();
		String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");
		//把这个对象传递给新的文件对象
		File f1 = new File(path+"/"+newname+".jpg");
		if(!f1.exists()){
			//多级目录创建
			f1.mkdirs();
		}
		
		pojo.setPortrait(newname+".jpg");
	
		fileob.transferTo(f1);
		
		per.up1(pojo);
		
		return "redirect:/personal/list1?id="+pojo.getId();
	}
}
