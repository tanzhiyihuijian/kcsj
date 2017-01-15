<%--
  Created by IntelliJ IDEA.
  User: 王波
  Date: 2016/12/26
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BootStrap介绍</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">

</head>
<body>

<%--

<form role="form">
    <div class="form-group">
        <label for="name">名称</label>
        <input type="text" class="form-control" id="name" placeholder="请输入名称">
    </div>
    <div class="form-group">
        <label for="inputfile">文件输入</label>
        <input type="file" id="inputfile">
        <p class="help-block">这里是块级帮助文本的实例。</p>
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox">请打勾
        </label>
    </div>
    <button type="submit" class="btn btn-default">提交</button>
</form>
--%>


<%--

<form action="" class="form-inline" role="form" >
    <div class="form-group">
        <label class="sr-only" for="name">name</label>
        <input type="text" class="form-control" id="name" placeholder="请输入名称" />
    </div>
    <div class="form-group">
        <label for="inputfile" class="sr-only">文件输入</label>
        <input type="file" id="inputfile" />
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox">请打勾
        </label>
    </div>
    <button type="submit" class="btn btn-default">提交</button>
</form>
--%>

<%--
1. 默认情况下, Bootstrap中的 input, select, textarea有 100%的宽度, 在使用内联表单时, 需要在表单控件上设置一个宽度
2. 使用 class = "sr-only", 可以隐藏内联表单的标签



--%>


<form action="" class="form-horizontal" role="form" >
    <div class="form-group">
        <label class="col-sm-2 control-label" for="firstname">名字</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="firstname" placeholder="请输入名称" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="lastname">姓</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="lastname" placeholder="请输入姓">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
                <label>
                    <input type="checkbox">请记住我
                </label>
            </div>
        </div>
    </div>

    <div class="from-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">登陆</button>
        </div>
    </div>

</form>












<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>

</body>
</html>