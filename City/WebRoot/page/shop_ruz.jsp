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
<title>WangID通城——个人注册</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  --> 
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
<!-- 
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 
<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
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
				<li><a href="zhuc.html">个人注册</a></li>
				<i>丨</i>
				<li class="ger_border_color"><a href="shenq_ruz.html">申请入驻</a></li>
				<p>我已经入驻，现在就<a class="ftx-05 ml10" href="dengl.html">登录</a></p>
			</ul>
		</div>
		<div class="zhuc_biaod zhuc_biaod_liuy">
			<form action="/City/shops/in" method="get" class="messages">
				<h2>联系人信息</h2>
			     <div class="messlist">
			      <label><em>*</em> 联系人姓名</label>
			      <input type="text" placeholder="姓名" name = "username"/>
			      <div class="clears"></div>
			     </div>
			     <div class="messlist"> 
			      <label><em>*</em> 手机号码</label>
			      <input type="text" placeholder="手机号码" onmouseout="checkPhone()" id="phone" name = "phone"/>
			      <div class="clears"></div>
			     </div>
			     <div class="messlist">
			      <label><em>*</em> 联系邮箱</label>
			      <input type="text" placeholder="邮箱" name = "email" id="email"/>
			      <span id="notice"></span>
			      <div class="clears"></div>
			     </div>
			     <div class="messlist">
			      <label><em>*</em> 店铺名称</label>
			      <input type="text" placeholder="店铺名称" onmouseout="ifshopname()" id="shopname" name="shopname"/>
			      <div class="clears"></div>
			     </div>
			     <div class="messlist">
			      <label><em>*</em> 店铺账号</label>
			      <input type="text" placeholder="店铺账号" onmouseout="ifaccount()" id = "account"name="account" />
			      <div class="clears"></div>
			     </div>
			     <div class="messlist">
			      <label><em>*</em> 店铺密码</label>
			      <input type="password" placeholder="店铺密码" name="shoppwd"/>
			      <div class="clears"></div>
			     </div>
			   
			     
			     <div class="messsub">
			      <input type="submit" class="reg-btn"  value="提交"/> 
			     </div>
			</form>	
			<div class="fuw_teh_kuang">
				<h2>联系人信息</h2>
				<ul>
					<li>1.大批采购特价优惠</li>
					<li>2.一站式购齐订购服务</li>
					<li>3.灵活的支付方式</li>
					<li>4.优质配送服务</li>
					<li>5.无忧售后服务</li>
				</ul>
				<h2>联系人信息</h2>
				<ul>
					<li>1.直接拨打电话：400-6677-937</li>
					<li>2.服务邮箱：Ask@wangid.com</li> 
				</ul>
			</div>
		</div> 
	</div>
</div>


<div class="jianj_dib jianj_dib_1">
	<div class="beia_hao">
		<p>京ICP备：14012449号 黔ICP证：B2-20140009号  </p>
		<p class="gonga_bei">京公网安备：11010602030054号</p> 
	</div>
</div>

</body>
</html>
<script>
   function checkPhone() {
                var phone = document.getElementById('phone').value;
                if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))) {
                    alert("手机号码有误，请重填");
                    return false;
                }
            }


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
		function ifaccount(){
			var account = $("#account").val();
			$.ajax({
				url:'/City/shops/ifacconut',
				type:'get',
				data:{account:account},
				success:function(data){
					if(data > 0){
						alert("账号已经被注册！");
					}else{
						alert("账号可以使用！");
					}
				}
			});
		}
		function ifshopname(){
			var shopname = $("#shopname").val();
			$.ajax({
				url:'/City/shops/ifshopname',
				type:'get',
				data:{shopname:shopname},
				success:function(data){
					if(data > 0){
						alert("店铺名字已存在");
					}else{					
						alert("店铺名字可以使用");
					}
				}
			});
		}
</script>
	