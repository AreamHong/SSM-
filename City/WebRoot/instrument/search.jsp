<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search.jsp' starting page</title>
    
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
    
<div class="toub_beij">
	<div class="logo"><a href="./"><img src="/City/images/logo.png"></a></div>
	<div class="search">
		<input type="text" value="家电一折抢" class="text" id="textt">
		<button class="button">搜索</button>
	</div>
	<div class="right">
		<i class="gw-left"></i>
		<i class="gw-right"></i>
		<div class="sc">
			<i class="gw-count" id="shoppcount"></i>
			<i class="sd"></i>
		</div>
		<a href="http://localhost:8080/City/shopping/list?id=${pojo.id}">我的购物车</a>
		<div class="dorpdown-layer">
			<ul>
				<li class="meiyou">
					<img src="../images/settleup-nogoods.png">
					<span>购物车中还没有商品，赶紧选购吧！</span> 
				</li>
			</ul>
		</div>
	</div>
	<div class="hotwords">
		<a class="biaoti">热门搜索：</a>
		<a href="#">新款连衣裙</a>
		<a href="#">四件套</a>
		<a href="#">潮流T恤</a>
		<a href="#">时尚女鞋</a>
		<a href="#">乐1</a>
		<a href="#">特步女鞋</a>
		<a href="#">威士忌</a>
	</div>
</div>    
<script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
var userid = ${pojo.id}
$(function(){
	indexcount();
})
// 统计购物车有多少数量
function indexcount(){
	$.ajax({
		url:'http://localhost:8080/City/shopping/indexcount',
		type:'get',
		data:{id:userid},
		success:function(data){
			$("#shoppcount").html(data);
      	}
	})
}
</script>
  </body>
</html>
