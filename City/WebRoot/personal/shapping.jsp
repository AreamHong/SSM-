<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——收货地址</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<!-- <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> -->
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
<!--  <script type="text/javascript" src="js/select.js"></script> -->
<script type="text/javascript" src="/City/js/jquery-1.4.4.min.js"></script>
 <script type="text/javascript" src="/City/js/jquery.reveal.js"></script>

 <script type="text/javascript" src="/City/js/chengs/jquery.js"></script>
<script type="text/javascript" src="/City/js/chengs/bootstrap.js"></script>
<script type="text/javascript" src="/City/js/chengs/city-picker.data.js"></script>
<script type="text/javascript" src="/City/js/chengs/city-picker.js"></script>
<script type="text/javascript" src="/City/js/chengs/main.js"></script>

</head>
<body>
<!--头部--> 
  
<!--头部-->
<jsp:include page="/instrument/top.jsp"></jsp:include>


<jsp:include page="/instrument/usertop.jsp" ></jsp:include>


<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<jsp:include page="/instrument/userside.jsp" ></jsp:include>
			
			
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">收货地址</div>
					<div class="shouh_diz_beij">
					<div id="div_1">
			<c:forEach items="${list}" var="i" >
						<div class="shouh_diz_kuang shouh_diz_kuang_mor">
							<div class="item">
								<span class="labal">收件人：</span>
								<p>${i.contact}</p>
							</div>
							<div class="item">
								<span class="labal">所在地区：</span>
								<p>${i.province}${i.city}${i.area}</p>
							</div>
							<div class="item">
								<span class="labal">地址：</span>
								<p>${i.address}</p>
							</div>
							<div class="item">
								<span class="labal">手机：</span>
								<p>${i.phone}</p>
							</div>
							<input type = "hidden" name = "id" value = "${pojo.id}">
							
							<div class="bianj_yv_shanc">
								<span id="moren" class="mor_color" onclick="updef('${i.id}','${i.addressdef}','${pojo.id}')">${i.addressdef}</span>
								<a href="#"  data-reveal-id="myModal_1" onclick="showin('${i.id}','${i.contact}','${i.province}','${i.city}','${i.area}','${i.address}','${i.phone}')">编辑</a>
								<a href="/City/shipping/delete?id=${i.id}&pid=${pojo.id}">删除</a>
							</div>
						</div>
						
			</c:forEach>
					</div>
						<div class="xinz_shouh_dz_ann"><a href="#" data-reveal-id="myModal" >新增收货地址</a></div>
					</div> 
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div>
<!--新增地址表单-->
<div id="myModal" class="reveal-modal">
	<div class="xint_biaot">
		<h3>新添收货地址</h3>
	</div>
	<div class="shouj_diz_b">
		<form action ="/City/shipping/inshow">
		<div class="biaod_1">
			<p><em>*</em>联系人：</p>
			<input type="text" class="text" name = "contact"/>
		</div>
		<div class="biaod_1">
			<p><em>*</em>收货地址：</p>
			<div class="xinz_diz_cs">
				<div class="docs-methods">
					
						<div id="distpicker">
							<div class="form-group">
							
								<div style="position: relative;">
									<select id = "s1" onclick="show_region('s1')" name="province">
									</select>
									<select id = "s2" onclick="show_region('s2')" name="city">
									</select>
									<select id = "s3" name = "area">
									</select>
								</div>
						
							</div>
						</div>
					
				</div>
			</div>
		</div>
		<div class="biaod_1">
			<p><em>*</em>详细地址：</p>
			<input type="text" class="text text1" name = "address">
		</div>
		<div class="biaod_1 biaod_2">
			<div class="liangp_e">
				<p><em>*</em>手机号码：</p>
				<input type="text" class="text")" name = "phone">
				<input type="hidden" name = "id" value="${pojo.id}">
			</div>
		</div>
		<div class="biaod_1">
			<input type = "submit" class="diz_baoc" value = "保存">
		</div>
		</form>
	</div>
	<a class="close-reveal-modal">&#215;</a>
</div>

