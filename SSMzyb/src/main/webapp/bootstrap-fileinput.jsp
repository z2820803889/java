<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/9/4
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/bootstrap-fileinput-master/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap-fileinput-master/js/fileinput.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/bootstrap-fileinput-master/js/locales/zh.js" type="text/javascript"></script>

<script>
    function downLoad1(){
        location.href="<%=request.getContextPath()%>/upload/downLoad.do"
    };


</script>
</head>
<body>

    <input id="uploadfile" name="file" type="file" class="file" multiple>
    <input type="button" value="下载" class="btn btn-primary" onclick="downLoad1()"><br/>
    <img src="http://192.168.146.129/61361378.gif" width="100px"/>

</body>

<script>
    $("#uploadfile").fileinput({

        language: 'zh', //设置语言

        uploadUrl:"<%=request.getContextPath()%>/upload/nginxUploadFile.do", //上传的地址

        allowedFileExtensions: ['jpg', 'gif', 'png','xlsx','xls'],//接收的文件后缀

        //uploadExtraData:{"id": 1, "fileName":'123.mp3'},

        uploadAsync: true, //默认异步上传

        showUpload:true, //是否显示上传按钮

        showRemove :true, //显示移除按钮

        showPreview :true, //是否显示预览

        showCaption:false,//是否显示标题

        browseClass:"btn btn-primary", //按钮样式

        dropZoneEnabled: false,//是否显示拖拽区域

        //minImageWidth: 50, //图片的最小宽度

        //minImageHeight: 50,//图片的最小高度

        //maxImageWidth: 1000,//图片的最大宽度

        //maxImageHeight: 1000,//图片的最大高度

        //maxFileSize:0,//单位为kb，如果为0表示不限制文件大小

        //minFileCount: 0,

        maxFileCount:10, //表示允许同时上传的最大文件个数

        enctype:'multipart/form-data',

        validateInitialCount:true,

        previewFileIcon: "<iclass='glyphicon glyphicon-king'></i>",

        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",

    }).on("fileuploaded", function (event, data, previewId, index){
        alert(data.response.status);


    })


</script>
</html>
