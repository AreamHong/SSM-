<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head>
<meta charset="utf-8">
<title>WangID通城——登录</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  --> 
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
<!-- 
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 
</head> 
<body>
<!--dengl-->
<div class="beij_center">
	<div class="dengl_logo">
		<img src="/City/images/logo_1.png">
		<h1>欢迎登录</h1>
	</div>
</div>
<div class="dengl_beij">

	<div class="banner_xin">
		<img src="/City/images/ss.jpg">
	</div>
	<div class="beij_center dengl_jvz"> 
		<div class="login_form">
			<div class="login_tab">
				<h2>欢迎登录</h2>
			</div>
			<div class="kengl_kuang">
			<span id="loginerror" style="color: red;"></span>
				<div class="txt_kuang">
					<input type="text" class="itxt" onchange="usu()" placeholder="用户名/已验证手机" id="up">
					<input type="password" class="itxt"  placeholder="密码" id="password">
				</div>
				<div class="remember">
					<div class="fl">
						<input type="checkbox" id="zddl">
						<label for="autoLoginFlag">自动登录</label>
					</div>
				</div>
				<input type="button" tabindex="5" value="登 录" class="btnnuw" onclick="login()">
			</div>
			<div class="corp_login">
				<div class="regist_link"><a href="/City/page/zhuc.jsp" target="_blank"><b></b>立即注册</a></div>
			</div>
		</div> 
	</div>
	<input type="hidden" id="ce1" value=""/>
	<input type="hidden" id="ce2" value=""/>
</div>
<script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	var t = "name";
	var ty = "n";
	function usu(){
		var phone = $("#up").val();
		$.ajax({
			url:'http://localhost:8080/City/citylogin/selRegistered',
			type:'get',
			data:{phone:phone},
			success:function(data){
				console.log(data);
				// 用户名被注册
				if(data[1] > 0){
					t="phone";
				}else{
					t="name";
				}
			}
		})
	}
	function login(){
		
		if($("#zddl").prop("checked") == true){
			ty = "y";
		}
		var up = $("#up").val();
		var pwd = $("#password").val();
		$.ajax({
			url:'http://localhost:8080/City/citylogin/login',
			type:'get',
			data:{up:up,pwd:pwd,t:t,ty:ty},
			success:function(data){
				console.log(data);
				if(data[0]!="0"){
					console.log("进来"+ty)
					if(ty=="y"){
						$("#ce1").val(data[1])
						$("#ce2").val(data[2])
					}
					// 等于1不违规
					if(data[1]=="1"){
						console.log("跳转");
						window.location = "http://localhost:8080/City/Goods/getGoods1";
					// 违规并把违规原因弹出
					}else{
						alert(data[2])
					}
				}else{
					$("#loginerror").html("用户名/手机号或密码错误");
				}
			}
		})
	}
	$(function(){
		/*var s1 = $("#ce1").val();
		var s2 = $("#ce2").val();
		console.log(s1)
		if(s1!="" && s2!=""){
			console.log("自动登录")
		}*/
	})
</script>
<div class="jianj_dib">
	<div class="beia_hao">
		<p>京ICP备：14012449号 黔ICP证：B2-20140009号  </p>
		<p class="gonga_bei">京公网安备：11010602030054号</p> 
	</div>
</div>

</body>
</html>