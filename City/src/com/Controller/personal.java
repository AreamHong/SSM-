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
	//�Զ�װ��
	@Resource
	personalMapper per;
	//�������ݸ�����Ϣҳ
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(String id,Map map){
		personalPojo pojo = per.list(id);
		if(pojo.getAge() != null){
			String date1 = pojo.getAge();
			List<String> list = new ArrayList<String>();
			int i1 = 0;
			//i1������map�����ַ�����ֺ�����ѭ�����յ�keyֵ��ѭ������ ׼��ѭ��
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
	//�����û�ͷ��
	@RequestMapping(value="/list1",method=RequestMethod.GET)
	public String list1(String id,Map map){
		map.put("i",per.list(id));
		return "portrait";
	
	}
	//ʵʱ��ѯ���ݿ�������û���ظ����������ݽ�����ʾ��
	@RequestMapping(value="/sele",method=RequestMethod.GET)
	@ResponseBody
	public int select(String id,String username){
			int i = per.sele(username, id);
		return i;  
	}
	//���ĸ�����Ϣ��
	@RequestMapping(value="/update",method=RequestMethod.GET)
	@ResponseBody
	public int update(personalPojo pojo,HttpSession session){
			int i = per.up(pojo);
			session.setAttribute("pojo", pojo);
		return i;
	}
	//�ϴ��ļ�
	@RequestMapping(value="/portrait",method=RequestMethod.POST)
	public String appadd(@RequestParam("f1")MultipartFile fileob,personalPojo pojo,HttpServletRequest request) throws IllegalStateException, IOException
	{
		//fuleob �ͻ����ļ�����
		
		String newname = UUID.randomUUID().toString();
		String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");
		//��������󴫵ݸ��µ��ļ�����
		File f1 = new File(path+"/"+newname+".jpg");
		if(!f1.exists()){
			//�༶Ŀ¼����
			f1.mkdirs();
		}
		
		pojo.setPortrait(newname+".jpg");
	
		fileob.transferTo(f1);
		
		per.up1(pojo);
		
		return "redirect:/personal/list1?id="+pojo.getId();
	}
}
