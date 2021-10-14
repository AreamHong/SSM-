<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>header</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script></head>
<body>
<div class="header">
 <div class="logo">
  <img src="/City_bd/images/admin_logo.png" title="在哪儿"/>
 </div>
 <div class="fr top-link">
  <a href="#" target="_blank" title="访问站点"><i class="shopLinkIcon"></i><span>访问站点</span></a>
  <a href="admin_list.html" target="mainCont" title="DeathGhost"><i class="adminIcon"></i><span>管理员：${pojo.root}</span></a>
  <a href="#" title="修改密码"><i class="clearIcon"></i><span>清除缓存</span></a>
  <a href="/City_bd/background/revise_password.jsp" target="mainCont" title="修改密码"><i class="revisepwdIcon"></i><span>修改密码</span></a>
  <a href="#" title="安全退出" style="background:rgb(60,60,60);" onclick="on()"><i class="quitIcon"></i><span>安全退出</span></a>
 </div>
</div>
</body>
</html>
<script>
	function on(){
		alert("1");
		window.location="/City_bd/admin/Login";
	}
</script>