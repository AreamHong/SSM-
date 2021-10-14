<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'usertop.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

  </head>
  
  <body>
    
<div class="hongs_beij">
	<div class="beij_center">
		<div class="wode_tongc_logo">
			<a class="tongc_logo" href="#"></a>
			<a class="fanh_shouy" href="http://localhost:8080/City/Goods/getGoods1" target="_blank">返回首页</a>
		</div>
		<div class="navitems">
			<ul>
				<li><a href="ger_zhongx.html"><span>首页</span> </a></li>
				<li>
					<div class="zhangh_dl">
						<div class="zhangh_dt"><span>账号设置</span><i>◇</i></div>
						<div class="zhangh_dd">
							<a href="/City/personal/list?id=${pojo.id}">个人信息</a>
							<a href="zhangh_anq.html">账户安全</a>
							<a href="/City/shipping/listshi?id=${pojo.id}">收货地址</a>
						</div>
					</div> 
				</li>
			</ul>
		</div>
		<div class="nav_r">
			<div id="search_2014"> 
				<div class="form">
					<input type="text" class="gerzx_text">
					<button class="button1"></button>
				</div>
		    </div>
		    <div id="settleup_2014">
		    	<div class="cw_icon">
		    		<a href="gouw_che.html"><span>购物车<em>3</em>件</span></a>
		    		<i class="ci-right ">
						<s class="jt">◇</s>
					</i>
		    	</div>
		    	<div class="dorpdown-layer">
		    		<div class="smt"><h4 class="fl">最新加入的商品</h4></div>
					<ul>
						<li class="meiyou">
							<div class="gouwc_tup">
								<a href="#"><img src="/City/images/lieb_tupi3.jpg"></a>
							</div>
							<div class="gouwc_biaot">
								<a href="#">探路者TOREAD 情侣款男士三合一套绒冲锋衣 TAWB91603 黑色 </a>
							</div>
							<div class="gouwc_shanc">
								<span>￥50.00</span>
								<a  href="#">删除</a>
							</div>
						</li>
						<li class="meiyou">
							<div class="gouwc_tup">
								<a href="#"><img src="/City/images/lieb_tupi1.jpg"></a>
							</div>
							<div class="gouwc_biaot">
								<a href="#">探路者TOREAD 情侣款男士三合一套绒冲锋衣 TAWB91603 黑色 </a>
							</div>
							<div class="gouwc_shanc">
								<span>￥50.00</span>
								<a  href="#">删除</a>
							</div>
						</li>
						<li class="meiyou">
							<div class="gouwc_tup">
								<a href="#"><img src="/City/images/lieb_tupi2.jpg"></a>
							</div>
							<div class="gouwc_biaot">
								<a href="#">探路者TOREAD 情侣款男士三合一套绒冲锋衣 TAWB91603 黑色 </a>
							</div>
							<div class="gouwc_shanc">
								<span>￥50.00</span>
								<a  href="#">删除</a>
							</div>
						</li>
					</ul>
				</div>
		    </div>
		</div>
	</div>
</div>
  </body>
</html>
