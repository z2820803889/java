<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">
    
    <title></title>
    <script language="javascript" src="<%=request.getContextPath()%>/js/status.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/systemMsg.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/prototype.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/buffalo.js"></script>
<script language="javascript">
	var endPointTop='/OAapp/bfapp';
</script>
<link href="<%=request.getContextPath()%>/css/statusbar.css" type="text/css" rel="stylesheet">

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="onLoad()">

<div id="StatusBar">
    <div id="Online">
    	<img onclick="changeLeftMenu()" border="0" alt="收起菜单" id="leftMenu" src="<%=request.getContextPath()%>/img/show.gif">&nbsp;&nbsp;在线人员：共<span class="OnlineUser" id="onlineUserNum">&nbsp;1&nbsp;</span>人<span class="OnlineView"><a onclick="window.open(&#39;/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.StatusBar/TO41CZZ17UnHnwkFsbzZyM/6.13.0.1.0&#39;,&#39;null&#39;,&#39;dependent, toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=yes,width=800,height=600,left=363.0,top=97.0&#39;); return false" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.StatusBar/TO41CZZ17UnHnwkFsbzZyM/6.13.0.1.0">[查看在线名单]
</a></span></div>
    <div id="Info">
    	<a href="http://www.douban.com/" title="豆瓣" target="_blank">豆瓣</a> | <a href="http://www.baidu.com/" title="百度" target="_blank">百度</a> | <a href="http://www.ctrip.com/" title="携程网" target="_blank">携程网</a> | <a href="http://www.renren.com/" title="人人网" target="_blank">人人网</a>
    </div>
    <div id="DesktopText">
        <a onclick="window.open(&#39;/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.StatusBar/TO41CZZ17UnHnwkFsbzZyM/6.17.0.1.0&#39;,&#39;null&#39;,&#39;dependent, toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=auto,width=522,height=380,left=502.0,top=207.0&#39;); return false" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.StatusBar/TO41CZZ17UnHnwkFsbzZyM/6.17.0.1.0"><img border="0" src="<%=request.getContextPath()%>/img/text.gif"> 便笺
</a>
        <span id="TryoutInfo">
            软件注册前可运行<span class="OnlineUser">99999999</span>天
        </span>
        <span id="Version">
            <a onclick="window.open(&#39;/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.StatusBar/TO41CZZ17UnHnwkFsbzZyM/6.21.1.0&#39;,&#39;null&#39;,&#39;dependent, toolbar=no,location=no,status=no,menubar=no,resizable=no,scrollbars=auto,width=505,height=380,left=510.5,top=207.0&#39;); return false" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.StatusBar/TO41CZZ17UnHnwkFsbzZyM/6.21.1.0"><img border="0" width="11" height="11" src="<%=request.getContextPath()%>/img/help.gif"> <img border="0" width="40" height="11" src="<%=request.getContextPath()%>/img/version.gif">
</a>
        </span>
    </div><input id="imagePath" type="hidden" value="/htoa/image/comm/BLUE/" name="imagePath">
</div>


<div id="buffalo_loading" style="display: none; font-family: Verdana; font-size: 11px; border: 1px solid rgb(0, 204, 0); background-color: rgb(164, 255, 164); padding: 1px; position: absolute; right: 1px; top: 1px; width: 0px; height: 0px; z-index: 10000;"></div></body></html>