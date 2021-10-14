<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>产品列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script></head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="add"></i><em>编辑/添加产品</em></span>
    <span class="modular fr"><a href="product_list.html" class="pt-link-btn">产品列表</a></span>
  </div>
 <form action="/City_bd/product/t4" method="post" enctype="multipart/form-data">
  <table class="list-style">
   <tr>
    <td style="text-align:right;width:15%;">产品名称：</td>
    <td><input type="text" class="textBox length-long" name="name"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">产品分类：</td>
    <td>
     <select class="textBox" id="t1" onchange = "show1()">
     </select>
      <select class="textBox" id = "t2" onmouseout = "show2()">
     </select>
      <select class="textBox" id = "t3" name="pid" >
     </select>
    <input type="hidden" name = "shopid" value="${pojo.id}"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">价格：</td>
    <td>
     <input type="text" class="textBox length-short" name="price"/>
     <span>元</span>
    </td>
   </tr>
    <td style="text-align:right;">产品主图：
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
    <td style="text-align:right;">产品详情：</td>
    <td><textarea class="textarea" name = "detail">...这里直接调用文本编辑器...移除此处的“textarea”即可</textarea></td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" value="发布新商品" /></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>
<script>
	$(function(){
		var id = ${pojo.id};
		alert(id);
		show();
	})
	function show(){
		var option;
		$.ajax({
			url:'/City_bd/product/t1',
			type:'get',
			data:{},
			success:function(data){
				$(data).each(function(i,item){
  						option+="<option value="+item.id+">"+item.name+"</option>";
  					});
				$("#t1").html(option);
			}	
		});
	}
	function show1(){
		var val = $("#t1").val();
		var option;
		$.ajax({
			url:'/City_bd/product/t2',
			type:'get',
			data:{val:val},
			success:function(data){
				$(data).each(function(i,item){
  						option+="<option value="+item.id+">"+item.name+"</option>";
  					});
				$("#t2").html(option);
			}
		});
		
	}
		function show2(){
		var val = $("#t2").val();
		var option;
		$.ajax({
			url:'/City_bd/product/t3',
			type:'get',
			data:{val:val},
			success:function(data){
				$(data).each(function(i,item){
  						option+="<option value="+item.id+">"+item.name+"</option>";
  					});
				$("#t3").html(option);
			}	
		});
		}
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