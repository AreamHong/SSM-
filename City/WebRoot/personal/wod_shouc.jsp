<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  
<head> 
<meta charset="utf-8">
<title>WangID通城——收货地址</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
  
<script type="text/javascript" src="/City/js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 

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
					<div class="shand_piaot">我的收藏</div>
					<div class="slideTxtBox_shouc">
						<div class="hd">  
							<ul><li>商品</li></ul>
						</div>
						<div class="bd">
							<ul>
								<div id="cg">
									<jsp:include page="CollectCg.jsp"></jsp:include>
							
								</div> 
								<div class="uc_overdueTable">
									<div class="list_thead">
										<div class="col432">
											<label class="label"><input class="checkbox" type="checkbox" onclick="allchecked()" id="boxid">全选</label>
											<a href="javascript:void(0)" class="button_grey" onclick="dele()" >取消收藏</a>
										</div>
									</div>
									
									<div id="collectList">
										<jsp:include page="CollectList.jsp" ></jsp:include>
									</div>
									
								</div>
							</ul>
							
						</div>
					</div> 
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<script type="text/javascript">jQuery(".slideTxtBox_shouc").slide();</script>


<!--底部-->
<jsp:include page="/instrument/below.jsp"></jsp:include>
 

<script type="text/javascript">
				var userid = ${pojo.id};
				function chooseCategory(obj,id){
					$("#c").val(id);
				
				   var category = $(".beij_color");
				   
				   $(category).each(function(i,item){
				   		$(item).attr("class","category");
				   })
				   $(obj).attr("class","beij_color");
				   refreshList(id,1);
				}
				function refreshCg(){
					$.ajax({
  						url:'/City/Collect/refreshCg',
  						type:'get',
  						data:{userid:userid},
  						success:function(data){
  							
  						}
  				});
				}
				function cancelCollect(id){
					var pid = $("#c").val();
				
					$.ajax({
  						url:'/City/Collect/cancelCollectShop',
  						type:'get',
  						data:{id:id,pid:pid,userid:userid,index:1},
  						success:function(data){
  							$("#collectList").html(data);
  						}
  					});
				}
				function refreshList(id,index){
					$.ajax({
  						url:'/City/Collect/refreshList',
  						type:'get',
  						data:{pid:id,userid:userid,index:index},
  						success:function(data){
  							$("#collectList").html(data);
  							$("input[name='che1']").removeAttr("checked")
  							var box = document.getElementById("boxid");
  							$("#boxid").removeAttr("checked");
  						}
  					});
				}
			function dele(){
			var pid = $("#c").val()
      		var a = 0;
      		var str = "";
      		$("input[name='che1']").each(function(i,item){
      			if($(item).prop("checked")==true){
      			 a = 1;
 	     			str = $(item).val()+","; 
    				$.ajax({
  						url:'/City/Collect/delShop',
  						type:'get',
  						data:{str:str,pid:pid,userid:userid,index:1},
  						success:function(data){
  									$("#collectList").html(data)
  							}
  						}); 
  				} 
  			});  
  			if(a == 0){
  				alert("至少要选择一个");
  			}	
     	 }
     	 function allchecked(){
     	 	var checkbox = $("input[name='che1']");
     	 	var box = document.getElementById("boxid");
             if(box.checked == false){
                 for (var i = 0; i < checkbox.length; i++) {
                     checkbox[i].checked = false;
                 }
             }else{
                 for (var i = 0; i < checkbox.length; i++) {
                     checkbox[i].checked = true;
                     }
             }
     	 	
     	 }
			</script>

</body>
</html>
