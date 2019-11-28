<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-sm-12">

	<ul class="pagination" style="float: right;margin-right: 100px">
		<li><a  href="javascript:void(0)" >当前第:${pageBean.pageIndex}页</a></li>
		<li><a  href="javascript:void(0)" >总页数:${pageBean.pageTotal}</a></li>
		<li><a  href="javascript:void(0)" >总条数:${pageBean.total}</a></li>
		<li><a onclick="jump(1)" href="javascript:void(0)" >首页</a></li>
		<li><a onclick="jump('${pageBean.pageIndex-1}')" href="javascript:void(0)" >&laquo;</a></li>

		<c:forEach begin="1" end="${pageBean.pageTotal}" varStatus="aaa">
			<c:if test="${aaa.count > pageBean.pageIndex-3 && aaa.count<pageBean.pageIndex+3}">
				<li ${pageBean.pageIndex==aaa.count?"class='previous disabled'":""}><a onclick="jump(${aaa.count})"   href="javascript:void(0) "  value="${aaa.count}">${aaa.count}</a></li>
			</c:if>
		</c:forEach>

		<li><a onclick="jump('${pageBean.pageIndex+1}')" href="javascript:void(0)" >&raquo;</a></li>
		<li><a onclick="jump('${pageBean.pageTotal}')" href="javascript:void(0)" >尾页</a></li>


	</ul>

</div>