<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
<head> 
<meta charset="utf-8">
<title>WangID通城</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
 <script src="/City/js/jquery-1.11.3.min.js" ></script>
<script src="/City/js/index.js" ></script> 
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->


<script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">

</script>
<script type="text/javascript" src="/City/js/jquery.SuperSlide.2.1.1.source.js"></script>
</head>
<body>
<!--侧边-->
<jsp:include page="/instrument/right.jsp"></jsp:include>

<!--头部-->
<jsp:include page="/instrument/top.jsp"></jsp:include>

<!--搜索栏-->      
<jsp:include page="/instrument/search.jsp"></jsp:include>


<!--轮播图上方导航栏  一栏-->
<div id="navv">	
	<div class="focus">
		<div class="focus-a">
			<div class="fouc-font"><a href="">全部商品分类</a> </div>
		</div>
		<div class="focus-b">
			<ul>
				<li><a href="#">商城首页</a></li>
				<li><a href="#">本地生活</a></li>
				<li><a href="#">团购专区</a></li>
				<li><a href="#">积分商城 </a></li>
				<li><a href="#">分销系统</a></li>
				<li><a href="#">办公耗材</a></li>
				<li><a href="#">饰品礼品</a></li>
				<li><a href="#">休闲娱乐</a></li>
			</ul>
		</div>

<div class="dd-inner">
	<c:forEach items="${goods1}" var="i">
	<div class="font-item" >
		<div class="item fore1" onmousemove="getGoods23(${i.id},'${i.name }')">
			<h3 class="da_zhu">${i.name }</h3>
		</div>
		<div class="font-item1">
			<div class="font-lefty">
				<dl class="fore1">
					
				</dl>
			</div>
		</div>
		<script type="text/javascript">
		
			function getGoods23(id,name){
		
				$.ajax({
					url:'/City/Goods/getGoods23',
  					type:'get',
  					data:{id:id},
  					success:function(data){
  						str="<div class='font-lefty'>";
  						$(data.goods2).each(function(i,item){
  						str+="<dl class='fore1'><dt>"+item.name+"<i>></i></dt><dd>";
  							$(data.goods3[i]).each(function(i2,item2){
	  							str+="<a href='/City/Item/getItem?id="+item.id+"&name1="+name+"&name2="+item.name+"&pid3="+item2.id+"'>"+item2.name+"</a>";
  							})
  						str+="</dd></dl>";
  						})
  						str+="</div>";
  						$(".font-item1").html(str);
  					}
				})
			}
		</script>
	</div>
	</c:forEach>
</div>
	</div>
</div> 

<!--轮播图-->
<div id="lunbo">
	<ul id="one">
		<li><a href=""><img src="./images/banner.jpg"></a></li>
		<li><a href=""><img src="./images/banner1.jpg"></a></li>
		<li><a href=""><img src="./images/banner.jpg"></a></li>
		<li><a href=""><img src="./images/banner1.jpg"></a></li>
	</ul>
	<ul id="two">
		<li class="on">1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
	</ul>
	<!--轮播图左右箭头-->
	<div class="slider-page">
		<a href="javascript:void(0)" id="left"><</a>
		<a href="javascript:void(0)" id="right">></a>
	</div>
</div>

