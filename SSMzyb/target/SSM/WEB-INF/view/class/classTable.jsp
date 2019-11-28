<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">班级展示页面</h1>
	
	<input type="button" value="新增" onclick="toAdd()"/><br/>
	
	<table border="2px" cellpadding="0" cellspacing="0" width="100%">
		<tr height="35px">
			<th>序号</th>
			<th>班级名</th>
			<th width="170px">班级名</th>
			<th>日期</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${pageBean.list}" var="classModel" varStatus="status">
		<tr align="center" onmouseout="outBgcolor(this)" onmouseover="changeBgcolor(this)" ${status.count%2==0?"bgcolor='#ccc'":""}>
			<td>${pageBean.startIndex + status.count}</td>
			<td>
				<a href="<%=request.getContextPath()%>/student/toIndex.do?classId=${classModel.id}">${classModel.name}</a>
			</td >
			<td >
				<span onclick="hideSpan(this,${classModel.id})" id="s_${classModel.id}">${classModel.name}</span>
				<input onblur="updateClsName(this,${classModel.id},${pageBean.pageIndex})" id="t_${classModel.id}" style="display: none" type="text" value="${classModel.name}"/>
			</td>
			<td>
				<f:formatDate value="${classModel.time}" pattern="yyyy-MM-dd"/>
			</td>
			<td>
				<input type="button" value="修改" onclick="toUpdate(${classModel.id})"/>
				<input type="button" value="删除" onclick="deleteModel(${classModel.id})"/>
			</td>
		</tr>
	</c:forEach>
	</table>
	<br/>
	<jsp:include page="../commen/page.jsp"></jsp:include>
</body>
	
</html>
