<%--
  Created by IntelliJ IDEA.
  User: Saito
  Date: 2019/7/24
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>并夕夕9.9特卖-每日精选山寨产品</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background: #fafafa;
        }

        .nav_wrapper {
            background-color: #ed445b;
            position: fixed;
            margin-top: 107px;
            height: 44px;
            width: 100%;
            z-index: 1;
        }

        .nav_wrapper > nav {
            width: 100%;
            margin: 0 auto;

        }

        .nav > a>li {
            position: relative;
            left: 10%;
            display: inline-block;
            height: 44px;

            line-height: 40px;
            padding: 0 18px;
            font-size: 18px;
            color: #fff;
            text-align: center;
            cursor: pointer;

        }

        .focus {
            background-color: #d53758;
        }

        .banner_faker {

            border: 9px solid #f6f6f6;
            margin-right: 15px;
            position: relative;
            left: 10%;
            margin-top: 181px;
            float: left;
        }

        .float {
            float: right;
            width: 500px;
            height: 270px;
            border: 1px solid #f6f6f6;
            padding-left: 30px;
            padding-right: 20px;
        }
        .goods_group{
            margin-right: 15px;
            margin-bottom: 50px;
            position: relative;
            left: 10%;
            margin-top: 50px;
            float: left;
            overflow: hidden;

        }
        .goods{
            background-color: #fff;
            float: left;
            margin: 0 30px 30px 0;
            width: 258px;
            height: 418px;
            position: relative;
        }
        .img{
            width: 100%;
            height: auto;
        }
        .title{
            padding: 10px 15px 10px 20px;
            line-height: 1.4;
            font-size: 17.5px;
            margin-top:-0.04rem ;
            color: #636363;
            overflow: hidden;
            text-overflow: ellipsis;

        }
        .price{
            font-size: 23px;
            line-height: 32px;
        }
        .count{
            float: right;
            font-size: 17.5px;
            margin-top:-0.04rem ;
            color: #636363;
            overflow: hidden;
            text-overflow: ellipsis;


        }
    </style>
</head>
<body>
<%@ include file="nav.jsp" %>
<div class="nav_wrapper">

    <ul class="nav">

        <a href="/pages/reqGood.do"> <li>假货清仓</li></a>
        <a href="/pages/reqSupermarketGood.do"> <li>食品超市</li></a>
        <a href="/pages/reqSaleGood.do"> <li>9.9特卖</li></a>
        <a href="/pages/reqSecKillGood.do"> <li class="focus">限时秒杀</li></a>


    </ul>
</div>

<div class="banner_group">
    <div class="banner_faker">
        <img src="../imgs/goods/seckill_goods/seckill.jpg">
        <div class="float">
            <div class="title" style="
            border-bottom: 1px solid #f6f6f6;
            color: #111;
            font-size: 24px;
            line-height: 56px;
            margin-top: 4px;">限时秒杀
            </div>
            <div class="desc" style="
            color: #686868;
            font-size: 16px;
            line-height: 30px;
            padding-bottom: 13px;">每日精选闪找好货限时秒杀，限时限量。
            </div>


        </div>
    </div>
</div>

<div class="goods_group">

    <c:forEach items="${goods}" var="good">
        <div class="goods" >
            <a href="/pages/toinfo.do?good_id=${good.g_id }">
                <img class="img" src="${good.g_imgpath}"></a>
            <div class="title">${good.g_info}</div>
            <div class="price">￥
                <span class="good_price">${good.g_price}</span>
                <span class="count">已卖${good.g_sales}件</span>
            </div>


        </div>

    </c:forEach>


</div>
</body>
</html>
