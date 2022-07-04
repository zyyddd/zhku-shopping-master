
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <%--    	<base href="<%=basePath%>"/>--%>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改用户</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script>
        function jump() {
            window.location.href = "${pageContext.request.contextPath}/ManagerFindUserByPageServlet";
        }
    </script>

</head>
<body>
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改用户信息</h3>
    <form action="${pageContext.request.contextPath}/UpdateUserServlet" method="post">
        <!-- 隐藏域 提交id -->
        <input type="hidden" name="_id" value="${user._id}">

        <div class="form-group">
            <label for="name">手机号：</label>
            <input type="text" class="form-control" id="phoneNum" name="phoneNum" value="${user.phoneNum}" placeholder="请输入手机号" readonly>
        </div>

        <div class="form-group">
            <label for="name">密码：</label>           <!--后期应提供用户可自己修改密码的策略，也就是说这里的密码大家默认都是123就行了 -->
            <input type="text" class="form-control" id="password" name="pwd"  value="${user.pwd}" placeholder="请输入密码">
        </div>

        <div class="form-group">
            <label for="name">邮箱：</label>
            <input type="text" class="form-control" id="email" name="email" value="${user.pwd}" placeholder="请输入邮箱">
        </div>

        <div class="form-group">
            <label>用户类型：</label>
            <input type="radio" name="role" value="2" checked="checked"/>用户

        </div>


        <div class="form-group">
            <label for="name">姓名：</label>
            <input type="text" class="form-control" id="name" name="name"  value="${user.name}" placeholder="请输入姓名">
        </div>

        <div class="form-group">
            <label>性别：</label>
            <c:if test="${user.gender == '男'}">
                <input type="radio" name="gender" value="男" checked/>男
                <input type="radio" name="gender" value="女"/>女
            </c:if>
            <c:if test="${user.gender == '女'}">
                <input type="radio" name="gender" value="男"/>男
                <input type="radio" name="gender" value="女" checked/>女
            </c:if>
        </div>

        <div class="form-group">
            <label for="name">地址：</label>
            <input type="text" class="form-control" id="address" name="address" value="${user.address}" placeholder="请输入地址">
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交"/>
            <input class="btn btn-default" type="reset" value="重置"/>
            <input class="btn btn-default" type="button" value="返回" onclick="javascript:jump()"/>
        </div>
    </form>
</div>
</body>
</html>