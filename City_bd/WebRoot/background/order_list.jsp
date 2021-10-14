<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>订单列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="/City_bd/js/jquery.js"></script>
<script src="/City_bd/js/public.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="order"></i><em>订单列表</em></span>
  </div>
  <div class="operate">
   <form>
    <img src="/City_bd/images/icon_search.gif"/>
    <input type="text" class="textBox length-long" placeholder="输入订单编号..." value="${num}" id="orderNumber"/>
    <select class="inline-select" id="ordertype" onchange="selorderType(1)">
     <option value="0">全部</option>
    <c:forEach items="${typelist }" var="i">
    	<c:if test="${tid == i.id}">
     		<option value="${i.id }" selected="selected">${i.type }</option>
    	</c:if>
    	<c:if test="${tid != i.id}">
     		<option value="${i.id }">${i.type }</option>
    	</c:if>
    </c:forEach>
    </select>
    <input type="button" value="查询" class="tdBtn" onclick="selOrder(1)"/>
   </form>
  </div>
  <table class="list-style Interlaced" id="tbe">
   <tr>
    <th>ID</th>
    <th>订单编号</th>
    <th>下单时间</th>
    <th>收件人</th>
    <th>店铺名称</th>
    <th>商品名称</th>
    <th>订单金额</th>
    <th>订单状态</th>
    <th>操作</th>
   </tr>
   <c:forEach items="${p.list}" var="i">
   	
   <tr>
   <td class="center">
     <span>${i.id}</span>
    </td>
    <td class="center">
     <input type="checkbox" name="checkbox" onclick="dx()" value="${i.id}"/>
     <a href="order_detail.html">${i.orderNumber}</a>
    </td>
    <td class="center">
     <span class="block">DeatGhost</span>
     <span class="block">${i.data}</span>
     <span class="block"></span>
    </td>
    <td width="50px" class="center">
     <span class="block">${i.consignee}[${i.phone}]</span>
     <address>${i.address}</address>
    </td>
    <td class="center">
     <span>${i.shops.shopname}</span>
    </td>
    <td class="center">
     <span>${i.details.shopname}</span>
    </td>
    <td class="center">
     <span><i>￥</i><b>${i.totalprice}</b></span>
    </td>
    <td class="center">
     <span>${i.ordertype.type}</span>
    </td>
    <td class="center">
     <a href="/City_bd/order/selorderId?id=${i.id}"  class="inline-block" title="查看订单"><img src="/City_bd/images/icon_view.gif"/></a>
     &nbsp;
     <a class="inline-block" title="删除订单"><img src="/City_bd/images/icon_trash.gif" onclick="delsc(${i.id})"/></a>
    </td>
   </tr>
   </c:forEach>
  </table>
  <script type="text/javascript" src="/City_bd/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
	var id = ${pojo.id};
	$(function(){
		alert(id);
	})
	function selorderType(index){
		var tid = $("#ordertype").val();
		var n = $("#orderNumber").val();
		window.location = "/City_bd/order/list?shopsid="+id+"&typeid="+tid+"&orderNumber="+n+"&index="+index;
	}
	// 条件查询
	function selOrder(index){
		var tid = $("#ordertype").val();
		var n = $("#orderNumber").val();
		window.location = "/City_bd/order/list?shopsid="+id+"&typeid="+tid+"&orderNumber="+n+"&index="+index;
	}
	// 全选按钮
	function quanxuan(){
		var c = document.getElementById("del").checked;
		console.log(c)
		$("input[name='checkbox']").each(function(i,item){
    		$(item).prop("checked",c);
    	})
	}
	// 单选
	var count = ${count}
	function dx(){
		var ct = 0;
		// 如果当前页面单选数量跟页面数量一致
		// 那么全选框也被选中
		$("#tbe input[name='checkbox']").each(function(i,item){
			if($(item).prop("checked") == true){
				ct++;
			}
    		
    	})
    	if(count == ct){
    		$("#del").prop("checked",true);
    	}else{
    		$("#del").prop("checked",false);
    	}
	}
	// 单个删除
	function delsc(id){
		if(confirm("确定删除吗?") == true){
			$.ajax({
				url:'http://localhost:8080/City_bd/order/del',
				type:'get',
				data:{id:id},
				success:function(data){
					console.log(data);
					$("#del").prop("checked",false);
					// 局部刷新
					$("#tbe").load(location.href + " #tbe");
				}
			})
		}
	}
	// 多个删除
	function continuous(){
			var str = "";
			// 循环看哪一列被选中了
			$("#tbe input[name='checkbox']").each(function(i,item){
				if($(item).prop("checked") == true){
					str += $(item).val()+",";
				}
	    	})
			if(str != ""){
				$.ajax({
					url:'http://localhost:8080/City_bd/order/continuous',
					type:'get',
					data:{str:str},
					success:function(data){
						console.log(data);
						$("#del").prop("checked",false);
						// 局部刷新
						$("#tbe").load(location.href + " #tbe");
					}
				})
			}
	}
	</script>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del" onclick="quanxuan()" name="checkbox"/>
	   <label for="del" class="btnStyle middle">全选</label>
	   <input type="button" value="打印订单" class="btnStyle"/>
	   <input type="button" value="配货" class="btnStyle"/>
	   <input type="button" value="删除订单" class="btnStyle" onclick="continuous()"/>
	  </div>
	  <!-- turn page -->
	  <div class="turnPage center fr">
	  <a>[${p.index}/${p.pagecount}]</a>
	  
	   <a onclick="selOrder(1)">第一页</a>
	   <c:if test="${p.index-2 <= 0 && p.pagecount > 4}">
	   		<c:forEach begin="1" end="5" var="i">
		   		<a onclick="selOrder(${i})">${i}</a>
		    </c:forEach>
	   </c:if>
	   <c:if test="${p.index+2 > p.pagecount && p.pagecount > 4}">
	   		<c:forEach begin="${p.pagecount-4}" end="${p.pagecount}" var="i">
		   		<a onclick="selOrder(${i})">${i}</a>
		    </c:forEach>
	   </c:if>
	   <c:if test="${p.index+2 <= p.pagecount && p.index-2 > 0}">
	   		<c:forEach begin="${p.index-2}" end="${p.index+2}" var="i">
		   		<a onclick="selOrder(${i})">${i}</a>
		    </c:forEach>
	   </c:if>
	   <c:if test="${p.index+2 >= p.pagecount && p.index-2 <= 0}">
	   		<c:forEach begin="1" end="${p.pagecount}" var="i">
		   		<a onclick="selOrder(${i})">${i}</a>
		    </c:forEach>
	   </c:if>
	   
	   <a onclick="selOrder(${p.pagecount})">最后一页</a>
	  </div>
  </div>
 </div>
</body>
</html>