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
<title>WangID通城——商品列表-缩略</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
<script type="text/javascript" src="/City/js/chengs/jquery.js"></script>
<script type="text/javascript" src="/City/js/chengs/bootstrap.js"></script>
<script type="text/javascript" src="/City/js/chengs/city-picker.data.js"></script>
<script type="text/javascript" src="/City/js/chengs/city-picker.js"></script>
<script type="text/javascript" src="/City/js/chengs/main.js"></script>
</head> 
<body>
<!--侧边-->
<jsp:include page="/instrument/right.jsp"></jsp:include>


<!--头部-->
<jsp:include page="/instrument/top.jsp"></jsp:include>



<!--搜索栏-->
<jsp:include page="/instrument/search.jsp" ></jsp:include>


<!--轮播图上方导航栏  一栏-->
<div id="navv" class="navv_ziy">	
	<div class="focus">
		<div class="focus-a">
			<div class="fouc-font fouc_font_ziy">
				<a href="#">全部商品分类</a>
			</div>
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

		<!--左边导航-->
	<script type="text/javascript">
		window.onload=function()
		{
			var aid=document.getElementById('id_a');
			var odiv=document.getElementById('h2_d');
			var bdiv=document.getElementById('proinfo'); 
			aid.onmouseover=function()
			{ 
				
				bdiv.style.display='block';
			};
			aid.onmouseout=function()
			{
				bdiv.style.display='none';
			};

		};
	</script>
		<div class="subpage" id="id_a">
		<h2 id="h2_d" ></h2>
		<div class="prosul dd-inner dd_inner_ziy" id="proinfo">
			<div class="font-item">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">办公家具</a>
						<p>
							<a href="#">五金</a>
							<a href="#">家具</a>
							<a href="#">家装</a>
							<a href="#">厨具</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="#">大家电<i>></i></a></dt>							
							<dd>
								<a href="#">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="#">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
						<dl class="fore1">
							<dt><a href="#">生活电器<i>></i></a></dt>							
							<dd>
								<a href="#">取暖电器</a><a href="">净化器</a><a href="">扫地机器人</a><a href="">吸尘器</a><a href="">加湿器</a><a href="">挂烫机/熨斗</a><a href="">电风扇</a>
								<a href="#">冷风扇</a><a href="">插座</a><a href="">电话机</a><a href="">净水器</a><a href="">饮水机</a>
								<a href="#">除湿机</a><a href="">干衣机清洁机</a><a href="">收录/音机</a><a href="">生活电器配件</a><a href="">其它生活电器</a>
							</dd>
						</dl>  
						<dl class="fore1">
							<dt><a href="#">厨房电器<i>></i></a></dt>							
							<dd>
								<a href="#">电压力锅</a><a href="">豆浆机</a><a href="">面包机</a><a href="">咖啡机</a><a href="">微波炉料理/榨汁机</a><a href="">电烤箱</a><a href="">电磁炉</a>
								<a href="#">电饼铛/烧烤盘</a><a href="">煮蛋器酸奶机</a><a href="">电水壶/热水瓶</a><a href="">电炖锅</a><a href="">多用途锅</a><a href="">果蔬解毒机</a><a href="#">养生壶/煎药壶</a><a href="">其它厨房电器</a>
							</dd>
						</dl>
						<dl class="fore1">
							<dt><a href="#">个护健康<i>></i></a></dt>							
							<dd>
								<a href="#">剃须刀剃/脱毛器</a><a href="">口腔护理</a><a href="">电吹风</a><a href="">美容器</a><a href="">理发器卷/直发器</a><a href="">按摩椅</a><a href="">按摩器</a>
								<a href="#">足浴盆</a><a href="">血压计</a><a href="">健康秤/厨房秤</a><a href="">血糖仪</a><a href="">体温计</a><a href="">计步器/脂肪检测仪</a><a href="">脂肪检测仪其它健康电器</a>
							</dd>
						</dl>
						<dl class="fore1">
							<dt><a href="">五金家装<i>></i></a></dt>						
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a><a href="">烟机/灶具</a>
								<a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
					</div>
					<div class="font-right">
						<div>
							<a href="#">
								<img src="./images/562f4971Na5379aba.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9eef9N5bb8d27f.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef02N99d26435.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef10Nd206a236.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef28N00328d44.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef34N7cc61f4c.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef3eN99aef1f0.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef4cN4fe57f9b.jpg">
							</a>
						</div>
					</div>
					<div class="font-righty">
						<a href="#">
							<img src="./images/5673a854N10856704.jpg">
						</a>
						<a href="#">
							<img src="./images/56a0376aN7de1bdcf.jpg">
						</a>
					</div>
				</div>
			</div>
			<div class="fore-2">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">电脑数码</a>
						<p>
							<a href="#">手机</a>
							<a href="#">电脑</a>
							<a href="#">办公</a>
							<a href="#">钟表</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">电脑数码<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
					</div>
					<div class="font-right">
						<div>
							<a href="#">
								<img src="./images/562f4971Na5379aba.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9eef9N5bb8d27f.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef02N99d26435.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef10Nd206a236.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef28N00328d44.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef34N7cc61f4c.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef3eN99aef1f0.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef4cN4fe57f9b.jpg">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fore-3">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">服饰鞋帽</a>
						<p>
							<a href="#">男装</a>
							<a href="#">女装</a>
							<a href="#">童装</a>
							<a href="#">内衣</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">服饰鞋帽<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
					</div>
					<div class="font-right">
						<div>
							<a href="#">
								<img src="./images/562f4971Na5379aba.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9eef9N5bb8d27f.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef02N99d26435.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef10Nd206a236.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef28N00328d44.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef34N7cc61f4c.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef3eN99aef1f0.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef4cN4fe57f9b.jpg">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fore-4">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">汽车用品</a>
						<p>
							<a href="#">汽车配件</a>
							<a href="#">礼品</a>
							<a href="#">家政服务</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">汽车用品<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
					</div>
					<div class="font-right">
						<div>
							<a href="#">
								<img src="./images/562f4971Na5379aba.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9eef9N5bb8d27f.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef02N99d26435.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef10Nd206a236.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef28N00328d44.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef34N7cc61f4c.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef3eN99aef1f0.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef4cN4fe57f9b.jpg">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fore-5">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">食品保健</a>
						<p>
							<a href="#">美食</a>
							<a href="#">酒类</a>
							<a href="#">生鲜</a>
							<a href="#">特产</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">食品保健<i>></i></a></dt>							
							<dd>
								<a href="">食品保健</a><a href="">食品保健</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/食品保健</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
					</div>
					<div class="font-right">
						<div>
							<a href="#">
								<img src="./images/562f4971Na5379aba.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9eef9N5bb8d27f.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef02N99d26435.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef10Nd206a236.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef28N00328d44.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef34N7cc61f4c.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef3eN99aef1f0.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef4cN4fe57f9b.jpg">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fore-6">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">美酒鲜花</a>
						<p>
							<a href="#">手机</a>
							<a href="#">电脑</a>
							<a href="#">办公</a>
							<a href="#">钟表</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">美酒鲜花<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
					</div>
					<div class="font-right">
						<div>
							<a href="#">
								<img src="./images/562f4971Na5379aba.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9eef9N5bb8d27f.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef02N99d26435.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef10Nd206a236.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef28N00328d44.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef34N7cc61f4c.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef3eN99aef1f0.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef4cN4fe57f9b.jpg">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fore-7">
				<div class="item fore1">
					<h3>
						<a class="da_zhu" href="#">图书</a>
						<p>
							<a href="#">图书</a>
							<a href="#">图书</a>
							<a href="#">办公</a>
							<a href="#">电子书</a>
						</p>
					</h3>
					<i>></i>
				</div>
				<div class="font-item1">
					<div class="font-lefty">
						<dl class="fore1">
							<dt><a href="">图书<i>></i></a></dt>							
							<dd>
								<a href="">平板电视</a><a href="">空调</a><a href="">冰箱</a><a href="">洗衣机</a><a href="">家庭影院</a><a href="">DVD</a><a href="">迷你音响</a>
								<a href="">烟机/灶具</a><a href="">热水器</a><a href="">消毒具/洗碗柜</a><a href="">冰柜/冰吧</a><a href="">酒柜</a><a href="">家电配件</a>
							</dd>
						</dl>
					</div>
					<div class="font-right">
						<div>
							<a href="#">
								<img src="./images/562f4971Na5379aba.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9eef9N5bb8d27f.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef02N99d26435.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef10Nd206a236.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef28N00328d44.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef34N7cc61f4c.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef3eN99aef1f0.jpg">
							</a>
							<a href="#">
								<img src="./images/54d9ef4cN4fe57f9b.jpg">
							</a>
						</div>
					</div>
				</div>
			</div>
			
			<!---->
		</div>
		</div>
		<!--左边导航结束-->
	</div>
