var chasm = screen.availWidth;
var mount = screen.availHeight;
var w = 500;
var h = 300;
var m_name;
var m_showName;
var m_idList;
var m_ctrl;
var openFlg = true;

function show0219(nameElement, showNameElement, idElement, ctrlStr) {
    /*
        //不再自动填写手机短信收件人
        try{
            if (document.all.idListsms.value == "") {
                if (document.all.idListreceive.value != "") {
                    var idList = document.all.idListreceive.value;
                    document.all.idListsms.value = idList;
                    var nameList = document.all.nameListreceive.value;
                    document.all.nameListsms.value = nameList;
                    var showName = document.all.showNamereceive.value;
                    document.all.showNamesms.value = showName;
                }
            }
        }  catch (ex) {
        }
    */
    m_name = nameElement;
    m_showName = showNameElement;
    m_idList = idElement;
    m_ctrl = ctrlStr;
    var winWidth = window.screen.availWidth;
    var winHeight = window.screen.availHeight;
    var pleft = (winWidth - 520) / 2;
    var ptop = (winHeight - 500) / 2;
    var varOption = "dependent,toolbar=no,location=no,status=no,menubar=no,resizable=no,scrollbars=no,width=520px,height=500px,left=" + pleft + ",top=" + ptop + ";";

    var gotoUrl = document.getElementById('autoHref').href;
    try {
        if (gotoUrl.indexOf("Oasp1212") > -1){
            document.getElementById('isAll').value="true";
            gotoUrl = gotoUrl + "?&ISALL=right";
        }
    } catch (ex) {}

    var getValue = window.open(gotoUrl, "selectorPersonWin", varOption);
}

function saveWin(linkType) {
    try {
        var html = eWebEditor.getHTML ();
        var hostAdd = window.location.protocol + "//" + window.location.host;
        var findSite = html.indexOf(hostAdd);
        while(findSite > -1) {
            html = html.substring(0, findSite) + html.substring(findSite + hostAdd.length);
            Site = html.indexOf(hostAdd);
        }
        document.all.contentMemo.value = html;
    } catch(ex){}
    //	if (document.HTMLEditor != null) save();
    if (document.all("TANGER_OCX") != null) savedoc();
    submitButton(linkType);
}


function save() {
}