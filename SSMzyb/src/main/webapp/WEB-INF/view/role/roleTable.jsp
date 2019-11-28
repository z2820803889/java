<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/9/2
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<head>
    <title>Title</title>

    <link href="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/bootstrap-fileinput-master/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap-fileinput-master/js/fileinput.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/bootstrap-fileinput-master/js/locales/zh.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/respond.min.js"></script>
<script>

    function updateUserRole(){
        if(confirm("您确认修改吗?")){
            $("#form1").submit();
        };

    };

    function toRolePermission(id){
        location.href="<%=request.getContextPath()%>/role/toRolePermission.do?roleId=" + id;
    };

    function importExcel(){
        var arr = $("[name=sheetName]:checked");
        if(arr.length==0){
            alert("请选择要导入的表!");
        }else{
            var sheetNames = "";
            var fileName = $("#fileName").val();
            for(var i=0;i<arr.length;i++){
                sheetNames += "," + arr[i].value ;
            };
            sheetNames = sheetNames.substring(1);
            alert(sheetNames);
            alert(fileName);
            $.ajax({
                url:"<%=request.getContextPath()%>/role/importExcelAddRole.do",
                type:"post",
                dataType:"json",
                data:{"fileName":fileName,sheetNames:sheetNames},
                success:function (result) {
                    alert(result.status);
                    $('#myModal').modal('hide');
                    $('#uploadfile').fileinput('clear').fileinput('unlock');
                    $('#uploadfile').parent().siblings('.fileinput-remove').hide();

                },
                error:function(){
                    alert("导入请求失败!");
                }
            });
        };
    };

    function deleteExcel(){
        var fileName = $("#fileName").val();
        alert(fileName);
        $.ajax({
            url:"<%=request.getContextPath()%>/role/deleteExcel.do",
            type:"post",
            dataType:"text",
            data:{"fileName":fileName},
            success:function (result) {
                $('#uploadfile').fileinput('clear').fileinput('unlock');
                $('#uploadfile').parent().siblings('.fileinput-remove').hide();
            },
            error:function(){

            }
        });
    };
</script>
</head>
<body>

<div class="row" >
    <div class="col-lg-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">角色展示</h3>
            </div>
            <div class="panel-body">
                <div class="col-lg-12">
                    <div class="row" >
                        <div class="col-lg-12">

                            <div style="border-bottom: 1px solid black;padding-bottom: 10px">
                                <b style="font-size: 20px">导入Excel:</b><input id="uploadfile" name="file" type="file" value="导入Excel">
                            </div>
                            <table class="table table-striped">
                                <caption>角色列表</caption>
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>角色名称</th>
                                    <th>创建时间</th>
                                    <th>修改时间</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="role" varStatus="status">
                                    <tr>
                                        <td>
                                            ${status.count}
                                        </td>
                                        <td>${role.name}</td>
                                        <td>
                                            <f:formatDate value="${role.createTime}" pattern="yyyy-MM-dd HH:mm:ss" ></f:formatDate>
                                        </td>
                                        <td>
                                            <f:formatDate value="${role.updateTime}" pattern="yyyy-MM-dd HH:mm:ss" ></f:formatDate>
                                        </td>
                                        <td>
                                            <input type="button" class="btn btn-primary" value="管理权限" onclick="toRolePermission(${role.id})"/>
                                            <input type="button" class="btn btn-primary" value="修改"/>
                                            <input type="button" class="btn btn-primary" value="删除" />
                                        </td>
                                    </tr>
                                </c:forEach>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>




<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">请选择要导入的表</h4>
            </div>
            <div class="modal-body" id="sheetDiv">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="importExcel()">导入</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="deleteExcel()">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


</body>
<script>
    $("#uploadfile").fileinput({

        language: 'zh', //设置语言

        uploadUrl:"<%=request.getContextPath()%>/role/importExcel.do", //上传的地址

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

        maxFileCount:1, //表示允许同时上传的最大文件个数

        enctype:'multipart/form-data',

        validateInitialCount:true,

        previewFileIcon: "<iclass='glyphicon glyphicon-king'></i>",

        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",

        layoutTemplates:{
            actionUpload:'',//删除缩略图下面的小上传
        }

    }).on("fileuploaded", function (event, data, previewId, index){
        var sheetChebox = "";
        for(var i=0;i<data.response.sheetName.length;i++){
            sheetChebox += "<input type='checkbox' name='sheetName' value='"+ data.response.sheetName[i]+"'/>" +  data.response.sheetName[i] + "&nbsp ";
        };
        sheetChebox =  sheetChebox + "<input type='hidden' id='fileName' value='"+ data.response.fileName + "'/>"
        $("#sheetDiv").html(sheetChebox);
        $('#myModal').modal('show');


    })


</script>
<script>
    $('#myModal').modal({
        show: false,
        keyboard: false,
        backdrop: 'static',
    })
</script>

</html>
