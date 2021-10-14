<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	
 %>
    <div class="shnagp_list_v1">
		<ul>
		<c:forEach items="${itemList }" var="l">
			<li>
				<div class="lieb_neir_kuang">
					<div class="lieb_img">
						<a href="/City/shop/shoptype?id=${l.id }"><img src="/City/statics/uploadfiles/${l.picture }" style="width:220px"></a>
						<div class="p_focus"><a class="J_focus" href="#"><i></i>关注</a></div>
					</div>
					<div class="lieb_text">
						<div class="p_price">
				          	<strong class="J_price"><em>¥</em><i>${l.price }</i></strong> 
			            </div>
					</div>
						<div class="shangp_biaot_"><a href="/City/shop/shoptype?id=${l.id }">${l.name }</a></div>
						<div class="lieb_dianp_mingc">
							<div class="zuo_mingc">
								<p><a class="lianpu_minc" href="#">${l.shopname }</a><a class="mis" href="#">点我交谈</a></p>
								<div class="p_icons">
									<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
									<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
								</div>
							</div>
							<div class="you_pingj">
								<p>已有评价</p>
								<span><a href="#"><em>100+</em></a> 人</span>
							</div>
						</div>
				</div>
			</li>
		</c:forEach>
		</ul>
			
		
			<div class="page clearfix">
	        	<div class="p-wrap" id="J_bottomPage">
		            <span class="p-num">
						<a class="pn-next" href="javascript:void(0)" onclick="changePage(${nowPage-1==0?1:nowPage-1})"><i>&lt;</i><em>上一页</em></a>

		                <a href="#" class="">${nowPage }</a>
						<a class="pn-next" href="javascript:void(0)" onclick="changePage(${nowPage+1>page?page:nowPage+1})">下一页<i>&gt;</i></a>
					</span>
		            <span class="p-skip">
		                <em>共<b>${page }</b>页&nbsp;&nbsp;到第</em>
		               	<input class="input-txt" id="page">
		                <em>页</em>
		                <a class="btn btn-default" href="javascript:void(0)" onclick="skipPage()">确定</a>
					</span>
	        	</div>
	    	</div>
		</div>
<script>
	function changePage(page){
		getArray(page);
	}
	function skipPage(){
		var page = $("#page").val();
		getArray(page);
	}
</script>