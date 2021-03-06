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
<script src="/City_bd/js/jquery.js"></script>
<script src="/City_bd/js/public.js"></script>


</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i></i><em>产品列表</em></span>
    <span class="modular fr"><a href="/City_bd/background/edit_product.jsp" class="pt-link-btn">+添加商品</a></span>
  </div>
  <div class="operate">
   <form>
    <select class="inline-select" id="inline-select">
    	<option>全部店铺</option>
     <c:forEach items="${store }" var="s">
     	<option value="${s.id }">${s.shopname }</option>
     </c:forEach>
    </select>
    <input type="text" class="textBox length-long" placeholder="输入产品名称..." id="selname"/>
    <input type="button" value="查询" class="tdBtn" onclick="sel()"/>
   </form>
  </div>
  <div id="list">
  	<jsp:include page="ItemList.jsp" />
  </div>
  </div>

 <script>
 	function refreshList(index){
 		var store = $(".inline-select").val();
		var name = $("#selname").val();
		$.ajax({
  						url:'/City_bd/Item/refreshList',
  						type:'get',
  						data:{name:name,shopid:store,index:index},
  						success:function(data){
  							$("#list").html(data);
  						}
  				});
 	}
	$("#inline-select").change(function(){
		refreshList(1);
	});
	function sel(){
		refreshList(1);
	}
 </script>
</body>
</html>