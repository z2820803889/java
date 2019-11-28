
<!-- saved from url=(0122)http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/13.0.11.0.2 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html><head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <title>OA8000平台版_TPLMYSQL5--发送通知</title>
    <meta content="MSHTML 6.00.2800.1276" name="GENERATOR">

    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0">

    <script language="javascript" src="<%=request.getContextPath()%>/js/pageCommon.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/Menu200FILE70353292529D7J1.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/stm31.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/OaPubptPersonnelSelector.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/general.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>

    <link href="<%=request.getContextPath()%>/css/mainWin.css" type="text/css" media="screen" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/mainWin(1).css" type="text/css" media="screen" rel="stylesheet">


    <!--<base target="_self">--><base href="." target="_self">

    <script>
        function addInformation(){
            alert("111");
            $("[name=roleUserIds]").val($("[name=roleUserIds]").val().substring(1));
            alert($("[name=roleUserIds]").val());
            $("#informationForm").submit();
        };
    </script>
</head>
<body marginwidth="0" topmargin="0" leftmargin="0" onload="onLoad()" marginheight="0" class="Msg_body"><a id="autoHref" href="toMenu.do"></a><input id="onlineUsers" type="hidden" disabled="disabled" value=";admin;" name="onlineUsers"><form method="post" id="informationForm" action="<%=request.getContextPath()%>/Information/addInformation.do">
    <a name="downloadLnk" href="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/14.0.11.0.2.1.1"></a>
    <input id="functionName" type="hidden" name="functionName">
    <input id="frmValue" type="hidden" disabled="disabled" name="frmValue">

    <div id="Title_bar">
        <div id="Title_bar_Head">
            <div id="Title_Head"></div>

            <div id="Title"><img border="0" width="13" height="13" src="<%=request.getContextPath()%>/img/title_arrow.gif"> 发送通知</div>

            <div id="Title_End"></div>
            <div id="Title_bar_bg"></div>
        </div>

        <div id="Title_bar_Tail">
            <div id="Title_FuncBar">
                <ul>
                    <li class="line"></li>


                    <li class="title"><a name="BTN70353305113FGW5" href="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/14.0.11.0.2.13.1.0.0"></a>

                        <div onclick="addInformation()" class="Btn">
                            发送
                        </div>

                    </li>
                    <li class="line"></li>



                    <li class="title"><a name="BTN703533041908338" href="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/14.0.11.0.2.17.1.0.0"></a>

                        <div onclick="save(); submitButton(&#39;SAVE&#39;);" class="Btn">
                            保存到草稿箱
                        </div>

                    </li>
                    <li class="line"></li>

                </ul>
            </div>
        </div>
    </div>
    <table id="MainArea2" style="float:left;height:auto">
        <tbody><tr height="20px"><td></td></tr>
        <tr>
            <td>
                <center>
                    <table border="0" cellpadding="0" cellspacing="0" width="95%" height="450px" style="padding:3px" class="msgBorder">
                        <tbody><tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%" style="background-color:#ffffff">
                                    <tbody><tr>
                                        <td class="Msg_read_title_bg"></td>
                                        <td class="Msg_read_title_bg" height="120">
                                         <form>
                                            <table height="30" cellpadding="0" cellspacing="0" border="0">
                                                <tbody><tr class="ItemTitleFont">
                                                    <td width="12"></td>
                                                    <td width="60"><select class="SelectStyle" name="level"><option value="1">重要</option><option selected="selected" value="0">普通</option></select></td>
                                                    <td width="12"></td>

                                                    <td>&nbsp;<input type="checkbox" value="1" name="receipt">收到后给我一个回执
                                                    </td>

                                                    <td>&nbsp;<input type="checkbox" value="1" name="comment">允许评论</td>


                                                </tr>
                                                </tbody></table>


                                            <table cellspacing="0" height="27" border="0" cellpadding="0" width="70%">
                                                <tbody><tr>
                                                    <td width="60">接收人</td>
                                                    <td><input id="nameListreceive" type="hidden" name="nameListreceive" value="全体人员"><input id="idListreceive" type="hidden" name="roleUserIds" value=";;"><input class="disabledInput" id="showNamereceive" type="text" disabled="disabled" value="请选择人员。" name="showNamereceive"></td>
                                                    <td width="10" align="RIGHT"></td>
                                                    <td width="80" align="RIGHT"><a name="BTN703533042062311" href="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/14.0.11.0.2.27.1.1.7.0.0"></a>

                                                        <div onclick="show0219(&#39;nameListreceive&#39;, &#39;showNamereceive&#39;, &#39;idListreceive&#39;, &#39;0000000&#39;);" class="FuncBtn"><div class="FuncBtnHead"></div>
                                                            <div class="FuncBtnMemo">添加...</div>
                                                            <div class="FuncBtnTail"></div></div></td>
                                                </tr>
                                                </tbody></table>









                                            <table width="69%" border="0" cellspacing="0" cellpadding="0">
                                                <tbody><tr class="ItemTitleFont">
                                                    <td width="60">主题</td>
                                                    <td height="30"><input onfocus="this.select();" class="InputStyle" type="text" value="无标题" name="title"></td><td height="30" width="9"></td>
                                                </tr>
                                                </tbody></table>

                                        <td class="Msg_read_title_bg"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" height="1" class="Msg_spilt_line1"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" height="1" class="Msg_spilt_line2"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" height="5"></td>
                                    </tr>
                                    <tr>
                                        <td width="30"></td>
                                        <td>
                                            <table height="100%" border="0" cellspacing="0" cellpadding="0" width="100%">
                                                <tbody><tr class="ItemTitleFont">
                                                    <td width="60" valign="top" class="ItemTitleFont">内容
                                                    </td>
                                                    <td><textarea class="InputAreaStyle" name="content"></textarea>

                                                    </td>
                                    </form>
                                                </tr>






                                                <tr>
                                                    <td width="30" height="20"></td>

                                                    <td>
                                                        <div style="float: left; margin-bottom: -3px;">
                                                            <a target="actSwfUploadOpenWin1" onclick="window.open(&#39;/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/14.0.11.0.2.40.1.0.1.1.0&#39;,&#39;actSwfUploadOpenWin1&#39;,&#39;dependent, toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=auto,width=600,height=480,left=463.0,top=157.0&#39;); return false" href="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/14.0.11.0.2.40.1.0.1.1.0"><img border="0" src="<%=request.getContextPath()%>/img/upload.gif">
                                                            </a>
                                                        </div>

                                                        &nbsp;<select style="padding-left: 5px;display: none;" name="FileList"><option value="WONoSelectionString">已添加文件</option></select></td>

                                                </tr>
                                                </tbody></table>
                                        </td>
                                        <td width="20"></td>
                                    </tr>
                                    </tbody></table>

                            </td>
                        </tr>
                        </tbody></table>
                </center>
            </td>
        </tr>
        </tbody></table>
    <input type="hidden" name="wosid" value="dsS0S7yGReFZbCoe8iJ9fM"></form><form method="post" name="homeForm" action="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/14.0.11.1"><input type="hidden" name="alertMsg"> <input type="hidden" name="newUrl"> <input type="hidden" name="newWindow">
    <input type="hidden" name="confirmMsg"> <input type="hidden" value="OA8000平台版_TPLMYSQL5--发送通知" name="topTitle"><input type="hidden" value="0204" name="pgID"><input type="hidden" name="returnPage"><input type="hidden" name="wosid" value="dsS0S7yGReFZbCoe8iJ9fM"></form>
<form method="post" id="menuForm" action="http://192.168.146.1:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.oasp02.Oasp0204/dsS0S7yGReFZbCoe8iJ9fM/14.0.11.2.1"><script type="text/javascript" language="JavaScript1.2">
    writeMenu(false);
</script>
    <input type="hidden" name="url"><input type="hidden" name="urlName"><input type="hidden" name="wosid" value="dsS0S7yGReFZbCoe8iJ9fM"></form>

</body></html>