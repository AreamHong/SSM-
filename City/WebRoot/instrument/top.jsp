<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
  </head>
  
  <body>
    
<!--头部-->
<div id="header">
	<div class="header-box">
		<h3 class="huany">通城网购平台欢迎您的到来！</h3>
		<ul class="header-left"> 
			<li class="bj">
				<a class="dib" href="#">北京市</a>
				<i class="ci-leftll">
					<s class="jt">◇</s>
				</i>
				<div class="bj-1">
					<h3>热门城市：</h3>
<!-- 					<a href="">北京</a><a href="">上海</a><a href="">天津</a><a href="">重庆</a><a href="">河北</a><a href="">山西</a><a href="">河南</a><a href="">辽宁</a><a href="">吉林</a><a href="">黑龙江</a><a href="">浙江</a><a href="">江苏</a><a href="">山东</a><a href="">安徽</a><a href="">内蒙古</a><a href="">湖北</a><a href="">湖南</a><a href="">广东</a><a href="">广西</a><a href="">江西</a><a href="">四川</a><a href="">海南</a><a href="">贵州</a><a href="">云南</a><a href="">西藏</a><a href="">陕西</a><a href="">甘肃</a><a href="">青海</a><a href="">宁夏</a><a href="">新疆</a><a href="">台湾</a><a href="">香港</a><a href="">澳门</a><a href="">海外</a><a href="qieh_cs.html">全部+</a>
 -->				<span id="cheng"></span>
 				</div>
			</li>					
		</ul>
		<ul class="header-right">
			<!-- 判断用户是否登录过  -->
			<c:if test="${pojo!=null}">
				<li class="denglu dengl_hou">
				<div>
					<a class="red" href="dengl.html">Hi~${pojo.nickname}</a>
					<i class="icon_plus_nickname"></i>
					<i class="ci-leftll">
						<s class="jt">◇</s>
					</i>
				</div>
				<div class="dengl_hou_xial_k">
					<div class="zuid_xiao_toux">
						<a href="#"><img src="/City/statics/uploadfiles/${pojo.portrait}"></a>
					</div>
					<div class="huiy_dengj"> 
						<a class="tuic_" href="/City/page/dengl.jsp">退出</a>
					</div>
					<div class="toub_zil_daoh">
						<a href="#">待处理订单</a>
						<a href="/City/Collect/getCollectCategory?userid=${pojo.id }">我的收藏</a>
						<a href="http://localhost:8080/City/personal/list?id=${pojo.id}">个人资料</a> 
					</div>
				</div>
				</li>
			</c:if>
			<c:if test="${pojo==null}">
				<li class="denglu">Hi~<a class="red" href="/City/page/dengl.jsp">请登录!</a> <a href="/City/page/zhuc.jsp">[免费注册]</a></li> 
			</c:if>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps" href="/City/Collect/getCollectCategory?userid=${pojo.id }">我的收藏</a></li>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps ps1" href="#">申请入驻</a></li>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps ps2" href="#">客户服务</a></li>
			<li class="shu"></li>
		</ul>
	</div>
</div>

<script type="text/javascript">
	$(function(){
		che();
	})
	
	function che(){
		$.ajax({
			url:'http://localhost:8080/City/cityregion/sel',
			type:'get',
			data:{pid:0},
			success:function(data){
				var str = "";
				$(data).each(function(i,item){
				 	var s = item.name;
				 	if(s.indexOf("省")!=-1){
				 		var ss = s.substring(0,s.indexOf("省"));
				 	}else if(s.indexOf("市")!=-1){
				 		var ss = s.substring(0,s.indexOf("市"))
				 	}else{
				 		var ss = s.substring(0,s.indexOf("自"))
				 	}
					str += "<a>"+ss+"</a>";
				})
				str += "<a href='qieh_cs.html'>全部++</a>";
				$("#cheng").html(str);
			}
		})
	}
	
</script>
  </body>
</html>
