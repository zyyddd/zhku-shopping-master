<%--
  Created by AFun.
  User: AFun
  Date: 2021/12/3
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>仲恺祝你健康快乐</title>
    <link rel="shortcut icon" href="./icon/favicon.ico" type="image/x-icon">

    <style>
        html,body{
            height: 100%;
        }
        div{
            height: 100%;
            background: url(./img/giphy.gif) no-repeat ;
            background-size: 100% 100%;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div>

</div>
<script>

    const html = document.documentElement
    html.onclick = function () {
        location.href = './index.jsp'
    }
</script>

</body>


</html>
