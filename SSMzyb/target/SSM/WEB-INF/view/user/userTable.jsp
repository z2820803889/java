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

</head>
<body>



                            <table class="table table-striped">
                                <caption>用户明细</caption>
                                <thead>
                                <tr>
                                    <th>选择</th>
                                    <th>序号</th>
                                    <th>用户名</th>
                                    <th>角色</th>
                                    <th>手机号码</th>
                                    <th>帐号状态</th>
                                    <th>最后登录时间</th>
                                    <th>登录次数</th>
                                    <th>创建时间</th>
                                    <th>修改时间</th>
                                    <th>生日</th>
                                    <th>真实姓名</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${pageBean.list}" var="user" varStatus="status">
                                        <tr>
                                            <td>
                                                <input type="checkbox"/>
                                            </td>
                                            <td>${status.count}</td>
                                            <td>${user.userName}</td>
                                            <td style="width: 90px">${user.roleName}<br/>
                                                <a href="<%=request.getContextPath()%>/user/toUserRole.do?id=${user.id}">角色管理</a>
                                            </td>
                                            <td>${user.number}</td>
                                            <td>${user.status==1?"启用":"禁用"}</td>
                                            <td style="width: 100px">
                                                <f:formatDate value="${user.loginTime}" pattern="yyyy-MM-dd HH:mm:ss" ></f:formatDate>
                                            </td>
                                            <td>${user.loginCount}</td>
                                            <td style="width: 100px">
                                                 <f:formatDate value="${user.createTime}" pattern="yyyy-MM-dd HH:mm:ss" ></f:formatDate>
                                            </td>
                                            <td style="width: 100px">
                                                <f:formatDate value="${user.updateTime}" pattern="yyyy-MM-dd HH:mm:ss" ></f:formatDate>
                                            </td>
                                            <td style="width: 100px">
                                                <f:formatDate value="${user.birthday}" pattern="yyyy-MM-dd" ></f:formatDate>
                                            </td>
                                            <td>${user.realName}</td>
                                            <td>操作</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        <jsp:include page="../commen/page2.jsp"></jsp:include>







</body>
</html>
