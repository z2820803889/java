<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/8/29
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>123456</title>

    <!-- 引入 Bootstrap -->
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="bootstrap/html5shiv.js"></script>
    <script src="bootstrap/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="bootstrap/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="bootstrap/bootstrap.min.js"></script>
</head>
<body style="background-color: #5e5e5e">

<%--头部--%>
<nav class="navbar navbar-inverse" style="margin: 0">
    <div class="container-fluid">
        <div class="navbar-header" style="float: left">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">杨浩东的后台管理系统</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar"  style="float: left">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">主页</a></li>
                <li><a href="#">消息</a></li>
                <li><a href="#">邮件</a></li>
                <li><a href="#">待办事项</a></li>
            </ul>
        </div>
        <div style="float: right">
            <ul class="nav navbar-nav">
                <li>
                    <img src="img/111.jpg" class="img-circle" width="50px" height="50px">
                </li>
                <li><a href="#">您好, 杨浩东(超级管理员)</a></li>
                <li><a href="#">个人管理</a></li>
                <li><a href="#">退出登录</a></li>
            </ul>
        </div>
    </div>
</nav>



<%--左--%>

<div style="width: 18%;float: left;padding-top: 20px">
        <div style="width: 250px">
            <div class=" alert alert-info" style="color: #FFFFFF;background-color: #343434;width:250px;height:35px;padding-top:0px;padding-left:0;margin-bottom:0;margin-top:10px">
                <button type="button" style="color: #FFFFFF;" class=" btn btn-link" data-toggle="collapse" data-target="#demo1"><span class=" glyphicon glyphicon-plus"></span></button>
                <span>模块管理</span>
            </div>



            <div id="demo1" class="collapse in" style=" margin-left:40px;margin-bottom:10px;margin-top:0px">


                <div class=" alert alert-info"  style="color: #FFFFFF;background-color: #343434;margin-top:10px; width:210px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                    <button type="button" style="color: #FFFFFF;" class=" btn btn-link" data-toggle="collapse" data-target="#demo2"><span class=" glyphicon glyphicon-plus"></span></button>
                    <span>班级管理</span>
                </div>
                    <div id="demo2" class="collapse in" style="color: #FFFFFF;background-color: #343434;margin-left:40px;margin-bottom:10px;margin-top:0px">
                        <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                            <span>新增班级</span>
                        </div>
                        <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                            <span>班级列表</span>
                        </div>
                    </div>



                <div class=" alert alert-info"  style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:210px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                    <button type="button" style="color: #FFFFFF;" class=" btn btn-link" data-toggle="collapse" data-target="#demo3"><span class=" glyphicon glyphicon-plus"></span></button>
                    <span>学生管理</span>
                </div>
                <div id="demo3" class="collapse in" style=" color: #FFFFFF;background-color: #343434;margin-left:40px;margin-bottom:10px;margin-top:0px">
                    <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                        <span>新增学生</span>
                    </div>
                    <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                        <span>学生列表</span>
                    </div>
                </div>

                <div class=" alert alert-info"  style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:210px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                    <button type="button" style="color: #FFFFFF;" class=" btn btn-link" data-toggle="collapse" data-target="#demo4"><span class=" glyphicon glyphicon-plus"></span></button>
                    <span>地区管理</span>
                </div>
                <div id="demo4" class="collapse in" style=" color: #FFFFFF;background-color: #343434;margin-left:40px;margin-bottom:10px;margin-top:0px">
                    <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                        <span>新增地区</span>
                    </div>
                    <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                        <span>地区列表</span>
                    </div>
                </div>

                <div class=" alert alert-info"  style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:210px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                    <button type="button" style="color: #FFFFFF;" class=" btn btn-link" data-toggle="collapse" data-target="#demo5"><span class=" glyphicon glyphicon-plus"></span></button>
                    <span>类型管理</span>
                </div>
                <div id="demo5" class="collapse in" style=" color: #FFFFFF;background-color: #343434;margin-left:40px;margin-bottom:10px;margin-top:0px">
                    <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                        <span>新增类型</span>
                    </div>
                    <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                        <span>类型列表</span>
                    </div>
                </div>

                <div class=" alert alert-info"  style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:210px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                    <button type="button" style="color: #FFFFFF;" class=" btn btn-link" data-toggle="collapse" data-target="#demo6"><span class=" glyphicon glyphicon-plus"></span></button>
                    <span>地区管理</span>
                </div>
                <div id="demo6" class="collapse in" style=" color: #FFFFFF;background-color: #343434;margin-left:40px;margin-bottom:10px;margin-top:0px">
                    <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                        <span>新增地区</span>
                    </div>
                    <div class=" alert alert-info" style=" color: #FFFFFF;background-color: #343434;margin-top:10px; width:170px; height:35px; padding-top:7px; padding-left:15px; margin-bottom:0">
                        <span>地区列表</span>
                    </div>
                </div>



            </div>
        </div>
    </div>
