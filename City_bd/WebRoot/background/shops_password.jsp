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
    <span class="modular fl"><i class="user"></i><em>修改密码</em></span>
  </div>
  <table class="noborder">
   <tr>
    <td style="text-align:right;">邮箱：</td>
    <td><input type="text" class="textBox length-middle" id ="email"/></td>
   </tr>
    <span id="notice"></span>
   <tr>
    <td style="text-align:right;">旧密码：</td>
    <td><input type="password" class="textBox length-middle" id="rootpwd"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">新密码：</td>
    <td><input type="password" class="textBox length-middle"/ id="pwd"></td>
   </tr>
   <tr>
    <td style="text-align:right;">再次确认密码：</td>
    <td><input type="password" class="textBox length-middle"/ id="pwd1"></td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" class="tdBtn" value="保存" onclick="submit('${pojo.id}')"/></td>
   </tr>
  </table>
 </div>
</body>
<script>
/*id是全局唯一的，不需要获取元素，直接使用*/

let re = /^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;

//绑定文本输入时触发的事件
email.oninput = function () {
  let textBox = this.value;

  //判断检测这个值是否正确，
  if(re.test(textBox)){//如果验证正确执行以下代码
    notice.innerHTML = '邮箱验证成功';
    notice.style.color = 'plum';
  }else {//验证不成功，执行以下代码
    notice.innerHTML = '邮箱验证不成功，请重新输入';
      notice.style.color = 'green';
  }
  }
	function submit(root){
		alert(root);
		var email = $("#email").val();
		var rootpwd = $("#rootpwd").val();
		var pwd = $("#pwd").val();
		var pwd1 = $("#pwd1").val();
		if(email != "" && rootpwd != "" && pwd != "" && pwd1 != ""){
			if(pwd == pwd1){
				$.ajax({
					url:'/City_bd/shops/uplogin',
					type:'get',
					data:{root:root,email:email,rootpwd:rootpwd,pwd:pwd},
					success:function(data){
						if(data == 1){
							alert("修改成功！");
							window.location="/City_bd/background/main1.jsp";
						}else{
							alert("密码错误！");
						}
					}
				});
			}else{
				alert("两次密码不一致!");
			}
		}else{
			alert("输入内容不能为空!");
		}
	}
</script>
</html>