<!--内容一开始了-->
<div class="bend_beij">
	<!--本地生活-->
	<div class="bend_dhengh">
		<div class="neir_biaot">
			<p>本地生活</p>
			<p class="yingw">Local life</p>
		</div>
		<div class="jiank_meis">
			<div class="kuang_1">
				<a href="#">
					<img src="images/jiank_meis.jpg">
					<div class="jiank_meis_wenz">
						<p>健康美食</p>
						<span>让生活&nbsp;&nbsp;更健康&nbsp;&nbsp;更美味&nbsp;&nbsp;更舒心</span>
					</div>	
				</a>
			</div>
			<div class="dianq_qvy">
				<div class="shiq">
					<h2>全部区域</h2>
					<ul>
						<li><a href="#">云岩区</a></li>
						<li><a href="#">南明区</a></li>
						<li><a href="#">白云区</a></li>
						<li><a href="#">乌当区</a></li>
						<li><a href="#">花溪区</a></li>
						<li><a href="#">清镇市</a></li>
						<li><a href="#">开阳县</a></li>
						<li><a href="#" class="hide">开阳县</a></li>
						<li><a href="#" class="hide">开阳县</a></li>
						<li id="show">更多 </li>
					</ul>
				</div>
				<div class="ktv_jiub">
					<ul>
						<li><a href="#">KTV/酒吧</a></li>
						<li><a href="#">周边游</a></li>
						<li><a href="#">生活服务</a></li>
						<li><a href="#">真人CS</a></li>
						<li><a href="#">中医养生</a></li>
						<li><a href="#">体检/齿科</a></li>
						<li><a href="#">棋牌室</a></li>
						<li><a href="#">洗浴/汗蒸</a></li>
					</ul>
				</div>
			</div>
			<div class="lunb_t">
		    	<div class="picScroll_left_1">
					<div class="bd">
						<ul class="picList">
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="images/lengy.jpg" /></a></div>
								<div class="title"><a href="#" target="_blank">卡通美食冷饮</a><span>卡通美食冷饮全家福三人分</span><p>￥6.00</p></div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="images/lengy.jpg" /></a></div>
								<div class="title"><a href="#" target="_blank">卡通美食冷饮</a><span>卡通美食冷饮全家福三人分</span><p>￥6.00</p></div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="images/lengy.jpg" /></a></div>
								<div class="title"><a href="#" target="_blank">卡通美食冷饮</a><span>卡通美食冷饮全家福三人分</span><p>￥6.00</p></div>
							</li>
						</ul>
					</div>
					<div class="hd">
						<ul></ul>
					</div>
				</div>
				<script type="text/javascript">
			jQuery(".picScroll_left_1").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:1,trigger:"click"});
			</script>

			</div>
		</div>
		<div class="toum_">
			<ul>
				<li><a href="#"><img src="images/jiudi_kez.jpg">
						<div class="jiank_meis_wenz_1">
							<p>健康美食</p>
						</div>	
					</a>
				</li>
				<li class="sdfs"><a href="#"><img src="images/xiux_yvl.jpg">
						<div class="jiank_meis_wenz_1">
							<p>休闲娱乐</p>
						</div>	
					</a>
				</li>
				<li><a href="#"><img src="images/liren.jpg">
						<div class="jiank_meis_wenz_1">
							<p>丽人</p>
						</div>	
					</a>
				</li>
			</ul>
		</div>
	</div>
	<!--周边-->
	<div class="zhoub">
		<div class="neir_biaot">
			<p>周边</p>
			<p class="yingw">periphery</p>
		</div>
		<div class="zhoub_neir">
			<ul>
				<li><a href="#"><img src="images/zoub.jpg"></a></li>
				<li><a href="#"><img src="images/zoub2.jpg"></a></li>
				<li><a href="#"><img src="images/zoub3.jpg"></a></li>
			</ul>
		</div>
	</div>
	
</div>

<!--快速通道栏-->
<div class="kuanjlan">
	<ul class="clearfix">
            <li>
                <div class="list-li-box">
                    <a class="list-img" href="#" data-code="index01004-1" target="_blank">
                        <img src="images/meinv_1.jpg">
                        <span class="list-bg"></span>
                        <div class="list-cont">
                            <p class="cont-item"><span>羽饰</span></p>
                            <p class="cont-tile">秋季来点羽毛元素</p>
                            <p class="cont-info">让你更加美丽迷人</p>
                        </div>
                    </a>
                </div>
                
            </li>
            <li>
                <div class="list-li-box">
                    <a class="list-img" href="#" data-code="index01004-2" target="_blank">
                        <img src="images/meinv_2.jpg">
                        <span class="list-bg"></span>
                        <div class="list-cont">
                            <p class="cont-item"><span>原宿风</span></p>
                            <p class="cont-tile">个性夸张美衣</p>
                            <p class="cont-info">潮流原宿风</p>
                        </div>
                    </a>
                </div>
                
            </li>
            <li>
                <div class="list-li-box">
                    <a class="list-img" href="#" data-code="index01004-3" target="_blank">
                        <img src="images/meinv_3.jpg">
                        <span class="list-bg"></span>
                        <div class="list-cont">
                            <p class="cont-item"><span>皮裤</span></p>
                            <p class="cont-tile">高腰修身皮裤</p>
                            <p class="cont-info">轻松享受女神感觉</p>
                        </div>
                    </a>
                </div>
                
            </li>
            <li>
                <div class="list-li-box">
                    <a class="list-img" href="#" data-code="index01004-4" target="_blank">
                        <img src="images/meinv_4.jpg">
                        <span class="list-bg"></span>
                        <div class="list-cont">
                            <p class="cont-item"><span>服装</span></p>
                            <p class="cont-tile">变身女神范儿</p>
                            <p class="cont-info">几种搭配轻松打造</p>
                        </div>
                    </a>
                </div>
            </li>
        </ul>
