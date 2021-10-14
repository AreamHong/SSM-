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
<title>通城网购平台——购物车</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<script type="text/javascript" src="/City/js/jquery1.42.min.js"></script>

<script type="text/javascript" src="/City/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/City/js/jquery.SuperSlide.2.1.1.source.js"></script> 
 <script type="text/javascript" src="/City/js/select.js"></script>

</head>
<body>
<!-- 头部 -->
<jsp:include page="/instrument/top.jsp"></jsp:include>
<!---->
<div class="yiny yiny_gouwc">
	<div class="beij_center">
		<div class="dengl_logo">
			<img src="/City/images/logo_1.png">
			<h1>购物车</h1>
		</div>
	</div>
</div>
<div class="container"> 

	<div class="cart-login-tip fl" id="idnotlogin" act-not-login-info="" style="display: none;">
		您还没有登录！登录后购物车的商品将保存到您账号中。 
		<a class="cart-login-btn" href="dengl.html">
			立即登录
		</a> 
	</div> 
</div>

<div class="beij_center">
	<div class="cart-main-header clearfix">
		<div class="cart-col-1">
			<input type="checkbox" class="jdcheckbox" id="qx1" onclick="qx(1)">
		</div>
		<div class="cart-col-2">全选</div><!-- $page.site 主站 团购 抢购   style -->
		<div class="cart-col-3">商品信息</div>
		<div class="cart-col-4">
			<div class="cart-good-real-price">单价</div>
		</div>
		<div class="cart-col-5">数量</div>
		<div class="cart-col-6">
			<div class="cart-good-amount">小计</div>
		</div>
		<div class="cart-col-7">操作</div>
	</div>
</div>


<div class="container"  id="shopping">


<c:forEach items="${list}" var="i">
	<!-- 店铺名称  -->
	<div class="cart-shop-header">
		<div class="cart-col-1">
		<!-- 店铺复选框  -->
			<!-- <input type="checkbox" class="jdcheckbox"> -->
		</div>
		<div class="cart-col-2"><span class="gouw_c_dianp">${i.shops.shopname}</span></div>
	</div>
	<!-- 商品信息  -->
	<div class="cart-shop-goods">
		<div class="cart-shop-good">
			<!-- 商品复选框  -->
			<div class="cart-col-1">
				<input type="checkbox" class="jdcheckbox" onclick="dx(${i.id})" value="${i.id}" id="danxuan${i.id}">
			</div>
			<!-- 商品照片  -->
			<div class="cart-col-2" style="height: 82px;">
				<a href="" target="_blank" class="g-img"><img src="/City/images/xiangqtu_1.jpg" alt=""></a>
			</div>
			<div class="fl houj_c"> 
				<!-- 商品介绍  -->
				<div class="cart-dfsg">
					<div class="cart-good-name">
						<!-- 商品详情  -->
						<a target="_blank">${i.sdetaols.shopname}</a>
						<!-- 可以加一个点击之后跳转到商品详情页  -->
						<!-- <a href="#" target="_blank"></a> -->
					</div>
				</div>
				<div class="cart-good-pro"></div>
				<!-- 单价  -->
				<div class="cart-col-4">
					<div class="cart-good-real-price ">¥&nbsp;<span id="danjia${i.id}">${i.sdetaols.money}</span></div>
					<div class="red"></div>
				</div>
				<div class="cart-col-5">
					<div class="gui-count cart-count" >
						<!-- 减数量  -->
						<a onclick="jia('${i.id}','-')" gui-count-sub="" class="gui-count-btn gui-count-sub gui-count-disabled">-</a>
						<!-- 加数量  -->
						<a onclick="jia('${i.id}','+')" gui-count-add="" class="gui-count-btn gui-count-add">+</a>
						<!-- 数量  -->
						<div class="gui-count-input"><input dytest="" class="" type="text" value="${i.quantity}" id="zong${i.id}" onchange="magnitude(${i.id})"></div>
					</div>
				</div>
				<div class="cart-col-6 ">
				<!-- 总价  -->
				<div class="cart-good-amount">¥&nbsp;<span id="zongjia${i.id}">${i.totalprice}</span></div><!-- 重量展示(只展示全球百货的重量) -->
				</div>
			</div>
			<div class="cart-col-7">
				<div class="cart-good-fun delfixed">
					<a onclick="del(${i.id})">删除</a>
				</div>
				<div class="cart-good-fun">
					<a href="#">移入收藏夹</a>
				</div>
			</div>
		</div>
	</div>
	
	

