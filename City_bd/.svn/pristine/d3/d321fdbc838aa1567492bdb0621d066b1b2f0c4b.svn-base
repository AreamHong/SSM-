<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>后台管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="nofollow"/>
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<style>
body{width:100%;height:100%;overflow:hidden;background:url(/City_bd/images/pc_loginBg.jpg) no-repeat;background-size:cover;position:absolute;}
</style>
<script src="/City_bd/js/jquery.js"></script>
<script src="/City_bd/js/Particleground.js"></script>
<script>
$(document).ready(function() {
  $('body').particleground({
    dotColor:'green',
    lineColor:'#c9ec6e'
  });
  $('.intro').css({
    'margin-top': -($('.intro').height() /2)
  });
});
	function login(){
		var root = $("#root").val();
		var pwd = $("#pwd").val();
		$.ajax({
			url:'/City_bd/admin/login',
			type:'get',
			data:{root:root,rootpwd:pwd},
			success:function(data){
				if(data == 1){
					window.location="/City_bd/background/index.jsp";
				}else{
					$("#tishi").html("账号或密码错误");
				}
			}
		});
	}
</script>
</head>

<body>
  <section class="loginform">
   <h1>后台管理系统</h1>
   <ul>
    <li>
     <label>账号：</label>  <span id="tishi"></span>
     <input type="text" class="textBox" placeholder="管理员账号" id="root"/>
    </li>
    <li>
     <label>密码：</label>
     <input type="password" class="textBox" placeholder="登陆密码" id="pwd"/>
    </li>
    <li>
     <input type="button" value="立即登陆" onclick="login()"/>
    </li>
   </ul>
  </section>
</body>

</html>