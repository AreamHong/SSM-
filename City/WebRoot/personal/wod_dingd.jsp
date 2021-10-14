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
<title>WangID通城——我的订单</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="/City/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/City/js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 


</head>
<body>
<!--头部--> 
<jsp:include page="/instrument/top.jsp" />
 
 
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
					<div class="shand_piaot">我的订单</div>
					<div class="tab_trigger tab_trigger_wod_dd">
					 	<p class="attrK">实物订单：</p>
						<ul>
							<li><a class="text_shaid">全部</a></li>
							<li><a class="text_shaid">代付款</a><p class="sup" id="typeo1">0</p></li>
							<li><a class="text_shaid">待收货</a><p class="sup"  id="typeo2">0</p></li>
							<li><a class="text_shaid" href="pingj_shaid.html">待评价</a><p class="sup" id="typeo4">0</p></li> 
						</ul>
					</div>
					<div class="wod_dingd_shuaix">
						<div class="combox">
							<div>当然页数： [ ${p.index} / ${p.pagecount} ] </div>
						</div>
						<div class="search_box">
                            <input type="text" value="${num}" class="seach_inpt" placeholder="订单编号" id="orderNumber">
                            <!--  查询按钮  -->
                            <input type="button" value="" class="search-btn" onclick="likenum()">
                        </div>
					</div>
					<!--************************************-->
					<table class="order-tb order-tb_1">
						<colgroup>
							<col class="number-col">
							<col class="consignee-col">
							<col class="amount-col">
							<col class="operate-col">
							<col class="dis_col">
						</colgroup>
						<thead>
							<tr>
								<th>订单详情</th>
								<th>金额</th>
								<th>
									<div class="combox combox_2">
										<div>
											<c:if test="${tid == 0}">
												<span class="c-lable" val="1">订单状态</span>
											</c:if>
											<c:if test="${tid != 0}">
												<c:forEach items="${typelist}" var="i">
													<c:if test="${tid == i.id}">
				                                		<span class="c-lable" val="1">${i.type}</span>
				                                	</c:if>
			                            		</c:forEach>
											</c:if>
											<i></i>
										</div>
										<ul class="c-list-value">
											<c:forEach items="${typelist}" var="i">
				                                <li class=""><a href="/City/cityorder/sel?userid=${pojo.id}&typeid=${i.id}&orderNumber=${num}&index=1">${i.type }</a></li>
			                            	</c:forEach>
			                            	<li class=""><a href="/City/cityorder/sel?userid=${pojo.id}&orderNumber=${num}&index=1">全部</a></li>
			                            </ul>
									</div>
								</th>
								<th>收货人</th>
								<th>操作</th> 
							</tr>
						</thead>
						
						
						
						
						
						<c:forEach items="${p.list}" var="i">
						<tbody>
							<tr class="sep-row"><td colspan="4"></td></tr>
							<tr class="tr-th">
								<td colspan="5">
									<span class="gap"></span>
									<span class="dealtime span_30" title="2015-1-19 10:30:42">${i.data}</span>
									<span class="number span_30">订单号：<a href="#" target="_blank">${i.orderNumber}</a></span> 
									<span class="span_30"><a href="#">${i.shops.shopname }</a></span>
									<!-- 删除  -->
									<span class="wod_sc_delete_beij span_30"><a onclick="del(${i.id})" class="wod_dingd_delete"></a></span>
								</td>
							</tr>
							<tr class="tr-bd">
								<td rowspan="1">
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="#">
												<img src="images/lieb_tupi1.jpg" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
												<a target="_blank" href="#">${i.details.shopname }</a>
												<p class="yiwanc_hui"><a href="#">申请售后</a></p>
											</div>
										</div>
									</div>
									<div class="goods-number">x${i.quantity }</div>
								</td>
								<td rowspan="1">
									<div class="zhif_jine">
										<p>总额￥${i.totalprice }</p>
										<span>${i.pay}</span>
									</div>
								</td>
								<td rowspan="1">
									<div class="operate">
										<p class="yiwanc_hui">${i.ordertype.type }</p>
										<!-- <a href="#" target="_blank" class="a-link">订单详情</a><br> -->
									</div>
								</td>
								<td rowspan="1">
									<div class="txt_ren">
										<span>${i.consignee}</span>
										<p class="ren_tub"></p>
									</div>
								</td> 
								<td rowspan="1">
									<div class="operate">
										<a href="#" target="_blank" class="a-link">评价</a>丨<a href="#" target="_blank" class="a-link">晒单</a><br>
										<a href="#" target="_blank" class="btn-def">立即购买</a>
									</div>
								</td>
							</tr> 
						</tbody>
						</c:forEach>
					</table>
					
					<!--  分页功能   -->
					<div class="gerzx_fany">
						<a class="shangxy" onclick="shang(1)">上一页</a>
						
						<c:if test="${p.index-2 <= 0 && p.pagecount > 4}">
					   		<c:forEach begin="1" end="5" var="i">
						   		<a href="/City/cityorder/sel?userid=${pojo.id}&typeid=${tid}&orderNumber=${num}&index=${i}">${i}</a>
						    </c:forEach>
					   </c:if>
					   <c:if test="${p.index+2 > p.pagecount && p.pagecount > 4}">
					   		<c:forEach begin="${p.pagecount-4}" end="${p.pagecount}" var="i">
						   		<a href="/City/cityorder/sel?userid=${pojo.id}&typeid=${tid}&orderNumber=${num}&index=${i}">${i}</a>
						    </c:forEach>
					   </c:if>
					   <c:if test="${p.index+2 <= p.pagecount && p.index-2 > 0}">
					   		<c:forEach begin="${p.index-2}" end="${p.index+2}" var="i">
						   		<a href="/City/cityorder/sel?userid=${pojo.id}&typeid=${tid}&orderNumber=${num}&index=${i}">${i}</a>
						    </c:forEach>
					   </c:if>
					   <c:if test="${p.index+2 >= p.pagecount && p.index-2 <= 0}">
					   		<c:forEach begin="1" end="${p.pagecount}" var="i">
						   		<a href="/City/cityorder/sel?userid=${pojo.id}&typeid=${tid}&orderNumber=${num}&index=${i}">${i}</a>
						    </c:forEach>
					   </c:if>
						<a class="shangxy" onclick="shang()">下一页</a>
					</div>
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<script type="text/javascript" src="/City/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
var userid = ${pojo.id}
$(function(){
	//pageList();
	// 统计订单数量
	ordertypecount();
})
var tid = ${tid};
var index = ${p.index};
var pagecount = ${p.pagecount};
// 根据订单编号模糊查询
function likenum(){
	var num = $("#orderNumber").val();
	window.location = "/City/cityorder/sel?userid="+userid+"&typeid="+tid+"&orderNumber="+num+"&index="+index;
}
// 上一页下一页
function shang(a){
	if(index > 1 && a == 1){
		index--;
	}else if(index < pagecount){
		index++;
	}
	
	
	var num = $("#orderNumber").val();
	window.location = "/City/cityorder/sel?userid="+userid+"&typeid="+tid+"&orderNumber="+num+"&index="+index;
}
// 查询订单信息
function pageList(){
	$.ajax({
		url:'http://localhost:8080/City/cityorder/sel',
		type:'get',
		data:{userid:1,index:1},
		success:function(data){
			console.log(data)
		}
	})
}
function del(id){
	$.ajax({
		url:'http://localhost:8080/City/cityorder/del',
		type:'get',
		data:{id:id},
		success:function(data){
			$(".mod_main").load(location.href + " .mod_main");
		}
	})
}
function ordertypecount(){
	$.ajax({
		url:'/City/cityorder/seltypecount',
		type:'get',
		data:{uid:userid},
		success:function(data){
			console.log("订单页面")
			console.log(data)
			$(data).each(function(i,item){
				var j = i+1;
				$("#typeo"+j).html(item);
			})
		}
	})
}
</script>


<!--底部-->
<jsp:include page="/instrument/below.jsp" />
 


</body>
</html>

