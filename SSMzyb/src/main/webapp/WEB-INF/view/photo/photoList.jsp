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

<script src="<%=request.getContextPath()%>/bootstrap/html5shiv.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap/respond.min.js"></script>
<script>
    var userId = '${loginUser.id}';
    var pId ;
    var photoPas;
    $(function(){
        jump(1);
    });

    function jump(index){
        $.ajax({
            url:"<%=request.getContextPath()%>/photo/queryPhotoListByUserId.do",
            type:"post",
            dataType:"html",
            data:{"strIndex":index,"userId":userId},
            success:function(result){
                $("#photoDiv").html(result);
            },
            error:function(){
                alert("分页查询失败!");
            }
        });

    };

    function checkPssword(photoId){
        pId = photoId
        $.ajax({
            url:"<%=request.getContextPath()%>/photo/queryPhotoListById.do",
            type:"post",
            dataType:"json",
            data:{"id":photoId},
            success:function(result){
                alert("密码:"+result.password)
                if(result.password == null || result.password == ""){
                        tophotoGraphList(photoId,"");
                }else{
                    photoPas = result.password;
                    $('#myModal').modal('show');
                };
            },
            error:function(){

            }
        });
    };

    function checkPas(){

        var pas = $("#password").val();
        if(photoPas == pas){
            $("span").css("color","green").html("密码正确");
            tophotoGraphList(pId,pas)
            $('#myModal').modal('hide');
        }else{
            $("span").css("color","red").html("密码错误");
        };

    };

    function clearPas(){
        $("#password").val("");
        $("span").html("");
    };

    function tophotoGraphList(photoId,password){
        location.href="<%=request.getContextPath()%>/photoGraph/tophotoGraphList.do?photoId=" + photoId + "&photoPassword=" + password;
    };

    function downLoadImgZip(){
        location.href="<%=request.getContextPath()%>/photoGraph/downLoadImgZip.do?userId=" + userId;
    };
</script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="panel panel-info" style="margin: 20px">
    <div class="panel-heading">
        <h3 class="panel-title">相册列表</h3>
    </div>
    <div class="panel-body">

        <button type="button" class="btn btn-primary" style="margin: 0px 20px 0px 40px;">创建相册</button>
        <button type="button" class="btn btn-primary" onclick="downLoadImgZip()">下载全部图片</button>
        <div id="photoDiv"></div>
    </div>
</div>



    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">该相册已被锁定,请输入密码</h4>
                </div>
                <div class="modal-body" >
                    <input type="password" id="password" class="form-control" AUTOCOMPLETE="off" placeholder="请输入密码"/><br/>
                    <span></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="checkPas()">确定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" onclick="clearPas()">取消</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

</body>
<script src="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
<script>
    $('#myModal').modal({
        show: false,
        keyboard: false,
        backdrop: 'static',
    })

</script>
</html>
