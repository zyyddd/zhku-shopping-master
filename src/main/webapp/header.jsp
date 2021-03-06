<%--
  Created by AFun.
  User: AFun
  Date: 2021/12/3
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- 重置样式 -->
    <link rel="stylesheet" href="./css/reset.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="./css/base.css">
    <!-- 当前主页样式 -->
    <link rel="stylesheet" href="./css/header.css">
    <!-- 图标库 -->
    <link rel="stylesheet" href="./iconfont/iconfont.css">


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
                        <a href="javascript:;">MIUI</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">LOT</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">云服务</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">天星数科</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">有品</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">小爱开放平台</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">企业团购</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">资质证照</a>
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
                <a href="./cart.jsp">
                    <i class="iconfont icon-gouwuche"></i>
                    <span>购物车</span>
                    <span>(0)</span>
                </a>
                <!-- 下拉购物车 -->
                <div class="cart-menu">
                    购物车中还没有商品,赶紧选购吧!
                </div>
            </div>

            <!-- 用户登录注册 -->
            <ul class="header-info fr">
                <li>
                    <a href="./login2.jsp">登录</a>
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
                        <ul class="down-menu w clearfix">
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
                        <ul class="down-menu main clear_fix">
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
                        <ul class="down-menu main clear_fix">
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
                        <ul class="down-menu main clear_fix">
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
                        <ul class="down-menu main clear_fix">
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
                        <ul class="down-menu main clear_fix">
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
                        <ul class="down-menu main clear_fix">
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
                        <ul class="down-menu main clear_fix">
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

            <form action="" class="h-search fr">
                <input type="text" placeholder="仲恺手机">
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

<script src="./js/jquery.min.js"></script>
<script src="./js/header.js"></script>
</body>
</html>
