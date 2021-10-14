<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——设置头像</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="/City/js/jquery-1.11.1.min.js"></script>
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 <style>
 		.upload_main{
 			    position: absolute;
 		}
 		.upload_btn_box{
 				padding-top: 300px;
 		}
 		.upload_tip .upload_text{
 			margin-left: 0px;
  			margin-top: 20px;
 		}
 		#submit{
 			margin-top: 260px;
 			margin-right: 60px;
 		}
 </style>
<script type="text/javascript" src="/City/pie.js"></script> 
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
				<div class="tod_tongc_zuoc">
				<div class="zuoc_toux">
					<div class="toux_kuang">
						<div class="userImage">
							<div class="myGome_userPhoto">
								<img src="/City/statics/uploadfiles/${pojo.portrait}">
								<a class="edit_photo_bitton" href="profile" target="_blank">编辑</a>
							</div>
						</div>
						<div class="user_name_Level">
							<p class="user_name" title="山的那边是海">${pojo.nickname}</p>
							<p class="userLevel">会员：<span class="levelId icon_plus_nickname"></span></p> 
						</div>
					</div>
					<div class="user_counts">
						<ul>
							<li>
                                <div class="count_item">
                                    <a href="#">
                                        <i class="count_icon count_icon01"></i> 待付款
                                        <em id="waitPay">2</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="#">
                                        <i class="count_icon count_icon02"></i> 待收货
                                        <em id="waitPay">4</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="#">
                                        <i class="count_icon count_icon03"></i> 待提货
                                        <em id="waitPay">0</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="#">
                                        <i class="count_icon count_icon04"></i> 待评价
                                        <em id="waitPay">8</em>
                                    </a>
                                </div>
                            </li>
						</ul>
					</div>
				</div>
				<div class="wod_tongc_daoh_lieb">
					<div class="diy_top">
						<ul>
							<h3>订单中心</h3>
							<li><a href="/City/cityorder/sel?userid=${pojo.id}&index=1">我的订单</a></li>
							<li><a href="#">退换货单</a></li>
							<li><a href="#">评价晒单</a></li>
						</ul>
						<ul>
							<h3>管理中心</h3>
							<li><a href="/City/Collect/getCollectCategory?userid=${pojo.id }">我的收藏</a></li>
							<li><a href="#">我的预约</a></li>
							<li><a href="#">我的咨询</a></li>
							<li><a href="#">投诉管理</a></li>
						</ul>
					</div>
					<div class="diy_top">
						<ul>
							<h3>账户设置</h3>
							<li><a href="/City/personal/list?id=${pojo.id}">基本资料</a></li>
							<li><a href="#">账户安全</a></li>
							<li><a href="/City/shipping/listshi?id=${pojo.id}">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="wt">
						<ul>
							<li><a href="/City/personal/list?id=${i.id}">个人信息</a></li>
							<li class="dangq_hongx"><a href="/City/personal/list1?id=${i.id}">设置头像</a></li>
								
						</ul>
					</div>
					<form action="/City/personal/portrait" method="post" enctype="multipart/form-data">
					<div class="wd">
						 <div class="up_avater">
						 	<div class="warp_tip">
								<input id="file_upload" type="file" name = "f1" accept="image/jpeg,image/png,image/gif" />
       							 
						 		<div class="upload_tip">
						 			<p class="upload_text">仅支持JPG、JPEG、PNG图片文件，且文件小于2M</p>
						 		</div>
						 		<div class="upload_main">
						 			<div class="up-left">
							 			<div class="pic-show">
								 			<div class="pic-wrap ">
								 				<img src="/City/images/7_170312181624_2.jpg" id = "preview0">
								 			</div>
							 			</div>
						 			</div>
						 			<div class="up-right">
						 				<div class="up-right-title">
							 				<h5>效果预览</h5>
							 				<p>你上传的图片会自动生成3种尺寸，请注意小尺寸的图片是否清晰</p>
						 				</div>
						 				<div class="up-top">
							 				<div class="pic-100-box">
								 				<div class="pic-100 ">
								 					<img src="/City/images/7_170312181624_2.jpg" id = "preview1">
								 				</div>
								 				<span class="pic-tip">100X100像素</span>
							 				</div>
						 				</div>
						 				<div class="uc_container">
							 				<div class="up-bottom uc-pic-img">
								 				<div class="pic-60-box">
									 				<div class="pic-60 ">
									 					<img src="/City/images/7_170312181624_2.jpg" id ="preview2">
									 				</div>
									 				<span class="pic-tip">60X60像素</span>
								 				</div>
							 				</div>
							 				<div class="uc-min uc-pic-img">
								 				<div class="pic-30-box">
								 					<div class="pic-30 ">
								 						<img src="/City/images/7_170312181624_2.jpg" id = "preview3">
								 					</div>
								 					<span class="pic-tip">30X30像素</span>
								 				</div>
							 				</div>
						 				</div>
						 			</div>
						 		</div>
						 	</div>
						 	<div class="upload_btn_box">
						 		<input type="hidden" name = "id" value = "${i.id}"/>
						 		<input type="submit" value="保存" class="save-btn" id="submit">
						 	</div>
						 </div>
					</div>
						 </form>
				</div>
			</div> 
		</div>
	</div>
</div>
 
 
</script>
<!--底部-->
<jsp:include page="/instrument/below.jsp"></jsp:include>

 

</body>

</html>
 