</c:forEach>
</div>
<script type="text/javascript">
var userid = ${pojo.id}
</script>
<div class="jies_beij">



	<div class="beij_center over_dis">
		<div class="cart-col-1 cart_jies" >
			<input type="checkbox" class="jdcheckbox" id="qx2" onclick="qx(2)">
		</div>
		<div class="qianm_shanc_yvf">
			<span>全选</span>
			<a onclick="delall()">删除</a>
		</div>
		<div class="jies_ann_bei">
			<p>已选 <em id="statistics"></em> 件商品 总计（不含运费）：￥<span id="zjg">0</span></p>
			<a class="order_btn" onclick="clicktype()">去结算</a>
		</div>
	</div>
	
	
</div>
<script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
// 购物车一共多少条信息
var count = ${count}// 加键商品数量
// 去结算按钮
var userid = ${pojo.id}
function clicktype(){
    var str = "";
	$(".cart-shop-goods .jdcheckbox").each(function(i,item){
		if($(item).prop("checked")==true){
			str += $(item).val()+",";
			
		}
    })
    if(str!= ""){
    	updType(str,1,0);
    }else{
    	alert("至少选择一个商品去结算");	
    }
}
// 修改购物车状态
function updType(str,type,uid){
	$.ajax({
	    url:'http://localhost:8080/City/shopping/updType',
		type:'get',
		data:{str:str,type:type,uid:uid},
		success:function(data){
			console.log(data);
			// type == 1是代表去结算
			if(type == 1){
				// 跳转到生成订单页面
				window.location="/City/order/listshi?id="+userid;
			}
		}
	})
}
// 加键购物车数量
function jia(id,t){
	var count = $("#zong"+id).val();
	if(t == "-"){
		if(count <= "1"){
			return;
		}
		count--;
	}else{
		count++;
	}
	calculate(id,count)
	$("#zong"+id).val(count);
}
// 手动输入商品数量
function magnitude(id){
	var count = $("#zong"+id).val();
	if(count <= "0"){
		$("#zong"+id).val("1");
	}
	calculate(id,count);
}
// 店铺单选
function dx(id){
	var aaa = 0;
	var zjg = 0.00;
	//var arr = [];zjg
	$(".cart-shop-goods .jdcheckbox").each(function(i,item){
		//arr[i] = item
		if($(item).prop("checked")==true){
			aaa++;
			var asd = $(item).val();
			var countprice = parseFloat($("#zongjia"+asd).html());
			zjg = zjg + countprice;
			
		}
    })
    $("#zjg").html(zjg)
    if(count == aaa){
    	$("#qx1").prop("checked",true);
    	$("#qx2").prop("checked",true);
    }else{
    	$("#qx1").prop("checked",false);
    	$("#qx2").prop("checked",false);
    }
    tj();
}
// 全选
function qx(t){
	var checkall=document.getElementById("qx"+t);
 	$(".jdcheckbox").each(function(i,item){
    	$(item).prop("checked",checkall.checked);
    })
    dx();
    tj();
}
// 统计被选中了多少商品
function tj(){
	var ci = 0;
	var arr = [];
	$(".cart-shop-goods .jdcheckbox").each(function(i,item){
		if($(item).prop("checked")==true){
			ci++;
		}
    })
    $("#statistics").html(ci);
    return ci;
}

