<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/10/7
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
    <title>Title</title>
    <script language="javascript" src="<%=request.getContextPath()%>/js/stm31.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/Menu200FILE70353292529D7J1.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/systemMsg.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/pageCommon.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/general.js"></script>

    <link href="<%=request.getContextPath()%>/css/mainWin.css" type="text/css" media="screen" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/02.css" type="text/css" media="screen" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/mainWin(1).css" type="text/css" media="screen" rel="stylesheet">


    <!--<base target="_self">--><base href="." target="_self">
</head>
<body marginwidth="0" topmargin="0" leftmargin="0" onload="onLoad()" marginheight="0" class="Msg_body"><form method="post" id="actForm" name="actForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="95%">
        <tbody><tr heigth="45">
            <td id="Title_bar">
                <div id="Title_bar_Head" style="width:32%;">
                    <div id="Title_Head"></div>
                    <div id="Title">
                        <img border="0" width="13" height="13" src="./title_arrow.gif">
                        通知阅读
                    </div>
                    <div id="Title_End"></div>
                    <div id="Title_bar_bg"></div>
                </div>
                <div id="Title_bar_Tail" style="width:68%;">
                    <div id="Title_FuncBar">
                        <ul>
                            <li class="line"></li>

                            <li class="title"><a name="BTN70447563486FBF5" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.5.1.0.0"></a>

                                <div onclick="submitButton(&#39;RETURN&#39;);" class="Btn">
                                    返回
                                </div>

                            </li>
                            <li class="line"></li>



                            <li class="title"><a onclick="window.open(&#39;/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.10.1.0.1.0&#39;,&#39;null&#39;,&#39;dependent, toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=yes,width=1536,height=824,left=0,top=0&#39;); return false" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.10.1.0.1.0">

                                <div class="Btn">
                                    归档
                                </div>


                            </a></li>
                            <li class="line"></li>

                            <li class="title"><a name="BTN704475634977U24" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.11.1.0.0"></a>

                                <div onclick="archiveData();" class="Btn">
                                    收藏
                                </div>

                            </li>
                            <li class="line"></li>

                            <li class="title"><a name="BTN704475634998G3O" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.12.1.0.0"></a>

                                <div onclick="submitButton(&#39;REVERT&#39;);" class="Btn">
                                    转发
                                </div>

                            </li>
                            <li class="line"></li>

                            <li class="title"><a name="BTN70447563500N8TF" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.13.1.0.0"></a>

                                <div onclick="submitButton(&#39;REPLYALL&#39;);" class="Btn">
                                    回复全部
                                </div>

                            </li>
                            <li class="line"></li>
                            <li class="title"><a name="BTN704475635011663" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.13.3.0.0"></a>

                                <div onclick="submitButton(&#39;REPLY&#39;);" class="Btn">
                                    回复
                                </div>

                            </li>
                            <li class="line"></li>

                            <li class="title"><a name="BTN70447563502063C" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.14.1.0.0"></a>

                                <div onclick="deleteData();" class="Btn">
                                    删除
                                </div>

                            </li>
                            <li class="line"></li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>
        <tr height="120">
            <td id="MsgInfo"><a name="downloadLnk" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.0.16.1"></a><input id="functionName" type="hidden" name="functionName">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody><tr>
                        <td>
                            <ul>
                                <li class="MsgTitle">
                                    ${information.title}</li>
                                <li class="MsgInfoMiddle">发送时间：
                                    <f:formatDate value="${information.postTime}" pattern="yyyy-MM-dd hh:mm:ss"></f:formatDate>
                                </li>
                                <li class="MsgInfoMiddle">发送者：
                                    ${information.postUserRealName}</li>
                                <li class="MsgReceiver">接收者：
                                    <c:if test="${userList.size()>1}">
                                        <select name="0.11.0.33.1">
                                            <c:forEach items="${userList}" var="user">
                                                <option value="${user.id}">${user.realName}</option>
                                            </c:forEach>
                                        </select>
                                    </c:if>
                                    <c:if test="${userList.size()<=1}">
                                        ${userList.get(0).realName}
                                    </c:if>

                                </li>
                            </ul>
                        </td>

                    </tr>
                    </tbody></table>
            </td>
        </tr>
        <tr>
            <td id="MsgContent" valign="top">
                <textarea readonly="" class="Text_area_msg" name="msgFrame" style="height: 322px;">${information.content}</textarea>
            </td>
        </tr>
        </tbody></table>
    <input type="hidden" name="wosid" value="WrwTFzu7usY1mBJCxlM3Ew"></form><form method="post" name="homeForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.1"><input type="hidden" name="alertMsg"> <input type="hidden" name="newUrl"> <input type="hidden" name="newWindow">
    <input type="hidden" name="confirmMsg"> <input type="hidden" value="OA8000平台版_TPLMYSQL5--通知阅读" name="topTitle"><input type="hidden" value="0203" name="pgID"><input type="hidden" name="returnPage"><input type="hidden" name="wosid" value="WrwTFzu7usY1mBJCxlM3Ew"></form>
<form method="post" id="menuForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0203/WrwTFzu7usY1mBJCxlM3Ew/237.0.11.2.1"><script type="text/javascript" language="JavaScript1.2">
    writeMenu(false);
</script>
    <input type="hidden" name="url"><input type="hidden" name="urlName"><input type="hidden" name="wosid" value="WrwTFzu7usY1mBJCxlM3Ew"></form>

</body></html>
