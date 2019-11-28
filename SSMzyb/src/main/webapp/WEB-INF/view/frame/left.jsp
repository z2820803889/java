<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LeftMenu</title>
<script language="JavaScript" src="<%=request.getContextPath()%>/js/stm31.js"></script>
<script language="JavaScript" src="<%=request.getContextPath()%>/js/Menu200FILE666983512066QJK.js"></script>
<script language="JavaScript" src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
<LINK href="<%=request.getContextPath()%>/css/menu.css" type=text/css rel=stylesheet>	
<script>
<%-- 	$(function(){
		var arr= ["MEMU_FUNC20082","MEMU_FUNC209000","MEMU_FUNC20077"];
		$.ajax({
			url:"<%=request.getContextPath()%>/permission/queryPermissionList.do",
			type:"post",
			dataType:"json",
			data:{},
			success:function(result){
				 var head = "<ul id=MenuUl>";
				var dataValue = "";
				for(var i =0;i<result.length;i++){
					if(result[i].pid == null){
						dataValue += "<li class=level1><div class=level1Style id=MEMU_FUNC20082 onclick=menuClick(this);><img class=Icon src='../img/FUNC20082.gif'>"+ result[i].name +"</div><ul class=MenuLevel2 id=MEMU_FUNC20082d style='DISPLAY: none'>"
						for(var j =0;j<result.length;j++){
							if(result[j].pid == result[i].id){
								dataValue += "<li class=level2><div class=level2Style id=MEMU_FUNC20083><img id=MEMU_FUNC20083_img src='../img/menu_arrow_single.gif'>"+result[j].name + "</div>"
							};	
						};
						dataValue += "</ul></li>";
					};
					
				};
				
				dataValue = head + dataValue + "</ul>";
				$("#dataDiv").html(dataValue);
				
				
				
			},
			error:function(){
				alert("请求失败!");
			}
		});
		
	}) --%>
</script>

</head>
<body leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<ul id=MenuUl>
	<c:forEach items="${list}" var="permission">
		<li class=level1><div class=level1Style id=MEMU_FUNC2000${permission.id} onclick=menuClick(this);><img class=Icon src="../img/FUNC20001.gif"> ${permission.name}</div>
			<ul class=MenuLevel2 id=MEMU_FUNC2000${permission.id}d style="DISPLAY: none">
				<c:forEach items="${permission.sonList}" var="permission2">
					<c:if test="${fn:length(permission2.sonList)> 0}">
						<li class=level2><div class=level2Style id=MEMU_FUNC2000${permission2.id} onclick=subMenuClick(this);><img id=MEMU_FUNC2000${permission2.id}_img src="../img/menu_arrow_close.gif">${permission2.name}</div>
						<ul class=MenuLevel2 id=MEMU_FUNC2000${permission2.id}d style="DISPLAY: none">
						<c:forEach items="${permission2.sonList}" var="permission3" varStatus="status">
							<c:if test="${status.count < fn:length(permission2.sonList)}">
								<li  id=MEMU_FUNC2000${permission3.id}  class=level3Head><a target="desktop" style="text-decoration:none;out-line: none;color: #0052a4;" href="<%=request.getContextPath()%>${permission3.url}">${permission3.name}</a></li>
							</c:if>
							<c:if test="${status.count==fn:length(permission2.sonList)}">
								<li  id=MEMU_FUNC2000${permission3.id}  class=level32><a target="desktop" style="text-decoration:none;out-line: none;color: #0052a4;" href="<%=request.getContextPath()%>${permission3.url}">${permission3.name}</a></li>
							</c:if>
						</c:forEach>
						</ul>
						</li>
					</c:if>
					<c:if test="${fn:length(permission2.sonList)==0}">
						<li class=level2><div class=level2Style id=MEMU_FUNC2008${permission2.id} ><img id=MEMU_FUNC20083_img src="../img/menu_arrow_single.gif"><a target="desktop" style="text-decoration:none;out-line: none;color: #0052a4;" href="<%=request.getContextPath()%>${permission2.url}">${permission2.name}</a></div>
					</c:if>
				</c:forEach>
			</ul>
		</li>
	</c:forEach>
</ul>
		




</body>
</html>
