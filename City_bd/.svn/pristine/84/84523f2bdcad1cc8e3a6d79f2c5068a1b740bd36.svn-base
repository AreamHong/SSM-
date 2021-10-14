<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>后台管理中心起始页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<style>html,body{width:100%;height:100%;}</style>
<script src="/City_bd/js/jquery.js"></script>
<script src="/City_bd/js/public.js"></script>
</head>
<body>
<div class="wrap start-page">
 <h1><i class="home-icon"></i>欢迎回到**站点管理中心</h1>
 <dl>
  <dt>订单统计信息</dt>
  <dd>
   <ul>
    <li>
     <span>待发货订单：</span>
     <span id="shipping">0</span>
    </li>
    <li>
     <span>未确认订单：</span>
     <span id="unconfirmed">0</span>
    </li>
    <li>
     <span>已成交订单：</span>
     <span id="traded">0</span>
    </li>
   </ul>
  </dd>
 </dl>
 
 <dl>
  <dt>商户统计信息</dt>
  <dd>
   <ul>
    <li>
     <span>店铺总数量：</span>
     <span id="shopscount">0</span>
    </li>
    <li>
     <span>商品总数量：</span>
     <span id="commodity">0</span>
    </li>
    <li>
     <span>实时交易总计：</span>
     <span id="countprice">0.00元</span>
    </li>
   </ul>
  </dd>
 </dl>
 
 <dl>
  <dt>广告统计信息</dt>
  <dd>
   <ul>
    <li>
     <span>广告数量：</span>
     <span id="postercount">0</span>
    </li>
    <li>
     <span>正在播放：</span>
     <span id="yesposter">0</span>
    </li>
    <li>
     <span>未播放：</span>
     <span id="noposter">0</span>
    </li>
   </ul>
  </dd>
 </dl>
 
 <dl>
  <dt>用户统计</dt>
  <dd>
   <ul>
    <li>
     <span>用户量：</span>
     <span id="usercount">1356</span>
    </li>
    <li>
     <span>男：</span>
     <span id="boy">0</span>
    </li>
    <li>
     <span>女：</span>
     <span id="woman">0</span>
    </li>
    <li>
     <span>未设置：</span>
     <span id="unknown">0</span>
    </li>
   </ul>
  </dd>
 </dl>
 
</div>
<script type="text/javascript" src="/City_bd/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
	$(function(){
		console.log("起始页面");
		countUtil();
	})
	function countUtil(){
		$.ajax({
			url:'/City_bd/count/count',
			type:'get',
			data:{},
			success:function(data){
				console.log(data);
				$("#shipping").html(data.shipping);// 待发货
				$("#unconfirmed").html(data.unconfirmed);// 未确认
				$("#traded").html(data.traded);// 已完全
				$("#shopscount").html(data.shopscount);// 店铺数量
				$("#commodity").html(data.commodity);// 商品数量
				$("#countprice").html(data.countprice);// 总金额
				$("#postercount").html(data.postercount);// 广告总数量
				$("#yesposter").html(data.yesposter);// 正在播放的广告数量
				$("#noposter").html(data.noposter);// 未播放的广告数量
				$("#usercount").html(data.usercount);// 用户总数量
				$("#boy").html(data.boy+" %");// 男性占比
				$("#woman").html(data.woman+" %");// 女性占比
				$("#unknown").html(data.unknown+" %");
			}
		})
	}
	</script>
</body>
</html>
