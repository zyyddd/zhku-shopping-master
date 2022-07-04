<%--
  Created by AFun.
  User: AFun
  Date: 2021/12/3
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>详细信息</title>
    <!-- 重置样式 -->
    <link rel="stylesheet" href="./css/reset.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="./css/base.css">
    <!-- 当前主页样式 -->
    <link rel="stylesheet" href="./css/good-details.css">
    <!-- 尾部样式 -->
    <link rel="stylesheet" href="./css/footer.css">
    <!-- 图标库 -->
    <link rel="stylesheet" href="./iconfont/iconfont.css">
    <link rel="shortcut icon" href="./icon/favicon.ico" type="image/x-icon">
    <!-- 轮播图 -->
    <!-- <script src="./js/slide.js"></script> -->
    <!-- layui -->
    <link rel="stylesheet" href="./layui-v2.6.8/layui/css/layui.css">
    <script src="./layui-v2.6.8/layui/layui.js"></script>

    <script type="text/javascript" >
        function  addOrder(id){
            location.href = "${pageContext.request.contextPath}/AddOrderServlet?id="+id
        }
    </script>
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
                        <a href="./index.jsp">仲恺商城</a>
                        <span>|</span>
                    </li>

                    <li>
                        <a href="javascript:;">云服务</a>
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
                        $('.header-info').children().eq(0).find('a').attr('href','#')
                        $('.header-info').children().eq(1).find('a').attr('href','./login2.jsp')
                        $('.putin').find('a').attr('href','javascript:addOrder(${good._id})')
                        $('.login-notice').hide()
                    }
                }
            </script>
            <!-- 用户登录注册 -->
            <ul class="header-info fr">
                <li>
                    <a href="${pageContext.request.contextPath}/login2.jsp">登录</a>
                    <span>|</span>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/register.jsp">注册</a>
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
                <a href="./index.jsp">
                    <div class="logo pos-a"></div></a>
            </div>

            <ul class="h-list fl fs16">
                <!-- 全部商品 -->
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
            <!-- 搜索下拉框 -->
            <form action="" class="h-search fr">
                <input type="text " placeholder="仲恺手机">
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

<!-- 吸顶效果 -->
<div class="xi-product">
    <script id="tpl1"  type="type/html">
            <div class="xm-nav">
                <div class="container">
                    <h2>{{da.pName}}</h2>
                    <a href="#">用户评价</a>
                </div>
            </div>
        </script>
</div>
<!-- 主要部分 -->
<div class="page">

    <!-- 有×叉 -->
    <div class="mi-details">
        <div class="login-notice">
            为方便您购买，请提前登录
            <a href="./login2.jsp">
                立即登录
            </a>
            <a href="" class="iconfont icon-cha"></a>
        </div>
    </div>


    <!-- 弹性盒产品左右栏 -->
    <div class="product-box">


        <!-- 动态渲染区域 -->

            <!-- 左边轮播 -->
            <div class="img-left">
                <div class="container">
                    <ul class="wrapper">
                        <li style="display:block">
                            <a href="javascript:;">
                                <img src="${pageContext.request.contextPath}/PicServlet?id=${good._id}">
                            </a>
                        </li>
                    </ul>



                </div>
            </div>
            <!-- 右边产品介绍 -->

            <div class="product-con">
