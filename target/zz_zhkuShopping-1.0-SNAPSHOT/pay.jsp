<%--
  Created by IntelliJ IDEA.
  User: ZYD
  Date: 2021/12/13
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pay</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/cart.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="shortcut icon" href="./icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./layui-v2.6.8/layui/css/layui.css">
    <link rel="stylesheet" href="./css/loading.css">
    <style>
        #shiny-shadow {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: #8ca8e5;
        }

        button {
            border: 2px solid white;
            background: transparent;
            text-transform: uppercase;
            color: white;
            padding: 15px 50px;
            outline: none;
            overflow: hidden;
            position: relative;
        }

        span {
            z-index: 20;
        }

        button:after {
            content: '';
            display: block;
            position: absolute;
            top: -36px;
            left: -100px;
            background: white;
            width: 50px;
            height: 125px;
            opacity: 20%;
            transform: rotate(-45deg);
        }

        button:hover:after {
            left: 120%;
            transition: all 600ms cubic-bezier(0.3, 1, 0.2, 1);
            -webkit-transition: all 600ms cubic-bezier(0.3, 1, 0.2, 1);
        }
    </style>
    <script type="text/javascript">
        function payover(){
            location.href="${pageContext.request.contextPath}/PayOverServlet"
        }
    </script>
</head>
<body style="background: #0C0C0C;margin: 0 auto;text-align: center">
<div style="margin-top: 50px;">
    <img src="./img/giphy.webp" style="margin: auto">
    <button type="submit" onclick="javascript:payover()" class="shiny-shadow">支付成功</button>
</div>

</body>
</html>
