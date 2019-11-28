<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

</body>
</html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta content="MSHTML 6.00.2800.1276" name="GENERATOR">
		
		<meta http-equiv="Content-Style-Type" content="text/css">
		<meta http-equiv="Pragma" content="no-cache">
		<title>OA8000平台版_TPLMYSQL5</title>
		<link href="<%=request.getContextPath()%>/css/login.css" type="text/css" rel="stylesheet">
		
		<script language="javascript" src="<%=request.getContextPath()%>/js/pageCommon.js"></script>
		<script language="javascript" src="<%=request.getContextPath()%>/js/login.js"></script>
		<script language="javascript" src="<%=request.getContextPath()%>/js/login1.js"></script>
		<script language="javascript" src="<%=request.getContextPath()%>/js/systemMsg.js"></script>
		<script language="javascript" src="<%=request.getContextPath()%>/js/stm31.js"></script>
		<script language="javascript" src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
<script>
	function checkLogin(){
		var userName  = $("#userName").val();
		var password  = $("#password").val();
		if(userName == ""){
			alert("帐号不允许为空!");
		}else if(password == ""){
			alert("密码不允许为空!");
		}else{
			$.ajax({
				url:"<%=request.getContextPath()%>/auth/checkLogin.do",
				type:"post",
				dataType:"json",
				data:{userName:userName,password:password},
				success:function(result){
					if(result.status == 1){
						alert("账号或密码错误!请重新输入!");
					}else if(result.status == 3){
						alert("账号或密码错误!请重新输入!");
					}else{
						location.href= "<%=request.getContextPath()%>/frame/toMain.do";
						alert("登陆成功!");
					};
				},
				error:function(){
					
				}
			});
		};
	};
</script>
	</head>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="onLoad();">
		<div style="display:none;">
        <form method="post" name="homeForm" action="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.Main/zFx3BI5O75Vjb9zKAnXbg0/0.9"><input id="alertMsg" type="hidden" name="alertMsg"><input type="hidden" name="wosid" value="zFx3BI5O75Vjb9zKAnXbg0"></form>
		<a name="openHref" elementname="A" id="hrefId" href="http://localhost:8888/OAapp/WebObjects/OAapp.woa/wo/com.oa8000.proj.root.Main/zFx3BI5O75Vjb9zKAnXbg0/0.11"></a>
        </div>
        <form method="post" name="actForm" action="<%=request.getContextPath()%>/frame/toMain.do">
			<div style="display:none;">
                <input type="hidden" name="functionName">
                <input type="hidden" name="screenWidth">
                <input type="hidden" name="screenHeight">
                <input id="gotoPage" type="hidden" name="gotoPage">
                <input id="userNameInputId" type="hidden" name="userNameInputId">
                <input id="pasdInputId" type="hidden" name="pasdInputId">
                
			</div>
            <div id="CenterAreaBg">
				<div id="CenterArea">
					<div id="LogoImg">
						<img border="0" src="<%=request.getContextPath()%>/img/logo.gif">
					</div>
					<div id="LoginInfo">
						<table border="0" cellspacing="0" cellpadding="0">
							<tbody><tr>
                                <td>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        
                                        <tbody><tr>
                                            <td class="Subject"><img border="0" src="<%=request.getContextPath()%>/img/userId.gif"></td>
                                            <td colspan="3"><input size="20" class="TextField" id="userName" type="text"  name="username"></td>
                                        </tr>
                                        <tr>
                                            <td class="Subject"><img border="0" src="<%=request.getContextPath()%>/img/password.gif"></td>
                                            <td colspan="3"><input size="20" class="TextField" id="password" type="password" name="password"></td>
                                        </tr>
                                        
                                        <tr>
                                            <td class="Subject"><img border="0" src="<%=request.getContextPath()%>/img/style.gif"></td>
                                            <td colspan="2"><select onchange="submitButton(&#39;STYLE&#39;);" class="PopUpButton" name="styleList"><option selected="selected" value="BLUE">蓝色经典</option><option value="RED">红色庄重</option><option value="GREEN">绿色清新</option><option value="GRAY">灰色深沉</option></select></td>
                                        </tr>

                                        
                                    </tbody></table>
                                </td>
                                <td>
                                    <div style="padding-left:10px;">
                                        <img onclick="checkLogin()" border="0" style="cursor:pointer" src="<%=request.getContextPath()%>/img/userLogin_button.gif">
                                        
                                    </div>
                                    <div id="Item" style="padding-left:10px; padding-top:7px;">
                                        <a target="_blank" width="50" height="50" href="http://localhost:8888/OAapp/jsp/download.jsp?wosid=zFx3BI5O75Vjb9zKAnXbg0">
                                            <img border="0" src="<%=request.getContextPath()%>/img/download.gif"> IE环境初始化
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </tbody></table>
					</div>
				</div>
				<div style="display:none;"><iframe name="webPage" src="<%=request.getContextPath()%>/js/0.14.41.html" width="0" height="0" marginheight="0" marginwidth="0" frameborder="false"></iframe>
</div>
			</div>
		<input type="hidden" name="wosid" value="zFx3BI5O75Vjb9zKAnXbg0"></form>
	
</body></html>