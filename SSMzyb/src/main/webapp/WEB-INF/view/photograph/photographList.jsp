<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/9/10
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
<link href="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/bootstrap-fileinput-master/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
<script src="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap-fileinput-master/js/fileinput.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/bootstrap-fileinput-master/js/locales/zh.js" type="text/javascript"></script>

<script>
    var photoId = '${photoId}';
    $(function(){
        jump(1);
    });

    function jump(index){
        $.ajax({
            url:"<%=request.getContextPath()%>/photoGraph/queryphotoGraphListByPhotoId.do",
            type:"post",
            dataType:"html",
            data:{"strIndex":index,"photoId":photoId,"pageSize":10},
            success:function(result){
                $("#photoGraphDiv").html(result);
            },
            error:function(){

            }
        });

    };

    function updateCover(photoId,url){
        $.ajax({
            url:"<%=request.getContextPath()%>/photo/updateCover.do",
            type:"post",
            dataType:"json",
            data:{"photoId":photoId,"url":url},
            success:function(result){
                alert(result.status)
            },
            error:function(){

            }
        });
    };
</script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="panel panel-info" style="margin: 20px">
    <div class="panel-heading">
        <h3 class="panel-title">照片列表</h3>
    </div>
    <div class="panel-body">

        <div style="margin-left: 30px">
            上传照片:
            <input id="uploadfile" name="file" type="file" class="file" multiple/>
        </div>


        <div id="photoGraphDiv"></div>
    </div>
</div>





</body>

<script>

    $("#uploadfile").fileinput({

        language: 'zh', //设置语言

        uploadUrl:"<%=request.getContextPath()%>/photoGraph/uploadImg.do", //上传的地址

        allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀

        uploadExtraData:{"photoId": photoId},

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

        msgFilesTooMany: "5",

        layoutTemplates:{
            actionUpload:'',//删除缩略图下面的小上传
        }

    }).on("fileuploaded", function (event, data, previewId, index){

        $('#uploadfile').fileinput('clear').fileinput('unlock');
        $('#uploadfile').parent().siblings('.fileinput-remove').hide();

        alert(data.response.status);

        jump(1);
    })


</script>
</html>
