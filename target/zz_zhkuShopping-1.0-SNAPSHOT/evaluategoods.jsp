<%--
  Created by IntelliJ IDEA.
  User: ZYD
  Date: 2021/12/22
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
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
            <h1>商品评价</h1>
        </div>

        <div class="h-info">
            <a href="./login2.jsp">登录</a>
            <span>|</span>
            <a href="./register.jsp">注册</a>
        </div>
    </div>
</header>
<section>

    <div class="s-con w" style="text-align: center">
        <h1>请输入你的评价</h1>
        <form action="${pageContext.request.contextPath}/AddCommentServlet" >
            <input type="text" hidden value="${id}" name="id">
            <textarea name="comment" id="comment" cols="60" rows="10"></textarea><br>
        <input type="submit"  style="width: 50px;height: 40px;background-color: #00FFFF;margin-right: 50px" value="提交">
        <input type="button" style="width: 50px;height: 40px;background-color: #00FFFF" onclick="history.back(-1);" value="返回">
        </form>
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

