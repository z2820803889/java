<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/9/2
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<head>
    <title>Title</title>
    <!-- 引入 Bootstrap -->
    <link href="<%=request.getContextPath()%>/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/bootstrap/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="<%=request.getContextPath()%>/bootstrap/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="<%=request.getContextPath()%>/bootstrap/bootstrap.min.js"></script>
<script>

    function updateUserRole(){
        if(confirm("您确认修改吗?")){
            $("#form1").submit();
        };

    };
</script>
</head>
<body>

<div class="row" >
    <div class="col-lg-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">用户展示</h3>
            </div>
            <div class="panel-body">
                <div class="col-lg-12">
                    <div class="row" >
                        <div class="col-lg-12">
                            <table class="table table-striped">
                                <caption>角色列表</caption>
                                <thead>
                                <tr>
                                    <th>选择</th>
                                    <th>角色名称</th>
                                    <th>创建时间</th>
                                    <th>修改时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <form id="form1" method="post" action="<%=request.getContextPath()%>/user/updateUserRole.do">
                                    <input type="hidden" name="id" value="${userId}"/>
                                <c:forEach items="${list}" var="role" varStatus="status">
                                <tr>
                                    <td>
                                        <input type="checkbox"  name="roleIds" ${role.userId!=null?"checked":""} value="${role.id}"/>
                                    </td>
                                    <td>${role.name}</td>
                                    <td>
                                        <f:formatDate value="${role.createTime}" pattern="yyyy-MM-dd HH:mm:ss" ></f:formatDate>
                                    </td>
                                    <td>
                                        <f:formatDate value="${role.updateTime}" pattern="yyyy-MM-dd HH:mm:ss" ></f:formatDate>
                                    </td>
                                </tr>
                                </c:forEach>
                                <tr>
                                    <td>

                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <input type="button" value="修改" onclick="updateUserRole()"/>
                                    </td>
                                </tr>
                                </form>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>





</body>
</html>
