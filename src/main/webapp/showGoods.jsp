<%--
  Created by AFun.
  User: AFun
  Date: 2021/12/8
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by AFun.
  User: AFun
  Date: 2021/12/3
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>仲恺商城</title>
    <!-- 重置样式 -->
    <link rel="stylesheet" href="./css/reset.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="./css/base.css">
    <!-- 当前主页样式 -->
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/footer.css">
    <!-- header main图标库 -->
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="shortcut icon" href="./icon/favicon.ico" type="image/x-icon">

    <!-- 引入footer图标库 -->
    <link rel="stylesheet" href="./iconfooter/iconfont.css">
    <script src="./iconfooter/iconfont.js"></script>

    <%--    &lt;%&ndash;加载商品信息&ndash;%&gt;--%>
    <%--    <script type="text/javascript">--%>
    <%--        window.onload = function (){--%>
    <%--            $.ajax({--%>
    <%--                url:"ShowgoodsServlet",--%>
    <%--                type:"POST",--%>
    <%--                success:function (e){--%>
    <%--                }--%>
    <%--            });--%>
    <%--        }--%>
    <%--    </script>--%>


</head>


<body>

<!-- 顶部导航条 -->
<header>
    <div class="headbar">
        <!-- 创建内部容器 -->
        <div class="topbar w clearfix">
            <!-- 左侧的导航 -->
            <nav>
                <ul class="service">
                    <li>
                        <a href="javascript:;">仲恺商城</a>
                        <span>|</span>
                    </li>


                    <li>
                        <a href="javascript:;">云服务</a>
                        <span>|</span>
                    </li>


                    <li>
                        <a href="javascript:;">协议规则</a>
                        <span>|</span>
                    </li>

                    <li class="down-app pos-r">
                        <a href="javascript:;">下载app</a>
                        <span>|</span>

                        <!-- 添加一个弹出层二维码 -->
                        <div class="triangle"></div>
                        <div class="appqrode">
                            <img src="./img/download.png" alt="">
                            仲恺商城App
                        </div>
                    </li>

                    <li>
                        <a href="javascript:;">智能生活</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">Select Location</a>

                    </li>
                </ul>
            </nav>
            <!-- 购物车 -->
            <div class="buy-cart fr">
                <a href="${pageContext.request.contextPath}/FindAllOrderWithNServlet">
                    <i class="iconfont icon-gouwuche"></i>
                    <span>购物车</span>
                    <span>(0)</span>
                </a>
                <!-- 下拉购物车 -->
                <div class="cart-menu">
                    购物车中还没有商品,赶紧选购吧!
                </div>
            </div>
            <script type="text/javascript">
                window.onload = function (){
                    var temp = ${loginname};
                    if (temp !=null )
                    {

                        $('.header-info').children().eq(0).find('a').html(temp)
                        $('.header-info').children().eq(1).find('a').html("退出登录")
                        $('.header-info').children().eq(2).find('a').html("我的订单")
                        $('.header-info').children().eq(0).find('a').attr('href','${pageContext.request.contextPath}/UserMessageServlet')
                        $('.header-info').children().eq(1).find('a').attr('href','${pageContext.request.contextPath}/LogoutServlet')
                        $('.header-info').children().eq(2).find('a').attr('href','${pageContext.request.contextPath}/FindAllOrderWithYServlet')
                    }
                }
            </script>
            <!-- 用户登录注册 -->
            <ul class="header-info fr">
                <li>
                    <a href="./login2.jsp" >登录</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="./register.jsp">注册</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="#">消息通知</a>

                </li>
            </ul>
        </div>
    </div>

    <!-- 中间的header -->
    <section>
        <div class="headNav w">
            <div class="logo-wrapper pos-r fl">
                <div class="logo pos-a"></div>
            </div>

            <ul class="h-list fl fs16">
                <li class="h-list-first">
                    <a href="javascipt:;">全部商品分类</a>
                </li>
                <!-- 仲恺手机 -->
                <li>
                    <a href="javascript:;">仲恺手机</a>
                    <div class="down-menu-wrapper">
                        <ul class="down-menu w ">
                            <li>
                                <div class="img-box">
                                    <img src="./img/手机1.webp" alt="" class="pic">
                                </div>
                                <p>Zhku MAX 4</p>
                                <p>4999元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/手机4.webp" class="pic" alt="">
                                </div>
                                <p>仲恺MAX FOLD</p>
                                <p>9999元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/手机5.webp" class="pic" alt="">
                                </div>
                                <p>仲恺11 Ultra</p>
                                <p>5499元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/手机6.webp" class="pic" alt="">
                                </div>
                                <p>仲恺11 Pro</p>
                                <p>4499元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/手机7.webp" class="pic" alt="">
                                </div>
                                <p>仲恺11 青春版</p>
                                <p>2099元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/推荐14.webp" class="pic" alt="">
                                </div>
                                <p>仲恺10S</p>
                                <p>2999元起</p>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 信科 -->
                <li>
                    <a href="javascript:;">IScience 信科</a>
                    <div class="down-menu-wrapper">
                        <ul class="down-menu w clearfix">
                            <li>
                                <div class="img-box">
                                    <img src="img/推荐3.webp" class="pic" alt="">
                                </div>
                                <p>IScience Note 10 Pro</p>
                                <p>1599元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/推荐10.webp" class="pic" alt="">
                                </div>
                                <p>IScience Note 10 5G</p>
                                <p>1099元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/推荐4.webp" class="pic" alt="">
                                </div>
                                <p>K40 游戏增强版</p>
                                <p>1999元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/推荐12.webp" class="pic" alt="">
                                </div>
                                <p>K40 Pro系列</p>
                                <p>2499元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/推荐8.webp" class="pic" alt="">
                                </div>
                                <p>IScience K40</p>
                                <p>1999元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/推荐1.webp" class="pic" alt="">
                                </div>
                                <p>IScience Note 9 4G</p>
                                <p>899元</p>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 电视 -->
                <li>
                    <a href="javascript:;">电视</a>
                    <div class="down-menu-wrapper">
                        <ul class="down-menu w clearfix">
                            <li>
                                <div class="img-box">
                                    <img src="img/tv1.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺电视6 55″OLED</p>
                                <p>5699元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/tv2.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺电视6 65″OLED</p>
                                <p>7699元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/tv3.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺电视 大师 77″OLED</p>
                                <p>19999元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/tv4.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺透视电视</p>
                                <p>49999元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/tv5.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺电视 大师 65英寸OLED</p>
                                <p>9999元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/tv6.jpg" class="pic" alt="">
                                </div>
                                <p>IScience 智能电视 MAX98″</p>
                                <p>19999元起</p>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 笔记本 -->
                <li>
                    <a href="javascript:;">笔记本</a>
                    <div class="down-menu-wrapper">
                        <ul class="down-menu w clearfix">
                            <li>
                                <div class="img-box">
                                    <img src="img/book1.png" class="pic" alt="">
                                </div>
                                <p>仲恺笔记本 Pro X 15</p>
                                <p>8499元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/book2.jpg" class="pic" alt="">
                                </div>
                                <p>ISciencebook Pro 14 锐龙版</p>
                                <p>4499元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/book3.jpg" class="pic" alt="">
                                </div>
                                <p>ISciencebook Pro 15 锐龙版</p>
                                <p>5299元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/book4.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺笔记本 Pro 15 锐龙版</p>
                                <p>6299元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/book5.png" class="pic" alt="">
                                </div>
                                <p>仲恺笔记本 Pro 15</p>
                                <p>6399元起</p>
                            </li>

                        </ul>
                    </div>
                </li>
                <!-- 平板 -->
                <li>
                    <a href="javascript:;">平板</a>
                    <div class="down-menu-wrapper">
                        <ul class="down-menu w clearfix">
                            <li>
                                <div class="img-box">
                                    <img src="img/平板1.png" class="pic" alt="">
                                </div>
                                <p>仲恺平板5</p>
                                <p>1999元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/平板2.png" class="pic" alt="">
                                </div>
                                <p>仲恺平板5 Pro</p>
                                <p>2499元</p>
                            </li>
                        </ul>
                    </div>
                </li>

                <!-- 家电  -->
                <li>
                    <a href="javascript:;">家电</a>
                    <div class="down-menu-wrapper">
                        <ul class="down-menu w clearfix">
                            <li>
                                <div class="img-box">
                                    <img src="img/jiadian1.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺风冷对开门冰箱 483L</p>
                                <p>2399元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/jiadian2.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺扫拖机器人1T</p>
                                <p>1999元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/jiadian3.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺互联网洗烘一体机</p>
                                <p>1899元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/jiadian4.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺净水器S1 800G</p>
                                <p>2199元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/jiadian5.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺空气净化器3 高效除菌</p>
                                <p>749元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/jiadian6.jpg" class="pic" alt="">
                                </div>
                                <p>IScience全自动波轮洗衣机1A 8kg</p>
                                <p>849元</p>
                            </li>
                        </ul>
                    </div>
                </li>

                <!-- 路由器 -->
                <li>
                    <a href="javascript:;">路由器</a>
                    <div class="down-menu-wrapper">
                        <ul class="down-menu w clearfix">
                            <li>
                                <div class="img-box">
                                    <img src="img/路由器1.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺路由器AX6000</p>
                                <p>599元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/路由器2.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺路由器AX9000</p>
                                <p>1299元起</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/路由器3.jpg" class="pic" alt="">
                                </div>
                                <p>IScience路由器AC2100</p>
                                <p>169元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/路由器4.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺路由器 Mesh</p>
                                <p>999元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/路由器5.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺路由器4A 千兆版</p>
                                <p>119元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/路由器6.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺路由器 4C</p>
                                <p>59元</p>
                            </li>
                        </ul>
                    </div>
                </li>

                <!-- 智能硬件 -->
                <li>
                    <a href="javascript:;">智能硬件</a>
                    <div class="down-menu-wrapper">
                        <ul class="down-menu w clearfix">
                            <li>
                                <div class="img-box">
                                    <img src="img/智能硬件1.jpg" class="pic" alt="">
                                </div>
                                <p>CyberDog 仿生四足机器人</p>
                                <p>9999元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/智能硬件2.jpg" class="pic" alt="">
                                </div>
                                <p>仲恺智能门锁 1S</p>
                                <p>1299元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/智能硬件3.jpg" class="pic" alt="">
                                </div>
                                <p>IScience小爱触屏音箱Pro 8</p>
                                <p>599元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/智能硬件4.jpg" class="pic" alt="">
                                </div>
                                <p>Zhku Sound</p>
                                <p>499元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/智能硬件5.jpg" class="pic" alt="">
                                </div>
                                <p>IScience小爱音箱 Play</p> ·
                                <p>89元</p>
                            </li>
                            <li>
                                <div class="img-box">
                                    <img src="img/智能硬件6.jpg" class="pic" alt="">
                                </div>
                                <p>查看全部<br>智能硬件</p>
                            </li>
                        </ul>
                    </div>
                </li>

                <li>
                    <a href="javascript:;">服务</a>
                </li>

                <li>
                    <a href="javascript:;">社区</a>
                </li>
            </ul>

            <form action="${pageContext.request.contextPath}/FindGoodsByPageServlet" method="post" class="h-search fr">
                <input type="text" placeholder="仲恺手机" name="goodName">
                <button type="submit"><i class="iconfont icon-sousuo"></i></button>
                <ul class="search-list">
                    <li>全部商品</li>
                    <li>仲恺11</li>
                    <li>手机</li>
                    <li>仲恺10s</li>
                    <li>空调</li>
                    <li>信科</li>
                    <li>净水器</li>
                    <li>洗衣机</li>
                </ul>
            </form>
        </div>
    </section>
