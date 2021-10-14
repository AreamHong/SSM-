package com.cloopen.rest.demo;

import java.util.HashMap;
import java.util.Set;

import com.cloopen.rest.sdk.CCPRestSDK;


public class SDKTestSendTemplateSMS {

	public static void main(String[] args) {
		HashMap<String, Object> result = null;

		CCPRestSDK restAPI = new CCPRestSDK();
		restAPI.init("app.cloopen.com", "8883");// ��ʼ����������ַ�Ͷ˿ڣ���ʽ���£���������ַ����Ҫдhttps://
		
		// ��ʼ�����ʺź����ʺ�TOKEN
		restAPI.setAccount("8a216da8747ac98201747c5c8c3a017b", "007ec7f384314c40b76fe618f1b2d7a8");
		restAPI.setAppId("8a216da8747ac98201747c5c8d330181");// ��ʼ��Ӧ��ID
		// �ֻ���,����ģ��,��֤��,��֤�����ʱ��(����)
		result = restAPI.sendTemplateSMS("15733068307","1" ,new String[]{"1234","1"});

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
	}

}
