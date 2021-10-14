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
<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script><script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="add"></i><em>编辑/添加属性</em></span>
    <span class="modular fr"><a href="product_list.html" class="pt-link-btn">产品列表</a></span>
  </div>
 <form action="/City_bd/product/add" method="post" enctype="multipart/form-data">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">产品名称：</td>
    <td>
    	${list.shopname}
    	<input type = "hidden" name ="shopname" value="${list.shopname}"/>
    	<input type = "hidden" name ="pid" value="${list1.pid}"/>
    	<input type = "hidden" name ="shopid" value="${list.shopid}"/>
    	<input type = "hidden" name ="merchants" value="${list.merchants}"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">${list1.attribute1}：</td>
    <td>
    	<input type = "text" name="attribute1"/>
    </td>
   </tr>
     <tr>
    <td style="text-align:right;">${list1.attribute2}：</td>
    <td>
    	<c:if test="${list1.pid == 1}">
    	<input type="radio" name="attribute2" value="L"/>L
    	<input type="radio" name="attribute2" value="S"/>S
    	<input type="radio" name="attribute2" value="M"/>M
    	</c:if>
    	<c:if test="${list1.pid != 1}">
    	<input type = "text" name="attribute2"/>
    	</c:if>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">价格：</td>
    <td>
     <input type="text" class="textBox length-short" name="money"/>
     <span>元</span>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">货源：</td>
    <td>
     <input type="text" class="textBox length-short" name="inventory"/>
     <span>元</span>
    </td>
   </tr>
    <td style="text-align:right;">产品展示图片：
    </td>
    <td>
		<input id="file_upload" type="file" name = "f1" accept="image/jpeg,image/png,image/gif" />
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td>
    	<img src="/City/images/7_170312181624_2.jpg" id = "preview0">
    </td>
   </tr>
   
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" value="发布新商品" /></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>0

<script>
	  $(function () {
            $("#file_upload").change(function () {
                var $file = $(this);
                var fileObj = $file[0];
                var windowURL = window.URL || window.webkitURL;
                var dataURL;
                for(var i = 0 ; i < 4 ; i ++){
                var $img = $("#preview"+i);

                if (fileObj && fileObj.files && fileObj.files[0]) {
                    dataURL = windowURL.createObjectURL(fileObj.files[0]);
                    $img.attr('src', dataURL);
                } else {
                    dataURL = $file.val();
                    var imgObj = document.getElementById("preview"+i);
                    // 两个坑:
                    // 1、在设置filter属性时，元素必须已经存在在DOM树中，动态创建的Node，也需要在设置属性前加入到DOM中，先设置属性在加入，无效；
                    // 2、src属性需要像下面的方式添加，上面的两种方式添加，无效；
                    imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    imgObj.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
                 }  
                };
                                
            });
            
        });
    
</script>