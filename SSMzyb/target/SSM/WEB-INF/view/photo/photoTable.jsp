<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/9/10
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
</head>
<body>


    <c:forEach items="${pageBean.list}" var="photo">
        <div class="col-lg-2" style="margin:20px;">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title" align="center">
                        <a href="javascript:;" onclick="checkPssword(${photo.id})" style="text-decoration: none;">
                             <c:if test="${photo.password!=null}">
                                 🔒
                             </c:if>
                                ${photo.name}
                        </a>
                    </h3>
                </div>
                <div class="panel-body" >
                   <img src="http://192.168.146.129/${photo.coverUrl}" onclick="checkPssword(${photo.id})" style="width: 180px;height: 200px" class="img-thumbnail"/>
                </div>
            </div>
        </div>

    </c:forEach>
    <jsp:include page="../commen/page2.jsp"></jsp:include>
</body>
</html>
