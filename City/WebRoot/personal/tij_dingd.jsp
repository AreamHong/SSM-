<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>WangID通城——提交订单——结算页</title>
<link rel="stylesheet" type="text/css" href="/City/css/index.css">
<link rel="stylesheet" type="text/css" href="/City/css/ziy.css">
<script src="/City/js/jquery-1.11.3.min.js" ></script>
<!--  <script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="/City/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/City/js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 <script type="text/javascript" src="/City/js/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="/City/js/jquery.reveal.js"></script>
 
  <script type="text/javascript" src="/City/js/chengs/jquery.js"></script>
 <script type="text/javascript" src="/City/js/chengs/bootstrap.js"></script>
 <script type="text/javascript" src="/City/js/chengs/city-picker.data.js"></script>
 <script type="text/javascript" src="/City/js/chengs/city-picker.js"></script>
 <script type="text/javascript" src="/City/js/chengs/main.js"></script>

<style>
		#moren{
			color:blue;
		}
</style>
</head>
<body>
<!--头部--> 
 
<!--头部-->
<jsp:include page="/instrument/top.jsp"></jsp:include>

<!--提交订单——结算页-->
<div class="beij_center">
	<div class="dengl_logo">
		<div>
			<img src="/City/images/logo_1.png">
			<h1>结算页</h1>
		</div>
		<div class="stepflex stepflex_2">
		 	<dl class="normal done ">
                <dt class="s-num">1</dt>
                <dd class="s-text">1.我的购物车<s></s><b></b></dd>
            </dl> 
		 	<dl class="normal doing">
                <dt class="s-num">2</dt>
                <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
            </dl> 
		 	<dl class="normal ">
                <dt class="s-num">3</dt>
                <dd class="s-text">3.成功提交订单<s></s><b></b></dd>
            </dl>
		</div>
	</div>
</div>
<div class="beij_center">
	<div class="checkout-tit">
		<span class="tit-txt">填写并核对订单信息</span>
	</div>
	<div class="checkout_steps">
		<div class="step-tit">
            <h3>收货人信息</h3> 
            <div class="extra_r">
            	<a href="#" data-reveal-id="myModal">新增收货地址</a>	
            </div>
        </div>
        <div class="jies_y_shouh_diz shiq_1">
        	<ul>
        	<c:forEach items="${list}" var="i">
        		<li>
        			<div class="dangq_xuanz_diz">当前地址</div>
        			<span>${i.contact}</span>
        			<span>${i.province}  &nbsp${i.city} &nbsp${i.area} &nbsp${i.address}</span>
        			<span>${i.phone}</span>
        			<div class="bianji_yv_shanc">
        				<span id="moren" class="mor_color" onclick="updef('${i.id}','${i.addressdef}','${pojo.id}')">${i.addressdef}</span>
        				<a href="#"  data-reveal-id="myModal_1" onclick="showin('${i.id}','${i.contact}','${i.province}','${i.city}','${i.area}','${i.address}','${i.phone}')">编辑</a>
        			</div>
        		</li> 
        	</c:forEach>
        	</ul>
        	<div class="addr-switch cur_e">
                <p><span>更多地址</span><b></b></p>
                <p class="jiant_xiangs"><span>收起更多</span><b></b></p>
            </div> 
        </div>
        <div class="jies_y_shouh_diz shiq_2">
        	<ul>
        		<li class="zhif_fangs cur"><div class="dangq_xuanz_diz" onclick = "pay('1')">在线支付</div></li>
        		<li class="zhif_fangs"><div class="dangq_xuanz_diz" onclick="pay('2')">货到付款</div></li>
        		<input type = "hidden" id = "pay">
        		<div class="addr-switch addr_switch_1 cur_e_1">
	                <p><span>更多 >></span></p>
	                <p><span>收起 <<</span></p>
	            </div> 
        	</ul>  
        </div>
        <div class="step-tit">
            <h3>送货清单</h3> 
            <div class="extra_r">
            	<a href="#" class="ftx-05 J_consignee_global">价格说明</a>
            	<a href="#" class="ftx-05 J_consignee_global">返回修改购物车</a> 
            </div>
        </div>
        <div class="shopping_list">
        	<div class="dis_modes">
        		<div class="mode_item_tit">
                    <h4>配送方式</h4> 
                </div>
                <div>
                	<div class="jies_y_shouh_diz jies_y_shouh_diz_kuaid">
			        	<ul>
			        		<li class="zhif_fangs cur"><div class="dangq_xuanz_diz" onclick="dis('1')">申通快递</div></li>
			        		<li class="zhif_fangs"><div class="dangq_xuanz_diz" onclick="dis('2')">圆通快递</div></li> 
			        		<input type = "hidden" id = "distribution">
			        	</ul>  
			        </div>
                </div>
                <div class="peis_shij">
                	<p>配送时间： </p><span>工作日、双休日与节假日均可送货</span>
                </div>
                <div class="maij_liuy">
                	<p>给商家留言</p>
                	<input type="text" value="最多不能超过30字！" id="liuyan" />
                </div>
        	</div>
        	<div class="goods_list">
        		<c:forEach items="${list1}" var="i">
        		<div class="goods_list_neik">
        			<h4 class="vendor_name_h">商家：${i.storename}</h4>
        			<div class="goods_item">
        				<div class="p_img"><a href="#"><img src="/City/images/lieb_tupi1.jpg"></a></div>
        				<div class="goods_msg">
        					<div class="p_name">
        						<a href="#">${i.shopname}
        						</br>
        						${i.attribute2}</a>
        					</div>
        					<div class="p_price">
        						<span class="jq_price">￥${i.totalprice}</span>
        						<span>${i.quantity}</span>
        						<c:if test="${i.inventory > 0}">
        						<span>有货</span>
        						</c:if>
        						<c:if test="${i.inventory == 0}">
        						<span>无货</span>
        						</c:if>
        						<span>1.170kg</span>
        					</div>
        				</div>
        			</div>
        		</div>
        		</c:forEach>
        	</div>
        </div>
        <div class="fap_beij">
			<div class="step-tit">
	            <h3>发票信息</h3>  
	        </div>
	        <div class="kaif_p">
	        	<span>普通发票（电子)</span>
	        	<span>个人</span>
	        	<span> 明细 </span>
	        	<span> <a href="#">修改</a> </span>
	        </div>
		</div>
	</div>
	<!--收费明细-->
	<div class="order_summary">
		<div class="qianq_mx">
			<div class="jiaq_meih">
				<span class="xiangq_leib"><em class="goumai_ges">1</em> 件商品，总商品金额：</span>
				<em class="goum_zongj">￥${sum}</em>
			</div>
			<div class="jiaq_meih">
				<span class="xiangq_leib">返现：</span>
				<em class="goum_zongj">￥00.00</em>
			</div>
			<div class="jiaq_meih">
				<span class="xiangq_leib">运费：</span>
				<em class="goum_zongj">￥00.00</em>
			</div>
			<div class="jiaq_meih">
				<span class="xiangq_leib">服务费：</span>
				<em class="goum_zongj">￥00.00</em>
			</div>
		</div>
	</div>
	<div class="trade_foot_detail_com">
		<div class="dsgs">
			<div class="qianq_mx">
				<div class="jiaq_meih">
					<span class="xiangq_leib"> 应付总额：</span>
					<em class="goum_zongj zhongf_jine">￥${sum}</em>
				</div> 
			</div>
		</div>
		<div class="zuiz_diz">
			<span>寄送至： ${address.province} ${address.city} ${address.area} ${address.address}</span>
			<span> 收货人：${address.contact} ${address.phone}</span>
		</div>
	</div>
	<div class="tij_dingd_ann">
		<a onclick="submit('${pojo.id}','${address.province}','${address.city}','${address.area}','${address.address}','${address.contact}','${address.phone}')">提交订单</a>
	</div>
