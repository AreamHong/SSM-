<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div>
									<div class="history_bd">
										<dl>
											<dt>全部分类：</dt>
											<dd>
												<input type="hidden" id="c" value=""/>
												<a href="javascript:void(0)" class="category" onclick="chooseCategory(this,'')" value="${l.id}">全部</a>
												<c:forEach items="${categoryList }" var="l"  >
													<a href="javascript:void(0)" class="category" onclick="chooseCategory(this,${l.id})" value="${l.id}">${l.name }(${l.count })</a>
													
												</c:forEach>
											</dd>
										</dl>
									</div>
							
								</div> 
