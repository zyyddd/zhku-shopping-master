
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
            window.location.href = "${pageContext.request.contextPath}/ManagerFindGoodsByPageServlet";
        }
    </script>

</head>
<body>
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改商品信息</h3>
    <form action="${pageContext.request.contextPath}/UpdateGoodsServlet" method="post" enctype="multipart/form-data">
        <!-- 隐藏域 提交id -->
        <input type="hidden" name="_id" value="${good._id}">

        <div class="form-group">
            <label for="goodName">商品名称：</label>
            <input type="text" class="form-control" id="goodName" name="goodName" value="${good.goodName}"  >
        </div>

        <div class="form-group">
            <label for="goodPrice">商品价格：</label>
            <input type="text" class="form-control" id="goodPrice" name="goodPrice"  value="${good.goodPrice}" >
        </div>

        <div class="form-group">
            <label for="goodDescibe">商品描述：</label>
            <input type="text" class="form-control" id="goodDescibe" name="goodDescibe" value="${good.goodDescibe}">
        </div>

        <div class="form-group">
            <label>商品图片：</label>
            <input type="image" name="goodImg" src="${pageContext.request.contextPath}/PicServlet?id=${good._id}"
            width="50px" height="50px"
            />
            <input type="file" name="goodImg">
        </div>


        <div class="form-group">
            <label for="sumGoods">商品总数：</label>
            <input type="text" class="form-control" id="sumGoods" name="sumGoods"  value="${good.sumGoods}" >
        </div>

        <div class="form-group">
            <label for="resGoods">剩余商品数：</label>
            <input type="text" class="form-control" id="resGoods" name="resGoods"  value="${good.resGoods}">
        </div>



        <div class="form-group">
            <label for="sumLove">商品被喜爱数：</label>
            <input type="text" class="form-control" id="sumLove" name="sumLove" value="${good.sumLove}" >
        </div>

        <div class="form-group">
            <label for="color">商品颜色：</label>
            <input type="text" class="form-control" id="color" name="color" value="${good.color}" >
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