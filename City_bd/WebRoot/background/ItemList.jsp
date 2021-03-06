<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <table class="list-style Interlaced">
   <tr>
    <th>ID编号</th>
    <th>产品</th>
    <th>名称</th>
    <th>市场价</th>
    <th>会员价</th>
    <th>库存</th>
    <th>精品</th>
    <th>新品</th>
    <th>热销</th>
    <th>是否显示</th>
    <th>操作</th>
   </tr>
   <c:forEach items="${itemList}" var="list">
 	<tr>
    <td>
     <span>
     <input type="checkbox" class="middle children-checkbox" name="che1" value="${list.id }"/>
     <i>${list.id }</i>
     </span>
    </td>
    <td class="center pic-area"><img src="/City_bd/statics/uploadfiles/${list.picture }" class="thumbnail"/></td>
    <td class="td-name">
      <span class="ellipsis td-name block">${list.name }</span>
    </td>
    <td class="center">
     <span>
      <i>￥</i>
      <em>${list.price }</em>
     </span>
    </td>
    <td class="center">
     <span>
      <i>￥</i>
      <em></em>
     </span>
    </td>
    <td class="center">
     <span>
      <em>${list.allInventory }</em>
      <i>件</i>
     </span>
    </td>
    <td class="center"><img src="/City_bd/images/yes.gif"/></td>
    <td class="center"><img src="/City_bd/images/no.gif"/></td>
    <td class="center"><img src="/City_bd/images/yes.gif"/></td>
    <c:if test="${list.isDelete==0 }">
    	<td class="center"><a onclick="isDisplay(${list.id},1)"><img src="/City_bd/images/yes.gif"/></a></td>
    	</c:if>
    	<c:if test="${list.isDelete==1 }">
    	<td class="center"><a onclick="isDisplay(${list.id},0)"><img src="/City_bd/images/no.gif"/></a></td>
    	</c:if>
    <td class="center">
     <a onclick="getDetail(${list.id})" title="查看详情" target="_blank"><img src="/City_bd/images/icon_view.gif"/></a>
     <a href="#" title="编辑" onclick="on('${list.id}','${pojo.id}','${list.name}','${list.pid}','${list.shopId}')"><img src="/City_bd/images/icon_edit.gif"/></a>
     <a title="删除"><img src="/City_bd/images/icon_drop.gif" onclick="del('${list.id}',${list.shopId})"/></a>
    </td>
   </tr>
 		
   </c:forEach>
   
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation -->
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del" onclick="allchecked()"/>
	   <label for="del" class="btnStyle middle" >全选</label>
	   <input type="button" value="批量删除" class="btnStyle" onclick="dele()"/>
	  </div>
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a onclick="refreshList(${nowPage-1==0?1:nowPage-1})">上一页</a>
	   <a>${nowPage}</a>
	   <a onclick="refreshList(${nowPage+1>page?page:nowPage+1})">下一页</a>
	   <a>共${page }页</a>
	  </div>
  </div>
 <script>
 var shopsid = ${pojo.id};
 function on (id,shopid,shopname,pid,s){	
 	if(shopsid == s){
 	window.location="/City_bd/product/addshop?shopid="+id+"&pid="+pid+"&merchants="+shopid+"&shopname="+shopname; 	
 	}else{
 		alert("抱歉,您没有这个权限");
 	}
 }
 function allchecked(){
     	 	var checkbox = $("input[name='che1']");
     	 	var box = document.getElementById("del");
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
 function dele(){
			var store = $(".inline-select").val();
			var name = $("#selname").val();
      		var a = 0;
      		var str = "";
      		$("input[name='che1']").each(function(i,item){
      			if($(item).prop("checked")==true){
      			 a = 1;
 	     			str = $(item).val()+","; 
    				$.ajax({
  						url:'/City_bd/Item/delAll',
  						type:'get',
  						data:{str:str,name:name,shopid:store,index:1},
  						success:function(data){
  									$("#list").html(data);
  							}
  						}); 
  				} 
  			});  
  			if(a == 0){
  				alert("至少要选择一个");
  			}	
     	 }
     	 function del(id,shopid){
     	 if(shopsid == shopid){
     	 
     	 var store = $(".inline-select").val();
			var name = $("#selname").val();
					$.ajax({
  						url:'/City_bd/Item/del',
  						type:'get',
  						data:{id:id,name:name,shopid:store,index:1},
  						success:function(data){
  							$("#list").html(data);
  						}
  					});
      }else{
      	alert("抱歉,您没有这个权限。");
      }
		}
		function isDisplay(id,flag){
			var store = $(".inline-select").val();
			var name = $("#selname").val();
			var index = "${nowPage}";
			
				$.ajax({
  						url:'/City_bd/Item/isDisplay',
  						type:'get',
  						data:{id:id,isDisplay:flag,name:name,shopid:store,index:index},
  						success:function(data){
  							$("#list").html(data);
  						}
  					});
		}
function getDetail(id){
var index = "${nowPage}";
	$.ajax({
  						url:'/City_bd/Item/getItem',
  						type:'get',
  						data:{id:id,index:index},
  						success:function(data){
  							$("#list").html(data);
  						}
  					});
}
 </script>
