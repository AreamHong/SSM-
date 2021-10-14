<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>账号异常处理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/City_bd/js/jquery.js"></script></head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>账号异常处理</em></span>
  </div>
  <table class="noborder">
   <tr>
    <td style="text-align:right;"><b>用户信息：</b></td>
    <td>${pojo.username}</td>
   </tr>
    <span id="notice"></span>
   <tr>
    <td style="text-align:right;"><b>手机号：</b></td>
    <td>${pojo.phone}</td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>性别：</b></td>
    <td>
    	<c:if test="${pojo.gender == 1}">
    		女
    	</c:if>
    	<c:if test="${pojo.gender == 0}">
    		男
    	</c:if>
    	<c:if test="${pojo.gender == 2}">
    		保密
    	</c:if>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>最近登录：</b></td>
    <td>${pojo.logintime}</td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>注册日期：</b></td>
    <td>${pojo.jointime}</td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>账号状态：</b></td>
    <td>
    	<select id="state">
    	<c:if test="${pojo.state == 1}">
    	<option selected="selected" value="1">正常</option>
    	<option value="0">封禁</option>
    	</c:if>
    	<c:if test="${pojo.state == 0}">
    	<option selected="selected" value="0">封禁</option>
    	<option value="1">正常</option>
    	</c:if>
    	</select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>封禁提示：</b></td>
    <td>
     <textarea class="textarea" id="prompt">您的账号出现违规异常,封号处理！封禁原因...</textarea>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" class="tdBtn" value="保存" onclick="submit('${pojo.id}')"/></td>
   </tr>
  </table>
 </div>
</body>
</html>
<script>
	function submit(id){
		var state = $("#state").val();
		var prompt = $("#prompt").val();
		$.ajax({
			url:'/City_bd/user/upuser',
			type:'get',
			data:{id:id,state:state,prompt:prompt},
			success:function(data){
				if(data == 1){
					if(state == 1){
						alert("解封用户成功！");
					}else{
						alert("封禁用户成功！");
					}
					window.location="/City_bd/user/sel?username=&index=1&state=2";
				}else{
					alert("报错提醒：操作失败");
				}
			}
		});
	}	
</script>