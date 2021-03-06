<%@ page import="indi.domain.Ordersuper" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by AFun.
  User: AFun
  Date: 2021/12/3
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>购物车</title>

    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/cart.css">
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="shortcut icon" href="./icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./layui-v2.6.8/layui/css/layui.css">
    <link rel="stylesheet" href="./css/loading.css">
    <script type="text/javascript">
        window.onload = function (){
            var temp = ${loginname};

            if (temp !=null )
            {
                $(".h-info").eq(0).html(temp)
                $(".cart").hide();
                $("table").show();
                $(".cart-bar").show();
            } else {
                $(".cart").show();
                $("table").hide();
                $(".cart-bar").hide();

            }
            $(".h-info").click(function () {
                location.href = "./index.jsp"
            })
        }
    </script>
    <script type="text/javascript">
        function update(goodCount,goodId,userId,isSend,type,id){
            location.href = "${pageContext.request.contextPath}/UpdateOrderServlet?goodCount="+goodCount+"&goodId="+goodId+"&userId="+userId+"&isSend="+isSend+"&type="+type+"&_id="+id;
        }

        function del(id){
            if (confirm("您确定要删除吗？")){
                location.href = "${pageContext.request.contextPath}/DelOrderByIdServlet?id="+id;
            }

        }
    </script>




</head>

<body>
<!-- 头部 -->
<header>
    <div class="h-con w">
        <div class="h-title">
            <a href="./index.jsp">
                <div class="logo fl">
                </div>
            </a>
            <h1>我的购物车</h1>
        </div>

        <div class="h-info">
            <a href="./login2.jsp">登录</a>
            <span>|</span>
            <a href="./register.jsp">注册</a>
        </div>
    </div>
</header>
<!-- 购物区 -->
<section>
    <div class="s-con w">
        <div class="cart clearfix">
            <div class="cart-bg fl"></div>
            <div class="cart-info fl">
                <h2>你的购物车还是空的!</h2>
                <p>登录后将显示您之前加入的商品</p>
                <div class="cart-btns">
                    <a href="./login2.jsp">
                        <div class="cart-btn cart-login fl">
                            立即登录
                        </div>
                    </a>
                    <a href="#">
                        <div class="cart-btn cart-register fl">
                            马上去购物
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- 购物车选项 -->
        <table>
            <thead>
            <tr>
                <th style="width: 110px;">序号</th>
                <th style="width: 120px;">图片</th>
                <th style="width: 380px;">商品名称</th>
                <th style="width: 158px;">单价</th>
                <th style="width: 210px;">数量</th>
                <th style="width: 200px;">小计</th>
                <th style="width: 80px;">操作</th>
            </tr>
            <c:forEach items="${orders}" var="order" varStatus="s">
                <tr>
                    <td>${s.count} </td>
                    <td><img src="${pageContext.request.contextPath}/PicServlet?id=${order.goodId}" alt=""></td>
                    <td> ${order.goodName} </td>
                    <td>${order.goodPrice}</td>
                    <td>
                        <button class='sub' onclick="update('${order.goodCount}','${order.goodId}','${order.userId}','${order.isSend}','sub','${order._id}');">-</button>
                        <input value="${order.goodCount}">
                        <button class='sup' onclick="update('${order.goodCount}','${order.goodId}','${order.userId}','${order.isSend}','sup','${order._id}')">+</button>
                    </td>
                    <td> ${order.totalPrice}</td>
                    <td><a href="javascript:del('${order._id}')"><i class="del iconfont icon-cha"></i></a></td>
                </tr>

            </c:forEach>
            </thead>
            <tbody id="tab"></tbody>
        </table>

        <!-- 合计 -->
        <div class="cart-bar">
            <p class="fl">共<span class="buy-number">${sumCount}</span>件商品</p>

            <div class="pay fr"><a href="${pageContext.request.contextPath}/pay?outTradeNo=${time}&subject=test&totalAmount=0.01&body=test" >去结算</a></div>
            <p class="fr">合计：<span class="total-money">${sumPrice}</span>元</p>
        </div>

    </div>

