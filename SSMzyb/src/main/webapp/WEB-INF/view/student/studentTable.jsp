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
	<h1 align="center">学生展示页面</h1>
	<input type="button" value="新增" onclick="toAdd()"/>
	<input type="button" value="返回班级页面" onclick="goClsIndex()"/>
	<table border="2px" cellpadding="0" cellspacing="0" width="100%">
		<tr height="35px">
			<th>序号</th>
			<th>学生名</th>
			<th>年龄</th>
			<th>生日</th>
			<th>班级</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${pageBean.list}" var="student" varStatus="status">
		<tr align="center" onmouseout="outBgcolor(this)" onmouseover="changeBgcolor(this)" ${status.count%2==0?"bgcolor='#ccc'":""}>
			<td>${pageBean.startIndex + status.count}</td>
			<td>${student.name}</td>
			<td>${student.age}</td>
			<td>
				<f:formatDate value="${student.birthday}" pattern="yyyy-MM-dd"/>
			</td>
			<td>${classModel.name}</td>
			<td>
				<input type="button" value="修改" onclick="toUpdate(${student.id})"/>
				<input type="button" value="删除" onclick="deleteStudent(${student.id},${student.classId})"/>
			</td>
		</tr>
	</c:forEach>
	</table><br/>
	<jsp:include page="../commen/page.jsp"></jsp:include>
</body>
	
</html>