</div>
<!--  <script type="text/javascript">
	(function(){ 
		var $subblock = $(".subpage"), $head=$subblock.find('h2'), $ul = $("#proinfo"), $lis = $ul.find("li"), inter=false; 
		$head.mouseover(function(e){
			e.stopPropagation();
			if(!inter){
				$ul.show();
			}else{
				$ul.hide();
			}
			inter=!inter;
		});
		
		$ul.mouseover(function(event){
			event.stopPropagation();
		});
		
		$(document).mouseover(function(){
			$ul.hide();
			inter=!inter;
		}); 
	})();
</script> -->
<!--列表一开了-->
<div class="nSearchWarp">
    <div class="hot-tj">
        <span class="icon_tj">热卖<br>推荐</span>
        <ul class="hot-list clearfix">
        	<li class="item asynPriceBox">
        		<p class="pic">
        		<a target="_blank" href="#"><img src="images/lieb_tupi1.jpg" alt=""></a>
        		</p>
        		<p class="name"><a href="#" title=" 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑"> 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑 </a></p>
        		<p class="price asynPrice" >¥3999.00</p>
        		<p class="btn"><a class="buy" href="#" >立即抢购</a></p>
        	</li>
        	<li class="item asynPriceBox">
        		<p class="pic">
        		<a target="_blank" href="#"><img src="images/lieb_tupi2.jpg" alt=""></a>
        		</p>
        		<p class="name"><a href="#" title=" 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑"> 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑 </a></p>
        		<p class="price asynPrice" >¥3999.00</p>
        		<p class="btn"><a class="buy" href="#" >立即抢购</a></p>
        	</li>
        	<li class="item asynPriceBox">
        		<p class="pic">
        		<a target="_blank" href="#"><img src="images/lieb_tupi3.jpg" alt=""></a>
        		</p>
        		<p class="name"><a href="#" title=" 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑"> 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑 </a></p>
        		<p class="price asynPrice" >¥3999.00</p>
        		<p class="btn"><a class="buy" href="#" >立即抢购</a></p>
        	</li>	
        	<li class="item asynPriceBox">
        		<p class="pic">
        		<a target="_blank" href="#"><img src="images/lieb_tupi1.jpg" alt=""></a>
        		</p>
        		<p class="name"><a href="#" title=" 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑"> 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑 </a></p>
        		<p class="price asynPrice" >¥3999.00</p>
        		<p class="btn"><a class="buy" href="#" >立即抢购</a></p>
        	</li>	
        </ul>
    </div>
