<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>广告列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/City_bd/style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="/City_bd/js/jquery.js"></script>
<script src="/City_bd/js/public.js"></script>
</head>
<body>
<script type="text/javascript" src="/City_bd/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
	// 广告在哪里播放类别
	function selListType(){
		var pid = $("#postertype").val();
		
		var s = $("#store").val();
		window.location = "/City_bd/poster/list?postertypeid="+pid+"&store="+s+"&index=1";
	}
	// 广告播放类别
	function selListStore(){
		var pid = $("#postertype").val();
		
		var s = $("#store").val();
		window.location = "/City_bd/poster/list?postertypeid="+pid+"&store="+s+"&index=1";
	}
	// 分页查询
	function selPoster(index){
		var pid = $("#postertype").val();
		
		var s = $("#store").val();
		window.location = "/City_bd/poster/list?postertypeid="+pid+"&store="+s+"&index="+index;
	}
	//全选
	function quanxuan(){
		var c = document.getElementById("del").checked;
		$("input[name='checkbox']").each(function(i,item){
    		$(item).prop("checked",c);
    	})
	}
	// 单选
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
	function delId(id){
		if(confirm("确定删除吗?") == true){
			$.ajax({
				url:'http://localhost:8080/City_bd/poster/delId',
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
	function delAll(){
		var str = "";
		// 循环看哪一列被选中了
		$("#tbe input[name='checkbox']").each(function(i,item){
			if($(item).prop("checked") == true){
				str += $(item).val()+",";
			}
	   	})
		if(str != ""){
			$.ajax({
				url:'http://localhost:8080/City_bd/poster/delAll',
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
	// 批量修改广告播放状态
	function updStore(store){
		var str = "";
		// 循环看哪一列被选中了
		$("#tbe input[name='checkbox']").each(function(i,item){
			if($(item).prop("checked") == true){
				str += $(item).val()+",";
			}
	   	})
	   	if(str != ""){
	   		$.ajax({
				url:'http://localhost:8080/City_bd/poster/updStore',
				type:'get',
				data:{str:str,store:store},
				success:function(data){
					console.log(data);
					// 局部刷新
					$("#tbe").load(location.href + " #tbe");
				}
			})
	   	}
	   	console.log(str)
		console.log("修改:"+store)
	}
	</script>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i></i><em>广告列表</em></span>
    <span class="modular fr"><a href="/City_bd/poster/seltype" class="pt-link-btn">+添加广告</a></span>
  </div>
  <form>
    <img src="/City_bd/images/icon_search.gif"/>&nbsp;&nbsp;&nbsp;&nbsp;
            图片状态:
    <select class="inline-select" id="postertype" onchange="selListType()">
     <option value="0">全部</option>
     <c:forEach items="${postertype }" var="i">
     	<c:if test="${postertypeid == i.id}">
     		<option value="${i.id}" selected="selected">${i.type}</option>
     	</c:if>
     	<c:if test="${postertypeid != i.id}">
     		<option value="${i.id}">${i.type}</option>
     	</c:if>
     </c:forEach>
    </select> &nbsp;&nbsp;&nbsp;&nbsp;
            广告状态:
    <select class="inline-select" id="store" onchange="selListStore()">
     <c:if test="${posterstore == 0}">
     	<option value="0" selected="selected">全部</option>
     	<option value="1">正在播放</option>
     	<option value="2">未播放</option>
     </c:if>
     <c:if test="${posterstore == 1}">
     	<option value="0">全部</option>
     	<option value="1" selected="selected">正在播放</option>
     	<option value="2">未播放</option>
     </c:if>
     <c:if test="${posterstore == 2}">
     	<option value="0">全部</option>
     	<option value="1">正在播放</option>
     	<option value="2" selected="selected">未播放</option>
     </c:if>
    </select>
   </form>
  <table class="list-style Interlaced" id="tbe">
   <tr>
    <th>ID</th>
    <th>广告名称</th>
    <th>广告位置</th>
    <th>媒介类型</th>
    <th>广告状态</th>
    <th>广告代码</th>
    <th>操作</th>
   </tr>
   <c:forEach items="${p.list}" var="i">
	   <tr class="center">
	    <td>${i.id}</td>
	    <td>
	    	<input type="checkbox" name="checkbox" value="${i.id}" onclick="dx()"/>
	    	${i.name}
	    </td>
	    <td>${i.postertype.type}</td>
	    <td>图片</td>
	    <td>
	    	<c:if test="${i.store == 1}">
	    		正在播放
	    	</c:if>
	    	<c:if test="${i.store != 1}">
	    		未播放
	    	</c:if>
	    </td>
	    <td>${i.postercode}</td>
	    <td class="center">
	     <a href="/City_bd/poster/selId?id=${i.id}" title="编辑"><img src="/City_bd/images/icon_edit.gif"/></a>
	     &nbsp;
	     <a title="删除" onclick="delId(${i.id})"><img src="/City_bd/images/icon_drop.gif"/></a>
	    </td>
	   </tr>
   </c:forEach>
   
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del" onclick="quanxuan()"/>
	   <label for="del" class="btnStyle middle">全选</label>
	   <input type="button" value="批量删除" class="btnStyle" onclick="delAll()"/>
	   <input type="button" value="批量播放" class="btnStyle" onclick="updStore(1)"/>
	   <input type="button" value="批量不播放" class="btnStyle" onclick="updStore(2)"/>
	  </div>
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <c:if test="${p.pagecount >= 1}">
	   		<a>${p.index}/${p.pagecount}</a>
	   </c:if>
	   <a onclick="selPoster(1)">第一页</a>
	   <c:if test="${p.index-2 <= 0 && p.pagecount > 4}">
	   		<c:forEach begin="1" end="5" var="i">
		   		<a onclick="selPoster(${i})">${i}</a>
		    </c:forEach>
	   </c:if>
	   <c:if test="${p.index+2 > p.pagecount && p.pagecount > 4}">
	   		<c:forEach begin="${p.pagecount-4}" end="${p.pagecount}" var="i">
		   		<a onclick="selPoster(${i})">${i}</a>
		    </c:forEach>
	   </c:if>
	   <c:if test="${p.index+2 <= p.pagecount && p.index-2 > 0}">
	   		<c:forEach begin="${p.index-2}" end="${p.index+2}" var="i">
		   		<a onclick="selPoster(${i})">${i}</a>
		    </c:forEach>
	   </c:if>
	   <c:if test="${p.index+2 >= p.pagecount && p.index-2 <= 0}">
	   		<c:forEach begin="1" end="${p.pagecount}" var="i">
		   		<a onclick="selPoster(${i})">${i}</a>
		    </c:forEach>
	   </c:if>
	   <a onclick="selPoster(${p.pagecount})">最后一页</a>
	  </div>
  </div>
 </div>
</body>
</html>