<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
<script>
	var clsId = ${classId};
	
	$(function(){
		jump(1);
	});
	
	function jump(index){
		$.ajax({
			url:"<%=request.getContextPath()%>/student/queryAll.do",
			type:"post",
			dataType:"html",
			data:{classId:clsId,strIndex:index,pageSize:$("#pageSize").val()},
			success:function(result){
				$("#dataDiv").html(result);
			},
			error:function(){
				alert("请求失败!");
			}
		});
		
	};
	
	function toAdd(){
		location.href="<%=request.getContextPath()%>/student/toAdd.do?classId="+ clsId;
	};
	
	function toUpdate(id){
		$.ajax({
			url:"<%=request.getContextPath()%>/student/toUpdate.do",
			type:"post",
			dataType:"html",
			data:{id:id},
			success:function(result){
				$("#dataDiv").html(result);
			},
			error:function(){
				alert("请求失败!");
			}
		});
	
	};
	
	function deleteStudent(id,clsId){
		var a = confirm("确认删除吗?");
		if(a){
			location.href="<%=request.getContextPath()%>/student/deleteStudent.do?id=" + id  + "&classId=" + clsId;
		};
	};
	
	function jumpPage(){
		var pageIndex = $("#pageIndex").val();
		var a  = typeof(pageIndex);
		var ref = /^[0-9]{1,}$/;
		if(ref.test(pageIndex) == false){
			pageIndex = 1;
		}
			$.ajax({
				url:"<%=request.getContextPath()%>/student/queryAll.do",
				type:"post",
				dataType:"html",
				data:{classId:clsId,strIndex:pageIndex,pageSize:$("#pageSize").val()},
				success:function(result){
					$("#dataDiv").html(result);
				},
				error:function(){
					alert("请求失败!");
				}
			});
		
	};
	
	function goClsIndex(){
		location.href="<%=request.getContextPath()%>/class/toIndex.do"
	};
	
	function changeBgcolor(obj){
		obj.style.backgroundColor = "pink";
	};
	
	function outBgcolor(obj){
		obj.style.backgroundColor = "";
	};
</script>

</head>
<body>
	<div id="dataDiv"></div>
</body>
</html>