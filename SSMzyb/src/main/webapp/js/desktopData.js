//ˢ��ĳ�����������
function refreshMode(modeId) {
	var thisEle = getObj(modeId);
	if (thisEle == null) return false;
	if (thisEle.getAttribute("minflg") == "1") revertMode(modeId);
	var str = ";";
	var blockObjAry = new Array();
	blockObjAry.push(thisEle);
	var count = thisEle.getAttribute("recordcount");
	if (count == undefined) count = 0;	
	str += thisEle.getAttribute("functionid") + "|" + count + ";";
	try {
		var buffalo = new Buffalo(endPointTop);
	        buffalo.remoteCall("desktopService.getAllData", [str, userId, deptId, systemSend, languageStr, noSubject], function(reply) {
	            var dataAry = reply.getResult();
	            writeBlock(dataAry, blockObjAry);
	        });
	} catch (ex) {
	}
}

//ȡ�û�������
function getPageData() {
	//ȡ�õ�ǰ������ȫ���Ŀ�
	var divAry = document.getElementsByTagName("DIV");
	//ÿ��ģ��ȡֵ
	for (var i = 0; i < divAry.length; i++) {
		if (divAry[i].className != "DesktopBlock") continue;
		if (divAry[i].id != null) {
			refreshMode(divAry[i].id);
		}
	}
	//ȫ��һ����ȡֵ
/*
	var str = ";";
	var blockObjAry = new Array();
	for (var i = 0; i < divAry.length; i++) {
		if (divAry[i].className != "DesktopBlock") continue;
		if (divAry[i].id != null) {
			blockObjAry.push(divAry[i]);
			str += divAry[i].id + "|" + divAry[i].recordcount + ";";
		}
	}
	if (str == ";") return false;
	try {
		var buffalo = new Buffalo(endPointTop);
	        buffalo.remoteCall("desktopService.getAllData", [str, userId, deptId, systemSend, languageStr, noSubject], function(reply) {
	            var dataAry = reply.getResult();
	            writeBlock(dataAry, blockObjAry);
	        });
	} catch (ex) {
	}
*/
}

//ȡ��ÿ���������������
function writeBlock(dataAry, blockObjAry) {
	if (dataAry == null || dataAry.length == 0) return false;
	for (var i = 0; i < blockObjAry.length; i++) {
		obj = blockObjAry[i];
		var foundFlg = false;
		var j = 0; 
		while (j < dataAry.length) {
			var functionid = dataAry[j++];
			var blockDataAry = dataAry[j++];
			if (functionid == obj.getAttribute("functionid")) {
				writeBlockData(blockDataAry, obj);
				foundFlg = true;
			}
		}
		if (!foundFlg) writeBlockData(new Array(), obj);
	}
}

