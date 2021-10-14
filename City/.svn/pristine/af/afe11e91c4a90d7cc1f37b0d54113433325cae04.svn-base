package com.cloopen.rest.demo;

import java.util.HashMap;
import java.util.Set;

import com.cloopen.rest.sdk.CCPRestSDK;


public class SDKTestSendTemplateSMS {

	public static void main(String[] args) {
		HashMap<String, Object> result = null;

		CCPRestSDK restAPI = new CCPRestSDK();
		restAPI.init("app.cloopen.com", "8883");// 初始化服务器地址和端口，格式如下，服务器地址不需要写https://
		
		// 初始化主帐号和主帐号TOKEN
		restAPI.setAccount("8a216da8747ac98201747c5c8c3a017b", "007ec7f384314c40b76fe618f1b2d7a8");
		restAPI.setAppId("8a216da8747ac98201747c5c8d330181");// 初始化应用ID
		// 手机号,短信模板,验证码,验证码存在时间(分钟)
		result = restAPI.sendTemplateSMS("15733068307","1" ,new String[]{"1234","1"});

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
	}

}
