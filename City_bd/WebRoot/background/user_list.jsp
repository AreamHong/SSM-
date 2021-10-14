<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="/City_bd/js/jquery.js"></script>
<script src="/City_bd/js/public.js"></script>
<script type="text/javascript" src="/City_bd/js/jquery.js"></script>
<style>
	table{
		margin-top: 8px;
	}
</style>
<script type="text/javascript" src="/City_bd/js/jquery-1.4.4.min.js"></script></head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>用户列表</em></span>
    <span class="modular fr"><a href="/City_bd/background/revise_password1.jsp" class="pt-link-btn">+添加用户</a></span>
  </div>
    <form method="get" action="/City_bd/user/sel">
    <img src="/City_bd/images/icon_search.gif"/>
    <input type="text" class="textBox length-long" placeholder="请输入查询用户名..." name="username"/>
    <input type = "hidden" name = "index" value="1"/>
    <input type="submit" value="查询" class="tdBtn" />
  	<select name = "state" id = "state" onchange="selsta()">
  		<c:if test="${state == 2}">
	  		<option selected="selected" value="2" >全部</option>
	  		<option value = "1">正常</option>
	  		<option value = "0">封禁</option>
  		</c:if>
  		<c:if test="${state == 1}">
	  		<option selected="selected" value="1" >正常</option>
	  		<option value = "0">封禁</option>
	  		<option value = "2">全部</option>
  		</c:if>
  		<c:if test="${state == 0}">
	  		<option selected="selected" value="0" >封禁</option>
	  		<option value = "2">全部</option>
	  		<option value = "1">正常</option>
  		</c:if>
  	</select>
   </form>	
  <table class="list-style Interlaced">
   <tr>
    <th>用户账号</th>
    <th>手机号</th>
    <th>性别</th>
    <th>出生日期</th>
    <th>注册日期</th>
    <th>最近登录日期</th>    
    <th>账号状态</th>    
    <th>操作</th>
   </tr>
   <c:forEach items="${list}" var="i">
   <tr>
    <td>${i.username}</td>
    <td>${i.phone}</td>
    <td class="center">
    	<c:if test="${i.gender == 1}">
    		男
    	</c:if>
    	<c:if test="${i.gender == 2}">
    		女
    	</c:if>
    </td>
    <td class="center">${i.age}</td>
    <td class="center">${i.jointime}</td>
    <td class="center">${i.logintime}</td>
    <td class="center">
    	<c:if test="${i.state == 1}">
    		正常
    	</c:if>
    	<c:if test="${i.state == 0}">
    		封禁
    	</c:if>
    </td>
    
    <td class="center">
     <a href="/City_bd/user/seluser?id=${i.id}"><img src="/City_bd/images/icon_edit.gif"/></a>
     <a><img src="/City_bd/images/icon_drop.gif" onclick="del('${i.id}')"/></a>
    </td>
   </tr>
   </c:forEach>
  </table>
   <div class="turnPage center fr">
	   <a>总页数${sum}</a>
	   <a href = "/City_bd/user/sel?username=${username}&index=1&state=${state}">首页</a>
	   <a href = "/City_bd/user/sel?username=${username}&index=${index-1==0?index:index - 1}&state=${state}">上一页</a>
	   <a>当前页数:${index}</a>
	   <a href = "/City_bd/user/sel?username=${username}&index=${index+1>sum?index:index + 1}&state=${state}">下一页</a>
	   <a href = "/City_bd/user/sel?username=${username}&index=${sum}&state=${state}">尾页</a>
	  </div>
 </div>
</body>
<script>
	function selsta(){
		var state = $("#state").val();
		window.location="/City_bd/user/sel?username=&index=1&state="+state+"";	
	}
</script>
</html>