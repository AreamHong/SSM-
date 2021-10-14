package com.Controller;

import java.io.Serializable;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.annotation.Resource;
import javax.jms.BytesMessage;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.MessageConsumer;
import javax.jms.MessageListener;
import javax.jms.MessageProducer;
import javax.jms.ObjectMessage;
import javax.jms.Queue;
import javax.jms.QueueBrowser;
import javax.jms.Session;
import javax.jms.StreamMessage;
import javax.jms.TemporaryQueue;
import javax.jms.TemporaryTopic;
import javax.jms.TextMessage;
import javax.jms.Topic;
import javax.jms.TopicSubscriber;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cloopen.rest.sdk.CCPRestSDK;
import com.dao.CityLoginMapper;
import com.pojo.personalPojo;

@Controller
@RequestMapping("/citylogin")
public class CityLoginController {
	
	@Resource
	CityLoginMapper dao;
	
	// �ж��û������ֻ����Ƿ�ע���
	@RequestMapping("/selRegistered")
	@ResponseBody
	public Object selRegistered(String name,String phone){
		// �ж��Ƿ�ע���
		List<Integer> list = new ArrayList<Integer>();
		// �ж��û����Ƿ�ע���
		int result1 = dao.selRegistered(name,null);
		// �ж��ֻ����Ƿ�ע���
		int result2 = dao.selRegistered(null, phone);
		list.add(result1);
		list.add(result2);
		return list;
	}
	// �û�ע��
	// ע��֮����ת��ҳ
	@RequestMapping("/add")
	public String add(personalPojo p,HttpSession s){
		// ��ȡ��ǰϵͳ����
		Date date = new Date();
		// ��ȡ��ǰϵͳ������
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		String dateNowStr = sdf.format(date);
		p.setAge(dateNowStr);
		// Ψһ��,���ݵ�ǰʱ�����һ��32λ������ַ���,��nickname
		String nickName = UUID.randomUUID().toString();
		p.setNickname(nickName);
		// ��ȡ��ǰϵͳ������ʱ����,��ע��͵�¼ʱ��
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String join = sdf2.format(date);
		p.setJointime(join);
		p.setLogintime(join);
		int add = dao.add(p);
		personalPojo p2 = dao.login(p.getUsername(), p.getPassword(), null, "name");
		cun(p2, s);
		return "redirect:/index.jsp";
	}
	// ��¼
	@RequestMapping("/login")
	@ResponseBody
	public List<String> login(String up,String pwd,String t,String ty,HttpServletResponse r,HttpSession s){
		System.out.println(up+pwd+t+ty);
		personalPojo p = null;
		List<String> list = new ArrayList<String>();
		int result = 0;// ���
		System.out.println("---------------------------------------------"+result);
		// �ж��û������������ֻ��Ż����û���
		if(t.equals("phone")){
			p = dao.login(null, pwd, up, t);
		}else{
			System.out.println("����");
			p = dao.login(up, pwd, null, t);
		}
		// ��Щ�û����ܻ���ֻ��ŵ����û���,�ֻ���ȴ�����ֻ���
		if(p == null){
			p = dao.login(up, pwd, null, "name");
		}
		// �����û���/�ֻ���,������ȷ
		if(p!=null){
			result = 1;
			// ��session
			cun(p, s);
			// �ж��û�ѡ�����Զ���¼û
			if(ty.equals("y")){
				// ����cookie
				// ���û���/�ֻ���,����,��¼���,�Զ���¼�浽cookie��
				Cookie c = new Cookie("userphone", up);
				Cookie c2 = new Cookie("par",pwd);
				Cookie c3 = new Cookie("t",t);
				Cookie c4 = new Cookie("ty",ty);
				// cookie����ʱ��Ϊ1Сʱ
				c.setMaxAge(60*60);
				c2.setMaxAge(60*60);
				c3.setMaxAge(60*60);
				c4.setMaxAge(60*60);
				r.addCookie(c);
				r.addCookie(c2);
				r.addCookie(c3);
				r.addCookie(c4);
				list.add(up);
				list.add(pwd);
			}

			// ��¼�ɹ����Ҳ�Υ���޸ĵ�¼ʱ��
			if(p.getState()==1){
				Date date = new Date();
				// ��ȡ��ǰϵͳ������
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
				String dateNowStr = sdf.format(date);
				p.setLogintime(dateNowStr);
				int upd = dao.updlogintime(p);
			}

			list.add(String.valueOf(result));
			list.add(String.valueOf(p.getState()));
			list.add(p.getPrompt());

			return list;
		}
		list.add(String.valueOf(result));
		return list;
	}
	// �Զ���¼
	@RequestMapping("/asd")
	public Object a(HttpServletRequest request,HttpServletResponse r,HttpSession s){
		// ����cookie����
		Cookie cookies[] = request.getCookies();
		//��ȡ���������ڶ���cookie
	    System.out.println("Cookie����:" + cookies.length);
	    // �û����û���/�ֻ���
	    String s1 = "";
	    // �û�������
	    String s2 = "";
	    // �ж��û����û�����¼�����ֻ���
	    String t = "";
	    // �ж��û��Ƿ�ѡ�����Զ���¼
	    String ty = "";
	    if (cookies != null) {
	    	// ѭ��cookie
	    	for (int i = 0; i < cookies.length; i++) {
	    		System.out.println("For �ڲ�Cookie"+cookies[i].getValue());
	    		// �����û����û���/�ֻ���
	    		if(cookies[i].getName().equals("userphone")){
	    			s1 = String.valueOf(cookies[i].getValue());
	    		// �����û�������
	    		}else if(cookies[i].getName().equals("par")){
	    			s2 = String.valueOf(cookies[i].getValue());
	    		// �����û����û�����¼�����ֻ���
	    		}else if(cookies[i].getName().equals("t")){
	    			t = String.valueOf(cookies[i].getValue());
	    		// �����Զ���¼
	    		}else if(cookies[i].getName().equals("ty")){
	    			ty = String.valueOf(cookies[i].getValue());
	    		}
	    	}
	    }
	    // �ж��Ƿ����Զ���¼
 	    if(ty.equals("y")){
 	    	personalPojo p = dao.login(s1, s2, s1, t);
 	    	cun(p,s);
 		    return "redirect:/index.jsp";
 	    }
		return "redirect:/page/dengl.jsp";
	}

