<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>产品列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><em>查看详情</em></span>
    <span class="modular fr"><a onclick="refreshList(${nowPage})" class="pt-link-btn">产品列表</a></span>
  </div>
  <form action="product_list.html">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">产品名称：</td>
    <td>${item.name }</td>
   </tr>
   <tr>
    <td style="text-align:right;">产品分类：</td>
    <td>
     	${goods1.name }&nbsp;&nbsp;&nbsp;${goods2.name }&nbsp;&nbsp;&nbsp;${item.goods3.name }
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">市场价：</td>
    <td>
     ${item.price }
     <span>元</span>
    </td>
   </tr>
   
   <c:forEach begin="1" end="${item.goods3.categoryCount}" var="i">
   <c:set var="cg" value="category${i}"/>
   	<tr>
    <td style="text-align:right;">${item.goods3[cg]}：</td>
    <td>${item[cg]}</td>
   </tr>
  
   </c:forEach>
  

  </table>
  </form>
 </div>
</body>
</html>