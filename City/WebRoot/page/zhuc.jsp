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
<title>通城网关平台——个人注册</title>
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
<div class="yiny">
	<div class="beij_center">
		<div class="dengl_logo">
			<img src="/City/images/logo_1.png">
			<h1>欢迎注册</h1>
		</div>
	</div>
</div>
<div class="beij_center"> 
	<div class="ger_zhuc_beij">
		<div class="ger_zhuc_biaot">
			<ul>
				<li class="ger_border_color"><a href="zhuc.html">个人注册</a></li>
				<i>丨</i>
				<li><a href="shenq_ruz.html">申请入驻</a></li>
				<p>我已经注册，现在就<a class="ftx-05 ml10" href="/City/page/dengl.jsp">登录</a></p>
			</ul>
		</div>
		
		<div class="zhuc_biaod">
			<div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">用户名：</label>
              	</span>
              	<input class="i-text" type="text" id="username" onchange="usa()">
              	<!--备注————display使用 inline-block-->
                <div class="msg-box" style="display: block;">
	            	<div class="msg-cont" id="usernametext" style="color: red"></div>
                </div>
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">设置密码：</label>
              	</span>
              	<input class="i-text" type="password" name="password" id="password" onchange="p1()">
              	<!--备注————display使用 inline-block-->
              	<div class="msg-box" style="display:block;">
                	<div class="msg-cont" style="color: red;" id="pwd1"></div>
            	</div>
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">确认密码：</label>
              	</span>
              	<input class="i-text" type="password" id="password2" onchange="p2()">
              	<!--备注————display使用 inline-block-->
              	<div class="msg-box" style="display:block;">
                	<div class="msg-cont" style="color: red;" id="pwd2"></div>
            	</div>
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">手机号码：</label>
              	</span>
              	<input class="i-text" type="text" onchange="ph()" id="phone" name="phone">
              	<div class="msg-box" style="display: block;">
                	<div class="msg-cont" id="phonetext" style="color: red"></div>
            	</div>
            </div> 
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name">验证码：</label>
              	</span>
              	<input class="i-text i-short" type="text" value="" id="n">
              	<div class="check check-border" style="position:relative;left:0" id="yzm">
              		<!-- <input type="button" value="获取短信验证码" style="height: 35px" id="yzm"/> -->
                   	<a class="check-phone" style="padding:11px 10px 14px 10px;*line-height:60px;" onclick="note()" id="huo">获取短信验证码</a>
                  	<a class="check-phone" style="padding:11px 10px 14px 10px;*line-height:60px;" id="deng"></a>
                </div>
              	<!--备注————display使用 inline-block-->
              	<div class="msg-box" style="display: block;">
                	<div class="msg-cont" id="notetext" style="color: red"></div>
            	</div>
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name"> </label>
              	</span> 
              	<div class="dag_biaod">
              		<input type="checkbox" value="english" id="che">
              		阅读并同意
              		<a href="#" class="ftx-05 ml10">《wangdi通城用户注册协议》</a>
              		<a href="#" class="ftx-05 ml10">《隐私协议》</a>
              		<div class="msg-box" style="display: block;">
                		<div class="msg-cont" id="xy" style="color: red"></div>
            		</div>
              	</div>
            </div>
            <div class="reg-items" >
              	<span class="reg-label">
                	<label for="J_Name"> </label>
              	</span>
              	<input class="reg-btn" value="立即注册" type="button" onclick="add()">
            </div>
		</div>
		
		
        <div class="xiaogg">
            <img src="/City/images/cdsgfd.jpg">
        </div>
	</div>
	<%
		Cookie[] list=request.getCookies();
		String no = "";
		for(Cookie i:list){
			if(i.getName().equals("no")){
				no=i.getValue();
			}
		}
	%>
	<input type="hidden" value="" id="note1"/>
