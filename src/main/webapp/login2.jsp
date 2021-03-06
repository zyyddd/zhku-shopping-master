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
    <title>登录</title>
    <script src="./js/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="shortcut icon" href="./icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/loading.css">
    <script src="./js/loading.js"></script>
    <script src="./js/validate.js"></script>

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
                    <a href="">登录</a>
                    <a href="./register.jsp">注册</a>
                </div>
                <!-- 账号密码输入框 -->
                <form action="${pageContext.request.contextPath}/LoginServlet" class="mi-form" >
                    <p>
                        <input type="text" name="loginname" placeholder="邮箱/手机号码" class="input-id" required>
                    </p>
                    <p>
                        <input type="password" name="loginpassword" placeholder="密码" required class="input-psd"  data-message="密码长度应该为8-15位">
                    </p>
                    <p>
                        <input type="submit" value="登录" class="input-sub" >
                    </p>
                </form>
                <div class="alert alert-warning alert-dismissible" role="alert">

                    <strong>${pageContext.request.getAttribute("login_msg")}</strong>
                </div>
                <div class="help">
                        <span>
                            <a href="">忘记密码？</a>
                        </span>
                    <span>
                            <a href="">手机号登录</a>
                        </span>
                </div>
                <div class="login-ortherway">
                    <p class="title">
                        其他方式登录
                    </p>
                    <div class="login-list">
                        <i class="iconfont icon-qq"></i>
                        <i class="iconfont icon-weibo1"></i>
                        <i class="iconfont icon-zhifubao"></i>
                        <i class="iconfont icon-weixin"></i>
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
<%--<script src="./js/login.js"></script>--%>

</body>

</html>
