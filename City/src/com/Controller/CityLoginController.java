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
	
	// 判断用户名和手机号是否注册过
	@RequestMapping("/selRegistered")
	@ResponseBody
	public Object selRegistered(String name,String phone){
		// 判断是否注册过
		List<Integer> list = new ArrayList<Integer>();
		// 判断用户名是否注册过
		int result1 = dao.selRegistered(name,null);
		// 判断手机号是否注册过
		int result2 = dao.selRegistered(null, phone);
		list.add(result1);
		list.add(result2);
		return list;
	}
	// 用户注册
	// 注册之后跳转首页
	@RequestMapping("/add")
	public String add(personalPojo p,HttpSession s){
		// 获取当前系统日期
		Date date = new Date();
		// 获取当前系统年月日
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		String dateNowStr = sdf.format(date);
		p.setAge(dateNowStr);
		// 唯一性,根据当前时间产生一个32位的随机字符串,当nickname
		String nickName = UUID.randomUUID().toString();
		p.setNickname(nickName);
		// 获取当前系统年月日时分秒,当注册和登录时间
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String join = sdf2.format(date);
		p.setJointime(join);
		p.setLogintime(join);
		int add = dao.add(p);
		personalPojo p2 = dao.login(p.getUsername(), p.getPassword(), null, "name");
		cun(p2, s);
		return "redirect:/index.jsp";
	}
	// 登录
	@RequestMapping("/login")
	@ResponseBody
	public List<String> login(String up,String pwd,String t,String ty,HttpServletResponse r,HttpSession s){
		System.out.println(up+pwd+t+ty);
		personalPojo p = null;
		List<String> list = new ArrayList<String>();
		int result = 0;// 结果
		System.out.println("---------------------------------------------"+result);
		// 判断用户传过来的是手机号还是用户名
		if(t.equals("phone")){
			p = dao.login(null, pwd, up, t);
		}else{
			System.out.println("进了");
			p = dao.login(up, pwd, null, t);
		}
		// 有些用户可能会把手机号当成用户名,手机号却不是手机号
		if(p == null){
			p = dao.login(up, pwd, null, "name");
		}
		// 代表用户名/手机号,密码正确
		if(p!=null){
			result = 1;
			// 存session
			cun(p, s);
			// 判断用户选择了自动登录没
			if(ty.equals("y")){
				// 创建cookie
				// 把用户名/手机号,密码,登录类别,自动登录存到cookie中
				Cookie c = new Cookie("userphone", up);
				Cookie c2 = new Cookie("par",pwd);
				Cookie c3 = new Cookie("t",t);
				Cookie c4 = new Cookie("ty",ty);
				// cookie存在时间为1小时
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

			// 登录成功并且不违规修改登录时间
			if(p.getState()==1){
				Date date = new Date();
				// 获取当前系统年月日
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
	// 自动登录
	@RequestMapping("/asd")
	public Object a(HttpServletRequest request,HttpServletResponse r,HttpSession s){
		// 创建cookie数组
		Cookie cookies[] = request.getCookies();
		//读取本机共存在多少cookie
	    System.out.println("Cookie长度:" + cookies.length);
	    // 用户的用户名/手机号
	    String s1 = "";
	    // 用户的密码
	    String s2 = "";
	    // 判断用户是用户名登录还是手机号
	    String t = "";
	    // 判断用户是否选择了自动登录
	    String ty = "";
	    if (cookies != null) {
	    	// 循环cookie
	    	for (int i = 0; i < cookies.length; i++) {
	    		System.out.println("For 内部Cookie"+cookies[i].getValue());
	    		// 接受用户的用户名/手机号
	    		if(cookies[i].getName().equals("userphone")){
	    			s1 = String.valueOf(cookies[i].getValue());
	    		// 接受用户的密码
	    		}else if(cookies[i].getName().equals("par")){
	    			s2 = String.valueOf(cookies[i].getValue());
	    		// 接受用户是用户名登录还是手机号
	    		}else if(cookies[i].getName().equals("t")){
	    			t = String.valueOf(cookies[i].getValue());
	    		// 接受自动登录
	    		}else if(cookies[i].getName().equals("ty")){
	    			ty = String.valueOf(cookies[i].getValue());
	    		}
	    	}
	    }
	    // 判断是否是自动登录
 	    if(ty.equals("y")){
 	    	personalPojo p = dao.login(s1, s2, s1, t);
 	    	cun(p,s);
 		    return "redirect:/index.jsp";
 	    }
		return "redirect:/page/dengl.jsp";
	}

	// 发送短信
	@RequestMapping("/note")
	@ResponseBody
	public Object note(String phone,HttpServletResponse r){
		// 随机生成1000-9999的数作为短信验证码
		int note = (int)(Math.random()*(9999-1000+1)+1000);
		// no:验证码
		String no = String.valueOf(note);
		Cookie c = new Cookie("no", no);
		c.setMaxAge(60);
		r.addCookie(c);
		// 如若要把验证码发送到手机把注释删掉即可
		/*
		HashMap<String, Object> result = null;

		CCPRestSDK restAPI = new CCPRestSDK();
		restAPI.init("app.cloopen.com", "8883");// 初始化服务器地址和端口，格式如下，服务器地址不需要写https://
		
		// 初始化主帐号和主帐号TOKEN
		restAPI.setAccount("8a216da8747ac98201747c5c8c3a017b", "007ec7f384314c40b76fe618f1b2d7a8");
		restAPI.setAppId("8a216da8747ac98201747c5c8d330181");// 初始化应用ID
		// 手机号,短信模板,验证码,验证码存在时间(分钟)
		result = restAPI.sendTemplateSMS(phone,"1" ,new String[]{no,"1"});

		System.out.println("SDKTestSendTemplateSMS result=" + result);
		
		if("000000".equals(result.get("statusCode"))){
			//正常返回输出data包体信息（map）
			HashMap<String,Object> data = (HashMap<String, Object>) result.get("data");
			Set<String> keySet = data.keySet();
			for(String key:keySet){
				Object object = data.get(key);
				System.out.println(key +" = "+object);
			}
		}else{
			//异常返回输出错误码和错误信息
			System.out.println("错误码=" + result.get("statusCode") +" 错误信息= "+result.get("statusMsg"));
		}
		*/
		return no;
	}
	
	
	
	
	
	// 将用户登录的信息存到session里
	// 工具方法
	public void cun(personalPojo pojo,HttpSession s){
		s.setAttribute("pojo", pojo);
	}
}
