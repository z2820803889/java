<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/10/7
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
    <title>Title</title>

    <script language="javascript" src="<%=request.getContextPath()%>/js/stm31.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/Menu200FILE70353292529D7J1.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/systemMsg.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/pageCommon.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/general.js"></script>

    <link href="<%=request.getContextPath()%>/css/mainWin.css" type="text/css" media="screen" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/query.css" type="text/css" media="screen" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/02.css" type="text/css" media="screen" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/mainWin(1).css" type="text/css" media="screen" rel="stylesheet">


    <!--<base target="_self">--><base href="." target="_self">
</head>
<body marginwidth="0" topmargin="0" leftmargin="0" onload="onLoad()" marginheight="0"><form method="post" id="actForm" name="actForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0"><a name="downloadLnk" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.0.1"></a>
    <input type="HIDDEN" name="checkBox"><input id="functionName" type="hidden" name="functionName">
    <div id="Title_bar">
        <div id="Title_bar_Head">
            <div id="Title_Head"></div>
            <div id="Title">
                <img border="0" width="13" height="13" src="<%=request.getContextPath()%>/img/title_arrow.gif">
                已收通知
            </div>
            <div id="Title_End"></div>
            <div id="Title_bar_bg"></div>
        </div>
        <div id="Title_bar_Tail">
            <div id="Title_FuncBar">
                <ul>
                    <li class="line"></li>

                    <li class="title"><a onclick="window.open(&#39;/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.8.1.0.1.0&#39;,&#39;null&#39;,&#39;dependent, toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=yes,width=1536,height=824,left=0,top=0&#39;); return false" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.8.1.0.1.0">

                        <div class="Btn">
                            归档
                        </div>


                    </a></li>
                    <li class="line"></li>

                    <li class="title"><a name="BTN7043835300060W0" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.9.1.0.0"></a>

                        <div onclick="submitButton(&#39;REVERT&#39;);" class="Btn">
                            转发
                        </div>

                    </li>
                    <li class="line"></li>
                    <li class="title"><a name="BTN70438353001CNUC" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.9.3.0.0"></a>

                        <div onclick="submitButton(&#39;REPLYALL&#39;);" class="Btn">
                            全部回复
                        </div>

                    </li>
                    <li class="line"></li>

                    <li class="title"><a name="BTN70438353001NB6I" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.10.1.0.0"></a>

                        <div onclick="submitButton(&#39;REPLY&#39;);" class="Btn">
                            回复
                        </div>

                    </li>
                    <li class="line"></li>

                    <li class="title"><a name="BTN70438353002DYCG" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.11.1.0.0"></a>

                        <div onclick="deleteData();" class="Btn">
                            删除
                        </div>

                    </li>
                    <li class="line"></li>

                    <li class="title"><a name="BTN70438353003JBT4" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.12.1.0.0"></a>

                        <div onclick="submitButton(&#39;SEND&#39;);" class="Btn">
                            发送通知
                        </div>

                    </li>
                    <li class="line"></li>

                </ul>
            </div>
        </div>
    </div>
    <div id="MainArea">
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="TableStyle">
            <tbody><tr align="center" valign="middle" id="TableTitle">
                <td width="26" style="border-left: 0px solid #000;"><input type="CHECKBOX" name="selectAll" onclick="checkAll();"></td>
                <td width="25"><img src="<%=request.getContextPath()%>/img/priority.gif"></td><td width="35"><img border="0" src="<%=request.getContextPath()%>/img/attachmenttitle.gif"></td><td>主题 &nbsp;<a border="0" name="Push to toggle sorting order according to null" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.18.2.0"><img align="MIDDLE" border="0" alt="Push to toggle sorting order according to null" src="<%=request.getContextPath()%>/img/wr" width="10" height="9"></a>
            </td>
                <td width="180">发送人</td>
                <td width="180">发送时间 &nbsp;<a border="0" name="Push to toggle sorting order according to null" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.22.2.0"><img align="MIDDLE" border="0" alt="Push to toggle sorting order according to null" src="<%=request.getContextPath()%>/img/wr" width="10" height="9"></a>
                </td>
            </tr>
            </tbody>
            <tbody id="TableData">
        <c:forEach items="${list}" var="Information" varStatus="status">
            <tr onclick="content_onclick(&#39;d${status.index}&#39;);" class="TableDetail${status.index}" id="d${status.index}">
                <td align="CENTER" style="padding:0px;">
                    <input onclick="window.event.cancelBubble=true" type="checkbox" value="d${status.index}" name="checkBox">
                </td>
                <td align="CENTER">&nbsp;</td><td align="CENTER">&nbsp;</td>
                <td>
                    <c:if test="${Information.level==1 && Information.look==1}">
                        <a class="Default" style="color:red;" href="<%=request.getContextPath()%>/Information/toInformationParticular.do?id=${Information.id}">${Information.title}</a>
                    </c:if>
                    <c:if test="${Information.look==0 && Information.level==0}">
                        <a class="Default" style="font-weight: bold;" href="<%=request.getContextPath()%>/Information/toInformationParticular.do?id=${Information.id}">${Information.title}</a>
                    </c:if>
                    <c:if test="${Information.level==1 && Information.look==0}">
                        <a class="Default" style="color:red;font-weight: bold;" href="<%=request.getContextPath()%>/Information/toInformationParticular.do?id=${Information.id}">${Information.title}</a>
                    </c:if>
                    <c:if test="${Information.level==0 && Information.look==1}">
                        <a class="Default"  href="<%=request.getContextPath()%>/Information/toInformationParticular.do?id=${Information.id}">${Information.title}</a>
                    </c:if>

                </td>
                <td>${Information.postUserRealName}</td>
                <td align="CENTER">
                        <f:formatDate value="${Information.postTime}" pattern="yyyy-MM-dd hh:mm:ss"></f:formatDate>
                </td>
            </tr>
        </c:forEach>
        </tbody>
        </table>
        <div id="TableTail">
            <div id="TableTail_inside">
                <table border="0" cellspacing="0" cellpadding="0" height="100%">
                    <tbody><tr valign="bottom">
                        <td style="padding:0px;"><input type="CHECKBOX" name="selectAllDown" onclick="checkAll();"></td>

                        <td><a name="BTN70438353010AU8O" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.26.1.0.0"></a>

                            <div onclick="submitButton(&#39;QUERY&#39;);" class="FuncBtn"><div class="FuncBtnHead"></div>
                                <div class="FuncBtnMemo">查询</div>
                                <div class="FuncBtnTail"></div></div></td>


                        <td><a name="BTN7043835301156A1" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.28.1.0.0"></a>

                            <div onclick="archiveData();" class="FuncBtn"><div class="FuncBtnHead"></div>
                                <div class="FuncBtnMemo">收藏</div>
                                <div class="FuncBtnTail"></div></div></td>

                    </tr>
                    </tbody></table>
            </div>
        </div>

        <div id="PageSelectorBar">
            <div id="PageSelectorMemo">
                页次：1/1页
                &nbsp;每页显示：30条
                &nbsp;记录数：7条
            </div>
            <div id="PageSelectorSelectorArea">
                <script language="javascript">
                    var endPage = 1;
                    var startPage = 1;
                    var p;
                    if ((startPage - 1) % 10 == 0) {
                        p = (startPage - 1) / 10;
                    } else {
                        p = ((startPage - 1) - (startPage - 1) % 10) / 10;
                    }
                    if (startPage == 1) {
                        document.write('<span id="PageSelectorHead" class="PageSelectorSelected" >&nbsp;</span>');
                    } else {
                        document.write('<a style="cursor:pointer;" title="首页" href="/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.30.14"><span id="PageSelectorHead" >&nbsp;</span></a>');
                    }
                    if (p * 10 > 0) {
                        document.write('<a onclick="gotoPageNum(p*10);" style="cursor:pointer;" title="前十页" href="#?wosid=WrwTFzu7usY1mBJCxlM3Ew"><span id="PageSelectorHeadOut" style="cursor: pointer;">&nbsp;</span></a>');
                    }
                    var i;
                    for (i = p * 10 + 1; i < p * 10 + 11; i++) {
                        if (i == startPage) {
                            document.write('<span id="PageSelectorNum" class="PageSelectorSelected">' + i + '</span>');
                        } else {
                            document.write('<span id="PageSelectorNum" style="cursor: pointer;" onClick="gotoPageNum(' + i + ');">' + i + '</span>');
                        }
                        if (i == endPage) break;
                    }
                    if (i < endPage) {
                        document.write('<a title="后十页" href="#"><span style="cursor: pointer;" id="PageSelectorEndOut" onClick="gotoPageNum(' + i + ');">&nbsp;</span></a>');
                    }
                    if (startPage == endPage) {
                        document.write('<span id="PageSelectorEnd" class="PageSelectorSelected">&nbsp;</span>');
                    } else {
                        document.write('<a style="cursor:pointer;" title="尾页" href="/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.0.30.20"><span style="cursor: pointer;" id="PageSelectorEnd">&nbsp;</span></a>');
                    }

                    function gotoPageNum(num) {
                        document.all.currPage.value = num;
                        document.all.goBtn.click();
                    }
                </script><span id="PageSelectorHead" class="PageSelectorSelected">&nbsp;</span><span id="PageSelectorNum" class="PageSelectorSelected">1</span><span id="PageSelectorEnd" class="PageSelectorSelected">&nbsp;</span>
                转到：<input onfocus="this.select();" maxlength="2" class="inputStyle" id="currPage" type="text" value="1" name="currPage">
                <input class="MiddleButtonStyle" id="goBtn" type="submit" value="Go" name="goBtn">
            </div>
        </div>
    </div>
    <input type="hidden" name="wosid" value="WrwTFzu7usY1mBJCxlM3Ew"></form><form method="post" name="homeForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.1"><input type="hidden" name="alertMsg"> <input type="hidden" name="newUrl"> <input type="hidden" name="newWindow">
    <input type="hidden" name="confirmMsg"> <input type="hidden" value="OA8000平台版_TPLMYSQL5--已收通知" name="topTitle"><input type="hidden" value="0201" name="pgID"><input type="hidden" name="returnPage"><input type="hidden" name="wosid" value="WrwTFzu7usY1mBJCxlM3Ew"></form>
<form method="post" id="menuForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0201/WrwTFzu7usY1mBJCxlM3Ew/26.0.11.2.1"><script type="text/javascript" language="JavaScript1.2">
    writeMenu(false);
</script>
    <input type="hidden" name="url"><input type="hidden" name="urlName"><input type="hidden" name="wosid" value="WrwTFzu7usY1mBJCxlM3Ew"></form>

</body></html>
