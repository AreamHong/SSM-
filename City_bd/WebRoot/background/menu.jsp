<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>左侧导航</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="/City_bd/js/jquery.js"></script>
<script src="/City_bd/js/public.js"></script>
</head>
<body style="background:#313131">
<div class="menu-list">
 <a href="/City_bd/background/main.jsp" target="mainCont" class="block menu-list-title center" style="border:none;margin-bottom:8px;color:#fff;">起始页</a>
 <ul>
  <li class="menu-list-title">
   <span>订单管理</span>
   <i>◢</i>
  </li>
  <li>
   <ul class="menu-children">
    <li><a href="/City_bd/order/list?index=1" title="商品列表" target="mainCont">订单列表</a></li>
   </ul>
  </li>
 
  <li class="menu-list-title">
   <span>商品管理</span>
   <i>◢</i>
  </li>
  <li>
   <ul class="menu-children">
    <li><a href="/City_bd/Item/getItemList" title="商品列表" target="mainCont">商品列表</a></li>
    <li><a href="/City_bd/ManageCategory/getGoods" title="商品分类" target="mainCont">商品分类</a></li>
   </ul>
  </li>
  
 
  
  <li class="menu-list-title">
   <span>系统设置</span>
   <i>◢</i>
  </li>
  <li>
   <ul class="menu-children">
    <li><a href="/City_bd/admin/list" title="站点基本设置" target="mainCont">站点管理员</a></li>
    <li><a href="/City_bd/user/sel?username=&index=1&state=2" title="站点基本设置" target="mainCont">普通用户管理</a></li>
  	
   </ul>
  </li>
  
  <li class="menu-list-title">
   <span>广告管理</span>
   <i>◢</i>
  </li>
  <li>
   <ul class="menu-children">
    <li><a href="/City_bd/poster/list?index=1" title="站点基本设置" target="mainCont">广告列表</a></li>
   </ul>
  </li>
    
 </ul>
</div>
</body>
</html>