</div>


<div style="width: 80%;float: left;padding-top: 60px;padding-bottom: 100px">
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label for="firstname" class="col-sm-2 control-label" style="color: #FFFFFF">班级名</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="firstname" placeholder="请输入班级名">
                </div>
            </div>
            <div class="form-group">
                <label for="lastname" class="col-sm-2 control-label" style="color: #FFFFFF">开学日期</label>
                <div class="col-sm-2">
                    <input type="text" class="form-control" id="lastname" placeholder="请输入开学日期">
                </div>
                <div  style="padding:5px 0px 0px 0px;float: left;margin-right: 10px">
                   <p style="color: #FFFFFF">-----</p>
                </div>
                <div class="col-sm-2" style="margin:0;padding: 0">
                    <input type="text" class="form-control" id="lastname2" placeholder="请输入开学日期">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default" style="background-color: #343434;color: #FFFFFF">查询</button>
                </div>
            </div>
        </form><br/>



        <table class="table table-striped">
            <thead>
            <tr>
                <th  Style="color: #FFFFFF">班级名称</th>
                <th  Style="color: #FFFFFF">开学日期</th>
                <th Style="color: #FFFFFF">操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1903B</td>
                <td>2019-8-29</td>
                <td>
                    <button style="background-color: #343434;color: #FFFFFF" type="button" class="btn btn-default">修改</button>
                    <button style="background-color: #343434;color: #FFFFFF" type="button" class="btn btn-default">删除</button>

                </td>
            </tr>
            <tr>
                <td Style="color: #FFFFFF">1811A</td>
                <td Style="color: #FFFFFF">2018-8-8</td>
                <td>
                    <button style="background-color: #FFFFFF;color:#343434" type="button" class="btn btn-default">修改</button>
                    <button style="background-color: #FFFFFF;color: #343434" type="button" class="btn btn-default">删除</button>
                </td>
            </tr>
            <tr>
                <td>1903A</td>
                <td>2019-7-23</td>
                <td>
                    <button style="background-color: #343434;color: #FFFFFF" type="button" class="btn btn-default">修改</button>
                    <button style="background-color: #343434;color: #FFFFFF" type="button" class="btn btn-default">删除</button>
                </td>
            </tr>
            <tr>
                <td Style="color: #FFFFFF">1811A</td>
                <td Style="color: #FFFFFF">2018-8-8</td>
                <td>
                    <button style="background-color: #FFFFFF;color:#343434" type="button" class="btn btn-default">修改</button>
                    <button style="background-color: #FFFFFF;color: #343434" type="button" class="btn btn-default">删除</button>
                </td>
            </tr>
            <tr>
                <td>1903A</td>
                <td>2019-7-23</td>
                <td>
                    <button style="background-color: #343434;color: #FFFFFF" type="button" class="btn btn-default">修改</button>
                    <button style="background-color: #343434;color: #FFFFFF" type="button" class="btn btn-default">删除</button>
                </td>
            </tr><tr>
                <td Style="color: #FFFFFF">1811A</td>
                <td Style="color: #FFFFFF">2018-8-8</td>
                <td>
                    <button style="background-color: #FFFFFF;color:#343434" type="button" class="btn btn-default">修改</button>
                    <button style="background-color: #FFFFFF;color: #343434" type="button" class="btn btn-default">删除</button>
                </td>
            </tr>
            <tr>
                <td>1903A</td>
                <td>2019-7-23</td>
                <td>
                    <button style="background-color: #343434;color: #FFFFFF" type="button" class="btn btn-default">修改</button>
                    <button style="background-color: #343434;color: #FFFFFF" type="button" class="btn btn-default">删除</button>
                </td>
            </tr>



            </tbody>
        </table>

        <ul class="pagination" style="float: right;margin-right: 100px">
            <li><a href="#" style="color: #FFFFFF;background-color: #343434">&laquo;</a></li>
            <li><a href="#" style="color: #FFFFFF;background-color: #343434">1</a></li>
            <li><a href="#" style="color: #FFFFFF;background-color: #343434">2</a></li>
            <li><a href="#" style="color: #FFFFFF;background-color: #343434">3</a></li>
            <li><a href="#" style="color: #FFFFFF;background-color: #343434">4</a></li>
            <li><a href="#" style="color: #FFFFFF;background-color: #343434">5</a></li>
            <li><a href="#" style="color: #FFFFFF;background-color: #343434">&raquo;</a></li>
        </ul>



</div>










<div class="jumbotron text-center" style="margin-bottom:0;clear: left">
    <p>底部内容</p>
</div>

</body>
</html>
