<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/class/updateClass.do">
		<input type="hidden" name="id" value="${classModel.id}"/>
		班级名:<input type="text" name="name" value="${classModel.name}"/><br/>
		日期:<input type="text" name="time" value="<f:formatDate value='${classModel.time}' pattern='yyyy-MM-dd'/>" onclick="WdatePicker()"/><br/>
		
		<input type="submit" value="修改"/>
	</form>
</body>
</html>