</header>

<!-- 轮播图 -->
<section>
    <!-- 轮播图总区域 -->
    <div class="s-con w">

        <!--  轮播图区域 -->
        <div class="banner-wrapper">


            <!-- 左侧的菜单栏 -->
            <ul class="l-list fs12">
                <!-- 手机 -->
                <li>
                    <a href="javascript:;">手机</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span>Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机2.png" alt="">
                                <span class="text">仲恺MAX FOLD</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机3.png" alt="">
                                <span class="text">仲恺11 Ultra </span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机4.png" alt="">
                                <span class="text">仲恺11 Pro</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机5.png" alt="">
                                <span class="text">仲恺11 青春</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机6.png" alt="">
                                <span class="text">仲恺10S</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机7.png" alt="">
                                <span class="text">仲恺11</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机8.png" alt="">
                                <span class="text">仲恺10</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机9.png" alt="">
                                <span class="text">黑鲨4 Pro</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机10.png" alt="">
                                <span class="text">黑鲨4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机11.png" alt="">
                                <span class="text">IScience K30S 至尊纪念版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机12.png" alt="">
                                <span class="text">仲恺云服务</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机13.png" alt="">
                                <span class="text">IScience K30 至尊纪念版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机14.png" alt="">
                                <span class="text">Note 10 Pro</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机15.png" alt="">
                                <span class="text">Note 10 Pro 5G</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机16.png" alt="">
                                <span class="text">K40 游戏增强版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机17.png" alt="">
                                <span class="text">K40 Pro 系列</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机18.png" alt="">
                                <span class="text">IScience K40</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机19.png" alt="">
                                <span class="text">IScience 8A</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机20.png" alt="">
                                <span class="text">IScience Note 9 Pro</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机21.png" alt="">
                                <span class="text">IScience Note 9 5G</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机22.png" alt="">
                                <span class="text">IScience Note 9 4G</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机23.png" alt="">
                                <span class="text">IScience 9A</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机24.png" alt="">
                                <span class="text">手机上门维修</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 电视 -->
                <li>
                    <a href="javascript:;">电视</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视6 55” OLED</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视6 65” OLED</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视 大师 77” OLED</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视6 至尊版 55英寸</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视6 至尊版 65英寸</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视6 至尊版 75英寸</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视 ES43 2022款</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视 ES55 2022款</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视 ES65 2022款</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视 ES75 2022款</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺全面屏电视E43K</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">金属全面屏电视</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺盒子</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">大师电视 65英寸 OLED</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视5 Pro 75英寸</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视4A 60英寸</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">IScience 智能电视 X55</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺全面屏电视</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺激光投影仪</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺激光投影仪</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">IScience 智能电视 MAX 98&#34</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视5 75英寸</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺电视4A 70英寸</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺壁画电视</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 笔记本 平板 -->
                <li>
                    <a href="javascript:;">笔记本 平板</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺平板5</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺平板5PrO</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺笔记本 Pro14增强版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺笔记本Pro 15增强版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">IScienceBook Pro 14增强版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">IScienceBook Pro 15增强版</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺笔记本Pro × 15</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">逐IScienceBook Pro 14锐龙版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">IScienceBook Pro 15锐龙版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺笔记本Pro 15锐龙版</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺笔记本Pro 15</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺笔记本Pro 14</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">IScience G 游戏本</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">IScienceBook Air 13</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">仲恺/IScience显示器</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">键鼠套装</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">鼠标</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 家电 -->
                <li>
                    <a href="javascript:;">家电</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 出行 穿戴 -->
                <li>
                    <a href="javascript:;">出行 穿戴</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 智能 路由器 -->
                <li>
                    <a href="javascript:;">智能 路由器</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 电源 配件 -->
                <li>
                    <a href="javascript:;">电源 配件</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 健康 儿童 -->
                <li>
                    <a href="javascript:;">健康儿童</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 耳机 音响 -->
                <li>
                    <a href="javascript:;">耳机 音响</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <!-- 生活 箱包 -->
                <li>
                    <a href="javascript:;">生活 箱包</a>
                    <i class="iconfont icon-right"></i>
                    <div class="child-list">
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                        <ul class="child-list-item">
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                            <li>
                                <img src="./img/children-list 手机1.png" alt="">
                                <span class="text">Zhku MAX 4</span>
                            </li>
                        </ul>
                    </div>
                </li>

            </ul>

            <!-- 右侧轮播图 -->
            <div class="banner">
                <ul class="banner-img clearfix">
                    <li><img src="./img/banner1.jpg" alt=""></li>
                    <li><img src="./img/banner2.webp" alt=""></li>
                    <li><img src="./img/banner3.webp" alt=""></li>
                    <li><img src="./img/banner4.webp" alt=""></li>

                    <li><img src="./img/banner1.jpg" alt=""></li>
                </ul>
                <div class="banner-arr">
                        <span class="left">
                            <i class="iconfont icon-left"></i>
                        </span>
                    <span class="right">
                            <i class="iconfont icon-right"></i>
                        </span>
                </div>
                <ul class="banner-disc">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>

                </ul>
            </div>
        </div>

        <!-- 轮播图下边 -->
        <div class="banner-sub">
            <ul class="banner-tool">
                <li>
                    <i class="iconfont icon-zhong"> </i>
                    <span>保障服务</span>
                </li>
                <li>
                    <i class="iconfont icon-ziyuan"></i>
                    <span>企业团购</span>
                </li>
                <li>
                    <i class="iconfont icon-F"></i>
                    <span>F码通道</span>
                </li>
                <li>
                    <i class="iconfont icon-SIMqiaguanli"></i>
                    <span>仲恺卡</span>
                </li>
                <li>
                    <i class="iconfont icon-huishuai"></i>
                    <span>以旧换新</span>
                </li>
                <li>
                    <i class="iconfont icon-huafeichongzhi"></i>
                    <span>话费充值</span>
                </li>
            </ul>
            <ul class="banner-ad">
                <li><img src="./img/ad1.jpg" alt=""></li>
                <!-- <li><img src="./img/手机.webp" alt=""></li> -->
                <li><img src="./img/ad2.jpg" alt=""></li>
                <li><img src="./img/ad3.png" alt=""></li>
            </ul>
        </div>


    </div>
