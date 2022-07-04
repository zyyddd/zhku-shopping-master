<%--
  Created by AFun.
  User: AFun
  Date: 2021/12/3
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <link rel="stylesheet" href="./css/register.css">
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <script src="./js/jquery.min.js"></script>

    <script src="./js/validate.js"></script>
    <script src="./js/loading.js"></script><link rel="shortcut icon" href="./icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/loading.css">


    <style>

    </style>
</head>

<body>
<!-- 囊括所有 -->
<div class="login">
    <!-- 左边的背景 -->
    <div class="lg-bk"></div>
    <!-- 囊括所有,内容区 -->
    <div class="login-content">
        <!-- 头部导航 -->
        <div class="header">
            <div class="hl">
                <div class="img"></div>
                <span>仲恺账号</span>
            </div>
            <div class="hr">
                <div class="min-nav">
                    <span> <a href="">用户协议</a></span>
                    <span> <a href="">隐私政策</a></span>
                    <span> <a href="">帮助中心</a></span>
                    <span> <a href="">中文(简体)</a></span>
                </div>
            </div>
        </div>
        <!-- 下方登录部分包裹 -->
        <div class="login-card-wrap">
            <!--登录部分 -->
            <div class="login-card">
                <!-- 登录注册选择 -->
                <div class="login-choice">
                    <a href="./login2.jsp">登录</a>
                    <a href="">注册</a>
                </div>
                <!-- 账号密码输入框 -->
                <form action="${pageContext.request.contextPath}/RegisterServlet" class="mi-form">
                    <p>
                        <input type="text" placeholder="手机号" class="input-id" required  name="phone">
                    </p>
                    <p>
                        <input type="password" placeholder="密码" required class="input-psd" name="password">
                    </p>
                    <p>
                        <input type="password" placeholder="确认密码" required  class="input-cpsd" name="confirmpassword">
                    </p>
                    <p>
                        <input type="email" placeholder="邮箱" required  class="eml" name="email">
                    </p>
                    <p>
                        <input type="submit" value="注册" class="input-sub">
                    </p>
                </form>
                <div class="alert alert-warning alert-dismissible" role="alert">

                    <strong>${pageContext.request.getAttribute("register_msg")}</strong>
                </div>
                <div class="help">
                    <p>
                        <a href="">收不到验证码？</a>
                    </p>
                    <div class="accpet">
                        <form action="">
                            <input type="checkbox" checked>
                            已阅并同意仲恺账户
                            <a href="">用户协议</a>
                            和
                            <a href="">隐私政策</a>
                        </form>
                    </div>
                </div>
                <div class="login-ortherway">
                    <p class="title">
                        其他方式登录
                    </p>
                    <div class="login-list">
                        <a href="" class="iconfont icon-qq"></a>
                        <a href="" class="iconfont icon-weibo1"></a>
                        <a href="" class="iconfont icon-zhifubao"></a>
                        <a href="" class="iconfont icon-weixin"></a>
                    </div>
                </div>
            </div>
        </div>
        <footer >
            <p class="mi-copy">
                仲恺公司版权所有-京ICP备10046444-
                <a href="">
                    京公网安备11010802020134号
                </a>
                -京ICP证110507号
            </p>
        </footer>
    </div>
</div>
<%--<script src="./js/register.js"></script>--%>
</body>

</html>
