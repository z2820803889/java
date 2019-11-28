var fileHrefBaseValue = null;
var addressHrefBaseValue = null;
var leftPoint = (screen.availWidth - 790) * 0.5;
var topPoint = (screen.availHeight - 670) * 0.5;

function desktop_openWin(url, pWidth, pHeight, winName) {
	var varOption = "toolbar=no,location=no,status=yes,menubar=no,resizable=yes,scrollbars=yes,"
		+ "width=" + pWidth + ",height=" + pHeight + ",left=" + leftPoint + ",top=" + topPoint;
	if(!winName) winName = "showMsg";
	window.open(url, winName, varOption);
}

//���ϵ���--�鿴ͶƱ
function actViewVotting(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('viewVotting').href + "?indexId=" + indexId;
	desktop_openWin(url, 800, 600);
}

//���ϵ���--ͶƱ
function actSubmitVotting(indexId, btnObj) {
	var s = ";";
	var detailAry = document.getElementsByName("vottingOption");
	for (var i = 0; i < detailAry.length; i++) {
		var obj = detailAry[i];
		if (obj.checked) s += obj.value + ";";
	}
	if (s == ";") {
		alert(plsVotting);
		return false;
	}
	for (var i = 0; i < detailAry.length; i++) {
		var obj = detailAry[i];
		obj.disabled = true;
	}
	var url = document.getElementById('submitVotting').href + "?indexId=" + indexId + "&detailList=" + s;
	desktop_openWin(url, 800, 600);
    btnObj.disabled = true;
}

//ͨѶ¼��ѯ
function actAddressQueryBtn() {
	var obj = document.getElementById('addressQuery');
	if(!obj) return false;
	var queryNameObj = document.getElementById('addressQuery_name');
	var queryCompanyObj = document.getElementById('addressQuery_company');
	var queryName = queryNameObj ? queryNameObj.value : "";
	var queryCompany = queryCompanyObj ? queryCompanyObj.value : "";
	if (addressHrefBaseValue == null) addressHrefBaseValue = obj.href;
	obj.href = addressHrefBaseValue + "?queryName=" + encodeURI(queryName) + "&queryCompany=" + encodeURI(queryCompany);
	document.location = obj.href;
}

//�����ļ�
function downloadFile2(fileId) {
	var obj = document.getElementById('fileDownload');
	if(!obj) return false;
	if (fileHrefBaseValue == null) fileHrefBaseValue = obj.href;
	obj.href = fileHrefBaseValue + "?RECORDID=" + fileId;
//	obj.click();
	document.location = obj.href;
}

//���ఴť����ݷ�ʽ
function actMoreBtn(urlValue, urlName) {
	if (urlValue == null) return false;
	if (urlValue == 'actOasp1903') {
	    urlValue = 'actOasp1903_1';	
	} else if (urlValue == 'Oasp1213') {
	    urlValue = 'actOasp1213_1';		
	};			
	parent.menu.actionPage(urlValue, urlName);
}

//����Ϣ��
function actionMsg(msgId) {
	if (msgId == "") return;
	var imgObj = document.getElementById("newImg" + msgId);
	if (imgObj != null) imgObj.parentNode.removeChild(imgObj);
	var url = document.getElementById('msgQuery').href + "?RECORDID=" + msgId + "&TYPE=MSG";
	desktop_openWin(url, 800, 600);
	refreshMode("FUNC00001");
}

//���ʼ�
function actionMail(msgId) {
	if (msgId == "") return;
	var imgObj = document.getElementById("newImg" + msgId);
	if (imgObj != null) imgObj.parentNode.removeChild(imgObj);
	var url = document.getElementById('msgQuery').href + "?RECORDID=" + msgId + "&TYPE=MailMessage";
	desktop_openWin(url, 800, 600);
}

//��ͨѶ¼
function actAddress(addressId) {
	if (addressId == "") return;
	var url = document.getElementById('msgQuery').href + "?RECORDID=" + addressId + "&TYPE=Address";
	desktop_openWin(url, 800, 600);
}

//�򿪽��չ�������
function getTodayWork(calendarDetailId) {
	if (calendarDetailId == "") return;
	var url = document.getElementById('msgQuery').href + "?RECORDID=" + calendarDetailId + "&TYPE=CalendarDetail";
	desktop_openWin(url, 800, 600);
}

//������
function actionTrace(indexId) {
	if (indexId == "") return;
    var varOption = "toolbar=no,location=no,status=yes,menubar=no,resizable=yes,scrollbars=yes,width="
    		 + screen.availWidth + ",height=" + screen.availHeight + ",left=" + leftPoint + ",top=" + topPoint;
    window.open(document.getElementById('msgQuery').href + "?RECORDID=" + indexId + "&TYPE=TraceInstanceIndex", "showMsg", varOption);
}

//�򿪻���
function actMeeting(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('msgQuery').href + "?RECORDID=" + indexId + "&TYPE=MeetingIndex";
	desktop_openWin(url, 800, 600);
}

//����̳
function actForumArticleIndex(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('msgQuery').href + "?RECORDID=" + indexId + "&TYPE=ForumArticleIndex";
	desktop_openWin(url, 800, 600);
}

//�򿪹����ƻ�
function actWORK(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('msgQuery').href + "?RECORDID=" + indexId + "&TYPE=WORK";
	desktop_openWin(url, 800, 600);
}

