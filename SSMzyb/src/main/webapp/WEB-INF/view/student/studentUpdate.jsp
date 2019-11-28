<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/student/updateStudent.do">
		<input type="hidden" name="id" value="${student.id}"/>
		<input type="hidden" name="classId" value="${student.classId}"/>
		学生姓名:<input type="text" name="name" value="${student.name}"/><br/>
		年龄:<input type="text" name="age" value="${student.age}"/><br/>
		生日:<input type="text" name="birthday" value="<f:formatDate value='${student.birthday}' pattern='yyyy-MM-dd'/>" onclick="WdatePicker()"/><br/>
		
		<input type="submit" value="修改"/>
	</form>
</body>
</html>