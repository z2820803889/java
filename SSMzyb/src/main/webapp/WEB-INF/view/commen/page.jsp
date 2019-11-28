<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
  <div style="float: right">
	   总页数:${pageBean.pageTotal}
	   总条数:${pageBean.total}&nbsp;
	   <c:if test="${pageBean.pageIndex==1}">
	   		<font color="red">已到第一页</font>
	   </c:if>
	   <c:if test="${pageBean.pageIndex>1}">
	   		<input type="button" onclick="jump(1)" value="<首页"/>
	   		<input type="button" onclick="jump(${pageBean.pageIndex-1})" value="上一页"/>
	   </c:if>
	   <c:if test="${pageBean.pageIndex==pageBean.pageTotal}">
	   		<font color="red">已到最后一页</font>
	   </c:if>
	    <c:if test="${pageBean.pageIndex<pageBean.pageTotal}">
	   		<input type="button"  onclick="jump(${pageBean.pageIndex+1})" value="下一页"/>
	   		<input type="button" onclick="jump(${pageBean.pageTotal})"  value="尾页>"/>
	   </c:if>&nbsp;
	   当前第<input type="text" value='${pageBean.pageIndex}' style="width:15px" id="pageIndex"/>页
	   <input type="button" value="Go" onclick="jumpPage()"/>
	  每页显示:<select onchange="jump(1)" id="pageSize">
	  			<option ${pageBean.pageSize==5?"selected":""} value=5>5</option>
	  			<option ${pageBean.pageSize==10?"selected":""} value=10>10</option>
	  			<option ${pageBean.pageSize==15?"selected":""} value=15>15</option>
	  			<option ${pageBean.pageSize==20?"selected":""} value=20>20</option>
	  		</select>条&nbsp;
	  	
	  	跳转到第	
		<select style="width:40px" onchange="jump(this.value)" id="selPageIndex">
			<c:forEach begin="1" end="${pageBean.pageTotal}" varStatus="aaa">
				<c:if test="${aaa.count > pageBean.pageIndex-3 && aaa.count<pageBean.pageIndex+6}">
					<option ${pageBean.pageIndex==aaa.count?"selected":""} value="${aaa.count}">${aaa.count}</option>
				</c:if>
			</c:forEach>
		</select>
		页
	</div>