// 计算商品数量*价格
function calculate(id,count){
	
	var countprice = parseFloat($("#zongjia"+id).html());
	var price = parseFloat($("#danjia"+id).html());
	countprice = count * price;
	
	$("#zongjia"+id).html(countprice);
	$.ajax({
    	url:'http://localhost:8080/City/shopping/upd',
		type:'get',
		data:{quantity:count,totalprice:countprice,id:id},
		success:function(data){
			console.log(data);
		}
    })
	var zjg = 0.00;
	$(".cart-shop-goods .jdcheckbox").each(function(i,item){
		//arr[i] = item
		if($(item).prop("checked")==true){
			var asd = $(item).val();
			var countprice = parseFloat($("#zongjia"+asd).html());
			zjg = zjg + countprice;
			
		}
    })
    $("#zjg").html(zjg);
    //totalprice,quantity
    
}
// 多个删除
function delall(){
	var str = "";
	$(".cart-shop-goods .jdcheckbox").each(function(i,item){
		if($(item).prop("checked")==true){
			str += $(item).val()+",";
			
		}
    })
    if(str!= ""){
    	$.ajax({
			url:'http://localhost:8080/City/shopping/delall',
			type:'get',
			data:{d:str},
			success:function(data){
				if(data>0){
					$("#shopping").load(location.href + " #shopping");
			    }
			}
		})
    }
}
// 单个删除
function del(id){
	$.ajax({
		url:'http://localhost:8080/City/shopping/del',
		type:'get',
		data:{id:id},
		success:function(data){
			if(data>0){
				console.log("单个删除成功");
				$("#shopping").load(location.href + " #shopping");
      		}
      	}
	})
}
</script>
<div class="beij_center">
	<div class="investment_f">
	    <div class="investment_title">
	        <div class="ds_dg on_d">为您推荐</div>
	        <div class="ds_dg">最近预览</div> 
	    </div>
	    <div class="investment_con"> 
            <!----> 
			<div class="picScroll_left_s"  style="display: block;">
				<div class="hd">
					<a class="next next_you"></a>
					<ul></ul>
					<a class="prev prev_zuo"></a> 
				</div>
				<div class="bd">
					<ul class="picList">
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/lieb_tupi3.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/shangq_3.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/big_3.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/xiangqtu_1.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/lieb_tupi3.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/big_3.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/lieb_tupi1.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/lieb_tupi2.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="/City/images/lieb_tupi3.jpg" /></a></div>
							<div class="title">
								<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
								<div class="jiage_gouw"><span>¥2499.00</span></div>
								<a href="#" class="cart_scroll_btn">加入购物车</a>
							</div>
						</li>
					</ul>
				</div>
			</div> 
            <!----> 
	        <div class="picScroll_left_s" style="display: none;">
	            <div class="picScroll_left_s_dsl"> 
					<div class="dfgc">
						<ul class="picList">
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="/City/images/lieb_tupi3.jpg" /></a></div>
								<div class="title">
									<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw"><span>¥2499.00</span></div>
									<a href="#" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="/City/images/big_3.jpg" /></a></div>
								<div class="title">
									<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw"><span>¥2499.00</span></div>
									<a href="#" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="/City/images/lieb_tupi1.jpg" /></a></div>
								<div class="title">
									<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw"><span>¥2499.00</span></div>
									<a href="#" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="/City/images/big_3.jpg" /></a></div>
								<div class="title">
									<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw"><span>¥2499.00</span></div>
									<a href="#" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li> 
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="/City/images/shangq_3.jpg"></a></div>
								<div class="title">
									<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw"><span>¥2499.00</span></div>
									<a href="#" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							<li>
								<div class="pic"><a href="#" target="_blank"><img src="/City/images/shangq_3.jpg"></a></div>
								<div class="title">
									<a href="#" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw"><span>¥2499.00</span></div>
									<a href="#" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
						</ul>
					</div>
				</div> 
	        </div> 
	    </div>
	</div>
</div>

 
<script type="text/javascript">
$(function(){
	// 页面加载时共选中了多少商品默认为0
	$("#statistics").html(0);
	
	// 刚进入页面购物车的type列全部为1
	updType("",0,userid);
	
    /*tab标签切换*/
    function tabs(tabTit,on,tabCon){
	$(tabCon).each(function(){
	  $(this).children().eq(0).show();
	 
	  });
	$(tabTit).each(function(){
	  $(this).children().eq(0).addClass(on);
	  });
     $(tabTit).children().click(function(){
        $(this).addClass(on).siblings().removeClass(on);
         var index = $(tabTit).children().index(this);
         $(tabCon).children().eq(index).show().siblings().hide();
    });
     }
  tabs(".investment_title","on_d",".investment_con");
  
})
</script>
<!-- <script type="text/javascript">
jQuery(".picScroll_left_s").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:5,trigger:"click"});
</script> -->

<!--底部-->
<jsp:include page="/instrument/below.jsp"></jsp:include>


</body>
</html>