//----------- �����Ż� ---------
// ������Ŀ�����ŷ��Ŀ�
function actionDeptSendDocument(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('companyTraceHandout').href + "?RECORDID=" + indexId + "&TYPE=MeetingIndex";
	desktop_openWin(url, 800, 600);
}

// ������Ŀ���������Ŀ�
function actionDeptReceiveDocument(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('companyTraceHandout').href + "?RECORDID=" + indexId + "&TYPE=MeetingIndex";
	desktop_openWin(url, 800, 600);
}

// �����Ż��Զ�����Ŀ
function actionDeptCustomcolumn(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('deptCustomColumn').href + "?RECORDID=" + indexId;
	desktop_openWin(url, 800, 600);
}

//----------- ��˾�Ż� ----------
// ��˾��Ŀ������
function actionCompanySendDocument(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('companyTraceHandout').href + "?RECORDID=" + indexId + "&TYPE=MeetingIndex";
	desktop_openWin(url, 800, 600);
}

// ��˾��Ŀ������
function actionCompanyReceiveDocument(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('companyTraceHandout').href + "?RECORDID=" + indexId + "&TYPE=MeetingIndex";
	desktop_openWin(url, 800, 600);
}

// ��˾��Ŀ��֪ͨ����
function actionCompanyNotice(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('companyTraceHandout').href + "?RECORDID=" + indexId + "&TYPE=MeetingIndex";
	desktop_openWin(url, 800, 600);
}

// ��˾��Ŀ����Ⱥ����
function actionCompanyDQNews(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('companyTraceHandout').href + "?RECORDID=" + indexId + "&TYPE=MeetingIndex";
	desktop_openWin(url, 800, 600);
}

// ��˾��Ŀ����������
function actionCompanyMeeting(indexId) {
	if (indexId == "") return;
	var url = document.getElementById('companyTraceHandout').href + "?RECORDID=" + indexId + "&TYPE=MeetingIndex";
	desktop_openWin(url, 800, 600);
}

//----------------------------
// �����Զ�����Ŀ-�����ࡱ��ť
function actDeptCustomColumnMoreBtn(functionId) {
	var obj = document.getElementById('deptColumnMore');
	if (fileHrefBaseValue == null) fileHrefBaseValue = obj.href;
	obj.href = fileHrefBaseValue + "?FUNCTIONID=" + functionId;
//	obj.click();
	document.location = obj.href;
}

//------------------------------
// ��˾��Ŀ
function actCompanyColumnMoreBtn(functionId) {
	var obj = document.getElementById('companyColumnMore');
	if (fileHrefBaseValue == null) fileHrefBaseValue = obj.href;
	obj.href = fileHrefBaseValue + "?FUNCTIONID=" + functionId;
//	obj.click();
	document.location = obj.href;
}

//-----------------------------
// ������Ŀ
function actionPortalGroup(indexId, urlvalue, urlname) {
	if (indexId == "") return;

	if (isCompanyColumn(indexId + "MAX")) {
		// ��˾��Ŀ
		actCompanyColumnMoreBtn(indexId);
		return;
	}
	
	if (indexId.charAt(0) == 'D') {
		// ������Ŀ
		actDeptCustomColumnMoreBtn(indexId + "MAX");
		return;
	}
	
	if (urlvalue && urlvalue != "") {
		actMoreBtn(urlvalue, urlname);
		return;
	}
	var url = document.getElementById('msgQuery').href + "?RECORDID=" + indexId + "&TYPE=PortalGroup";
	desktop_openWin(url, 800, 600, "showMsg1");
}

//��ȡ�ַ�������   
//dealStrҪ��ȡ���ַ���   
//maxLength ��ȡ�ĳ���
function widthCheck(dealStr, maxLength){   
        if(!maxLength){   
            maxLength = 20;   
        }   
        if(dealStr==null||dealStr.length<1){   
            return ["", ""];   
        }   
        var w = 0;//�ַ������ȣ�һ�����ֳ���Ϊ2   
        var s = 0;//���ָ���   
        var p = false;//�ж��ַ�����ǰѭ����ǰһ���ַ��Ƿ�Ϊ����   
        var b = false;//�ж��ַ�����ǰѭ�����ַ��Ƿ�Ϊ����   
        var nameSub;   
        for (var i=0; i<dealStr.length; i++) {   
           if(i>1 && b==false){   
                p = false;   
           }   
           if(i>1 && b==true){   
                p = true;   
           }   
           var c = dealStr.charCodeAt(i);   
           //���ֽڼ�1   
           if ((c >= 0x0001 && c <= 0x007e) || (0xff60<=c && c<=0xff9f)) {   
                w++;   
                b = false;   
           }else {   
                w+=2;   
                s++;   
                b = true;   
           }   
           if(w>maxLength && i<=dealStr.length-1){   
                if(b==true && p==true){   
                    nameSub = dealStr.substring(0,i-2)+"...";   
                }   
                if(b==false && p==false){   
                    nameSub = dealStr.substring(0,i-3)+"...";   
                }   
                if(b==true && p==false){   
                    nameSub = dealStr.substring(0,i-2)+"...";   
                }   
                if(p==true){   
                    nameSub = dealStr.substring(0,i-2)+"...";   
                }   
                break;   
           }   
        }   
        if(w<=maxLength){   
            return [dealStr, ""];   
        }   
        return nameSub;   
    }
