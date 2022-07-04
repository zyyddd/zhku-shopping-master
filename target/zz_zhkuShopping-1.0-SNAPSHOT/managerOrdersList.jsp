<%--
  Created by IntelliJ IDEA.
  User: ZYD
  Date: 2021/12/14
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <title>系统管理员界面</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>

    <script>
        function sendOrder(id) {
            if (confirm("是否发货")) {
                location.href = "${pageContext.request.contextPath}/SendOrdersServlet?id=" + id
            }

        }


    </script>
</head>
<body>
<div>

    <div class="container">

        <h3 style="text-align: center">商品信息列表</h3>

        <form id="form" action="${pageContext.request.contextPath}/ManagerFindOrderByPageServlet" method="post">
            <table border="1" class="table table-bordered table-hover">
                <tr class="success">
                    <th>订单号</th>
                    <th>货物号</th>
                    <th>用户id</th>
                    <th>是否发货</th>
                    <th>是否付款</th>
                    <th>是否收货</th>
                    <th>用户评价信息</th>
                    <th>操作</th>
                </tr>

                <c:forEach items="${orders}" var="order" varStatus="s">
                    <tr>
                        <td>${order._id}</td>
                        <td>${order.goodId}</td>
                        <td>${order.userId}</td>

                        <td>
                            <c:if test="${order.isSend == 'Y'}">
                                已发货
                            </c:if>
                            <c:if test="${order.isSend == 'N'}">
                                未发货
                            </c:if>
                        </td>
                        <td>
                        <c:if test="${order.isPay =='Y'}">
                            已支付
                        </c:if>
                        <c:if test="${order.isPay == 'N'}">
                            未支付
                        </c:if>
                    </td>
                        <td>
                            <c:if test="${order.isRecive == 'Y'}">
                                已收货
                            </c:if>
                            <c:if test="${order.isRecive == 'N'}">
                                未收货
                            </c:if>
                        </td>
                        <td>${order.comment}</td>
                        <td><a href="javascript:sendOrder(${order._id})"><input type="button" value="发货"></a></td>

                    </tr>

                </c:forEach>


            </table>
        </form>


    </div>

</div>
</body>
</html>