</div>


<!--!!!-->
<div class="lujing_ziy">
	<a href="#">${name1}</a> > <a href="#">${name2}</a> 
	<div id="topcategory" style="display:inline-block"></div>
</div>

<div class="shangp_lieb_jvz">
	<div class="selector">
		<div class="s-title">
		    <h3><b>${goods3.name }</b><em>商品筛选</em></h3>
		    <div class="st-ext">共&nbsp;<span>${itemCount }</span>个商品 </div>
	  	</div>
	<div class="J_selectorLine s-line J_selectorFold" >
		<c:forEach begin="1" end="${goods3.categoryCount }" var="i">
		<c:set var="cg" value="category${i}" />
			<div class="a-${cg }">
			<div class="sl-wrap">
				<div class="sl-key">
		          <span>${goods3[cg]}：</span>
		        </div>
		        <div class="sl-value">
		          	<div class="sl-v-list">
			            <ul class="J_valueList">
			            	<c:forEach items="${catecoryList[i-1]}" var="a">
			            		<li><input type="checkbox" class="checkbox yingc_df" value="${a}"><span rel="nofollow" name="${cg}" onclick="getList('${goods3[cg]}','${a}','${cg}')">${a }</span></li>
			            	</c:forEach>
			            </ul>
			        </div>
			        <div class="st_d" style="display:none">
		            	<a href="">确定</a>
		            	<a href="">取消</a>
		            </div>
	            </div>
	            <div class="sl-ext">
		            <a class="sl-e-multiple" onclick="manyChoose(${i})"> 多选<i></i></a>
	         	</div>
			</div>
			</div>
		</c:forEach>
	</div>
	</div> 
	<script type="text/javascript">
		function getList(goods3,category,cg){
			var a="<span onclick='remove(\""+cg+"\")' id='"+cg+"' >"+goods3+":"+category+"\t\t";
			var b ="<input type='hidden' value='{\"cgkey\":\""+cg+"\",\"cgvalue\":\""+category+"\"}'/></span>";
	
			$("#topcategory").append(a+b);
			$(".a-"+cg).hide();
      		getArray(1);
  			
		}
		function getArray(index){
		var _input = $("#topcategory input");
		var order = $("#order").val();
			var goods3id = ${goods3.id};
			var str = "goods3id="+goods3id+"&order="+order+"&index="+index;
			$(_input).each(function(i,item){
				var obj = $.parseJSON(item.value);
				str+="&list["+i+"].cgkey="+obj.cgkey+"&list["+i+"].cgvalue="+obj.cgvalue;
			})
			//alert(str);
			$.ajax({
  						url:'/City/Item/refresh',
  						type:'get',
  						data:str,
  						success:function(data){
  							$("#itemList").html(data)
  						}
  					});
			
		}
		function remove(cg,str){
			$(".a-"+cg).show();
			$("#"+cg).remove();
			getArray(1);
			
		}
		function manyChoose(id){
			var flag = document.getElementsByClassName("sl-wrap");
			var st_d = document.getElementsByClassName("st_d");
			var mul = document.getElementsByClassName("sl-e-multiple");
	
				flag[id-1].setAttribute("class","sl-wrap multiple_D");
				st_d[id-1].style.display="block";
				mul[id-1].style.display="none";
			
		}
		function xians()
		{
			var ddd=document.getElementById('yingc');
			if(ddd.style.display=='block')
			{
				ddd.style.display='none';
			}
			else
			{
				ddd.style.display='block';
			}
		}
		function selectOrder(newOrder){
			var oldOrder = $("#order").val();
			if(oldOrder == newOrder){
				newOrder = newOrder+" desc";
			}
			$("#order").val(newOrder);
			getArray(1);
		}
	</script>
	<!--测试****************************************-->

	<!--测试****************************************-->
	<!--列表-->
	<div class="shangp_lieb_yi">
		<div class="filter_yi">
			<div class="f_line">
				<div class="f_sort">
					<input type="hidden" id="order" value=" order by item.id"/>
	                <a href="javascript:void(0)" class="curr_1" onclick="selectOrder(' order by item.id')"><label>综合排序</label> <i></i></a>
	                <a href="javascript:void(0)" class="curr_2" onclick="selectOrder(' order by item.sales')">销量<i></i></a>
	                <a href="javascript:void(0)" class="curr_2" onclick="selectOrder(' order by item.price')">价格<i></i></a>
	                <a href="javascript:void(0)" class="curr_2" onclick="selectOrder(' order by item.comment')">评论数<i></i></a>
	                <a href="javascript:void(0)" class="curr_2" onclick="selectOrder(' order by item.storageTime')">上架时间<i></i></a>
	          	</div>
	          	
			</div>
			<div class="f_line_xia">
				<!-- <ul id="list1">
					<li id="summary-stock">
						<div class="dt">配&nbsp;送&nbsp;至：</div>
						<div class="dd">
							<div id="store-selector">
								<div class="text"><div></div><b></b></div>                   
								<div onclick="$('#store-selector').removeClass('hover')" class="close"></div>
							</div>
							<div id="store-prompt"><strong></strong></div>
						</div>
					</li>
				</ul> --> 
				<div class="sdgdfg">配&nbsp;送&nbsp;至：</div>
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">
							<div class="form-group">
								<div style="position: relative;">
									<input id="city-picker3" class="form-control" readonly type="text" value="北京市/北京市/朝阳区" data-toggle="city-picker">
								</div>
							</div>
						</div>
					</form>
				</div>
				
				<div class="f_feature">
			        <ul>
                        <li id="delivery"><a class="selected" href="#"><i></i>仅显示有货</a></li>
                        <li id="delivery_211"><a class="" href="#"><i></i>货到付款</a></li>
                        <li id="delivery_daofu"><a class="" href="#"><i></i>真划算</a></li> 
	                </ul>
			      </div>
			</div>
		</div>
		<div id="itemList">
		<jsp:include page="itemList.jsp" ></jsp:include>
		</div>
	</div>
</div>

<!--列表一结束-->
<!--猜你喜欢-->
<div class="cain_xih">
	<div class="mt">
		<h2 class="title">猜你喜欢</h2>
		<div class="extra">
			<a href="#" class="change"><i class="ico"></i><span class="txt">换一批</span></a>
		</div>
	</div>
	<ul class="cain_xihuan_neir">
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi1.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi2.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi3.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi1.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi3.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi2.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
	</ul>
</div>

<!--底部-->
<jsp:include page="/instrument/below.jsp"></jsp:include>



</body>
</html>

 