<div id="myModal_1" class="reveal-modal">
	<div class="xint_biaot" >
		<h3>新添收货地址</h3>
	</div>
	<form action="/City/shipping/up">
	<div class="shouj_diz_b">
		<div class="biaod_1">
			<p><em>*</em>联系人：</p>
			<input type="text" class="text" name="contact" id="contact">
		</div>
		<div class="biaod_1">
			<p><em>*</em>收货地址：</p>
			<div class="xinz_diz_cs">
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">
							<div class="form-group">
								<div style="position: relative;">
										<div style="position: relative;">
									<select id="b1" onclick="show_region2('b1')" name = "province">
										<option id ="pro" selected="selected"></option>	
									</select>
									<select id = "b2" onclick="show_region2('b2')" name = "city" >
										<option id="cit"></option>
									</select>
									<select id = "b3" name = "area" >
										<option id ="are" ></option>
									</select>
								</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="biaod_1">
			<p><em>*</em>详细地址：</p>
			<input type="text" class="text text1" name="address" id="address">
		</div>
		<div class="biaod_1 biaod_2">
			<div class="liangp_e">
				<p><em>*</em>手机号码：</p>
				<input type="text" class="text")" name = "phone" id="phone">
			</div>
				<input type = "hidden" name = "pid" value="${pojo.id}">
				<input type ="hidden" name = "id" id="shi_id"/>
		</div>
		<div class="biaod_1">
			<input type = "submit" class="diz_baoc" value="保存"/>
		</div>
	</form>
	</div>
	<a class="close-reveal-modal">&#215;</a>
</div>

<!--底部-->
<jsp:include page="/instrument/below.jsp"></jsp:include>



 <script>
 	var i;
     	$(function(){     	
     		i = 0;
     		show_region("s");
     		show_region2("s");
     	
     		var p = $("id").val();
     		
     	});
     	//修改默认地址
     	function updef(id,def,pid){
     		if(def == "设为默认地址"){     			
     		$.ajax({
     			url:'/City/shipping/updef',
     			type:'get',
     			data:{id:id,pid:pid},
     			success:function(data){
     				if(data == 1){
     					alert("修改成功");
     					window.location="/City/shipping/listshi?id="+pid;
     				}
     			}
     		});
     		}
     	}
  	 //添加用户地址
 	 function show_region(s){
 			var sal="s1";
  			var	id = $("#"+s).val();
  			if(s =="s"){
  				id = 0;
  			}else if(s =="s1"){
	  			sal="s2";
	  	    	$("#s3").html("");
  			}else if(s =="s2"){
  				sal="s3";
  			}
  			$.ajax({
  				url:'/City/region/showregion',
  				type:'get',
  				data:{id:id},
  				success:function(data){
  					var tr="";
  					$(data).each(function(i,item){
  						tr+="<option value="+item.id+">"+item.name+"</option>";
  					});
	  					$("#"+sal).html(tr);
  				}
  			});
 	} 
 	 function showin(id,contact,pro,cit,are,address,phone){
 	 		$("#shi_id").attr('value',id);
 	 		$("#contact").attr('value',contact);
 	 		$("#pro").html(pro);
 	 		$("#cit").html(cit);
 	 		$("#are").html(are);
 	 		$("#address").attr('value',address);
 	 		$("#phone").attr('value',phone);
 	 		//$("#pro").remove("selected");
 	 		//$("#pro").attr('selected',"1");
 	 }
 	 function show_region2(s){
 			var sal="b1";
  			var	id = $("#"+s).val();
  			if(s =="s"){
  				id = 0;
  			}else if(s =="b1"){
	  			sal="b2";
	  	    	$("#b3").html("");
  			}else if(s =="b2"){
  				sal="b3";
  			}
  			$.ajax({
  				url:'/City/region/showregion',
  				type:'get',
  				data:{id:id},
  				success:function(data){
  					var tr="";
  					$(data).each(function(i,item){
  						tr+="<option value="+item.id+">"+item.name+"</option>";
  					});
  				/* 	if(i == 0){
	  					$("#"+sal).append(tr);
  					}else{
  					}
  					i++; */
  						$("#"+sal).html(tr);  			
  				}
  			});
 	} 
 		
 </script>


</body>
</html>
