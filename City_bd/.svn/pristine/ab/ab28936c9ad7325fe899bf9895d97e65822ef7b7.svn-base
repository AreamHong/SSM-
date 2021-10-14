<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>订单详情</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<style>
		.th{
			width: 50px;
			height: 50px;
		}
</style>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="order"></i><em>订单编号：${o.orderNumber}</em></span>
  </div>
  <dl class="orderDetail">
   <dt class="order-h">订单详情</dt>
   <dd>
    <ul>
     <li>
      <span class="h-cont h-right">收件人姓名：</span>
      <span class="h-cont h-left">${o.consignee}</span>
     </li>
     <li>
      <span class="h-cont h-right">联系电话：</span>
      <span class="h-cont h-left">${o.phone }</span>
     </li>
     <li>
      <span class="h-cont h-right">联系地址：</span>
      <span class="h-cont h-left">${o.address}</span>
     </li>
     <li>
      <span class="h-cont h-right">付款状态：</span>
      <span class="h-cont h-left">${o.ordertype.type}</span>
     </li>
     <li>
      <span class="h-cont h-right">下单时间：</span>
      <span class="h-cont h-left">${o.data}</span>
     </li>
     <li>
      <span class="h-cont h-right">付款时间：</span>
      <span class="h-cont h-left">2015-04-18 13:35</span>
     </li>
    </ul>
   </dd>
   <dd style="padding:1em 0;">
    <span><b>订单留言：</b></span>
    <span>${o.message}</span>
   </dd>
   <dd>
    <table class="list-style">
     <tr>
      <th>缩略图</th>
      <th>产品</th>
      <th>单价</th>
      <th>数量</th>
      <th>小计</th>
     </tr>
     <tr>
      <td height="50px"><img src="/City/statics/uploadfiles/${o.details.images}"  class="th" /></td>
      <!-- 产品名称  -->
      <td>${o.details.shopname }</td>
      <td>
       <span>
        <i>￥</i>
        <!-- 单价  -->
        <em>${o.details.money}</em>
       </span>
      </td><!-- 数量  -->
      <td>${o.quantity}</td>
      <td>
       <span>
        <i>￥</i><!-- 小计  -->
        <em>${o.totalprice}</em>
       </span>
      </td>
     </tr>
     <tr>
      <td colspan="5">
       <div class="fr">
        <span style="font-size:15px;font-weight:bold;">
         <i>订单共计金额：￥</i>
         <b>${o.totalprice }</b>
        </span>
       </div>
      </td>
     </tr>
    </table>
   </dd>
   <dd>
   
   
    <table class="noborder">
     <tr>
      <td width="10%" style="text-align:right;"><b>管理员操作：</b></td>
      <td>
       <textarea class="block" style="width:80%;height:35px;outline:none;"></textarea>
      </td>
     </tr>
    </table>
    
    
    
   </dd>
   <dd>
      <!-- Operation -->
	  <div class="BatchOperation">
	   <input type="button" value="打印订单" class="btnStyle"/>
	   <c:if test="${o.typeid == 1}">
		   <input type="button" value="配送" class="btnStyle"/>
		   <input type="button" value="发货" class="btnStyle" onclick="upd(2)"/>
		   <input type="button" value="取消订单" class="btnStyle" onclick="upd(4)"/>
	   </c:if>
	   <input type="button" value="返回" class="btnStyle" onclick="javascript:history.back(-1);"/>
	  </div>
   </dd>
  </dl>
 </div>
 <script type="text/javascript" src="/City_bd/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
	var id = ${o.id}
		function upd(tid){
			$.ajax({
				url:'http://localhost:8080/City_bd/order/upd',
				type:'get',
				data:{typeid:tid,id:id},
				success:function(data){
					console.log(data);
					window.location = "http://localhost:8080/City_bd/order/list?index=1";
				}
			})
		}
	</script>
</body>
</html>
