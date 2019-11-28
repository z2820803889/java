<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/10/6
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script language="javascript" src="<%=request.getContextPath()%>/js/prototype.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/buffalo.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/suggest.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/systemMsg.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/pageCommon.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/0219.js"></script>

    <link href="<%=request.getContextPath()%>/css/mainWin.css" type="text/css" media="screen" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/mainWin(1).css" type="text/css" media="screen" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/0219.css" type="text/css" media="screen" rel="stylesheet">


    <!--<base target="_self">--><base href="." target="_self">
</head>
<body marginwidth="0" topmargin="0" leftmargin="0" onload="onLoad()" marginheight="0"><style>
    *{font: 12px '}宋体'}
    .tab_suggest{border:1px solid #333; background:#fff; position:absolute; z-index:101; visibility: hidden;}
    .tab_suggest th, .tab_suggest td{font:12px '宋体'; font-weight:normal; height:17px; text-align:left; line-height:17px; padding:2px 3px; white-space:nowrap; cursor: default;}
    .tab_suggest td{color:#008000; text-align:right;}
    .tab_suggest tr.cur{background:#36c; color:#fff}
    .tab_suggest tr.cur td{color:#fff}
    .th_suggest{color:#FF0000}</style><script language="javascript">
    var endPoint="/OAapp/bfapp";
    var searchImg = "../../../img/quicksearch.gif";
    var closeSearchImg = "../../../img/closesearch.gif";
    var onLineMark = "【在线】";
    var isALLUser = "true";
</script><form method="post" id="actForm" name="actForm" action="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0219/lyjsbmgdBxpeegw4voc4E0/91.0.11.0.2">
    <div id="Title_bar">
        <div id="Title_bar_Head500">
            <div id="Title_Head"></div>
            <div id="Title">
                <img border="0" src="<%=request.getContextPath()%>/img/title_arrow.gif">
                人员选择
            </div>
            <div id="Title_End"></div>
            <div id="Title_bar_bg"></div>
        </div>
        <div id="Title_bar_Tail500">
            <div id="Title_FuncBar">
                <ul>
                    <li class="line"></li>
                    <li class="title"><a name="BTN704139225015RJK" href="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0219/lyjsbmgdBxpeegw4voc4E0/91.0.11.0.2.5.0.0"></a>

                        <div onclick="window.close();" class="Btn">
                            关闭
                        </div>

                    </li>
                    <li class="line"></li>
                    <li class="title"><a name="BTN70413922502D5D5" href="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0219/lyjsbmgdBxpeegw4voc4E0/91.0.11.0.2.7.0.0"></a>

                        <div onclick="writeReceiver(true);" class="Btn">
                            确认选择
                        </div>

                    </li>
                    <li class="line"></li>

                    <li class="title" id="allowSendToAll"><a name="BTN70413922502LA77" href="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0219/lyjsbmgdBxpeegw4voc4E0/91.0.11.0.2.9.1.0.0"></a>

                        <div onclick="sendToAll ();" class="Btn">
                            全体人员
                        </div>

                    </li>
                    <li class="line" id="allowSendToAllline"></li>

                </ul>
            </div>
        </div>
    </div>
    <div id="MainArea">
        <input id="markName_all" type="hidden" disabled="disabled" value="全体人员" name="markName_all"><input id="markName_select" type="hidden" disabled="disabled" value="请选择人员" name="markName_select">
        <input id="selectRadioValue" type="hidden" value="2" name="selectRadioValue"><br>
        <center>
            <div class="OutsideBorder">
                <div class="InsideBorder">
                    <input id="receiveValue" type="hidden" value="NoValue" name="receiveValue"><input id="selectValue" type="hidden" value="2" name="selectValue">
                    <input type="hidden" name="currentUserIds" id="currentUserIds" value=""><input id="aaaa" type="hidden" value="0ROOT^DEPT0004A0AG" name="aaaa"><input id="currentBranchId" type="hidden" value="ROOT" name="currentBranchId"><input id="currentDeptTree" type="hidden" value="0" name="currentDeptTree">

                    <div class="OperateArea">
                        <div id="SearchInputArea">
                            <input type="text" id="textSuggest" name="keyWord" autocomplete="off" class="SearchInput">
                        </div>

                        <div id="ItemListArea">
                            <ul>
                                <li id="allUsers">
                        <span id="link_10" onclick="menuClick(10);" style="cursor:pointer;">
                            &nbsp;&nbsp;<img border="0" id="link_10Img" src="<%=request.getContextPath()%>/img/arrow_close.gif">
                            &nbsp;所有人员列表
                        </span>
                                    <div id="module_10" class="moduleContainer" style="display:none;">
                                        <select name="leftList_10" id="leftList_10" ondblclick="UserMove(0);" style="width:100%;height:100%" multiple="">
                                            <c:forEach items="${userList}" var="user">
                                                <option value="${user.id}">${user.realName}</option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                </li>
                                <li id="deptUserLI">
                        <span id="link_1" onclick="menuClick(1);" style="cursor:pointer;">
                            &nbsp;&nbsp;<img border="0" id="link_1Img" src="<%=request.getContextPath()%>/img/arrow_close.gif">
                            &nbsp;选择部门
                        </span>
                                    <div id="module_1" style="display:none;">
                                        <select ondblclick="UserMove(0);" id="leftList_1" style="width:100%; height:100%;" name="leftList_1" size="5" multiple="multiple">
                                            <c:forEach items="${roleList}" var="role">
                                                <option value="r${role.id}">${role.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </li>
                                <li id="UserByDept" style="display: none">
                        <span id="link_2" onclick="menuClick(2);">
                            &nbsp;&nbsp;<img border="0" id="link_2Img" src="<%=request.getContextPath()%>/img/arrow_open.gif">
                            &nbsp;按部门选择人员
                        </span>
                                    <table id="module_2" cellpadding="0" spacepadding="0" border="0" width="100%" style="display: none">
                                        <tbody><tr height="20px">
                                            <td height="20px">

                                                <select onchange="changeSelect(2,this);" class="SelectStyle" id="groupNameList" style="height:20px;" value="^DEPT0002654P;null" name="groupNameList">
                                                    <option value="WONoSelectionString">请选择部门</option>
                                                    <option value="ROOT">北京金信集团公司</option>
                                                    <option value="^DEPT00131L5J">|-生产事业部</option>
                                                    <option value="^DEPT0015U5P5">|---生产部</option>
                                                    <option value="^DEPT00175KXK">|-----生产二部</option>
                                                    <option value="^DEPT0016TO6Y">|-----生产一部</option>
                                                    <option value="^DEPT00144631">|---研发部</option>
                                                    <option value="^DEPT0018661Y">|---物流部</option>
                                                    <option value="^DEPT0008Y765">|-营销事业部</option>
                                                    <option value="^DEPT0012S20R">|---上海分公司</option>
                                                    <option value="^DEPT00116780">|---深圳分公司</option>
                                                    <option value="^DEPT0010C7EC">|---销售部</option>
                                                    <option value="^DEPT0009S532">|---市场部</option>
                                                    <option value="^DEPT0004A0AG">|-行政部</option>
                                                    <option selected="selected" value="^DEPT0007D8XG">|---信息部</option>
                                                    <option value="^DEPT00066A7B">|---人事部</option>
                                                    <option value="^DEPT0005F86L">|---办公室</option>
                                                    <option value="^DEPT000115B4">|-资财部</option>
                                                    <option value="^DEPT00031W32">|---采购部</option>
                                                    <option value="^DEPT0002654P">|---财务部</option></select>
                                            </td>
                                        </tr>
                                        <tr height="20px" style="cursor:pointer;">
                                            <td id="test_2" onclick="testSelect();">显示当前部门人员</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <select name="leftList_2" id="leftList_2" ondblclick="UserMove(0);" multiple="" size="5">
                                                    <option value="admin" style="color: red;">管理员【在线】</option>
                                                    <option value="WENV">姜程</option><option value="361N">娄军</option>
                                                    <option value="O1WC">高新全</option>
                                                </select>
                                            </td>
                                        </tr>
                                        </tbody></table>
                                </li>

                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <ul style="margin:5px; float:left; padding-top: 60px;">
                    <li><img onclick="UserMove (0);" border="0" style="cursor:pointer;" src="<%=request.getContextPath()%>/img/btn_to_right.gif"></li>
                    <li></li>
                    <li><img onclick="UserMove (1);" border="0" style="cursor:pointer;" src="<%=request.getContextPath()%>/img/btn_to_left.gif"></li>
                    <li></li>
                    <li><img onclick="UserMove (2);" border="0" style="cursor:pointer;" src="<%=request.getContextPath()%>/img/btn_all_right.gif"></li>
                    <li></li>
                    <li><img onclick="UserMove (3);" border="0" style="cursor:pointer;" src="<%=request.getContextPath()%>/img/btn_all_left.gif"></li>
                </ul>
            </div>
            <div class="OutsideBorder">
                <div class="InsideBorder" style="height:363px;">
                    <div class="OperateArea" style="float: right;">
                        <div id="SelectedHead">
                            <img border="0" src="<%=request.getContextPath()%>/img/selected.gif">
                            已选人员 &nbsp;<img onclick="upMove();" border="0" style="cursor:pointer;" src="<%=request.getContextPath()%>/img/btn_up.gif">&nbsp;<img onclick="downMove();" border="0" style="cursor:pointer;" src="<%=request.getContextPath()%>/img/btn_down.gif">
                        </div>
                        <select ondblclick="UserMove(1);" multiple="" id="rightList" name="rightList" class="Selected" size="5"></select>
                    </div>
                </div>
            </div>
        </center>
    </div>
    <input type="hidden" name="wosid" value="lyjsbmgdBxpeegw4voc4E0"></form><form method="post" name="homeForm" action="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0219/lyjsbmgdBxpeegw4voc4E0/91.0.11.1"><input type="hidden" name="alertMsg"> <input type="hidden" name="newUrl"> <input type="hidden" name="newWindow">
    <input type="hidden" name="confirmMsg"> <input type="hidden" name="topTitle"><input type="hidden" value="0219" name="pgID"><input type="hidden" name="returnPage"><input type="hidden" name="wosid" value="lyjsbmgdBxpeegw4voc4E0"></form>
<table cellspacing="0" class="tab_suggest" hidden="" style="width: 170px;"></table><div id="buffalo_loading" style="display: none; font-family: Verdana; font-size: 11px; border: 1px solid rgb(0, 204, 0); background-color: rgb(164, 255, 164); padding: 1px; position: absolute; right: 1px; top: 1px; width: 0px; height: 0px; z-index: 10000;"></div></body></html>