//����functionidת��ͬд���ݵķ�������
function writeBlockData(blockDataAry, blockObj) {
	var functionid = blockObj.getAttribute("functionid");
	//ȡ��д���ݵ�����
	var obj = document.getElementById(functionid + "MAX");
	if(!obj) return false;
	obj.setAttribute("recordcount", blockObj.getAttribute("recordcount") );
	obj.setAttribute("urlvalue", blockObj.getAttribute("urlvalue"));
	obj.setAttribute("urlname", blockObj.getAttribute("urlname"));
    //����Ϣ
    if ("FUNC00001" == functionid) {
        return writeMsg(blockDataAry, obj);
    }
    //�����ļ�
    if ("FUNC00002" == functionid) {
        return writeMsg(blockDataAry, obj);
    }
    //֪ͨ
    if ("FUNC00003" == functionid) {
        return writeMsg(blockDataAry, obj);
    }
    //����
    if ("FUNC00004" == functionid) {
        return writeMsg(blockDataAry, obj);
    }
    //����
    if ("FUNC00005" == functionid) {
        return writeMsg(blockDataAry, obj);
    }
    //������ַ
    if ("FUNC00006" == functionid) {
        return writeUserTools(blockDataAry, obj);
    }
    //��˾����
    if ("FUNC00007" == functionid) {
        return writeCompanyAdage(blockDataAry[0], obj);
    }
    //���ϵ���
    if ("FUNC00008" == functionid) {
        return writeVotting(blockDataAry, obj);
    }
    //�����ϴ��ļ�
    if ("FUNC00009" == functionid) {
        return writeFile(blockDataAry, obj);
    }
    //��ݷ�ʽ
    if ("FUNC00010" == functionid) {
        return writeQuick(blockDataAry, obj);
    }
    //��������
    if ("FUNC00012" == functionid) {
        return writeAwoke(blockDataAry, obj);
    }
    //ͨѶ¼��ѯ
    if ("FUNC00013" == functionid) {
        return writeAddressQuery(blockDataAry, obj);
    }
    //�ʼ�
    if ("FUNC00014" == functionid) {
        return writeMail(blockDataAry, obj);
    }
    //����ͨѶ¼
    if ("FUNC00015" == functionid) {
        return writeAddress(blockDataAry, obj);
    }
    //��˾ͨѶ¼
    if ("FUNC00016" == functionid) {
        return writeAddress(blockDataAry, obj);
    }
    //����ͨѶ¼
    if ("FUNC00017" == functionid) {
        return writeAddress(blockDataAry, obj);
    }
    //���չ�������
    if ("FUNC00018" == functionid) {
        return writeTodayWork(blockDataAry, obj);
    }
    //��������
    if ("FUNC00019" == functionid) {
        return writeWaitTrace(blockDataAry, obj);
    }
    //�����ƻ�
    if ("FUNC00020" == functionid) {
        return writeWorkPlan(blockDataAry, obj);
    }
    //�����ڿ�
    if ("FUNC00021" == functionid) {
        return writeEBook(blockDataAry, obj);
    }
    //�ҵĻ���
    if ("FUNC00023" == functionid) {
        return writeMeeting(blockDataAry, obj);
    }
    //��̳
    if ("FUNC00024" == functionid) {
        return writeForum(blockDataAry, obj);
    }
    //��������
    if ("FUNC00025" == functionid) {
        return writePictureNews(blockDataAry, obj);
    }
    //����Ԥ��
    if ("FUNC00026" == functionid) {
        return writeWeather(blockDataAry, obj);
    }
    //��˾ֵ���
    if ("FUNC00027" == functionid) {
        return writeOnDuty(blockDataAry, obj);
    }
    //��˾��Ŀ�����Ŀ�
    if ("FUNC10000" == functionid) {
    	return writeCompanySendDocument(blockDataAry, obj);
    }
    
    //��˾��Ŀ�����Ŀ�
    if ("FUNC10001" == functionid) {
    	return writeCompanyReceiveDocument(blockDataAry, obj);
    }

    //��˾��Ŀ��֪ͨ����
    if ("FUNC10002" == functionid) {
    	return writeCompanyNotice(blockDataAry, obj);
    }
    
    //��˾��Ŀ����Ⱥ����
    if ("FUNC10003" == functionid) {
    	return writeCompanyDQNews(blockDataAry, obj);
    }
    
    //��˾��Ŀ����������
    if ("FUNC10004" == functionid) {
    	return writeCompanyMeeting(blockDataAry, obj);
    }
    
    //������Ŀ�����ŷ��Ŀ�
    if ("FUNC11000" == functionid) {
    	return writeDeptSendDocument(blockDataAry, obj);
    }
    
    //������Ŀ���������Ŀ�
    if ("FUNC11001" == functionid) {
    	return writeDeptReceiveDocument(blockDataAry, obj);
    }
    
    if ("FUNC10006" == functionid) {
    	obj.recordcount = 8;
        return writeMyTask(blockDataAry, obj);
    }    
    
    // �����Զ�����Ŀ
    if (functionid.charAt(0) == 'D') {
    	return writeDeptCustomColumn(blockDataAry, obj);
    }

	// ������Ŀ    
    if (functionid.charAt(0) == 'G') {
    	return writePortalGroup(blockDataAry, obj);
    }
}