</section>

<!-- 内容 -->
<section class="content">
    <div class="c-con w">
        <div class="c-ad">
            <img src="./img/c-ad.webp" alt="">
        </div>

        <!-- 手机 -->
        <div class="c-item1 c-item ">
            <div class="item-title">
                <div class="title-txt">手机</div>
                <div class="more fs16">
                    <span>查看更多</span>
                    <i class="iconfont icon-right-circle-fill"></i>
                </div>
            </div>
            <div class="item-con active clearfix">
                <div class="item1-left fl">
                    <img src="./img/手机.webp" alt="">
                </div>

                <ul class="items fl">
                    <!-- 详情页 -->
                    <c:forEach items="${goods}" var="good">
                        <a href="${pageContext.request.contextPath}/FindGoodsByIdServlet?id=${good._id}" target="_blank">
                            <li class="item">
                                <img src="${pageContext.request.contextPath}/PicServlet?id=${good._id}">
                                <h3 class="item-name">${good.goodName}</h3>
                                <p class="item-info">${good.goodDescibe}</p>
                                <p class="item-price">
                                    <span class="present-price">${good.goodPrice}</span>
                                    <span class="primary-price">8899元</span>
                                </p>
                            </li>
                        </a>

                    </c:forEach>

                    <a href="#">
                        <li class="item">
                            <img src="./img/手机4.webp" class="pic" alt="">
                            <h3 class="item-name">仲恺MAX FOLD</h3>
                            <p class="item-info">折叠大屏｜自研芯片</p>
                            <p class="item-price">
                                <span class="present-price">9999元起</span>
                                <span class="primary-price"></span>
                            </p>
                        </li>
                    </a>
                    <li class="item">
                        <img src="./img/手机5.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺11 Ultra</h3>
                        <p class="item-info">1/1.12''GN2｜2K四微曲屏</p>
                        <p class="item-price">
                            <span class="present-price">5499元起</span>
                            <span class="primary-price">5999元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/手机6.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺11 Pro</h3>
                        <p class="item-info">1/1.12''GN2｜骁龙888</p>
                        <p class="item-price">
                            <span class="present-price">4499元起</span>
                            <span class="primary-price">4999</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/手机7.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺11 青春版</h3>
                        <p class="item-info">仲恺11 青春版 轻薄</p>
                        <p class="item-price">
                            <span class="present-price">2099元起</span>
                            <span class="primary-price">2299元</span>
                        </p>
                    </li>

                </ul>

            </div>

        </div>
        <!-- 家电 -->
        <div class="c-item2 c-item">
            <div class="item-title">
                <div class="title-txt">家电</div>
                <ul class="more fs16">
                    <li class="active">热门</li>
                    <li>电视影音</li>
                </ul>
            </div>
            <div class="item-con active clear_fix">
                <ul class="items">
                    <li class="item">
                        <img src="./img/家电1.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/家电2.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺电视6 65” OLED</h3>
                        <p class="item-info">仲恺电视6 65″OLED</p>
                        <p class="item-price">
                            <span class="present-price">6999元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/家电3.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺电视6 至尊版 65英寸</h3>
                        <p class="item-info">画质新境界</p>
                        <p class="item-price">
                            <span class="present-price">7999元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/家电4.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺电视 ES55 2022款</h3>
                        <p class="item-info">多分区，画质轻旗舰</p>
                        <p class="item-price">
                            <span class="present-price">3399元起</span>
                            <span class="primary-price">3499元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/家电5.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺互联网对开门冰箱 540L</h3>
                        <p class="item-info">重磅新品福利特惠</p>
                        <p class="item-price">
                            <span class="present-price">2799元</span>
                            <span class="primary-price">3699元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/家电6.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/家电7.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺超薄电磁炉</h3>
                        <p class="item-info">纤薄美学，精准猛火</p>
                        <p class="item-price">
                            <span class="present-price">499元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/家电8.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺集尘扫拖机器人</h3>
                        <p class="item-info">自动倒垃圾，45天手不沾尘</p>
                        <p class="item-price">
                            <span class="present-price">2599元</span>
                            <span class="primary-price">2999元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/家电9.webp" class="pic" alt="">
                        <h3 class="item-name">IScience全自动波轮洗衣机1A 8kg</h3>
                        <p class="item-info">一键操作，父母都爱用</p>
                        <p class="item-price">
                            <span class="present-price">749元</span>
                            <span class="primary-price">899元</span>
                        </p>
                    </li>
                    <li class="item-last">
                        <ul>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">仲恺互联网烟灶套装（天然气）</h3>
                                    <img src="./img/家电10.webp" alt="">
                                </div>
                                <span class="price">1799元起</span>
                            </li>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">
                                        <p class="item-more">浏览更多</p>
                                        <p class="hot-item">热门</p>
                                    </h3>
                                    <i class="iconfont  icon-youjiantou"></i>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="item-con clear_fix">
                <ul class="items">
                    <li class="item">
                        <img src="./img/智能1.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/智能2.webp" class="pic" alt="">
                        <h3 class="item-name">Zhku Sound</h3>
                        <p class="item-info">仲恺高保真智能音箱</p>
                        <p class="item-price">
                            <span class="present-price">499元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能3.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺路由器AX3000</h3>
                        <p class="item-info">仲恺路由器AX3000</p>
                        <p class="item-price">
                            <span class="present-price">349元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能4.webp" class="pic" alt="">
                        <h3 class="item-name">IScience路由器AX3000</h3>
                        <p class="item-info">疾速WiFi6，更快一步。</p>
                        <p class="item-price">
                            <span class="present-price">249元</span>
                            <span class="primary-price">269元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能5.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺全自动智能门锁 Pro</h3>
                        <p class="item-info">一步到位，全面高能</p>
                        <p class="item-price">
                            <span class="present-price">2199元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能6.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/智能7.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺智能门锁 E</h3>
                        <p class="item-info">告别钥匙，畅享便捷生活</p>
                        <p class="item-price">
                            <span class="present-price">899元</span>
                            <span class="primary-price">999元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能8.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺小爱音箱 Play</h3>
                        <p class="item-info">听音乐、语音遥控家电</p>
                        <p class="item-price">
                            <span class="present-price">109元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能9.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺智能窗帘</h3>
                        <p class="item-info">窗帘开合随心控</p>
                        <p class="item-price">
                            <span class="present-price">749元</span>
                            <span class="primary-price">799元</span>
                        </p>
                    </li>
                    <li class="item-last">
                        <ul>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">仲恺体脂秤2</h3>
                                    <img src="./img/智能10.webp" alt="">
                                </div>
                                <span class="price">99元</span>
                            </li>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">
                                        <p class="item-more">浏览更多</p>
                                        <p class="hot-item">热门</p>
                                    </h3>
                                    <i class="iconfont  icon-youjiantou"></i>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 智能 -->
        <div class="c-item2 c-item">
            <div class="item-title">
                <div class="title-txt">智能</div>
                <div class="more fs16">
                    <ul>
                        <li class="active">热门</li>
                        <li>安防</li>
                        <li>出行</li>
                    </ul>
                </div>
            </div>
            <div class="item-con active clear_fix">
                <ul class="items">
                    <li class="item">
                        <img src="./img/智能1.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/智能2.webp" class="pic" alt="">
                        <h3 class="item-name">Zhku Sound</h3>
                        <p class="item-info">仲恺高保真智能音箱</p>
                        <p class="item-price">
                            <span class="present-price">499元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能3.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺路由器AX3000</h3>
                        <p class="item-info">仲恺路由器AX3000</p>
                        <p class="item-price">
                            <span class="present-price">349元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能4.webp" class="pic" alt="">
                        <h3 class="item-name">IScience路由器AX3000</h3>
                        <p class="item-info">疾速WiFi6，更快一步。</p>
                        <p class="item-price">
                            <span class="present-price">249元</span>
                            <span class="primary-price">269元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能5.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺全自动智能门锁 Pro</h3>
                        <p class="item-info">一步到位，全面高能</p>
                        <p class="item-price">
                            <span class="present-price">2199元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能6.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/智能7.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺智能门锁 E</h3>
                        <p class="item-info">告别钥匙，畅享便捷生活</p>
                        <p class="item-price">
                            <span class="present-price">899元</span>
                            <span class="primary-price">999元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能8.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺小爱音箱 Play</h3>
                        <p class="item-info">听音乐、语音遥控家电</p>
                        <p class="item-price">
                            <span class="present-price">109元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/智能9.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺智能窗帘</h3>
                        <p class="item-info">窗帘开合随心控</p>
                        <p class="item-price">
                            <span class="present-price">749元</span>
                            <span class="primary-price">799元</span>
                        </p>
                    </li>
                    <li class="item-last">
                        <ul>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">仲恺体脂秤2</h3>
                                    <img src="./img/智能10.webp" alt="">
                                </div>
                                <span class="price">99元</span>
                            </li>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">
                                        <p class="item-more">浏览更多</p>
                                        <p class="hot-item">热门</p>
                                    </h3>
                                    <i class="iconfont  icon-youjiantou"></i>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="c-ad">
            <img src="./img/c-ad3.webp" width="1226px" height="120px" alt="">
        </div>

        <!-- 搭配 -->
        <div class="c-item2 c-item">
            <div class="item-title">
                <div class="title-txt">搭配</div>
                <div class="more fs16">
                    <ul>
                        <li class="active">热门</li>
                        <li>耳机音箱</li>
                    </ul>
                </div>
            </div>
            <div class="item-con active clear_fix">
                <ul class="items">
                    <li class="item">
                        <img src="./img/搭配1.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/搭配2.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺降噪耳机 Pro FlipBuds Pro</h3>
                        <p class="item-info">主动降噪 超长续航</p>
                        <p class="item-price">
                            <span class="present-price">799元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/搭配3.webp" class="pic" alt="">
                        <h3 class="item-name">IScience AirDots 3 Pro</h3>
                        <p class="item-info">智能降噪 超低延迟</p>
                        <p class="item-price">
                            <span class="present-price">299元</span>
                            <span class="primary-price">349元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/搭配4.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺手环6 NFC版</h3>
                        <p class="item-info">全屏实力</p>
                        <p class="item-price">
                            <span class="present-price">259元</span>
                            <span class="primary-price">279元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/搭配5.webp" class="pic" alt="">
                        <h3 class="item-name">IScience AirDots 2真无线蓝牙耳机</h3>
                        <p class="item-info">支持蓝牙5.0，自动秒连，拿起就能用</p>
                        <p class="item-price">
                            <span class="present-price">79元</span>
                            <span class="primary-price">99元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/搭配6.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/搭配7.webp" class="pic" alt="">
                        <h3 class="item-name">IScience 手表</h3>
                        <p class="item-info">35g超轻/1.4"大屏/多功能NFC/7天长续航</p>
                        <p class="item-price">
                            <span class="present-price">269元</span>
                            <span class="primary-price">299元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/搭配8.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺手表Color 运动版</h3>
                        <p class="item-info">超长续航，支持血氧功能</p>
                        <p class="item-price">
                            <span class="present-price">649元</span>
                            <span class="primary-price">499元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/搭配9.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺真无线蓝牙耳机Air 2s</h3>
                        <p class="item-info">全面升级，智慧真无线</p>
                        <p class="item-price">
                            <span class="present-price">359元</span>
                            <span class="primary-price">399元</span>
                        </p>
                    </li>
                    <li class="item-last">
                        <ul>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">仲恺无线蓝牙耳机Air 2 Pro</h3>
                                    <img src="./img/搭配10.webp" alt="">
                                </div>
                                <span class="price">449元</span>
                            </li>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">
                                        <p class="item-more">浏览更多</p>
                                        <p class="hot-item">热门</p>
                                    </h3>
                                    <i class="iconfont  icon-youjiantou"></i>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 配件 -->
        <div class="c-item2 c-item">
            <div class="item-title">
                <div class="title-txt">配件</div>
                <div class="more fs16">
                    <ul>
                        <li class="active">热门</li>
                        <li>充电器</li>
                    </ul>
                </div>
            </div>
            <div class="item-con active clear_fix">
                <ul class="items">
                    <li class="item">
                        <img src="./img/配件1.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/配件2.webp" class="pic" alt="">
                        <h3 class="item-name">高速无线充套装 </h3>
                        <p class="item-info">快速无线闪充，Qi充电标准</p>
                        <p class="item-price">
                            <span class="present-price">149元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/配件3.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺无线充电宝青春版10000mAh</h3>
                        <p class="item-info">能量满满，无线有线都能充</p>
                        <p class="item-price">
                            <span class="present-price">109元</span>
                            <span class="primary-price">129元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/配件4.jpg" class="pic" alt="">
                        <h3 class="item-name">仲恺插线板（含3口USB 2A快充） </h3>
                        <p class="item-info">3个USB充电口，支持快充</p>
                        <p class="item-price">
                            <span class="present-price">59元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/配件5.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺魔方转换器</h3>
                        <p class="item-info">方寸之间，能量无限</p>
                        <p class="item-price">
                            <span class="present-price">59元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/配件6.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/配件7.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺插线板 快充版 27W</h3>
                        <p class="item-info">安全的大功率快充插线板</p>
                        <p class="item-price">
                            <span class="present-price">69元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/配件8.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺筋膜枪</h3>
                        <p class="item-info">仲恺筋膜枪 </p>
                        <p class="item-price">
                            <span class="present-price">499元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/配件9.jpg" class="pic" alt="">
                        <h3 class="item-name">仲恺插线板6位基础版（含3口USB 2A快充）</h3>
                        <p class="item-info">小巧设计，便捷不占地儿</p>
                        <p class="item-price">
                            <span class="present-pric">69元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item-last">
                        <ul>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">仲恺车载充电器快充版</h3>
                                    <img src="./img/配件10.webp" alt="">
                                </div>
                                <span class="price">69元</span>
                            </li>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">
                                        <p class="item-more">浏览更多</p>
                                        <p class="hot-item">热门</p>
                                    </h3>
                                    <i class="iconfont  icon-youjiantou"></i>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 周边 -->
        <div class="c-item2 c-item">
            <div class="item-title">
                <div class="title-txt">周边</div>
                <div class="more fs16">
                    <ul>
                        <li class="active">热门</li>
                        <li>出行</li>
                    </ul>
                </div>
            </div>
            <div class="item-con active clear_fix">
                <ul class="items">
                    <li class="item">
                        <img src="./img/周边1.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/周边2.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺声波电动牙刷T300</h3>
                        <p class="item-info">31000次/分钟震动，刷的干净</p>
                        <p class="item-price">
                            <span class="present-price">99元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/周边3.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺声波电动牙刷T500</h3>
                        <p class="item-info">刷的干净、智能护齿</p>
                        <p class="item-price">
                            <span class="present-price">169元</span>
                            <span class="primary-price">179元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/周边4.webp" class="pic" alt="">
                        <h3 class="item-name"> 仲恺声波电动牙刷T700</h3>
                        <p class="item-info">仲恺声波电动牙刷T700</p>
                        <p class="item-price">
                            <span class="present-price">369元</span>
                            <span class="primary-price">399元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/周边5.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺声波电动牙刷T700</h3>
                        <p class="item-info">陶瓷净须，开局之作</p>
                        <p class="item-price">
                            <span class="present-price">399元</span>
                            <span class="primary-price">499元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/周边6.webp" class="pic" alt="">
                    </li>
                    <li class="item">
                        <img src="./img/周边7.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺电动剃须刀S100</h3>
                        <p class="item-info">浮动双刀头 全身水洗</p>
                        <p class="item-price">
                            <span class="present-price">78元</span>
                            <span class="primary-price">79元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/周边8.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺电动剃须刀S500 </h3>
                        <p class="item-info">浮动贴面更干净，减压设计更舒适</p>
                        <p class="item-price">
                            <span class="present-price">169元</span>
                            <span class="primary-price">199元</span>
                        </p>
                    </li>
                    <li class="item">
                        <img src="./img/周边9.webp" class="pic" alt="">
                        <h3 class="item-name">仲恺电动剃须刀S300</h3>
                        <p class="item-info">青年“无须”新选择</p>
                        <p class="item-price">
                            <span class="present-price">99元</span>
                            <span class="primary-price"></span>
                        </p>
                    </li>
                    <li class="item-last">
                        <ul>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">日常元素抽纸 青春版 24包/箱</h3>
                                    <img src="./img/周边10.webp" alt="">
                                </div>
                                <span class="price">25.9元</span>
                            </li>
                            <li>
                                <div class="item-info">
                                    <h3 class="item-name">
                                        <p class="item-more">浏览更多</p>
                                        <p class="hot-item">热门</p>
                                    </h3>
                                    <i class="iconfont  icon-youjiantou"></i>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="c-ad">
            <img src="./img/c-ad2.webp" alt="">
        </div>

        <!-- 视频 -->
        <div class="c-item3 c-item">
            <div class="item-title">
                <div class="title-txt">仲园生活</div>
                <div class="more fs16">
                    <span>查看全部</span>
                    <i class="iconfont icon-right-circle-fill"></i>
                </div>
            </div>
            <div class="item-con active clearfix">
                <ul class="items fl">
                    <a href="#">
                        <li>
                            <img src="./img/shiping1.webp" alt="">
                            <h3 class="video-name">自由</h3>
                            <p class="video-info"></p>
                            <span> <i class="iconfont  icon-shipinbofang-"></i></span>

                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <img src="./img/shiping2.webp" alt="">
                            <h3 class="video-name">平等</h3>
                            <span><i class="iconfont  icon-shipinbofang-"></i></span>

                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <img src="./img/shiping3.webp" alt="">
                            <h3 class="video-name">公正</h3>
                            <p class="video-info"></p>
                            <span><i class="iconfont  icon-shipinbofang-"></i></span>

                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <img src="./img/shiping4.webp" alt="">
                            <h3 class="video-name">法制</h3>
                            <p class="video-info"></p>
                            <span> <i class="iconfont  icon-shipinbofang-"></i></span>

                        </li>
                    </a>
                </ul>
            </div>
        </div>

    </div>