	// ���Ͷ���
	@RequestMapping("/note")
	@ResponseBody
	public Object note(String phone,HttpServletResponse r){
		// �������1000-9999������Ϊ������֤��
		int note = (int)(Math.random()*(9999-1000+1)+1000);
		// no:��֤��
		String no = String.valueOf(note);
		Cookie c = new Cookie("no", no);
		c.setMaxAge(60);
		r.addCookie(c);
		// ����Ҫ����֤�뷢�͵��ֻ���ע��ɾ������
		/*
		HashMap<String, Object> result = null;

		CCPRestSDK restAPI = new CCPRestSDK();
		restAPI.init("app.cloopen.com", "8883");// ��ʼ����������ַ�Ͷ˿ڣ���ʽ���£���������ַ����Ҫдhttps://
		
		// ��ʼ�����ʺź����ʺ�TOKEN
		restAPI.setAccount("8a216da8747ac98201747c5c8c3a017b", "007ec7f384314c40b76fe618f1b2d7a8");
		restAPI.setAppId("8a216da8747ac98201747c5c8d330181");// ��ʼ��Ӧ��ID
		// �ֻ���,����ģ��,��֤��,��֤�����ʱ��(����)
		result = restAPI.sendTemplateSMS(phone,"1" ,new String[]{no,"1"});

		System.out.println("SDKTestSendTemplateSMS result=" + result);
		
		if("000000".equals(result.get("statusCode"))){
			//�����������data������Ϣ��map��
			HashMap<String,Object> data = (HashMap<String, Object>) result.get("data");
			Set<String> keySet = data.keySet();
			for(String key:keySet){
				Object object = data.get(key);
				System.out.println(key +" = "+object);
			}
		}else{
			//�쳣�������������ʹ�����Ϣ
			System.out.println("������=" + result.get("statusCode") +" ������Ϣ= "+result.get("statusMsg"));
		}
		*/
		return no;
	}
	
	
	
	
	
	// ���û���¼����Ϣ�浽session��
	// ���߷���
	public void cun(personalPojo pojo,HttpSession s){
		s.setAttribute("pojo", pojo);
	}
}
