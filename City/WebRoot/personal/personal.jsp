<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——个人信息</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="/City/js/jquery-1.11.1.min.js"></script>
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 <script type="text/javascript" src="/City/js/select.js"></script>
</head>
<body>
<!--头部--> 
 
<!--头部-->
<jsp:include page="/instrument/top.jsp"></jsp:include>


<jsp:include page="/instrument/usertop.jsp"></jsp:include>

<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<jsp:include page="/instrument/userside.jsp" ></jsp:include>
			
			
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="wt">
						<ul>
							<li class="dangq_hongx"><a href="/City/personal/list?id=${i.id}">个人信息</a></li>
							<li><a href="/City/personal/list1?id=${i.id}">设置头像</a></li>
						
						</ul>
					</div>
				
					<div class="wd">
						<div class="user_set">
							<div class="item_meic">
                                <span class="label_meic"><em>*</em> 用户名：</span>
                                <div class="fl_e">
                                    <div><strong>${i.username}</strong></div>
                                </div>
                            </div>	
                            <div class="item_meic">
                                <span class="label_meic"><em>*</em> 登录名：</span>
                                <div class="fl_e">
                                    <strong id = "username_str">${i.username}</strong>
                                    <input type = "text" id = "username" value = "${i.username}" style="display:none" onmouseout="mouse('${i.id}')">
                                    <span class="ftx05 ml10" onclick ="show()">修改</span>
                                    <span class="ftx03" id = "prompt">可用于登录，请牢记哦~</span>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic"><em>*</em> 昵称：</span>
                                <div class="fl_e"> 
                                    <input type="text" class="itxt_succ itxt_succ_url" maxlength="20" id="nickName" name="userVo.nickName" value="${i.nickname}">
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">性别：</span>
                                <div class="fl_e"> 
                                
                                	<input type="radio" name="sex" class="jdradio" value="0" id = "sex1" <c:if test="${i.gender == 0}">checked</c:if>>
                                    <label class="mr10">男</label>

                                    <input type="radio" name="sex" class="jdradio" value="1" id = "sex1" <c:if test="${i.gender == 1}">checked</c:if>>
                                    <label class="mr10">女</label>
                                    <input type="radio" name="sex" class="jdradio" value="2" id = "sex1" <c:if test="${i.gender == 2}">checked</c:if>>
                                    <label class="mr10">保密</label>
                                </div>
                            </div>
                            <div class="item_meic">
                                <span class="label_meic">年龄：</span>
                                <div class="fl_e"> 
	                                <div id="date">
										<select name="year" class="area" id="year">
											<option>
												<c:if test="${i0!=null}">
													${i0}
												</c:if>
												<c:if test="${i0==null}">
													请选择
												</c:if>
											</option>
										</select>
										<label class="ml5 mr5">年</label>
										<select name="month" class="area"  id="month">
											<option>
												<c:if test="${i1!=null}">
													${i1}
												</c:if>
												<c:if test="${i1==null}">
													请选择
												</c:if>
											</option>
										</select>
										<label class="ml5 mr5">月</label>
										<select id="days" class="area"  class="day">
											<option>
												<c:if test="${i2!=null}">
													${i2}
												</c:if>
												<c:if test="${i2==null}">
													请选择
												</c:if>
											</option>
										</select>
										<label class="ml5 mr5">日</label>
									</div>  
                                </div>
                            </div>
                           
                            <div class="item_meic">
                                <span class="label_meic"> </span>
                                <div class="fl_e">
                                    <input type="button" id="button" value="保存" class="savebtn" onclick="inser('${i.id}')">
                                </div>
                            </div>
					
						</div>
					</div>
				</div>
			</div> 
		</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$("#date").selectDate()
	
	$("#days").focusout(function(){
		var year = $("#year option:selected").html()
		var month = $("#month option:selected").html()
		var day = $("#days option:selected").html()
		console.log(year+month+day)
	})
	
})
function show(){
	$("#username_str").hide();
	$("#username").show();
}
function mouse(id){
	//使用异步去数据库判断用户名是否重复进行提示
	var username = $("#username").val();
	$.ajax({
		url:'/City/personal/sele',
		type:'get',
		data:{id:id,username:username},
		success:function(data){
			if(data == 0){
				//用户名可以使用,取消禁用提交按钮。
				$("#prompt").html("用户名可以使用");
				document.getElementById("button").removeAttribute("disabled");
			}else{
				//用户名不可使用,禁用提交按钮。
				$("#prompt").html("用户名重复,不可使用");
				$("#button").attr("disabled","disabled");
			}
		}
	});
}
function inser(id){
		//接收输入框的值
		var username = $("#username").val();
		var nickName = $("#nickName").val();
		var gender = $("input[name='sex']:checked").val();
		//接收年月份的值,用days字段给他拼接成date类型数据储存到数据库
		var year = $("#year").val();
		var month = $("#month").val();
		var days = $("#days").val();
		var age ;
		//只需要判断days日的value有没有值,因为只有选了前两个(年,月)才能选择日。		
		if(days != null && days != "请选择"){
			 age = year + "-" + month + "-" + days;
		}
		//使用异步往后台传值,接收后台返回值,如果为1。那么提示更改成功,跳转页面
		$.ajax({
			url:'/City/personal/update',
			type:'get',
			data:{id:id,username:username,nickname:nickName,gender:gender,age:age},
			success:function(data){
				alert("更改成功！");
				//跳转到视图控制器list直接全局刷新数据
				window.location="/City/personal/list?id="+id;
			}
		});
		
}
</script>
<!--底部-->
<jsp:include page="/instrument/below.jsp"></jsp:include>

 

</body>
</html>