</section>
<!-- 工具栏 -->
<section class="home-tool">
    <ul>
        <li>
            <i class="iconfont icon-shouji"></i>
            <span>手机App</span>
            <div class="download.png">
                <img src="./img/download.png.png" alt="">
                <span>
                        扫码领取新人百元礼包
                    </span>
            </div>
        </li>
        <li>
            <i class="iconfont  icon-yonghu"></i>
            <span>个人中心</span>
        </li>
        <li>
            <i class="iconfont  icon-gongju"></i>
            <span>售后服务</span>
        </li>
        <li>
            <i class="iconfont icon-kefu"></i>
            <span>人工客服</span>
        </li>
        <li>
            <a href="./cart.jsp">
                <i class="iconfont  icon-gouwuche"></i>
                <span>购物车</span>
            </a>
        </li>
    </ul>
    <ul>
        <li>
            <i class="iconfont  icon-top"></i>
            <span>回顶部</span>
        </li>
    </ul>
</section>

<section class="home-loft">
    <ul>
        <li>
            <i class="iconfont  icon-shouji"></i>
            <span>手机</span>
        </li>
        <li>
            <i class="iconfont  icon-jiadian"></i>
            <span>家电</span>
        </li>
        <li>
            <i class="iconfont  icon-jiqiren"></i>
            <span>智能</span>
        </li>
        <li>
            <i class="iconfont  icon-shoubiao"></i>
            <span>搭配</span>
        </li>
        <li>
            <i class="iconfont  icon-chongdianqi"></i>
            <span>配件</span>
        </li>
        <li>
            <i class="iconfont  icon-tubiaoCSban-"></i>
            <span>周边</span>
        </li>
        <li>
            <i class="iconfont  icon-shipin"></i>
            <span>视频</span>
        </li>
    </ul>
