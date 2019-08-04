<%--
  Created by IntelliJ IDEA.
  User: Saito
  Date: 2019/7/23
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>拼夕夕，新电商毁灭者</title>
    <style type="text/css">
        * {
            /*去除标签自带内外编剧*/
            margin: 0;
            padding: 0;
        }

        body {
            background: #fafafa;
        }

        .header {
            height: 85px;
            background: #ffffff;
            padding-top: 25px;
            border-bottom: 3px solid #ed445b;
            position: fixed;
            z-index: 999;
            width: 100%;
            top: 0;
        }

        .bxx {
            width: 80%;
            margin: 0 auto;

        }

        .bxx > div {
            float: left;
        }

        .logo {
            width: 180px;
        }

        .nav {
            height: 60px;
            text-align: right;
            float: right;
            width: 80%;
            line-height: 60px;

        }

        a {
            text-decoration: none;
            color: #6e6e6e;
            font-size: 20px;
            font-weight: lighter;
        }

        .nav > span {
            text-decoration: none;
            color: #6e6e6e;
            font-weight: lighter;
            font-size: 20px;
            margin: 0 10px;
        }

        .banner {
            width: 1200px;
            height: 500px;
            margin: 0 auto;
            border: 3px lightgray;
            position: relative;
            margin-top: 110px;

        }

        .img {
            position: absolute;
        }

        .activity {
            width: 1200px;
            margin: 0 auto;
            margin-top: 50px;
            font-size: medium;
            height: 700px;
        }

        .special {
            width: 1200px;
            margin: 0 auto;
            margin-top: 50px;
            font-size: medium;
            height: 2000px;
        }

        .more {
            margin-bottom: 50px;
            border-bottom: 1px solid silver;
            padding-bottom: 20px;
        }

        .more > a {
            float: right;
            font-size: medium;
        }

        .context > div {
            float: left;
            border: 9px solid white;
            margin-right: 15px;
            margin-bottom: 50px;
        }

        .context > div:hover {
            cursor: pointer;
            opacity: 0.7;
        }

        .bottom {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="bxx">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/imgs/pdd_logo.png">
        </div>
        <div class="nav">
            <a href="#">首页</a><span>|</span>
            <a href="#">热点资讯</a><span>|</span>
            <a href="/pages/salable_commodity.do">假货入驻</a><span>|</span>
            <a href="#">黑心抢劫</a><span>|</span>
            <a href="/pages/shopping.do">购物车</a><span>|</span>
            <a href="#">正品举报</a><span>|</span>
            <c:if test="${user.getU_name()!=null&&user.getU_nickname()!=null}"><a
                    href="/pages/self.do">欢迎：${user.getU_nickname()}</a></c:if>
            <c:if test="${user.getU_name()!=null&&user.getU_nickname()==null}"><a
                    href="/pages/self.do">欢迎：${user.getU_name()}</a></c:if>
            <c:if test="${user.getU_name()==null}"><a href="/pages/toLogin.do">请登录</a></c:if>

        </div>
    </div>
</div>
<div class="banner">
    <div class="img"><img src="../imgs/banner1.jpg"></div>
    <div class="img"><img src="../imgs/banner2.jpg" width="1200px"></div>
    <div class="img"><img src="../imgs/banner3.jpg" width="1200px"></div>

</div>
<div class="activity">
    <div class="more">
        <span>精彩活动</span>
        <a href="/pages/home/reqGood.do">更多></a>
    </div>
    <div class="context">
        <div><a href="/pages/reqGood.do"><img src="../imgs/brand.jpg"></a></div>
        <div><a href="/pages/reqSupermarketGood.do"><img src="../imgs/supermarket.jpg"></a></div>
        <div><a href="/pages/reqSaleGood.do"><img src="../imgs/sale.jpg"></a></div>
        <div><a href="/pages/reqSecKillGood.do"><img src="../imgs/seckill.jpg"></a></div>


    </div>
</div>
<div class="special">
    <div class="more">
        <span>精选专题</span>
        <a href="#">更多</a>
    </div>
    <div class="context">
        <div><img src="../imgs/girlclothes.jpg"></div>
        <div><img src="../imgs/boyshirt.jpg"></div>
        <div><img src="../imgs/food.jpg"></div>
        <div><img src="../imgs/shoes.jpg"></div>
        <div><img src="../imgs/home.jpg"></div>
        <div><img src="../imgs/beauty_index.jpg"></div>
        <div><img src="../imgs/3c.jpg"></div>
        <div><img src="../imgs/baby.jpg"></div>
        <div><img src="../imgs/furniture.jpg"></div>
        <div><img src="../imgs/sports.jpg"></div>
    </div>
</div>
<div class="bottom" style="height: 120px;background: gray ">
    <img src="../imgs/">
</div>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">
    $(".banner>.img").eq(0).fadeIn().siblings().fadeOut();
    var i = 0;
    setInterval(function () {
        i++;
        if (i == 3) {
            i = 0;
        }
        $(".banner>.img").eq(i).fadeIn().siblings().fadeOut();

    }, 3000)
</script>

</body>
</html>
