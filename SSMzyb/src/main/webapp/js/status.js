//��ҳ��ײ���״̬���Ĳ�������Ҫ��ÿ��5����ȡһ�������û��������û�������ַ�ȹ��ܵ�������ʾ�ȡ�

var resizeOldWidth;
var showLeftMenuFlg = true;


function onLoad() {
	getOnlineUsers();
	
	//ȡ�����˵�ԭ�п��
	resizeOldWidth = parent.document.getElementById("resize").cols;
	if (resizeOldWidth == "0, *") resizeOldWidth = "175,*";
}

//ȡ���û���
function getOnlineUsers() {
	try {
		var buffalo = new Buffalo(endPointTop);
	        buffalo.remoteCall("desktopService.getOnlineUserCount", [], function(reply) {
	            var str = reply.getResult();
				document.getElementById("onlineUserNum").innerHTML = "&nbsp;" + str + "&nbsp;";
	        });
	} catch (ex) {
		alert(ex.message);
	}
	//ÿ5����ˢ��һ��
	setTimeout("getOnlineUsers()", 1000 * 60 * 10);
}

//�򿪱�㻭�棬�����û�¼��
function openText() {
	
}


//�������˵���ʾ��ʽ
function changeLeftMenu() {
	var resizeObj = parent.document.getElementById("resize");
	if (showLeftMenuFlg) {
		resizeObj.cols = "0, *";
		document.getElementById("leftMenu").src = document.all.imagePath.value + "hidden.gif";
		document.getElementById("leftMenu").alt = title_menu_expand;
	} else {
		resizeObj.cols = "180, *";
		document.getElementById("leftMenu").src = document.all.imagePath.value + "show.gif";
		document.getElementById("leftMenu").alt = title_menu_folded;
	}
	showLeftMenuFlg = !showLeftMenuFlg;
}