</div>


<!--层次-->
<div class="chengc_jvz">
	<div class="slideTxtBox">
		<div class="hd">
			<h1>
				<p>办公家具</p>
				<p class="yingw_">Office furniture</p>
			</h1>
			<ul><li>精品热卖</li><li>卧室家具</li><li>灯饰照明</li><li>五金工具</li><li>厨房卫浴</li><li>办公文教</li></ul>
		</div>
		<div class="bd">
			<ul>
				<div class="louc_tup_qieh">
				  	<div class="js-silder ws-slider">
				        <div class="silder-scroll">
				            <div class="silder-main">
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/liuceng_1.jpg" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/2.png" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/3.png" alt=""></a>
				                </div>
				            </div>
				        </div>
				        <div class="js-silder-ctrl">
				            <span class="silder-ctrl-prev"></span>
				            <span class="silder-ctrl-next"></span>
				        </div>
				    </div>
				    <div class="kuas_daoh">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
		</div>
	</div>
</div>

<div class="chengc_jvz">
	<div class="slideTxtBox2">
		<div class="hd">
			<h1>
				<p>手机数码</p>
				<p class="yingw_">Mobile phone digital</p>
			</h1>
			<ul><li>电脑整机</li><li>热门手机</li><li>智能数码</li><li>游戏组装</li><li>硬件存储</li><li>摄影产品</li></ul>
		</div>
		<div class="bd">
			<ul>
				<div class="louc_tup_qieh">
				  	<div class="js-silder ws-slider">
				        <div class="silder-scroll">
				            <div class="silder-main">
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/liuceng_1.jpg" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/2.png" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/3.png" alt=""></a>
				                </div>
				            </div>
				        </div>
				        <div class="js-silder-ctrl">
				            <span class="silder-ctrl-prev"></span>
				            <span class="silder-ctrl-next"></span>
				        </div>
				    </div>
				    <div class="kuas_daoh kuas_daoh_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_2">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_2">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_2">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
		</div>
	</div>
</div>

<div class="chengc_jvz">
	<div class="slideTxtBox3">
		<div class="hd">
			<h1>
				<p>服饰鞋帽</p>
				<p class="yingw_">Shoes and hats</p>
			</h1>
			<ul><li>精品热卖</li><li>精品热卖 </li><li>女装</li><li>男装</li><li>内衣</li><li>时尚套装</li></ul>
		</div>
		<div class="bd">
			<ul>
				<div class="louc_tup_qieh">
				  	<div class="js-silder ws-slider">
				        <div class="silder-scroll">
				            <div class="silder-main">
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/mm_yif.jpg" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/2.png" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/mm_yif.jpg" alt=""></a>
				                </div>
				            </div>
				        </div>
				        <div class="js-silder-ctrl">
				            <span class="silder-ctrl-prev"></span>
				            <span class="silder-ctrl-next"></span>
				        </div>
				    </div>
				    <div class="kuas_daoh kuas_daoh_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_3">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_3">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_3">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
		</div>
	</div>
</div>


<div class="chengc_jvz">
	<div class="slideTxtBox4">
		<div class="hd">
			<h1>
				<p>汽车用品</p>
				<p class="yingw_">Automobile</p>
			</h1>
			<ul><li>精品热卖</li><li>汽车品牌</li><li>维修保养</li><li>汽车装饰</li><li>车载电器</li><li>汽车服务</li></ul>
		</div>
		<div class="bd">
			<ul>
				<div class="louc_tup_qieh">
				  	<div class="js-silder ws-slider">
				        <div class="silder-scroll">
				            <div class="silder-main">
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/qiche_tu.jpg" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/mm_yif.jpg" alt=""></a>
				                </div>
				                <div class="silder-main-img">
				                    <a href="#"><img src="images/3.png" alt=""></a>
				                </div>
				            </div>
				        </div>
				        <div class="js-silder-ctrl">
				            <span class="silder-ctrl-prev"></span>
				            <span class="silder-ctrl-next"></span>
				        </div>
				    </div>
				    <div class="kuas_daoh kuas_daoh_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_4">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
			<ul>
				<div class="pangb_daoh">
					<h1><a href="#"><img src="images/de111.jpg"></a></h1>
					<div class="kuas_daoh_houm kuas_daoh_houm_4">
				    	<a href="#">客厅餐厅</a>
				    	<a href="#">床衣柜</a>
				    	<a href="#">书房儿童</a>
				    	<a href="#">五金工具</a>
				    	<a href="#">沙发实木</a>
				    	<a href="#">床垫</a>
				    	<a href="#">电脑桌</a>
				    	<a href="#">接线板</a>
				    	<a href="#">餐桌餐椅</a>
				    	<a href="#">简易衣柜</a>
				    	<a href="#">书桌</a>
				    	<a href="#">开关插座</a>
				    	<a href="#">酒柜餐边</a>
				    	<a href="#">乳胶床垫</a>
				    	<a href="#">办公桌</a>
				    	<a href="#">USB插座</a>
				    </div>
				</div>
				<div class="you_lirb you_lirb_hou you_lirb_4">
					<div class="shang_buf">
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_002.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb ">
							<a href="#"><img  class="you_tup_k" src="images/yic_001.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
					<div class="xia_buf">
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_003.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb">
							<a href="#"><img  class="you_tup_k" src="images/yic_004.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
						<div class="you_shangp_lieb cnm">
							<a href="#"><img  class="you_tup_k" src="images/yic_005.jpg"></a>
							<a href="#" class="_you_neir_biaot">林氏木业简约现代真皮转角客厅头层牛皮沙发家具2036</a>
							<span>¥ 2599 .00</span>
						</div>
					</div>
				</div>
			</ul>
		</div>
	</div>
