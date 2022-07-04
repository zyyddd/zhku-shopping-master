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
    <title>UserMessage</title>
    <style>
        body{
            background: url("./img/background.jpg") no-repeat;
            background-size: 100%;
        }
    </style>
    <script type="text/javascript">
        function delUser(){
            if (confirm("确认注销账户吗？")){
                location.href = "${pageContext.request.contextPath}/DelMyselfServlet";
            }
        }
    </script>
</head>
<body style="margin: 0 auto;text-align: center">
<h1>尊敬的${username}，你好</h1>
<h2>您的个人信息如下</h2>
<div >
    <div  align="center">
        <form action="${pageContext.request.contextPath}/UpdateUserMessageServlet" method="post">
            <p><label >手机号码:</label><input  type="text" id="phoneNum" name="phoneNum" value="${user.phoneNum}"/></p>
            <p hidden><label >用户id:</label><input  type="text" id="_id" name="_id" value="${user._id}"/></p>
            <p><label >密码:</label><input  type="text" id="pwd" name="pwd" value="${user.pwd}"/></p>
            <p><label >E-mail:</label><input  type="text" id="email" name="email" value="${user.email}"/></p>
            <p><label >姓名:</label><input  type="text" id="name" name="name" value="${user.name}"/></p>
            <p><label >性别:</label><input  type="text" id="gender" name="gender" value="${user.gender}"/></p>
            <p><label >地址:</label><input  type="text" id="address" name="address" value="${user.address}"/></p>
            <input type="submit" value="修改">
        </form>
        <a href="${pageContext.request.contextPath}/ShowgoodsServlet"><input type="submit" value="返回"></a>

        <a href="javascript:delUser()"><input type="submit" value="注销账户"></a>
    </div>
</div>
</body>
</html>
