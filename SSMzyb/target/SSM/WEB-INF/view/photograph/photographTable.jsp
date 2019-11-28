<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/9/11
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${pageBean.list}" var="photoGraph">
    <div class="col-lg-2" style="margin:20px;">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title" align="center">

                </h3>
            </div>
            <div class="panel-body" align="center">
                <img src="http://192.168.146.129/${photoGraph.url}" onclick="checkPssword(${photoGraph.id})" style="width: 180px;height: 200px" class="img-thumbnail"/>
                <br/><br/>
                <input type="button" value="设为封面" class="btn btn-info" onclick="updateCover(${photoGraph.photoId},'${photoGraph.url}')"/>
            </div>
        </div>
    </div>

</c:forEach>
<jsp:include page="../commen/page2.jsp"></jsp:include>
</body>
</html>
