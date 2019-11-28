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
                                <caption>员工明细</caption>
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>姓名</th>
                                    <th>部门</th>
                                    <th>薪资</th>
                                    <th>性别</th>
                                    <th>入职时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${pageBean.list}" var="staff" varStatus="status">
                                        <tr>
                                            <td>${status.count}</td>
                                            <td>${staff.name}</td>
                                            <td>${staff.department}</td>
                                            <td style="width: 100px;">
                                                <span onclick="hidSpan(${staff.id},this)" id="s_${staff.id}">
                                                  ${staff.wage}
                                                </span>
                                                <input type="text"  onblur="updateWage(${staff.id},this)" style="display: none;width: 100px;" id="h_${staff.id}" value="${staff.wage}"/>
                                            </td>
                                            <td>${staff.sex==1?"男":"女"}</td>
                                            <td>
                                                <f:formatDate value="${staff.createTime}" pattern="yyyy-MM-dd"></f:formatDate>
                                            </td>
                                    </c:forEach>
                                </tbody>
                            </table>
                        <jsp:include page="../commen/page2.jsp"></jsp:include>







</body>
</html>
