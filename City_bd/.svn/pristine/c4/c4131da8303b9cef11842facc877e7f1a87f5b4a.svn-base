<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>修改密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/City_bd/js/jquery.js"></script></head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>添加管理员</em></span>
  </div>
  <table class="noborder">
   <tr>
    <td width="15%" style="text-align:right;">账号：</td>
    <td><input type="text" class="textBox length-middle" id="root" onmouseout="user()"/></td>
    <span id = "sub"></span>
   </tr>
   <tr>
    <td style="text-align:right;">邮箱：</td>
    <td><input type="text" class="textBox length-middle" id="email"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">新密码：</td>
    <td><input type="password" class="textBox length-middle" id="pwd"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">再次确认密码：</td>
    <td><input type="password" class="textBox length-middle" id="pwd1"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" class="tdBtn" value="保存" id="button"onclick="submit()"/></td>
   </tr>
  </table>
 </div>
</body>
<script>
	function submit(){
		var root = $("#root").val();
		var pwd = $("#pwd").val();
		var pwd1 = $("#pwd1").val();
		var email = $("#email").val();
		if(root != "" && pwd != "" && pwd1 != "" && email != ""){
		if(pwd == pwd1){
			$.ajax({
				url:'/City_bd/admin/add',
				type:'get',
				data:{root:root,rootpwd:pwd,email:email},
				success:function(data){
					if(data == 1){
						alert("添加成功");
						window.location="/City_bd/admin/list";
					}
				}
			});
		}else{
			alert("输入的两次密码不一致请重新输入!");
		}
		}else{
			alert("输入内容不能为空");
		}
	}
	function user(){
		var root = $("#root").val();
		if(root != ""){
		$.ajax({
			url:'/City_bd/admin/user',
			type:'get',
			data:{root:root},
			success:function(data){
				if(data > 0 ){
					$("#sub").html("用户名重复,不可使用。");
					$("#button").attr("disabled","disabled");
				}else{
					$("#sub").html("用户名可使用。");
					document.getElementById("button").removeAttribute("disabled");
				}
			}
		});
		}
	}
</script>
</html>