<%--            TODO 这里改代码即可 --%>
                <h2>${good.goodName}</h2>
                <p class="sale-decr">
                    ${good.goodDescibe}
                </p>
                <p class="company-info">
                    仲恺自营
                </p>
                <p class="price-info">
                    <span>
                        ${good.goodPrice}
                    </span>
                </p>
                <div class="line">

                </div>
                <div class="product-address">
                    <i class="iconfont icon-dingwei icon"></i>
                    <div class="address-con">
                        <div>
                            <div class="address-info">
                                <span>广东</span>
                                <span>广州市</span>
                                <span>海珠区</span>
                                <span>滨江街道</span>
                                <a href="#">修改</a>
                            </div>
                        </div>
                        <div class="storage">
                            <span>有现货</span>
                        </div>
                    </div>
                </div>
                <div class="buychoies">
                    <div class="title fs18">
                        选择颜色
                    </div>
                    <ul class="clearfix">
                        <li title="${good.color}" class="active">
                            <a href="">
                                ${good.color}
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="selected-list">
                    <ul>
                        <li>
                            ${good.goodName} ${good.color} 通用
                            <span class="fr">${good.goodPrice}</span>
                        </li>
                    </ul>
                    <div class="total-price">
                        总计：${good.goodPrice}
                    </div>
                </div>
                <div class="btn-box">
                    <div class="putin"> <a href="javascript:viod(0);">加入购物车</a></div>
                    <div class="likes"> <a href="#"><i class="iconfont icon-xin"></i>喜欢</a></div>
                </div>
                <div class="after-sale-info">
                    <span><a href="javascript:void(0);">
                            <i class="iconfont icon-tick"></i>
                            <em>仲恺自营</em>
                        </a>
                    </span>
                    <span><a href="javascript:void(0);">
                            <i class="iconfont icon-tick"></i>
                            <em>仲恺发货</em>
                        </a>
                    </span>
                    <span><a href="javascript:void(0);">
                            <i class="iconfont icon-tick"></i>
                            <em>7天无理由退货</em>
                        </a>
                    </span>
                    <span><a href="javascript:void(0);">
                            <i class="iconfont icon-tick"></i>
                            <em>运费说明</em>
                        </a>
                    </span>
                    <span><a href="javascript:void(0);">
                            <i class="iconfont icon-tick"></i>
                            <em>企业信息</em>
                        </a>
                    </span>
                    <span><a href="javascript:void(0);">
                            <i class="iconfont icon-tick"></i>
                            <em>售后服务政策</em>
                        </a>
                    </span>
                    <span><a href="javascript:void(0);">
                            <i class="iconfont icon-tick"></i>
                            <em>7天价格保护</em>
                        </a>
                    </span>
                </div>
            </div>


    </div>
</div>

<!-- 那两张图片 -->
<div class="pic-main">
    <!-- 官方微信 -->
    <section>
        <div class="view">
            <div class="title">
                <h3>官方微信</h3>
            </div>
            <div class="img-box">
                <img src="./img/weixin.jpg" alt="">
            </div>
        </div>
    </section>
    <!-- 价格说明 -->
    <section>
        <div class="view">
            <div class="title">
                <h3>价格说明</h3>
            </div>
            <div class="img-box">
                <img src="./img/price-dicr.jpeg" alt="">
            </div>
        </div>
    </section>
</div>

<!--底部 -->
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
                <dt>关于仲恺</dt>
                <dd><a href="javascipt:;">了解仲恺</a></dd>
                <dd><a href="javascipt:;">加入仲恺</a></dd>
                <dd><a href="javascipt:;">投资者关系</a></dd>
                <dd><a href="javascipt:;">企业社会责任</a></dd>
                <dd><a href="javascipt:;">廉洁举报</a></dd>
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

<!--引入js -->
<!-- <script src="./js/floor.js"></script> -->
<script src="./js/footer.js"></script>
<script src="./js/jquery.min.js"></script>
<script src="./js/header.js"></script>
<script src="./js/goods-details.js"></script>
<script src="./js/template-web.min.js"></script>
<!-- 工具栏右侧的 -->
<div class="home-tool-bar">
    <a href="javascript:void(0);" class="item">
        <div class="icon">
            <img src="img/w1.png" alt="">
        </div>
        <span class="text">
                手机APP
            </span>
        <div class="pop-content">
            <img src="./img/erweima.png" alt="">
            <span class="decs">
                    扫码领取新人百元礼包
                </span>
        </div>
    </a>
    <a href="./favorite.jsp" class="item">
        <div class="icon">
            <img src="img/w2.png" alt="">
        </div>
        <span class="text">
                个人中心
            </span>
    </a>
    <a href="javascript:void(0);" class="item">
        <div class="icon">
            <img src="img/w3.png" alt="">
        </div>
        <span class="text">
                售后服务
            </span>
    </a>
    <a href="javascript:void(0);" class="item">
        <div class="icon">
            <img src="img/w4.png" alt="">
        </div>
        <span class="text">
                人工客服
            </span>
    </a>
    <a href="./cart.jsp" class="item">
        <div class="icon">
            <img src="img/w5.png" alt="">
        </div>
        <span class="text">
                购物车
            </span>
    </a>

</div>
</body>

</html>