</div>
<script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#deng").hide()
	})
	// 短信
	function note(){
		$("#huo").hide()
		$("#deng").show()
		var n = 60;
		// 让按钮被禁用
		// 每隔 1s 更改倒计时内容
		// 通过定时器进行每隔 1s 减时间效果
		var timer = setInterval(() => {
			console.log(n)
			$("#deng").html(n+"秒后可再次发送")
			n--;
			// 文字内容发生变化
			// 定时器内部的this指向的默认为 window
			// 判断如果时间到了 0 ，就要停止定时器
			if (n <= 0) {
				clearInterval(timer)
			    // 5s 结束后，需要让文字恢复 发送
			    // 让按钮取消禁用
			    $("#deng").hide().html("")
			    $("#huo").show()
			}
		},1000)
	
		$.ajax({
			url:'http://localhost:8080/City/citylogin/note',
			type:'get',
			data:{},
			success:function(data){
				console.log(data);
				$("#note1").val(data);
				$("#notetext").html("");
			}
		})
		
		
		
	}
	// 用户名没问题时可以显示对号
	// <span class="suc-icon"></span>
    // 验证手机号
	function ph(){
		var phone = $("#phone").val();
		var myreg = /^[1][0-9]{10}$/;
		if(!myreg.test(phone)) {
		    $("#phonetext").html("请填写正确的手机号码");
		    return false;
		}
		$.ajax({
			url:'http://localhost:8080/City/citylogin/selRegistered',
			type:'get',
			data:{phone:phone},
			success:function(data){
				console.log(data);
				// 用户名被注册
				if(data[1] > 0){
					$("#phonetext").html("手机号已被注册");
				}
			}
		})
		var s = $("#phonetext").val();
		if(s == "手机号已被注册"){
			return false;
		}
		$("#phonetext").html("");
		return true;
	}
	// 验证用户名
	function usa(){
		var username = $("#username").val();
		if(!/^[a-zA-Z0-9]\w{3,17}$/.test(username)){
			$("#usernametext").html("用户名只能是字母和数字并且长度为4-18");
			return false;
		}
		$.ajax({
			url:'http://localhost:8080/City/citylogin/selRegistered',
			type:'get',
			data:{name:username},
			success:function(data){
				console.log(data);
				// 用户名被注册
				if(data[0] > 0){
					$("#usernametext").html("用户名已被注册");
				}
			}
		})
		var s = $("#usernametext").val();
		if(s == "用户名已被注册"){
			return false;
		}
		$("#usernametext").html("");
		return true;
	}
	// 验证密码
	function p1(){
		var pwd = $("#password").val();
		if(!/^[a-zA-Z0-9]\w{3,9}$/.test(pwd)){
			$("#pwd1").html("密码只能是字母和数字并且长度为4-10");
			return false;
		}
		
		$("#pwd1").html("");
		return true;
	}
	// 验证两次密码是否一致
	function p2(){
		var pwd = $("#password").val();
		var pwd2 = $("#password2").val();
		if(pwd2 != pwd){
			$("#pwd2").html("两次密码不一致");
			return false;
		}
		
		$("#pwd2").html("");
		return true;
	}
	// 立即注册
	function add(){
		// 判断输入的值是否都正确 ph() && usa() && p1() && p2() &&
		if($("#che").prop("checked") == false){
			$("#xy").html("请勾选协议!!!");
			return;
		}
		$("#xy").html("");
		console.log("短信"+$("#note1").val())
		if(ph() && usa() && p1() && p2()){
			var name = $("#username").val();
			var pwd = $("#password").val();
			var phone = $("#phone").val();
			var note = $("#note1").val();
			if(note == null|| note==""){
				$("#notetext").html("请获取短信验证码!");
				return;
			}
			var n = $("#n").val();
			if(n != note){
				$("#notetext").html("请输入正确的验证码!");
				return;
			}
			 
			window.location = "http://localhost:8080/City/citylogin/add?username="+name+"&password="+pwd+"&phone="+phone;
			/*$.ajax({
				url:'http://localhost:8080/City/citylogin/selRegistered',
				type:'get',
				data:{username:username,password:password,phone:phone},
				success:function(data){
					console.log(data);
					// 用户名被注册
					if(data[0] > 0){
						$("#usernametext").html("用户名已被注册");
					}
					// 手机号被注册
					if(data[1] > 0){
						$("#phonetext").html("手机号已被注册");
					}
					if(data[2] > 0){
						window.location = "http://localhost:8080/City/page/dengl.jsp";
					}
				}
			})*/
		}
	}
</script>
<div class="jianj_dib jianj_dib_1">
	<div class="beia_hao">
		<p>京ICP备：14012449号 黔ICP证：B2-20140009号  </p>
		<p class="gonga_bei">京公网安备：11010602030054号</p> 
	</div>
</div>

</body>
</html>