</div>
 
<script type="text/javascript">jQuery(".slideTxtBox").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox2").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox3").slide();</script>
<script type="text/javascript">jQuery(".slideTxtBox4").slide();</script>



<!--广告图-->
<div class="guangg_tu">
	<a href="#"><img src="images/guang_tu.jpg"></a>
</div>


<!--特色商品/ 热门商品-->

<div class="tes_shnagp_beij">
	<div class="tes_shangp">
		<div class="neir_biaot">
			<p>特色商品</p>
			<p class="yingw">featured</p>
			<a href="#">MORE+</a>
		</div>
		<div class="tes_shangp_neir_k">
			<div class="tes_dat">
				<a href="#">
					<h1><img class="tes_dat_dongh" src="images/te_se_shangp_da.jpg"></h1>
					<h2>苹果手机iPhone6(32G)全网</h2>
					<span>¥ 4999 .00</span>
				</a>
			</div>
			<div class="tes_xiaot_beij">
				<div class="tes_xiaot_shang">
					<div class="tes_xiaot_neir">
						<a href="#">
							<h1><img class="tes_xiaot_dongh" src="images/tes_shangp_xiao.jpg"></h1>
							<h2>海尔(Haier) BCD452WDPF 452</h2>
							<span>¥ 506 .00</span>
						</a>
					</div>
					<div class="tes_xiaot_neir tes_xiaot_wubian_kuang">
						<a href="#">
							<h1><img class="tes_xiaot_dongh" src="images/tes_shangp_xiao2.jpg"></h1>
							<h2>海尔(Haier) BCD452WDPF 452</h2>
							<span>¥ 506 .00</span>
						</a>
					</div>
				</div>
				<div class="tes_xiaot_shang tes_xiaot_xia">
					<div class="tes_xiaot_neir">
						<a href="#">
							<h1><img class="tes_xiaot_dongh" src="images/tes_shangp_xiao3.jpg"></h1>
							<h2>海尔(Haier) BCD452WDPF 452</h2>
							<span>¥ 506 .00</span>
						</a>
					</div>
					<div class="tes_xiaot_neir tes_xiaot_wubian_kuang">
						<a href="#">
							<h1><img class="tes_xiaot_dongh" src="images/tes_shangp_xiao4.jpg"></h1>
							<h2>海尔(Haier) BCD452WDPF 452</h2>
							<span>¥ 506 .00</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="rem_shangp">
		<div class="neir_biaot">
			<p>热门商品</p>
			<p class="yingw">Hot commodity</p>
			<a href="#">MORE+</a>
		</div>
		<div class="rem_shangp_beij_k">
			<!---->
			<div class="picScroll_left">
				<div class="hd"> 
					<ul></ul> 
				</div>
				<div class="bd">
					<ul class="picList">
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 506 .00</span></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/rem_shangp1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">佳能(Canon)EOS80D单反套机</a><span>¥ 7940 .00</span></div>
						</li>
					</ul>
				</div>
			</div>
			<!---->
		</div>
	</div>
</div>

<script type="text/javascript">
		jQuery(".picScroll_left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:2 ,trigger:"click"});
		</script>

<!--底部-->
<jsp:include page="/instrument/below.jsp"></jsp:include>


</body>
</html>