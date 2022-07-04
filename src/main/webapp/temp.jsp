<%--
  Created by IntelliJ IDEA.
  User: ZYD
  Date: 2021/12/22
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ZYD
  Date: 2021/12/13
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UserOrder</title>
    <style>
        table
        {

            border-collapse: collapse;
            margin: 0px auto;
            text-align: center;
        }
        table td, table th
        {
            border: 1px solid #cad9ea;
            color: #666;
            height: 30px;
        }
        table thead th
        {
            background-color: #CCE8EB;
            width: 100px;
        }
        table tr:nth-child(odd)
        {
            background: #fff;
        }
        table tr:nth-child(even)
        {
            background: #F5FAFA;
        }
    </style>

</head>
<body style="margin: 0 auto;text-align: center">
<h1>尊敬的${username}，你好</h1>
<h2>您的订单信息如下</h2>
<div style="margin: 0 auto;margin-top: 50px">
    <table style="margin: 0 auto">
        <tr>
            <th>序号</th>
            <th>订单编号</th>
            <th>货物编号</th>
            <th>货物名称</th>
            <th>货物数量</th>
            <th>单品价格</th>
            <th>货物总价</th>
            <th>支付状态</th>
        </tr>
        <% long date = new Date().getTime(); request.setAttribute("date", date); %>
        <c:forEach items="${orders}" var="order" varStatus="s">
            <tr>
                <td>${s.count}</td>
                <td>${order._id}</td>
                <td>${order.goodId}</td>
                <td>${order.goodName}</td>
                <td>${order.goodCount}</td>
                <td>${order.goodPrice}</td>
                <td>${order.totalPrice}</td>
                <td>${order.isSend}</td>
            </tr>
        </c:forEach>

        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <form action="${pageContext.request.contextPath}/ShowgoodsServlet">
                <td><input type="submit" value="返回主页"></td>
            </form>
        </tr>
    </table>
</div>
</body>
</html>
