<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

   <div class="diyig_s">
										<ol>
											<c:forEach items="${collectShop }" var="collect">
												<li>
												<label><input type="checkbox" class="checkbox" name="che1" value="${collect.id }"></label>
												<div class="overflow">
													<div class="shouc_img">
														<a href="#"><img src="/City/statics/uploadfiles/${collect.images }"></a>
													</div>
													
												</div>
												<div class="col280">
													<h2><a href="#" title="${collect.shopname }" target="_blank">${collect.shopname }</a></h2>
													<div class="price_box"><span>￥${collect.money }</span></div>
													
													<div class="price_box">
														<a href="#" class="button_grey">加入购物车</a>
														<a href="javascript:void(0)" class="button_grey" onclick="cancelCollect(${collect.id})">取消收藏</a>
													</div>
												</div>
												<div class="youh_d">有货</div>
											</li>
											</c:forEach>
											
										</ol>
										<div class="gerzx_fany">
										<a href="javascript:void(0)" class="shangxy" onclick="changePage(${nowPage+1>page?page:nowPage+1})">下一页</a>
											
											<a href="#">${nowPage }/${page}</a>
											<a href="javascript:void(0)" class="shangxy" onclick="changePage(${nowPage-1==0?1:nowPage-1})">上一页</a>
										</div>
									</div>
									
									<script>
									
										function changePage(index){
											var id = $("#c").val();
											refreshList(id,index);
										}
									</script>
  