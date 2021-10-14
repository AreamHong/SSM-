<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'right.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <!--侧边-->
<div class="jdm-toolbar-wrap J-wrap">                
	<div class="jdm-toolbar J-toolbar">                    
		<div class="jdm-toolbar-panels J-panel"></div>                                       
		<div class="jdm-toolbar-tabs J-tab">
			<div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-ger" onclick="person()">                                
				<i class="tab-ico"></i>
				<em class="tab-text">个人信息</em>                                                  
			</div>                           
			<div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-cart" onclick="shopping()">                                
				<i class="tab-ico"></i>
				<em class="tab-text">购物车</em>                                                  
			</div>                           
			<div data-type="bar" clstag="h|keycount|cebianlan_h_follow|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-follow" data-name="follow" data-login="true">                                
				<i class="tab-ico"></i>
				<em class="tab-text">我的关注</em>                                                  
			</div>                                             
		</div>                          
		<div class="J-trigger jdm-toolbar-tab jdm-tbar-tab-message" data-name="message"><a target="_blank" href="#">
			<i class="tab-ico"></i>                                
			<em class="tab-text">我的消息                                
			</em></a>                                                
		</div>            
	</div>                    
	<div class="jdm-toolbar-footer">                        
		<div data-type="link" id="#top" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-top">                                
			<a href="#" clstag="h|keycount|cebianlan_h|top">                                
				<i class="tab-ico"></i>
				<em class="tab-text">顶部</em>                                
			</a>                         
		</div>             
	</div>                    
	<div class="jdm-toolbar-mini"></div>              
	<div id="J-toolbar-load-hook" clstag="h|keycount|cebianlan_h|load"></div>            
</div> 
  </body>
  <script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
  <script type="text/javascript">
  	var id = ${pojo.id}
  	function person(){
  		alert(id)
  	}
  	function shopping(){
  		window.location = "http://localhost:8080/City/shopping/list?id="+id;
  	}
  </script>
</html>