</section>
<!-- 推荐区 -->
<section>
    <div class="r-con w">
        <div class="recommend">
            <div class="r-title pos-r">
                <h3>为您推荐</h3>
            </div>
            <ul class="r-items">
                <li class="item">
                    <img src="./img/推荐1.webp" alt="">
                    <p class="item-name">Note 9 4G</p>
                    <p class="item-price">899元</p>
                    <p class="item-praise">10.4万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>


                <li class="item ">
                    <img src="./img/推荐2.webp" alt="">
                    <p class="item-name">Note 9 5G</p>
                    <p class="item-price">1199元</p>
                    <p class="item-praise">72.5万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐3.webp" alt="">
                    <p class="item-name">IScience Note 10 Pro</p>
                    <p class="item-price">1599元</p>
                    <p class="item-praise">23.3万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐4.webp" alt="">
                    <p class="item-name">IScience K40 游戏增强版</p>
                    <p class="item-price">1999元</p>
                    <p class="item-praise">8.5万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐5.webp" alt="">
                    <p class="item-name">IScience 9A</p>
                    <p class="item-price">499元</p>
                    <p class="item-praise">66.8万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐6.webp" alt="">
                    <p class="item-name">Note 9 Pro 5G</p>
                    <p class="item-price">1399元</p>
                    <p class="item-praise">72.5万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐7.webp" alt="">
                    <p class="item-name">仲恺11</p>
                    <p class="item-price">3799元</p>
                    <p class="item-praise">23万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐8.webp" alt="">
                    <p class="item-name">IScience K40</p>
                    <p class="item-price">1999元</p>
                    <p class="item-praise">56.2万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐9.webp" alt="">
                    <p class="item-name">黑鲨4</p>
                    <p class="item-price">2499元</p>
                    <p class="item-praise">7.9万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐10.webp" alt="">
                    <p class="item-name">IScience Note 10 5G</p>
                    <p class="item-price">1099元</p>
                    <p class="item-praise">23.3万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐11.webp" alt="">
                    <p class="item-name">IScience K40 Pro+</p>
                    <p class="item-price">3399元</p>
                    <p class="item-praise">56.2万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐12.webp" alt="">
                    <p class="item-name">IScience K40 Pro</p>
                    <p class="item-price">2499元</p>
                    <p class="item-praise">56.2万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>


                <li class="item ">
                    <img src="./img/推荐13.webp" alt="">
                    <p class="item-name">黑鲨4 Pro</p>
                    <p class="item-price">3999元</p>
                    <p class="item-praise">7.9万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐14.webp" alt="">
                    <p class="item-name">仲恺10S</p>
                    <p class="item-price">2999元</p>
                    <p class="item-praise">14.7万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>


                <li class="item ">
                    <img src="./img/推荐15.webp" alt="">
                    <p class="item-name">IScience K30 至尊纪念版</p>
                    <p class="item-price">1999元</p>
                    <p class="item-praise">61.8万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐16.webp" alt="">
                    <p class="item-name">腾讯黑鲨游戏手机3S</p>
                    <p class="item-price">3999元</p>
                    <p class="item-praise">2.8万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐17.webp" alt="">
                    <p class="item-name">仲恺11 青春版</p>
                    <p class="item-price">2099元</p>
                    <p class="item-praise">8.9万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐18.webp" alt="">
                    <p class="item-name">仲恺11 Pro</p>
                    <p class="item-price">4499元</p>
                    <p class="item-praise">6.9万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐19.webp" alt="">
                    <p class="item-name">Zhku MAX 4</p>
                    <p class="item-price">4999元</p>
                    <p class="item-praise">1810人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>

                <li class="item ">
                    <img src="./img/推荐20.webp" alt="">
                    <p class="item-name">仲恺11 Uitra</p>
                    <p class="item-price">5499元</p>
                    <p class="item-praise">7.4万人好评</p>
                    <div class="item-btn">
                        加入购物车
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>

<%--<script type="type/html" id="tpl">--%>
<%--        {{ each data item}}--%>
<%--        <tr>--%>
<%--            <td>{{ item.id}} </td>--%>
<%--            <td><img src="{{item.img[4]}}" alt=""></td>--%>
<%--            <td> {{item.pName}} </td>--%>
<%--            <td>{{ item.pPrice}}</td>--%>
<%--            <td>--%>
<%--                <button class='sub'>-</button>--%>
<%--                <input value="{{ item.number}}">--%>
<%--                <button class='sup'>+</button>--%>
<%--            </td>--%>
<%--            <td> {{item.pTotal}} </td>--%>
<%--            <td><i class="del iconfont icon-cha"></i></td>--%>
<%--        </tr>--%>

<%--        {{ /each }}--%>
<%--    </script>--%>
<script src="./js/jquery.min.js"></script>
<script src="./js/template-web.min.js"></script>

<script src="./js/cart.js"></script>
<script src="./js/loading.js"></script>
<script src="./layui-v2.6.8/layui/layui.js"></script>

<script>














</script>

</body>

</html>
