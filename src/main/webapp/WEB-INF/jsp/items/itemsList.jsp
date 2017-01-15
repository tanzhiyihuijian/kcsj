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


    <style type="text/css">

        a:hover {
            text-decoration: none;
        }



    </style>

</head>
<body>

商品列表
<table class="table" border="1">
    <thead>
        <tr>
            <td>商品名称</td>
            <td>商品价格</td>
            <td>商品描述</td>
            <td colspan="2" style="text-align: center;">操作</td>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="item" items="${itemsList}">
            <tr>
                <td>${item.name}</td>
                <td>${item.price}</td>
                <td>${item.detail}</td>
                <td><a href="${pageContext.request.contextPath}/items/editItems.action?id=${item.id}">修改</a></td>
                <td><a href="${pageContext.request.contextPath}/items/deleteItems.action?id=${item.id}">删除</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>


<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>

</body>
</html>
