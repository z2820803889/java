<%--
  Created by IntelliJ IDEA.
  User: 116811
  Date: 2019/8/29
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 引入 Bootstrap -->
    <%--<link href="bootstrap/bootstrap.min.css" rel="stylesheet">

    <link href="bootstrap/bootstrap-datetimepicker.min.css" rel="stylesheet">
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
    <script src="bootstrap/moment-with-locales.js"></script>
    <script src="bootstrap/bootstrap-datetimepicker.min.js"></script>--%>

    <link href="bootstrap/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/bootstrap-3.3.7/dist/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/bootstrap-3.3.7/docs/dist/js/bootstrap.js"></script>
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/moment-with-locales.js"></script>
    <script src="bootstrap/bootstrap-datetimepicker.min.js"></script>



</head>
<body>








<div class="row">
    <div class='col-sm-6'>
        <div class="form-group">
            <label>选择开始时间：</label>
            <!--指定 date标记-->
            <div class='input-group date' id='datetimepicker1'>
                <input type='text' class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>
    <div class='col-sm-6'>
        <div class="form-group">
            <label>选择结束时间：</label>
            <!--指定 date标记-->
            <div class='input-group date' id='datetimepicker2'>
                <input type='text' class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>
</div>



<div class="btn-toolbar" role="toolbar">
    <div class="btn-group">
        <button type="button" class="btn btn-default">按钮 1</button>
        <button type="button" class="btn btn-default">按钮 2</button>
        <button type="button" class="btn btn-default">按钮 3</button>
    </div>
</div>



<div style="padding: 100px 100px 10px;">
    <form class="bs-example bs-example-form" role="form">
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                    </span>
                    <input type="text" class="form-control">
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
            <br>
            <div class="col-lg-6">
                <div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                    </span>
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
    </form>
</div>



<img src="img/111.jpg" class="img-rounded" width="100px" height="100px">
<img src="img/111.jpg" class="img-circle" width="100px" height="100px">
<img src="img/111.jpg" class="img-thumbnail" width="100px" height="100px">

<!-- 标准的按钮 -->
<button type="button" class="btn btn-default">默认按钮</button>
<!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
<button type="button" class="btn btn-primary">原始按钮</button>
<!-- 表示一个成功的或积极的动作 -->
<button type="button" class="btn btn-success">成功按钮</button>
<!-- 信息警告消息的上下文按钮 -->
<button type="button" class="btn btn-info">信息按钮</button>
<!-- 表示应谨慎采取的动作 -->
<button type="button" class="btn btn-warning">警告按钮</button>
<!-- 表示一个危险的或潜在的负面动作 -->
<button type="button" class="btn btn-danger">危险按钮</button>
<!-- 并不强调是一个按钮，看起来像一个链接，但同时保持按钮的行为 -->
<button type="button" class="btn btn-link">链接按钮</button>

&lt;%&ndash;点击超链接弹出确认窗&ndash;%&gt;
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button id="modal-880727" href="#modal-container-880727" data-toggle="modal" type="button" class="btn btn-info">测试弹出确认框</button>
            <div class="modal fade" id="modal-container-880727" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h1 class="modal-title" id="myModalLabel">
                                恭喜!!!
                            </h1>
                        </div>
                        <div class="modal-body">
                            你妈死啦
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button><button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>





<div class="panel-group" id="accordion">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapseOne">
                    点击我进行展开，再次点击我进行折叠。第 1 部分
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">
                Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                vice lomo.
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapseTwo">
                    点击我进行展开，再次点击我进行折叠。第 2 部分
                </a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse">
            <div class="panel-body">
                Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                vice lomo.
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapseThree">
                    点击我进行展开，再次点击我进行折叠。第 3 部分
                </a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse">
            <div class="panel-body">
                Nihil anim keffiyeh helvetica, craft beer labore wes anderson
                cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
                vice lomo.
            </div>
        </div>
    </div>
</div>




<div class="btn-group" data-toggle="buttons">
    <label class="btn btn-primary">
        <input type="checkbox"> 选项 1
    </label>
    <label class="btn btn-primary">
        <input type="checkbox"> 选项 2
    </label>
    <label class="btn btn-primary">
        <input type="checkbox"> 选项 3
    </label>
</div>


<h2>点击每个按钮查看方法效果</h2>
<h4>演示 .button('toggle') 方法</h4>
<div id="myButtons1" class="bs-example">
    <button type="button" class="btn btn-primary">原始</button>
</div>

<h4>演示 .button('loading') 方法</h4>
<div id="myButtons2" class="bs-example">
    <button type="button" class="btn btn-primary"
            data-loading-text="Loading...">原始
    </button>
</div>

<h4>演示 .button('reset') 方法</h4>
<div id="myButtons3" class="bs-example">
    <button type="button" class="btn btn-primary"
            data-loading-text="Loading...">原始
    </button>
</div>

<h4>演示 .button(string) 方法</h4>
<button type="button" class="btn btn-primary" id="myButton4"
        data-complete-text="Loading finished">请点击我
</button>
<script>
    $(function () {
        $("#myButtons1 .btn").click(function(){
            $(this).button('toggle');
        });
    });
    $(function() {
        $("#myButtons2 .btn").click(function(){
            $(this).button('loading').delay(1000).queue(function() {
            });
        });
    });
    $(function() {
        $("#myButtons3 .btn").click(function(){
            $(this).button('loading').delay(1000).queue(function() {
                $(this).button('reset');
            });
        });
    });
    $(function() {
        $("#myButton4").click(function(){
            $(this).button('loading').delay(1000).queue(function() {
                $(this).button('complete');
            });
        });
    });
</script>


<div class="container" style="padding: 100px 50px 10px;" >
    <button type="button" class="btn btn-default" title="Popover title"
            data-container="body" data-toggle="popover" data-placement="left"
            data-content="左侧的 Popover 中的一些内容">
        左侧的 Popover
    </button>
    <button type="button" class="btn btn-primary" title="Popover title"
            data-container="body" data-toggle="popover" data-placement="top"
            data-content="顶部的 Popover 中的一些内容">
        顶部的 Popover
    </button>
    <button type="button" class="btn btn-success" title="Popover title"
            data-container="body" data-toggle="popover" data-placement="bottom"
            data-content="底部的 Popover 中的一些内容">
        底部的 Popover
    </button>
    <button type="button" class="btn btn-warning" title="Popover title"
            data-container="body" data-toggle="popover" data-placement="right"
            data-content="右侧的 Popover 中的一些内容">
        右侧的 Popover
    </button>
</div>

<script>
    $(function (){
        $("[data-toggle='popover']").popover();
    });
</script>
</div>

<div class="jumbotron">
    <div class="container">
        <h1>欢迎登陆页面！</h1>
        <p>这是一个超大屏幕（Jumbotron）的实例。</p>
        <p><a class="btn btn-primary btn-lg" role="button">
            学习更多</a>
        </p>
    </div>
</div>
<script>

    $('#modal-container-880727').modal({backdrop: 'static', keyboard: false});
</script>
</body>
</html>
