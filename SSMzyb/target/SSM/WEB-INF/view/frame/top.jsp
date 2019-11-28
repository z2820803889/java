<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">

<title>TopMenu</title>
	<script language="javascript" src="<%=request.getContextPath()%>/js/prototype.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/buffalo.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/top.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/desktopFunc.js"></script>
<script language="javascript">
	var endPointTop='/OAapp/bfapp';
	var waitingImg='<%=request.getContextPath()%>/img/loading.gif';
	var userId='admin';
	var deptId='^DEPT0007D8XG';
	var awoke='111111111111';
	var refreshSecond='60';

	function logout(){
		var a = confirm("确认退出吗?");
		if(a){
			location.href = "<%=request.getContextPath()%>/frame/logout.do";
		};
	};
</script>

	<link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet">

</head>

<body class="PageBody" onload="init();" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<div style="display:none;"><form method="post" id="homeForm" name="homeForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.7"><input id="newUrl" type="hidden" name="newUrl"><script language="javascript">	var endPoint='/OAapp/bfapp';
</script><a id="msgQuery" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.7.2"></a><input type="hidden" name="wosid" value="TO41CZZ17UnHnwkFsbzZyM"></form></div><form method="post" name="topForm" id="topForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9">
	<div id="Head1">
		<div id="Logo"><div style="display:none;"><iframe name="autoRefashion" src="<%=request.getContextPath()%>/img/3.9.1.html" width="0" height="0"></iframe>
</div><a id="msgLink" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.3"></a><img border="0" width="291" height="41" src="<%=request.getContextPath()%>/img/logo.gif"></div>
		<div id="Head1Right">
			<div id="Head1Right_UserName">
                <img border="0" width="13" height="14" src="<%=request.getContextPath()%>/img/user.gif"> 您好， <b>${user.userName}</b>
			</div>
			<div id="Head1Right_UserDept">(信息部 行政秘书) </div>
			<div id="Head1Right_UserSetup"><a onclick="window.open(&#39;/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.14.0.1.0&#39;,&#39;null&#39;,&#39;dependent, toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=yes,width=800,height=700,left=363.0,top=47.0&#39;); return false" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.14.0.1.0">
                <img border="0" width="13" height="14" src="<%=request.getContextPath()%>/img/user_setup.gif"> 个人设置
</a>
			</div>
			<div id="Head1Right_Time">2019年08月25日 星期日 19:40:31</div>
		</div>
        <div id="Head1Right_SystemButton">
            <img  onclick="logout()" width="78" height="20" alt="退出系统" src="<%=request.getContextPath()%>/img/logout.gif"></a>
        </div>
        <div id="Head1Right_Button">
            <a onclick="window.open(&#39;/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.19.0.1.0&#39;,&#39;null&#39;,&#39;dependent, toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=yes,width=800,height=600,left=363.0,top=97.0&#39;); return false" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.19.0.1.0"><img width="65" height="20" alt="全文检索" src="<%=request.getContextPath()%>/img/search1.gif">
</a>
            <a target="desktop" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.21"><img width="65" height="20" alt="显示桌面" src="<%=request.getContextPath()%>/img/desktop.gif"></a>
            <div style="float: right"><a name="autoEnter" target="desktop" id="autoEnter" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wa/enterManager?wosid=TO41CZZ17UnHnwkFsbzZyM"></a><a name="autoEnterBaseUrl" id="autoEnterBaseUrl" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wa/enterManager?wosid=TO41CZZ17UnHnwkFsbzZyM"></a> &nbsp;</div>
        </div>
	</div>
    <div id="Head2">
        <div id="Head2_Awoke">
            <ul id="AwokeNum">
                <li><a target="desktop" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.26"><img border="0" width="11" height="13" src="<%=request.getContextPath()%>/img/msg.gif"> 消息<span id="msg">(0)</span></a></li>
                <li class="Line"></li>
                <li><a target="desktop" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.28"><img border="0" width="16" height="11" src="<%=request.getContextPath()%>/img/mail.gif"> 邮件<span id="mail">(1)</span></a></li>
                <li class="Line"></li>
                <li><a target="desktop" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.TopMenu/TO41CZZ17UnHnwkFsbzZyM/3.9.30"><img border="0" width="12" height="14" src="<%=request.getContextPath()%>/img/wait.gif"> 待办事项<span id="wait">(7)</span></a></li>
            </ul>
        </div>
            <div id="Head2_FunctionList">
                
                
            </div>
        </div>
<input type="hidden" name="wosid" value="TO41CZZ17UnHnwkFsbzZyM"></form>




<div id="buffalo_loading" style="display: none; font-family: Verdana; font-size: 11px; border: 1px solid rgb(0, 204, 0); background-color: rgb(164, 255, 164); padding: 1px; position: absolute; right: 1px; top: 1px; width: 0px; height: 0px; z-index: 10000;"></div></body></html>