// ������Ŀ
function writePortalGroup(blockDataAry, obj) {
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < blockDataAry.length; i++) {
		var record = blockDataAry[i];
		
		str	+= "<LI class='DetailLine'>\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		var msgTitle = record.msg_title;
		str += "<a onClick=\"actionPortalGroup('" + record.function_id + "', '" + record.urlvalue + "', '" + record.urlname + "');\" href=\"#\">" + msgTitle + "</a>";
		str += "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blockDataAry.length < 3) {
		str += "<LI class='EndDetailLine'><DIV></DIV></LI>\n";
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(0, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}
//�żѱ��޸�2010-1-28
//������Ŀ���������Ŀ�
function writeDeptReceiveDocument(blockDataAry, obj){
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";	
		str += "<a onClick=\"actionDeptReceiveDocument('" + record.trace_handout_id + "');\" href=\"#\">" + getTopFlag(record) + record.trace_title + "</a>";
		
		var handoutDate = new Date(record.handout_date);
		var deadDate = new Date(handoutDate);
		deadDate.setDate(deadDate.getDate()+1); 
		var tDate = new Date();
		//�����Ƿ���ʾnewͼ��
		if(Date.parse(deadDate) - Date.parse(tDate)>=0){
			str += " <img id='newImg" + record.msg_id + "' border=0 src='" + newImg + "'>";
		}
		
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + (handoutDate.getMonth()+1) +"-"+ handoutDate.getDate() + "</DIV>\n";
//		str += "<DIV CLASS=DetailLineName>" + record.handout_user + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//�żѱ��޸�2010-1-28
//������Ŀ�����ŷ��Ŀ�
function writeDeptSendDocument(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"actionDeptSendDocument('" + record.trace_handout_id + "');\" href=\"#\">" + getTopFlag(record) + record.trace_title + "</a>";
		
		var handoutDate = new Date(record.handout_date);
		var deadDate = new Date(handoutDate);
		deadDate.setDate(deadDate.getDate()+1); 
		var tDate = new Date();
		//�����Ƿ���ʾnewͼ��
		if(Date.parse(deadDate) - Date.parse(tDate)>=0){
			str += " <img id='newImg" + record.msg_id + "' border=0 src='" + newImg + "'>";
		}
		
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + (handoutDate.getMonth()+1) +"-"+ handoutDate.getDate() + "</DIV>\n";
		//str += "<DIV CLASS=DetailLineName>" + record.handout_user + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//��˾��Ŀ����������
function writeCompanyMeeting(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		//�����Ƿ���ʾ[��Ҫ]����Ϣ
		if (record.important == 1) str += importance;
		var topic = record.topic;
		if (record.is_today == 1) {
			topic = "<span style='color:red'>" + topic + "</span>";
		}
		str += "<a onClick=\"actionCompanyMeeting('" + record.meeting_id + "');\" href=\"#\">" + topic + "</a>";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.start_time + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}
//�żѱ��޸�2010-1-28
//��˾��Ŀ����Ⱥ����
function writeCompanyDQNews(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"actionCompanyDQNews('" + record.trace_handout_id + "');\" href=\"#\">" + getTopFlag(record) + record.trace_title + "</a>";
		
		var handoutDate = new Date(record.handout_date);
		var deadDate = new Date(handoutDate);
		deadDate.setDate(deadDate.getDate()+1); 
		var tDate = new Date();
		//�����Ƿ���ʾnewͼ��
		if(Date.parse(deadDate) - Date.parse(tDate)>=0){
			str += " <img id='newImg" + record.msg_id + "' border=0 src='" + newImg + "'>";
		}
		
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + (handoutDate.getMonth()+1) +"-"+ handoutDate.getDate() + "</DIV>\n";
		//str += "<DIV CLASS=DetailLineName>" + record.handout_user + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}
//�żѱ��޸�2010-1-28
//��˾��Ŀ��֪ͨ����
function writeCompanyNotice(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"actionCompanyNotice('" + record.trace_handout_id + "');\" href=\"#\">" + getTopFlag(record) + record.trace_title + "</a>";

		var handoutDate = new Date(record.handout_date);
		var deadDate = new Date(handoutDate);
		deadDate.setDate(deadDate.getDate()+1); 
		var tDate = new Date();
		//�����Ƿ���ʾnewͼ��
		if(Date.parse(deadDate) - Date.parse(tDate)>=0){
			str += " <img id='newImg" + record.msg_id + "' border=0 src='" + newImg + "'>";
		}

		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + (handoutDate.getMonth()+1) +"-"+ handoutDate.getDate()+ "</DIV>\n";
		//str += "<DIV CLASS=DetailLineName>" + record.handout_user + "</DIV>\n";
		str	+= "</LI>\n";

	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}
//�żѱ��޸�2010-1-28
//��˾��Ŀ�����Ŀ�
function writeCompanyReceiveDocument(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"actionCompanyReceiveDocument('" + record.trace_handout_id + "');\" href=\"#\">" + getTopFlag(record) + record.trace_title + "</a>";
		
		var handoutDate = new Date(record.handout_date);
		var deadDate = new Date(handoutDate);
		deadDate.setDate(deadDate.getDate()+1); 
		var tDate = new Date();
		//�����Ƿ���ʾnewͼ��
		if(Date.parse(deadDate) - Date.parse(tDate)>=0){
			str += " <img id='newImg" + record.msg_id + "' border=0 src='" + newImg + "'>";
		}
		
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + (handoutDate.getMonth()+1) +"-"+ handoutDate.getDate() + "</DIV>\n";
		//str += "<DIV CLASS=DetailLineName>" + record.handout_user + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}
//�żѱ��޸�2010-1-28
//��˾��Ŀ�����Ŀ�
function writeCompanySendDocument(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"actionCompanySendDocument('" + record.trace_handout_id + "');\" href=\"#\">" + getTopFlag(record) + record.trace_title + "</a>";
		
		var handoutDate = new Date(record.handout_date);
		var deadDate = new Date(handoutDate);
		deadDate.setDate(deadDate.getDate()+1); 
		var tDate = new Date();
		//�����Ƿ���ʾnewͼ��
		if(Date.parse(deadDate) - Date.parse(tDate)>=0){
			str += " <img id='newImg" + record.msg_id + "' border=0 src='" + newImg + "'>";
		}
		
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + (handoutDate.getMonth()+1) +"-"+ handoutDate.getDate() + "</DIV>\n";
		//str += "<DIV CLASS=DetailLineName>" + record.handout_user + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//�żѱ��޸�2010-1-28
//�����Զ�����Ŀ-��Ϣ
function writeDeptCustomColumn_news(blockDataAry, obj){ 
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		//�����Ƿ���ʾ[�ö�][��Ҫ]����Ϣ
		var msgTitle = record.msg_title;
		if (record.flag == 1) {
			str += toTop;
			msgTitle = "<font color='red'>" + msgTitle + "</font>";
		}
		if (record.msg_importance == 1) str += importance;
		str += "<a onClick=\"actionDeptCustomcolumn('" + record.depart_portal_msg_id + "');\" href=\"#\">" + msgTitle + "</a>";
		//�����Ƿ���ʾnewͼ��
		//if (record.received.indexOf(";" + userId + ";") == -1) {
		//	str += " <img id='newImg" + record.msg_id + "' border=0 src='" + newImg + "'>";
		//}
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + record.senddatetime + "</DIV>\n";
		//str += "<DIV CLASS=DetailLineName>" + record.sender + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//�����Զ�����Ŀ-ͼƬ����
function writeDeptCustomColumn_picNews(blockDataAry, obj){
	var fid = obj.id;
	//ȡ��ͼƬ��ʾ��
	var s1 = "";
	var s2 = "";
	var s = "<div class=container id=idTransformView" + fid + "> \n";
	s	 += "<ul class=slider id=idSlider" + fid + ">\n";
    for (var i = 0; i < blockDataAry.length; i++) {
		var record = blockDataAry[i];
        s1 += "<li><a onclick=actionDeptCustomcolumn('" + record.depart_portal_msg_id + "')>\n";
        s1 += "<img alt='" + record.msg_title + "' src='" + record.full_path + "'></a></li>\n";
        s2 += " <li>" + (i + 1) + "</li>\n";
    }
    s += s1;
    s += "</ul>";
    s += " <ul class=num id=idNum" +fid + ">\n";
    s += s2;
    s += "</ul>";
    s += "</div>";
    
    var content="";
    for (var i = 0; i < blockDataAry.length; i++) {
	    var record = blockDataAry[i];
	    if(i==0){
	    	content+= "<DIV id=focusContent" + fid + i + " style='display: block;text-align:left;'>"
	    }else{
	        content+= "<DIV id=focusContent" + fid + i + " style='display: none;text-align:left;'>"
        }
	    	
	    content+= "<ul id='pictureContent" +fid + "'>";	
	    
	    content+= "<li style='text-indent: 0;'><a STYLE='cursor:pointer;' onclick=actionDeptCustomcolumn('" + record.depart_portal_msg_id + "')> <b>" + record.msg_title + "</b></a></li>";	    
	    var simpleContent = record.simple_content;
	    if(simpleContent == null) simpleContent = "";
	    content+= "<li>" + simpleContent + "</li>";
	    content+= "</ul>";
	    content+= "</DIV>";

        
    }
    //��ʼƴ��
    //ͼƬ����
    var str  = "<div style='width: 100%;padding-right: 5px;padding-left: 5px;padding-top: 5px;padding-bottom:5px;float:left'>";
    str		+= "<div style='width:50%; float:left'>";
    str 	+= s;
    str		+= "</div>";    
    
    //���������
    str		+= content;
    
    
    str		+= "</div>";
    str		+= "<br>";

    if (blockDataAry.length == 6) {
    	// ����
		str += writeFoot(0, obj)    	
    }

	obj.innerHTML = str;
	obj.style.padding = 0;
	try {
		transformView(fid);
	} catch (ex) {
	}
}

// �����Զ�����Ŀ - û�����ݵ�ʱ����ʾ,��Ҫ�����쳣��ʱ��ʹ��
function writeDeptCustomColumn_nodata(blockDataAry, obj){
	obj.innerHTML = ""; 
}
// �����Զ�����Ŀ
function writeDeptCustomColumn(blockDataAry, obj) {
	if (obj.msg_type == "1") // 1����Ϣ
		writeDeptCustomColumn_news(blockDataAry, obj);
	else if (obj.msg_type == "9") // 9��ͼƬ����
		writeDeptCustomColumn_picNews(blockDataAry, obj);
	else
		writeDeptCustomColumn_nodata(new Array(), obj);
}

//����Ԥ��
function writeWeather(blockDataAry, obj) {
	var str = "";
	if (blockDataAry != null && blockDataAry.length > 0) {
		var record = blockDataAry[0];
		str		+= "<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=3 HEIGHT=100% WIDTH=100%>\n";
		str		+= "<tr>\n<td width=140 align=middle valign=center>";
		if (record.img1 != "99") {
			str += "<img alt='" + record.img_title1 + "' src=" + weatherImgPath + "b_" + record.img1 + ".gif> ";
		}
		if (record.img2 != "99") {
			str += "<img alt='" + record.img_title2 + "' src=" + weatherImgPath + "b_" + record.img2 + ".gif>";
		}
		str		+= "<DIV class=WeatherCity>\n";
		str 	+= record.city + " &nbsp;" + record.date_y + "<br>" + record.date + " &nbsp;" + record.week;
		str		+= "</DIV>\n";
		str		+= "</td>\n<td>\n";
		str 	+= "<DIV class=WeatherCurrent>";
		str 	+= record.weather1  + "<br>" + record.temp1;
		str 	+= "</DIV>\n";
		str 	+= "<ul id=WeatherDetail>";
		str 	+= "<li>" + weather_td3_title3 + record.wind1 + "</li>";
		str 	+= "<li>" + weather_td3_title4 + record.index_uv + "</li>";
		str 	+= "<li>" + weather_td3_title5 + record.index_xc + "</li>";
		str 	+= "</ul>\n";
		str		+= "<DIV class=WeatherMemo>\n";
		str 	+= weather_td3_title2 + record.index_d;
		str		+= "</DIV>\n";
		str		+= "</td>\n</tr>\n";
		str		+= "</TABLE>\n";
	}
	obj.innerHTML = str;
	obj.style.padding = 0;
}
//��˾ֵ���
function writeOnDuty(blockDataAry, obj) {		
	var str = "";
	if (blockDataAry != null && blockDataAry.length > 0) {
		var record = blockDataAry[0];
		str	+= "<DIV ID=BlockDetail>\n";
		str 	+= "<ul>\n";
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>"+ leader_on_duty + record.p_code1;
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>" + phone_on_duty;
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>" + leader_cellphone;
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>" + phone_scene;
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>" + flying_seat;
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>" + crew_seat;
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>" + market_seat;
		str	+= "<LI >\n";
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>" + flying_dispatch;
		str	+= "<LI >\n";
		str     += "<DIV CLASS=DetailLineInfo>" ;
		//str 	+= "<a href=\"#\" onClick=\"actMoreBtn('phone_out', '" + address_list + "');\">" + phone_out + "</a>";
		str 	+= "<a href=\"/htoa/phone_out.htm\" >" + phone_out + "</a>";
		str 	+= "</DIV>\n";
		str	+= "</LI>\n";
		str 	+= "</ul>\n";
		str 	+= "</DIV>\n";
	}
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//��������
function writePictureNews(blockDataAry, obj) {
	var fid = obj.id;
	//ȡ��ͼƬ��ʾ��
	var picStr = "";
	var numStr = "";
	var picDivStr = "<div class=container id=idTransformView" + fid + "> \n";
	picDivStr	 += "<ul class=slider id=idSlider" + fid + ">\n";
    for (var i = 0; i < blockDataAry.length; i++) {
		var record = blockDataAry[i];
        picStr += "<li><a onclick=actionMsg('" + record.msg_id + "')>\n";
        picStr += "<img alt='" + record.msg_title + "' src='" + record.full_path + "'></a></li>\n";
        numStr += " <li>" + (i + 1) + "</li>\n";
    }
    picDivStr += picStr;
    picDivStr += "</ul>";
    picDivStr += " <ul class=num id=idNum" + fid + ">\n";
    picDivStr += numStr;
    picDivStr += "</ul>";
    picDivStr += "</div>";
    
    var content="";
    for (var i = 0; i < blockDataAry.length; i++) {
	    var record = blockDataAry[i];
	    if(i==0){
	    	content+= "<DIV id=focusContent" + fid + i + " style='display: block;'>"
	    }else{
	        content+= "<DIV id=focusContent" + fid + i + " style='display: none;'>"
        }
	    content+= "<ul id='pictureContent" + fid + "'>";	
	    content+= "<li  class=DetailLine style='border-bottom:none;'><a style='cursor:pointer;' onclick=actionMsg('" + record.msg_id + "')> <b>" + record.msg_title + "</b></a></li>";
	    var simpleContent = record.simple_content;
	    if(simpleContent == null) simpleContent = "";
	    content+= "<li class=DetailLine style='font-size:10pt;border-bottom:none;'>" + simpleContent + "</li>";
	    content+= "</ul>";
	    content+= "</DIV>";
    }
    
    //��ʼƴ��
    //ͼƬ����
    var htmlStr = "<table width=100% border=0 cellspacing=0 cellpadding=0><tr>";
    htmlStr += "<td width=250px>" + picDivStr + "</td>";
    htmlStr += "<td>" + content + "</td>";    //���������
    htmlStr += "</tr></table>";
    
    if (blockDataAry.length == 6) {
    	// ����
		str += writeFoot(0, obj)    	
    }
	obj.innerHTML = htmlStr;
	obj.style.padding = 0;
	obj.style.height = 175 + "px";
	try {
		transformView(fid);
	} catch (ex) {
	}
}

//��̳
function writeForum(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		//��ʾ�������
		str += "[" + record.pagetitle + "]";
		str += "<a onClick=\"actForumArticleIndex('" + record.forum_article_index_id + "');\" href=\"#\">" + record.indextitle + "</a>";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + record.creat_time + "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.author + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//�ҵĻ���
function writeMeeting(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		//�����Ƿ���ʾ[��Ҫ]����Ϣ
		if (record.important == 1) str += importance;
		var topic = record.topic;
		if (record.is_today == 1) {
			topic = "<span style='color:red'>" + topic + "</span>";
		}
		str += "<a onClick=\"actMeeting('" + record.meeting_id + "');\" href=\"#\">" + topic + "</a>";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.start_time + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//�����ڿ�
function writeEBook(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"downloadFile2 ('" + record.file_storage_id + "');\" href=\"#\">" + record.file_name + "</a>";
		str += "(" + record.asize + ")";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + record.modified_time + "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.creator_id + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//�����ƻ�
function writeWorkPlan(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"actWORK('" + record.forum_article_index_id + "');\" href=\"#\">" + record.title + "</a>";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + record.creat_time + "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.author + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//��������
function writeWaitTrace(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		//�����Ƿ���ʾ[��Ҫ]����Ϣ
		if (record.trace_priority == 1) str += importance;
		str += "<a onClick=\"actionTrace('" + record.trace_instance_index_id + "');\" href=\"#\">" + record.trace_title + "</a>";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + record.trace_start_time + "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.create_user_id + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//���չ�������
function writeTodayWork(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		if (record.important == 0) {
			str += calendar0;
		} else if (record.important == 1) {
			str += calendar1;
		} else if (record.important == 2) {
			str += calendar2;
		}
		str += "<a onClick=\"getTodayWork('" + record.calendar_detail_id + "');\" href=\"#\">" + widthCheck(record.memo, 50) + "</a>";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>";
		if (record.state == 0) {
			str += notdo;
		} else if (record.state == 1) {
			str += done;
		}
		str += "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//ͨѶ¼
function writeAddress(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"actAddress('" + record.address_list_detail_id + "');\" href=\"#\">" + record.personnel_name + "</a>";
		str += "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//�ʼ�
function writeMail(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		//�����Ƿ���ʾ[��Ҫ]����Ϣ
		if (record.priority == 1) str += importance;
		str += "<a onClick=\"actionMail('" + record.mail_message_id + "');\" href=\"#\">" + record.subject + "</a>";
		//�����Ƿ���ʾnewͼ��
		if (record.read_mark == 0) {
			str += " <img id='newImg" + record.mail_message_id + "' border=0 src='" + newImg + "'>";
		}
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + record.sent_date + "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.sender + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//ͨѶ¼��ѯ
function writeAddressQuery(blockDataAry, obj) {
	var str	 = "<DIV class=BlockDetailByAddressQuery> ";
	str		+= addressQuery_name;
	str		+= " <input class=InputStyle style='width:20%;' onfocus='this.select();' type=text name=addressQuery_name id=addressQuery_name> ";
	str		+= addressQuery_company;
	str		+= " <input class=InputStyle style='width:20%;' onfocus='this.select();' type=text name=addressQuery_company id=addressQuery_company> ";
	str		+= " <input class=QueryButton type=button value='" + addressQuery_search + "' name=addressQuery_search onClick='actAddressQueryBtn();'>";
	str		+= "</DIV>\n";
	str		+= "<DIV ID=BlockFoot>\n";
	str		+= "</DIV>";
	obj.innerHTML = str;
	obj.style.height = "90px";
	obj.style.padding = 0;
}

//��������
function writeAwoke(blockDataAry, obj) {
	var traceCount = 0;
	var readCount = 0;
	var taskCount = 0;
	var calendarCount = 0;
	if (blockDataAry != null && blockDataAry.length == 4) {
		traceCount = blockDataAry[0];
		readCount = blockDataAry[1];
		taskCount = blockDataAry[2];
		calendarCount = blockDataAry[3];
	}
	var str	 = "<DIV class=BlockDetailByAwoke>\n";
	str		+= "<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=5 HEIGHT=100%>\n";
	str		+= "<tr>\n<td>";
	str		+= "<DIV class=AwokeButton onClick=\"actMoreBtn('Oasp9006', '" + awoke_trace + "');\">" + awoke_trace + " (<span class=AwokeNum>" + traceCount + "</span>)" + "</DIV>";
	str		+= "</td>\n<td>";
	str		+= "<DIV class=AwokeButton onClick=\"actMoreBtn('Oasp9014', '" + awoke_read + "');\">" + awoke_read + " (<span class=AwokeNum>" + readCount + "</span>)" + "</DIV>";
	str		+= "</td>\n</tr>\n<tr>\n<td>";
	str		+= "<DIV class=AwokeButton onClick=\"actMoreBtn('actOasp5105_0', '" + awoke_task + "');\">" + awoke_task + " (<span class=AwokeNum>" + taskCount + "</span>)" + "</DIV>";
	str		+= "</td>\n<td>";
	str		+= "<DIV class=AwokeButton onClick=\"actMoreBtn('actOasp1001', '" + awoke_calendar + "');\">" + awoke_calendar + " (<span class=AwokeNum>" + calendarCount + "</span>)" + "</DIV>";
	str		+= "</td>\n</tr>\n";
	str		+= "</TABLE>\n";
	str		+= "</DIV>\n";
	obj.innerHTML = str;
	obj.style.padding = 3;
}

//��ݷ�ʽ
function writeQuick(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		//���� ����¼�� ����ʾ
		if(i == maxrecordcount) break;	
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"actMoreBtn('" + record.actFunc + "', '" + record.name + "');\" href=\"#\">" + record.name + "</a>";
		str += "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//�����ϴ��ļ�
function writeFile(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ��2�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a onClick=\"downloadFile2('" + record.file_storage_id + "');\" href=\"#\">" + record.file_name + "</a>";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.asize + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
		str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д��β
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//���ϵ���
function writeVotting(blockDataAry, obj) {
	var votingTitle = blockDataAry.length == 0 ? noVoting : blockDataAry[0].title;
	var singleFlg = false;
	if (blockDataAry.length > 0) {
		singleFlg = !(blockDataAry[0].options == 1);
	}
	//ȡ���Ƿ�����ͶƱ����ֻҪ����Ŀ��Ͷ���Ͳ������ٴ�ͶƱ
	var isAlreadyVoting = false;
	for (var i = 0; i < blockDataAry.length; i++) {
		var record = blockDataAry[i];
		if (!isAlreadyVoting) isAlreadyVoting = record.voter_list.indexOf(";" + userId + ";") > -1;
		if (isAlreadyVoting) break;
	}
	var disabledStr = isAlreadyVoting ? "disabled" : "";
	var str	 = "<ul id=Votting>\n";
	str		+= "<li id=VottingHeader>" + votingTitle + "</li>";
	for (var i = 0; i < blockDataAry.length; i++) {
		var record = blockDataAry[i];
		str	+= "<li>";
		if (singleFlg) {
			str += "<input type=radio value='" + record.voting_detail_id + "' name='vottingOption' " + disabledStr + "> ";
		} else {
			str += "<input type=checkbox value='" + record.voting_detail_id + "' name='vottingOption' " + disabledStr + "> ";
		}
		str += record.item_name + " </li>\n";
	}
	if (blockDataAry.length > 0) {
		str	+= "<li style='padding-top: 5px;'><center>";
		str += "<input class=ButtonStyle name='submitvot' type=button onClick=\"actSubmitVotting('" + record.voting_index_id + "', this);\" value='" + submitVotting + "' " + disabledStr + "> ";
		str += "<input class=ButtonStyle name='viewvot' type=button onClick=\"actViewVotting('" + record.voting_index_id + "');\" value='" + viewVotting + "'> ";
		str += "</center></li>";
	}
	str		+= "</ul>\n";
	obj.innerHTML = str;
	obj.style.padding = 0;
	if(blockDataAry.length > 3) obj.style.height = (blockDataAry.length * 25 + 100) + "px";
}

//��˾����
function writeCompanyAdage(adage, obj) {
	obj.setAttribute("style","height:auto;");
	var adageContent = (adage == null || adage.func_list == null) ? "&nbsp;" : adage.func_list;
	var str	 = "<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=0 WIDTH=100% HEIGHT=100%>";
	str 	+= "<tr height=3><td colspan=5></td></tr>"
	str 	+= "<tr height=5><td width=3px></td><td width=5 class=AdageTopLeft></td>"
	str 	+= "<td class=BlockDetailByAdage></td>"
	str 	+= "<td width=5 class=AdageTopRight></td>"
	str 	+= "<td width=3 ></td>"
	str		+= "</tr><tr>";
	str 	+= "<td width=3px></td>"
	str 	+= "<td class=BlockDetailByAdage></td>";
	str 	+= "<td class=BlockDetailByAdage align=left>" + adageContent + "</td>";
	str 	+= "<td class=BlockDetailByAdage></td>";
	str 	+= "<td width=3px></td>"
	str		+= "</tr><tr height=5>";
	str 	+= "<td width=3px></td>"
	str 	+= "<td width=5 class=AdageBottomLeft></td>"
	str 	+= "<td class=BlockDetailByAdage></td>"
	str 	+= "<td width=5 class=AdageBottomRight></td>"
	str 	+= "<td width=3 ></td>"
	str		+= "</tr><tr>";
	str		+= "<td colspan=5 height=3></td>";
	str		+= "</tr></TABLE>\n";
	obj.innerHTML = str;
	obj.style.padding = 0;
}


//������ַ
function writeUserTools(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ?�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		str += "<a target='_blank' href=\"" + record.link_address + "\">" + record.link_name + "</a>";
		str += "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
		str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д����
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//��Ϣ������
function writeMsg(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ?�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		//�����Ƿ���ʾ[�ö�][��Ҫ]����Ϣ
		if (record.flag == 1) str += toTop;
		if (record.msg_importance == 1) str += importance;
		str += "<a onClick=\"actionMsg('" + record.msg_id + "');\" href=\"#\">" + record.msg_title + "</a>";
		//�����Ƿ���ʾnewͼ��
		if (record.received.indexOf(";" + userId + ";") == -1) {
			str += " <img id='newImg" + record.msg_id + "' border=0 src='" + newImg + "'>";
		}
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>" + record.senddatetime + "</DIV>\n";
		str += "<DIV CLASS=DetailLineName>" + record.sender + "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}

//д����
function writeFoot(blankCount, obj) {
	var str  = "";
	str		+= "<DIV ID=BlockFoot>\n";
	if (blankCount == 0) {
		str += "<DIV ID=BlockFootMore>";
		var functionId = obj.id;
		if (isCompanyColumn(functionId)) {
			// ��˾��Ŀ
			str += "<img border=0 width=9 height=8 src='" + moreImg + "'> ";
			str += "<a href='#' onClick=\"actCompanyColumnMoreBtn('" + functionId + "');\">" + more + "</a>";
			str += "</DIV>"
		} else {
			
			var urlvalue = obj.getAttribute("urlvalue");
			if ("actOasp1903" == urlvalue) urlvalue += '_1'; 
			if (urlvalue != null && urlvalue != "undefined" && urlvalue != "") {
				var urlname = obj.getAttribute("urlname");
				str += "<img border=0 width=9 height=8 src='" + moreImg + "'> ";
			    str += "<a href='#' onClick=\"actMoreBtn('" + urlvalue + "', '" + urlname + "');\">" + more + "</a>";
				str += "</DIV>"
			}
			
			if (functionId != null && functionId.charAt(0) == 'D') {
				// ���ŵ��Զ�����Ŀ
				str += "<img border=0 width=9 height=8 src='" + moreImg + "'> ";
				str += "<a href='#' onClick=\"actDeptCustomColumnMoreBtn('" + functionId + "');\">" + more + "</a>";
				str += "</DIV>"
			}
		}
	}
	str		+= "</DIV>";
	return str;
}

// �ж�fid�ǲ��ǹ�˾���m
function isCompanyColumn(fid) {
	if (fid == "FUNC10000MAX" || fid== "FUNC10001MAX" || fid== "FUNC10002MAX"
			|| fid== "FUNC10003MAX" || fid== "FUNC10004MAX" || fid== "FUNC10005MAX" 
			|| fid== "FUNC11000MAX" || fid== "FUNC11001MAX")
		return true;
	else
		return false;
}

//�ж��Ƿ���Ҫ�������
function getTopFlag(record) {
	if (record.top_flag == null) return "";
	return record.top_flag == 1 ? "[�ö�]" : "";
}


//���񶽰�
function writeMyTask(blockDataAry, obj) {
	//ȡ����ǰ��¼��������¼��
	var currentrecordcount = blockDataAry.length;
	var maxrecordcount = obj.getAttribute("recordcount");
	//�����ǰ��¼����������¼�����������������
	var blankCount = 0;
	if (currentrecordcount < maxrecordcount) blankCount = maxrecordcount - currentrecordcount;
	//д��Ϣ����������ݣ�дʱҪע���������⣺1�����һ����ǰ���е�CSS��ͬ?�����еĴ���
	var str	 = "<DIV ID=BlockDetail>\n";
	str 	+= "<ul>\n";
	for (var i = 0; i < currentrecordcount; i++) {
		var record = blockDataAry[i];
		var cssName;
		if (blankCount > 0) {
			cssName = "DetailLine";
		} else {
			cssName = (i + 1) == currentrecordcount ? "EndDetailLine" : "DetailLine";
		}
		str	+= "<LI class=" + cssName + ">\n";
		str += "<DIV CLASS=DetailLineInfo>";
		str	+= "<img border=0 width=8 height=8 src='" + listImg + "'> ";
		if (record.important == 0) {
			str += calendar0;
		} else if (record.important == 1) {
			str += calendar1;
		} else if (record.important == 2) {
			str += calendar2;
		}
		str += "<a onClick=\"getTask('" + record.task_list_id + "');\" href=\"#\">" + record.title + "</a>";
		str += "</DIV>\n";
		str += "<DIV CLASS=DetailLineTime>";
		str += record.managerName;
		str += "</DIV>\n";
		str	+= "</LI>\n";
	}
	if (blankCount > 0) {
		for (var i = 0; i < blankCount; i++) {
			var cssName = (i + 1) == blankCount ? "EndDetailLine" : "DetailLine";
			str += "<LI class=" + cssName + "><DIV></DIV></LI>\n";
		}
	}
	str 	+= "</ul>\n";
	str 	+= "</DIV>\n";
	//д����
	str 	+= writeFoot(blankCount, obj);
	obj.innerHTML = str;
	obj.style.padding = 0;
}
