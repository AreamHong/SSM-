<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>广告位</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="settings"></i><em>广告位</em></span>
  </div>
  
  <form action="/City_bd/poster/upadd" method="post" enctype="multipart/form-data">
  <input type="hidden" name="id" value="${poster.id}"/>
  <table class="noborder">
   <tr>
    <td style="width:15%;text-align:right;"><b>广告投放位置：</b></td>
    <td>
     <select class="textBox" name="postertypeid" id="pid" onchange="gai()">
     	<c:forEach items="${postertype }" var="i">
     		<c:if test="${i.id == poster.postertypeid}">
     			<option value="${i.id}" selected="selected">${i.type }</option>
     		</c:if>
     		<c:if test="${i.id != poster.postertypeid}">
      		<option value="${i.id}">${i.type }</option>
     		</c:if>
     	</c:forEach>
     </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>媒介类型：</b></td>
    <td>
     <select class="textBox">
      <option>图片</option>
      <option>代码</option>
      <option>文字</option>
     </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>上传图片：</b></td>
    <td><input type="file" name="f1"/></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>广告播放：</b></td>
    <td>
    	<c:if test="${poster.store == 1}">
    		<input type="radio" value="1" name="store"  checked="checked" onclick="tj()"/>播放
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	<input id="bbf" type="radio" value="2" name="store"/>不播放
    	</c:if>
    	<c:if test="${poster.store != 1}">
	    	<input type="radio" value="1" name="store" onclick="tj()"/>播放
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	<input id="bbf" type="radio" value="2" name="store" checked="checked"/>不播放
    	</c:if>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<span style="color: red;" id="tishi"></span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>输入广告名称：</b></td>
    <td><input type="text" name="name" value="${poster.name}" /></td>
   </tr>
   <tr>
    <td style="text-align:right;"><b>输入广告代码：</b></td>
    <td><textarea class="textarea" name="postercode">${poster.postercode}</textarea></td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td>
    	<input type="submit" value="保存" class="tdBtn"/>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="button" value="返回" class="tdBtn" onclick="javascript:history.back(-1);"/>
    </td>
   </tr>
  </table>
  </form>
 </div>
 <script type="text/javascript" src="/City_bd/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
	// 当前位置的广告播放队列已满
	function tj(){
		var pid = $("#pid").val();
		console.log(pid);
		$.ajax({
			url:'http://localhost:8080/City_bd/poster/selStore',
			type:'get',
			data:{pid:pid},
			success:function(data){
				console.log(data);
				// n代表已满
				if(data == "n"){
					$("#tishi").html("当前位置的广告播放队列已满");
					$("#bbf").prop("checked",true);
				}else{
					$("#tishi").html("");
				}
			}
		})
	}
	// 当选择把广告放在哪里的时候触发
	function gai(){
		$("#tishi").html("");
	    // 播放按钮也被选择
		if($("#bbf").prop("checked") == false){
			tj();
		}
	}
	</script>
</body>
</html>