</div>

<script type="text/javascript">
	$(function(){
		$(".shiq_1 ul li").hide().first().show()
		$(".cur_e p").hide().first().show()
		$(".cur_e p:first").click(
			function(){
				$(".shiq_1 ul li").show()
				$(".cur_e p").hide().last().show()
			}
		)
		$(".cur_e p:last").click(
			function(){
				$(".shiq_1 ul li").hide().first().show()
		$(".cur_e p").hide().first().show()
			}
		)
	})
	$(function(){
		$(".shiq_2 ul li").hide().first().show()
		$(".cur_e_1 p").hide().first().show()
		$(".cur_e_1 p:first").click(
			function(){
				$(".shiq_2 ul li").show()
				$(".cur_e_1 p").hide().last().show()
			}
		)
		$(".cur_e_1 p:last").click(
			function(){
				$(".shiq_2 ul li").hide().first().show()
		$(".cur_e_1 p").hide().first().show()
			}
		)
	})
	//cur 
</script>
<div id="myModal" class="reveal-modal">
	<div class="xint_biaot">
		<h3>新添收货地址</h3>
	</div>
	<div class="shouj_diz_b">
		<form action ="/City/order/inshow">
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
	<form action="/City/order/up">
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
 	var type;
 	var userid = ${pojo.id};
 	function dis(id){
 		if(id == 1){
 			$("#distribution").attr('value',"申通快递");
 		}else{
 			$("#distribution").attr('value',"圆通快递");
 		}
 		alert($("#distribution").val());
 	}
 	//提交
 	function submit(id,province,city,area,address,contact,phone){
 		var addres = province +" "+ city +" "+ area+" " + address;
 		var id = ${pojo.id};
 		var distribution = $("#distribution").val();
 		var pay = $("#pay").val();
 		var liuyan = $("#liuyan").val();
 	 	$.ajax({
 	 		url:'/City/order/ins',
 	 		type:'get',
 	 		data:{type:type,id:id,distribution:distribution,pay:pay,liuyan:liuyan,address:addres,contact:contact,phone:phone},
 	 		success:function(data){
 	 			window.location="/City/cityorder/sel?userid="+userid+"&index=1";
 	 		}
 	 	});
 	}
 	function pay(id){
 		if(id == 1){
 			$("#pay").attr('value',"在线支付");
 			type = 2;
 		}else{
 			$("#pay").attr('value',"货到付款");
			type = 1;
 		}
 		alert($("#pay").val());
 	}
 	var i;
     	$(function(){     	
     		i = 0;
     		show_region("s");
     		show_region2("s");
     	
     var a = ${pojo.id};
     
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
     					window.location="/City/order/listshi?id="+pid;
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
 	//绑定数据
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

