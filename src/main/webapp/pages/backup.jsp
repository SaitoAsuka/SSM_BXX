<%@ page language="java"
         import="cn.tedu.ssm.bean.User"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <style type="text/css">


        .top {

            width: 1200px;
            height: 30px;
            margin: 0 auto;
            margin-top: 150px;
            border-bottom: 1px dashed black;
        }

        .top > a {
            font-size: 15px;
            color: black;
        }

        ul li {
            list-style: none;

        }

        .details > ul > li {
        }

        .details {
            width: 1300px;
        }

        .box {
            position: relative;
            left: 5%;
            width: 1200px;
            height: 250px;
            background: white;

        }

        .box ul li {
            padding-top: 20px;
            float: left;
        }

        .pic li {
            width: 150px;
        }

        .g_name {
            margin-top: 50px;
            margin-left: 150px;
            width: 200px;
            text-align: center;

        }

        .g_name b {
            text-align: center;
        }

        .price {
            margin-top: 40px;
            width: 100px;
            margin-left: 40px;
        }

        .num {
            width: 150px;
            margin-top: 60px;
            text-align: center;
        }

        .count_money {
            margin-top: 50px;

            width: 100px;
        }

        .handle {

            margin-top: 50px;
            margin-left: 75px;
            width: 50px;
        }

        /*.btn-numbox {*/
        /*margin-top: 50px;*/
        /*width: 200px;*/
        /*overflow: hidden;*/
        /*float: left;*/
        /*}*/

        /*.btn-numbox li {*/
        /*}*/

        /*.btn-numbox li .number,*/
        /*.kucun {*/
        /*text-align: center;*/
        /*display: inline-block;*/
        /*font-size: 12px;*/
        /*color: #808080;*/
        /*vertical-align: sub;*/
        /*}*/

        /*.btn-numbox .count {*/
        /*overflow: hidden;*/
        /*!*margin: 0 16px 0 -20px;*!*/
        /*}*/

        /*.btn-numbox .count .num-jian,*/
        /*.input-num,*/
        /*.num-jia {*/
        /*float: left;*/
        /*display: inline-block;*/
        /*width: 18px;*/
        /*height: 18px;*/
        /*line-height: 18px;*/
        /*text-align: center;*/
        /*font-size: 12px;*/
        /*color: #999;*/
        /*cursor: pointer;*/
        /*border: 1px solid #e6e6e6;*/
        /*}*/

        /*.btn-numbox .count .input-num {*/
        /*width: 38px;*/
        /*height: 16px;*/
        /*color: #333;*/
        /*border-left: 0;*/
        /*border-right: 0;*/
        /*}*/
    </style>
</head>
<body style="background: #f6f6f6">
<c:import url="nav.jsp"></c:import>
<div>
    <div class="top">
        <a href="toIndex.do">首页</a><span>&gt;</span>我的购物车
    </div>
    <div class="car">
        <table class="order_title" cellspacing="0" cellpadding="0">
            <tr>
                <th width="400">商品</th>
                <th width="200">商品名</th>
                <th width="150">单价</th>
                <th width="150">数量</th>
                <th width="150">&nbsp;&nbsp;&nbsp;&nbsp;总付款</th>
                <th width="200">操作</th>
            </tr>
        </table>
        <div class="details">
            <c:forEach items="${shoppingCart}" var="order">
                <div class="box">
                    <ul>

                        <li class="pic">
                            <a href="#"><img src="${order.g_imgpath}" width="140px" height="140px"></a>
                        </li>
                        <li class="g_name">
                            <b style="font-size: 30px;">${order.g_name}</b>
                        </li>
                        <li class="price">
                            <p id="price" value="${order.g_price}">
                                    <%--&nbsp;&nbsp;专属特价<br>--%>
                                ￥：${order.g_price}</p>
                        </li>
                        <li class="num">
                            <input type="button" value="-" id="jian" onclick="change(this,-1)"/>
                            <input id="text" type="text" size="1" value="${order.g_num}"/>
                            <input type="button" value="+" id="add" onclick="change(this,1)"/>
                        </li>
                        <li class="count_money">
                            <p>

                                ￥：${order.g_total }
                            <p/>
                            </p>
                        </li>
                        <li class="handle">

                            <p>
                                <a href="toDelete.do?c_id=${order.g_id}">删除</a>
                            </p>
                        </li>
                    </ul>
                </div>
            </c:forEach>
            <div id="total" style="text-align: right;width:900px;height:50px;margin-top: 20px;" >总价:0</div>
            <div id="tijiao" style="text-align: right;width:900px;height:50px;"><a href="#">提交</a></div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    function change(btn, n) {

        var inputs = btn.parentNode.getElementsByTagName("input");

        var amount = parseInt(inputs[1].value);

        inputs[1].value = amount + n;

        var lis = btn.parentNode.parentNode.getElementsByTagName("li");

        var price = parseInt(lis[2].innerHTML);

        lis[4].innerHTML = price * inputs[1].value;
        total(btn);
    }

    function total(btn) {
        var uls = btn.parentNode.parentNode.parentNode.parentNode.getElementsByTagName("ul");

        var sum = 0;

        for (var i = 0; i < uls.length; i++) {
            var lis = uls[i].getElementsByTagName("li");
            var m = lis[4].innerHTML;
            sum += parseInt(m);
        }

        var total = document.getElementById("total");

        total.innerHTML = "总价：" + sum;
    }
</script>
</html>