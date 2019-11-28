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
    <!-- 引入 Bootstrap -->
    <link href="<%=request.getContextPath()%>/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath()%>/bootstrap/html5shiv.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/respond.min.js"></script>
    <![endif]-->
    <!-- 包括所有已编译的插件 -->
    <script src="<%=request.getContextPath()%>/bootstrap/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/JQuery/jquery-3.3.1.min.js"></script>
    <link href="<%=request.getContextPath()%>/zThree/css/metroStyle/metroStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/zThree/js/jquery.ztree.core.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/zThree/js/jquery.ztree.excheck.min.js"></script>
<script>
    var setting = {
        data: {
            simpleData: {
                enable: true,
                idKey:"id",
                pIdKey:"pid"
            }
        },
        view:{
            //禁用多选节点
            selectedMulti:false
        },
        check:{
            enable:true
        }
    };


    $(function(){
        init();
    });
    var treeObj;
    function init(){
        //发送一个ajax请求，查询出所有的权限集合
        $.ajax({
            url:"<%=request.getContextPath()%>/role/queryRolePermissionList.do",
            type:"post",
            dataType:"json",
            data:{"id":"${roleId}"},
            success:function(result){
                treeObj = $.fn.zTree.init($("#permission"), setting, result);
                treeObj.expandAll(true);
            },
            error:function(){
                alert("请求失败!");
            }
        });
    };

    //关联权限
    function relevancePermission(){
        //获取被选中的节点集合
        var arr = treeObj.getCheckedNodes();
        var permissionIds = "";
        for(var i = 0;i<arr.length;i++){
            //获取被选中的节点的权限Id
            permissionIds += arr[i].id + ",";
        };
        permissionIds = permissionIds.substring(0,permissionIds.length-1);
        alert(permissionIds);
        $.ajax({
            url:"<%=request.getContextPath()%>/role/updateRolePermission.do",
            type:"post",
            dataType:"text",
            data:{
                "id":"${roleId}","permissionIds":permissionIds
            },
            success:function(result){
                alert("关联成功!")
            },
            error:function(){
                alert("关联失败!")
            }
        });
    };

</script>
</head>
<body>

<br/><br/>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">权限列表</h3>
                </div>
                <div class="panel-body">
                    <ul id="permission" class="ztree"></ul>
                    <div class="row">
                        <div class="col-lg-12" style="margin-top: 15px;padding-left: 60px">
                            <input onclick="relevancePermission()" type="button" class="btn btn-primary" value="关联"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


</body>
</html>
