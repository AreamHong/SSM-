<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>产品分类</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />

	<script>
		function del(name,id,shopId){
			if(confirm("是否删除"+name)){
				window.location="/City_bd/ManageCategory/Del?id="+id+"&goodsId="+shopId;
			}
		}
	</script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i></i><em>产品分类</em></span>
    <span class="modular fr"><a href="/City_bd/background/add_category1.jsp" class="pt-link-btn">+添加一级分类</a></span>
    
   
  </div>
  
  <table class="list-style">
   <tr>
    <th>分类名称</th> 
    <th>分类级别和属性分类</th>
    <th>是否显示</th>
    <th>操作</th>
   </tr>
   <c:forEach items="${goods1}" var="i" varStatus="status1">
   	<tr>
   		<td>
   			1
     		<span>${i.name }</span>
     		<span class="modular fr"><a href="/City_bd/background/add_category2.jsp?pid=${i.id}" class="pt-link-btn"  style="display:inline">+添加二级分类</a></span>
    	</td>
    	<td>一级分类</td>
    	<c:if test="${i.isDelete==0 }">
    	<td class="center"><a href="/City_bd/ManageCategory/isDisplay?id=${i.id}&goodsId=1&isDisplay=1"><img src="/City_bd/images/yes.gif"/></a></td>
    	</c:if>
    	<c:if test="${i.isDelete==1 }">
    	<td class="center"><a href="/City_bd/ManageCategory/isDisplay?id=${i.id}&goodsId=1&isDisplay=0"><img src="/City_bd/images/no.gif"/></a></td>
    	</c:if>
  	    <td class="center"><a class="block" title="移除"><img onclick="del('${i.name }',${i.id},1)" src="/City_bd/images/icon_trash.gif"/></a></td>
    </tr>
     
     <c:forEach items="${goods2[status1.index]}" var="j" varStatus="status2">
      	<tr>
   		<td style="text-indent:2em;">
     		2
     		<span>${j.name }</span>
     		<span class="modular fr"><a href="/City_bd/background/add_category3.jsp?pid=${j.id}" class="pt-link-btn" style="display:inline">+添加三级分类</a></span>
    	</td>
    	<td>二级分类</td> 
    	<c:if test="${j.isDelete==0 }">
    	<td class="center"><a href="/City_bd/ManageCategory/isDisplay?id=${j.id}&goodsId=2&isDisplay=1"><img src="/City_bd/images/yes.gif"/></a></td>
    	</c:if>
    	<c:if test="${j.isDelete==1 }">
    	<td class="center"><a href="/City_bd/ManageCategory/isDisplay?id=${j.id}&goodsId=2&isDisplay=0"><img src="/City_bd/images/no.gif"/></a></td>
    	</c:if>
  	    <td class="center"><a class="block" title="移除"><img onclick="del('${j.name }',${j.id},2)" src="/City_bd/images/icon_trash.gif"/></a></td>
   		 </tr>
    <c:forEach items="${goods3[status1.index]}" var="k" varStatus="status3">
    	<c:forEach items="${k}" var="h" >
    	<c:if test="${status2.index==status3.index}">
      	<tr>
   		<td style="text-indent:4em;">
     		3
     		<span>${h.name }</span>
    	</td>
    	<td>三级分类,属性分类个数${h.categoryCount }
    		<c:forEach begin="1" end="${h.categoryCount }" var="t">
				<c:set var="cg" value="category${t}"  />
				&nbsp;&nbsp;属性${t }:${h[cg]}
			</c:forEach>
    	</td>
    	<c:if test="${h.isDelete==0 }">
    	<td class="center"><a href="/City_bd/ManageCategory/isDisplay?id=${h.id}&goodsId=3&isDisplay=1"><img src="/City_bd/images/yes.gif"/></a></td>
    	</c:if>
    	<c:if test="${h.isDelete==1 }">
    	<td class="center"><a href="/City_bd/ManageCategory/isDisplay?id=${h.id}&goodsId=3&isDisplay=0"><img src="/City_bd/images/no.gif"/></a></td>
    	</c:if>
  	    <td class="center"><a class="block" title="移除"><img onclick="del('${h.name }',${h.id},3)" src="/City_bd/images/icon_trash.gif"/></a></td>
    </tr>
  	</c:if>
    </c:forEach>
     </c:forEach>
     </c:forEach>
     </c:forEach>
  
  </table>
  
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a >第一页</a>
	   <a>1</a>
	   <a>最后一页</a>
	  </div>
  </div>
 </div>
</body>
</html>