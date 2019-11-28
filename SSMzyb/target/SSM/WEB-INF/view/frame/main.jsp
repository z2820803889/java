<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">

<title>OA8000平台版_TPLMYSQL5--我的桌面</title>
<script language="javascript" src="<%=request.getContextPath()%>/js/systemMsg.js"></script>
<script language="javascript">
 function setEvents(type){ 
if(navigator.userAgent.indexOf("MSIE") <= 0) { 
        return false; 
}
var objChild;
var reWork = new RegExp('object','gi'); 
var chasm = screen.availWidth; 
var mount = screen.availHeight; 
var w = window.screen.width; 
var h = window.screen.height; 
var varLeft; 
var varTop; 
if (w == chasm) { 
varLeft = 0; 
} else { 
varLeft = (chasm - w - 10) * .5; 
} 
if (h == mount) { 
varTop = 0; 
} else { 
varTop = (mount - h - 30) * .5; 
} 
var varOption = "toolbar=no,location=no,status=no,menubar=no,resizable=yes,scrollbars=no,width=" + w + ",height=" + h + ",left=" + varLeft + ",top=" + varTop; 
try {
objChild = window.open('about:blank' ,'newwindow',varOption); 
objChild.close();
 }catch(e){
 }
  if(!reWork.test(String(objChild))){
 alert(login_popwin_msg);
 }
 }
  setEvents(1);</script>

</head>

<frameset rows="100,*,25" framespacing="0" border="0" frameborder="0">
  <frame noresize="" target="contents" name="TopMenu" scrolling="no" src="<%=request.getContextPath()%>/frame/toTop.do">
  <frameset cols="180, *" id="resize">
    <frame noresize="" target="main" name="menu" scrolling="yes" src="<%=request.getContextPath()%>/frame/toLeft.do">
    <frame noresize="" name="desktop" scrolling="yes" src="<%=request.getContextPath()%>/frame/toRight.do">
  </frameset>
  <frame noresize="" name="status_bar" scrolling="no" src="<%=request.getContextPath()%>/frame/toBottom.do">
</frameset>


</html>