</section>


<footer>
    <!-- 主体 -->
    <div class="f-service w">
        <!-- 服务 -->
        <ul class="list-service ">
            <li style="border: none;"><a href="javascipt:;"><svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-gongju"></use>
            </svg>预约维修服务</a></li>
            <li><a href="javascipt:;"><svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-7tiantuihuan"></use>
            </svg>7天无理由退货</a></li>
            <li><a href="javascipt:;"><svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-15tianwuliyoutuihuo"></use>
            </svg>15天免费退货</a></li>
            <li><a href="javascipt:;"><svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-liwu"></use>
            </svg>满69包邮</a></li>
            <li><a href="javascipt:;"><svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-didian"></use>
            </svg>520余家售后网点</a></li>
        </ul>
        <!-- 联系 -->
        <div class="f-link clearfix">
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="javascipt:;">账户管理</a></dd>
                <dd><a href="javascipt:;">购物管理</a></dd>
                <dd><a href="javascipt:;">订单操作</a></dd>
            </dl>
            <dl>
                <dt>服务支持</dt>
                <dd><a href="javascipt:;">售后政策</a></dd>
                <dd><a href="javascipt:;">自助服务</a></dd>
                <dd><a href="javascipt:;">相关下载</a></dd>
            </dl>
            <dl>
                <dt>线下门店</dt>
                <dd><a href="javascipt:;">仲恺之家</a></dd>
                <dd><a href="javascipt:;">服务网点</a></dd>
                <dd><a href="javascipt:;">授权体验店</a></dd>
            </dl>
            <dl>
                <dt>关于仲恺</dt>
                <dd><a href="javascipt:;">了解仲恺</a></dd>
                <dd><a href="javascipt:;">加入仲恺</a></dd>
                <dd><a href="javascipt:;">投资者关系</a></dd>
                <dd><a href="javascipt:;">企业社会责任</a></dd>
                <dd><a href="javascipt:;">廉洁举报</a></dd>
            </dl>
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="javascipt:;">新浪微博</a></dd>
                <dd><a href="javascipt:;">官方微信</a></dd>
                <dd><a href="javascipt:;">联系我们</a></dd>
                <dd><a href="javascipt:;">公益基金会</a></dd>
            </dl>
            <dl>
                <dt>特色服务</dt>
                <dd><a href="javascipt:;">F码通道</a></dd>
                <dd><a href="javascipt:;">礼物码</a></dd>
                <dd><a href="javascipt:;">防伪查询</a></dd>
            </dl>
            <!-- 右侧联系 -->
            <div class="col-tel fr">
                <p class="phone">400-100-5678</p>
                <p>8:00-18:00(仅收市话费)</p>
                <div class="f-btn fs12 clearfix">
                    <i class="iconfont icon-icon-test"></i>
                    人工客服
                </div>
                <div class="follow fs12 pos-r">
                    关注仲恺：
                    <i class="iconfont  icon-weibo"></i>
                    <i class="iconfont  icon-weixin weixin">
                        <img src="./img/download.png.png" alt="" style="display: none;" id="followwximg">
                    </i>

                </div>
            </div>

        </div>
        <!-- 信息 -->
        <div class="f-info clearfix">
            <!-- logo -->
            <div class="logo fl"></div>
            <!-- 网站 -->
            <div class="f-sites fl fs12">
                <p class="sites">
                    <a href="javascript:;">仲恺商城</a>
                    <sapn>|</sapn>
                    <a href="javascript:;">仲恺</a>
                    <sapn>|</sapn>
                    <a href="javascript:;">仲恺天猫店</a>
                    <sapn>|</sapn>
                    <a href="javascript:;">仲恺集团隐私政策</a>
                    <sapn>|</sapn>
                    <a href="javascript:;">仲恺公司儿童信息保护规则</a>
                    <sapn>|</sapn>
                    <a href="javascript:;">仲恺商城隐私政策</a>
                    <sapn>|</sapn>
                    <a href="javascript:;">仲恺商城用户协议</a>
                    <sapn>|</sapn>
                    <a href="javascript:;">问题反馈</a>
                    <sapn>|</sapn>
                    <a href="javascript:;">Select Location</a>

                </p>

                <div class="sites-pic">
                    <a href="javascript:;"><img src="./img/copy1.png" alt=""></a>
                    <a href="javascript:;"><img src="./img/copy2.png" alt=""></a>
                    <a href="javascript:;"><img src="./img/copy3.png" alt=""></a>
                    <a href="javascript:;"><img src="./img/copy4.png" alt=""></a>
                    <a href="javascript:;"><img src="./img/copy5.png" alt=""></a>
                </div>



            </div>
        </div>
        <!-- slogan -->
        <div class="slogan"></div>
    </div>
</footer>



<script src="./js/jquery.min.js"></script>
<script src="./js/header.js"></script>
<script src="./js/main.js"></script>
<script src="./js/footer.js"></script>
<script src="./js/swiper copy.js"></script>
<%--<script src="./js/index.js"></script>--%>
<script src="./js/template-web.min.js"></script>



</body>

</html>
