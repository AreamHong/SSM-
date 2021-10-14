<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理员列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="/City_bd/js/jquery.js"></script>
<script src="/City_bd/js/public.js"></script>
<script type="text/javascript" src="/City_bd/js/jquery.js"></script></head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>管理员列表</em></span>
    <span class="modular fr"><a href="/City_bd/background/revise_password1.jsp" class="pt-link-btn">+添加管理员</a></span>
  </div>
  <table class="list-style Interlaced">
   <tr>
    <th>管理员账号</th>
    <th>电子邮箱地址</th>
    <th>加入时间</th>
    <th>最后登陆时间</th>
    <th>操作</th>
   </tr>
   <c:forEach items="${list}" var="i">
   <tr>
    <td>${i.root}</td>
    <td>${i.email}</td>
    <td class="center">${i.jointime}</td>
    <td class="center">${i.logintime}</td>
    <td class="center">
     <a href="/City_bd/background/revise_password.jsp"><img src="/City_bd/images/icon_edit.gif"/></a>
     <a><img src="/City_bd/images/icon_drop.gif" onclick="del('${i.id}')"/></a>
    </td>
   </tr>
   </c:forEach>
  </table>
 </div>
</body>
<script>
	function del(id){
		$.ajax({
			url:'/City_bd/admin/del',
			type:'get',
			data:{id:id},
			success:function(data){
			}
		});
				window.location="/City_bd/admin/list";
	}
</script>
</html>