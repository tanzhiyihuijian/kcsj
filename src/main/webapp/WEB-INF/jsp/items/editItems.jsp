<%--
  Created by IntelliJ IDEA.
  User: 王波
  Date: 2016/12/22
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>


<html>
<head>
    <title>itemsList.jsp</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">


</head>
<body>

<h3>商品信息修改</h3>

<form action="" class="form-horizontal" role="form" >
    <div class="form-group">
        <label class="col-sm-1 control-label" for="itemsName">商品名称</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="itemsName" value="${itemsCustom.name}" placeholder="请输入商品名称" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="itemsPrice">商品价格</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="itemsPrice" value="${itemsCustom.price}" placeholder="请输入商品价格">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="itemsDetail">商品详情</label>
        <div class="col-sm-3">
            <textarea class="form-control" id="itemsDetail" placeholder="请输入商品详情">${itemsCustom.detail}</textarea>
        </div>
    </div>

    <div class="from-group">
        <div class="col-sm-offset-1 col-sm-1">
            <button type="submit" class="btn btn-default">提交</button>
        </div>
        <div class="col-sm-9">
            <button type="reset" class="btn btn-default">重置</button>
        </div>
    </div>

</form>

<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>

</body>
</html>
