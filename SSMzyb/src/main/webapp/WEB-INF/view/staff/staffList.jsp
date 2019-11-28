<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/9/2
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
    <link href="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/bootstrap-fileinput-master/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="<%=request.getContextPath()%>/bootstrap-3.3.7/docs/dist/js/bootstrap.js"></script>
    <link href="<%=request.getContextPath()%>/bootstrap-3.3.7/docs/dist/js/bootstrap-datetimepicker.css" rel="stylesheet">

    <script src="<%=request.getContextPath()%>/bootstrap/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/respond.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/moment-with-locales.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap-fileinput-master/js/fileinput.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/bootstrap-fileinput-master/js/locales/zh.js" type="text/javascript"></script>
<script>
    $(function(){
        jump(1);
    })

    function jump(index){
        $.ajax({
            url:"<%=request.getContextPath()%>/staff/queryStaffList.do",
            type:"post",
            dataType:"html",
            data:{
                strIndex:index,
                startCreateTime:$("#startCreateTime").val(),
                endCreateTime:$("#endCreateTime").val(),
                startWage:$("#startWage").val(),
                endWage:$("#endWage").val()
            },
            success:function (result) {
                $("#dataDiv").html(result);
            },
            error:function () {
                
            }
        });
    };

    function hidSpan(id,obj){
        $(obj).css("display","none");
        $("#h_"+id).css("display","");
        $("#h_"+id).focus().select();
    };


    function updateWage(id,obj){
        $(obj).css("display","none");
        $("#s_"+id).html(obj.value);
        $("#s_"+id).css("display","");
        $.ajax({
            url:"<%=request.getContextPath()%>/staff/updateWage.do",
            type:"post",
            dataType:"text",
            data:{
                "id":id,
                "wage":obj.value
            },
            success:function(result){

            },
            error:function (){

            }
          }
        );
    };
</script>
</head>
<body>
<div class="container" style="margin-top: 30px">
    <div class="row" >
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">员工展示</h3>
                </div>
                <div class="panel-body">
                    <div class="col-lg-12">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="lastname" class="col-sm-2 control-label" >入职日期</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="startCreateTime" placeholder="请输入开始入职日期">
                                </div>
                                <div  style="padding:5px 0px 0px 0px;float: left;margin-right: 10px">
                                    <p>-----</p>
                                </div>
                                <div class="col-sm-2" style="margin:0;padding: 0">
                                    <input type="text" class="form-control" id="endCreateTime" placeholder="请输入结束入职日期">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-sm-2 control-label" >薪资</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="startWage" placeholder="请输入最低薪资">
                                </div>
                                <div  style="padding:5px 0px 0px 0px;float: left;margin-right: 10px">
                                    <p>-----</p>
                                </div>
                                <div class="col-sm-2" style="margin:0;padding: 0">
                                    <input type="text" class="form-control" id="endWage" placeholder="请输入最高薪资">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" onclick="jump(1)" class="btn btn-primary btn-lg">查询</button>
                                </div>
                            </div>
                        </form>

                        <div style="border-bottom: 1px solid #ccc;margin-bottom: 10px" class="col-lg-12"></div>
                            <b style="font-size: 20px">导入Excel:</b><input id="uploadfile" name="file" type="file" value="导入Excel">
                        <div style="border-bottom: 1px solid #ccc;margin-bottom: 10px;margin-top: 10px"></div>

                    </div>


                        <div id="dataDiv" class="col-sm-12">

                        </div>

                </div>
            </div>
        </div>
    </div>
</div>



</body>
<!--时间插件样式-->
<script>
    //给对应的input框 绑定bootstrap-datetime 样式
    var beginDate  = $("#startCreateTime").val();
    $("#startCreateTime").datetimepicker({
        //设置日期格式
        format: 'YYYY-MM-DD',
        //设置为中文 默认是英文
        locale: moment.locale('zh-CN'),
    })
    //给对应的input框 绑定bootstrap-datetime 样式
    $("#endCreateTime").datetimepicker({
        //设置日期格式
        format: 'YYYY-MM-DD',
        //设置为中文 默认是英文
        locale: moment.locale('zh-CN'),
    })
</script>
<script>
    $("#uploadfile").fileinput({

        language: 'zh', //设置语言

        uploadUrl:"<%=request.getContextPath()%>/staff/importExcel.do", //上传的地址

        allowedFileExtensions: ['xlsx','xls'],//接收的文件后缀

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
