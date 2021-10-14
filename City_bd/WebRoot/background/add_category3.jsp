<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int pid = new Integer(request.getParameter("pid"));
request.setAttribute("pid", pid);
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>新增产品分类</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="/City_bd/js/jquery-1.11.2.min.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i></i><em>添加分类</em></span>
  </div>
   <form action="/City_bd/ManageCategory/addGoods3" method="post" enctype="multipart/form-data">
   <input type="hidden" name="pid" value="${pid }"/>
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">分类名称：</td>
    <td>
     <input type="text" class="textBox" name="name"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">是否显示：</td>
    <td>
     <input type="radio" name="isDelete" id="yes" value="0"/>
     <label for="yes">是</label>
     <input type="radio" name="isDelete" id="no" value="1"/>
     <label for="no">否</label>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;width:15%;">属性分类数量：</td>
    <td>
     <input type="text" class="textBox" id="categoryCount" name="categoryCount" style="width:30px" onmouseout="getCategory()" />
    </td>
   </tr>
   
  </table>
  </form>
 </div>
 <script>
	function getCategory(){
		var categoryCount = $("#categoryCount").val();
		
		$.ajax({
  						url:'/City_bd/ManageCategory/getCategoryCount',
  						type:'get',
  						data:{count:categoryCount},
  						success:function(data){
  							console.log(data);
  							var str="";
  							for(var i=1;i<=data;i++){
  								str+="<tr><td style='text-align:right;width:15%;'>属性"+i+"：</td><td><input type='text' class='textBox' name='category"+i+"'/></td></tr>";
  							}
							str+="<tr><td style='text-align:right;'></td><td><input type='submit' value='保存' class='tdBtn' /></td></tr>";
							$(".list-style").append(str);
  						}
  				});
		
		
	}
</script>
</body>
</html>