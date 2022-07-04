<%--
  Created by AFun.
  User: AFun
  Date: 2021/10/27
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- HTML5文档-->
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>添加用户</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>

    <script>
        function jump() {
            window.location.href = "${pageContext.request.contextPath}/ManagerFindGoodsByPageServlet";
        }
    </script>

</head>
<body>
<div class="container">
    <center><h3>添加用户页面</h3></center>
    <form action="${pageContext.request.contextPath}/AddGoodsServlet" method="post" enctype="multipart/form-data">


        <div class="form-group">
            <label for="goodName">商品名称：</label>
            <input type="text" class="form-control" id="goodName" name="goodName" placeholder="请输入商品名称">
        </div>

        <div class="form-group">
            <label for="goodPrice">商品价格：</label>
            <input type="text" class="form-control" id="goodPrice" name="goodPrice" placeholder="请输入商品价格">
        </div>

        <div class="form-group">
            <label for="goodDescibe">商品描述：</label>
            <input type="text" class="form-control" id="goodDescibe" name="goodDescibe" placeholder="请输入商品描述">
        </div>

        <div class="form-group">
            <label>商品图片：</label>
            <input type="file" name="goodImg" id="goodImg" accept="image/gif, image/jpg, image/webp, image/png" value="上传图片" />

        </div>


        <div class="form-group">
            <label for="sumGoods">商品总数：</label>
            <input type="text" class="form-control" id="sumGoods" name="sumGoods" placeholder="请输入商品总数">
        </div>

        <div class="form-group">
            <label for="resGoods">剩余商品数：</label>
            <input type="text" class="form-control" id="resGoods" name="resGoods" placeholder="请输入剩余商品数">

        </div>

        <div class="form-group">
            <label for="sumLove">商品被喜爱次数：</label>
            <input type="text" class="form-control" id="sumLove" name="sumLove" placeholder="请输入商品被喜爱次数">
        </div>

        <div class="form-group">
            <label for="color">商品颜色：</label>
            <input type="text" class="form-control" id="color" name="color" placeholder="请输入商品颜色">
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