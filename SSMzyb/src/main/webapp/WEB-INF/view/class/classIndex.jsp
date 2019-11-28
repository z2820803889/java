<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		jump(1);
	});
	
	function jump(index){
	    $.ajax({
			url:"<%=request.getContextPath()%>/class/queryAll.do",
			type:"post",
			dataType:"html",
			data:{clsName:$("#clsName").val(),strIndex:index,pageSize:$("#pageSize").val()},
			success:function(result){
				$("#dataDiv").html(result);
			},
			error:function(){
				alert("请求失败!");
			}
		});
		
	};
	
	function toAdd(){
		location.href="<%=request.getContextPath()%>/class/toAdd.do"
	};
	
	function toUpdate(id){
		$.ajax({
			url:"<%=request.getContextPath()%>/class/toUpdate.do",
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
	
	function deleteModel(id){
		var a = confirm("确认删除吗?");
		if(a){
			location.href="<%=request.getContextPath()%>/class/deleteClass.do?id=" + id;
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
				url:"<%=request.getContextPath()%>/class/queryAll.do",
				type:"post",
				dataType:"html",
				data:{strIndex:pageIndex,pageSize:$("#pageSize").val()},
				success:function(result){
					$("#dataDiv").html(result);
				},
				error:function(){
					alert("请求失败!");
				}
			});
		
	};
	
	
	function changeBgcolor(obj){
		obj.style.backgroundColor = "pink";
	};
	
	function outBgcolor(obj){
		obj.style.backgroundColor = "";
	};
	
	function hideSpan(obj,clsId){
		$(obj).css("display","none");
		$("#t_"+clsId).css("display","");
		$("#t_"+clsId).focus().select();
	};
	
	function updateClsName(obj,clsId,index){
		$("#s_"+clsId).html($(obj).val());
		$(obj).css("display","none");
		$("#s_"+clsId).css("display","");
		$.ajax({
			url:"<%=request.getContextPath()%>/class/updateClsName.do",
			type:"post",
			dataType:"html",
			data:{id:clsId,name:$(obj).val()},
			success:function(result){
				jump(index);
			},
			error:function(){
				alert("请求失败!");
			}
		});
	};
</script>

</head>
<body>
	班级名:<input type="text" id="clsName"/><br/>
	<input type="button" value="查询" onclick="jump(1)"/>
	<div id="dataDiv"></div>
</body>
</html>