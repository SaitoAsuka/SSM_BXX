<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <style type="text/css">
        .top{

            width:1200px;
            height:30px;
            margin:0 auto;
            margin-top: 150px;
            border-bottom: 1px dashed black;
        }
        .top>a{
            font-size: 15px;
            color: black;
        }
        ul li{
            list-style: none;

        }
        .details>ul>li{
            float:left;

        }
        .details{
            width:1200px;
            height:200px;
            margin-left:40px;
        }
        .produce{
            width: 140px;
        }
        .produce b{
            margin-left: 60px;
        }
        .g_name{
            width:200px;
            margin-top:60px;
            text-align: center;
        }
        .price{
            width:150px;
            margin-top:60px;
            text-align: center;
        }
        .num{
            width:150px;
            margin-top:60px;
            text-align: center;
        }
        .count_money{
            width:150px;
            margin-top:60px;
            text-align: center;
        }
        .handle{
            width:200px;
            margin-top:60px;
            text-align: center;
        }
    </style>


</head>
<body>
<%@ include file="/pages/nav.jsp" %>

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
            <th width="150">总付款</th>
            <th width="200">操作</th>
        </tr>
    </table>
    <c:forEach items="${shoppingCart}" var="order">
        <div class="details" id="details">
            <ul>
                <li class="produce" style="margin-top: 10px;width: 310px;">
                    <b><a href="#"><img src="${order.g_imgpath}" width="120px" height="120px"></a></b><br>
                </li>
                <li class="g_name">
                    <b style="font-size: 30px;">${order.g_name}</b>
                </li>
                <li class="price">
                        ${order.g_price}
                </li>
                <li class="num">
                    <input type="button" value="-" id="jian" onclick="change(this,-1)"  />
                    <input id="text" type="text" size="1" value="${order.g_num}" />
                    <input type="button" value="+" id="add" onclick="change(this,1)"  />
                </li>
                <li class="count_money">
                        ${order.g_price }
                </li>
                <li class="handle">
                    <p>
                        <a href="/pages/shoppingCartDelete.do?g_id=${order.g_id}">删除</a>
                    </p>
                </li>
            </ul>
        </div>
    </c:forEach>
    <div id="total" style="text-align: right;width:1200px;height:50px;margin-top: 20px;" >总价:0</div>
    <div id="tijiao" style="text-align: right;width:1200px;height:50px;"><a href="#">提交</a></div>
</div>
</body>
<script type="text/javascript">
    function change(btn,n){

        var inputs = btn.parentNode.getElementsByTagName("input");

        var amount = parseInt(inputs[1].value);

        inputs[1].value = amount + n;

        var lis = btn.parentNode.parentNode.getElementsByTagName("li");

        var price = parseInt(lis[2].innerHTML);

        lis[4].innerHTML = price*inputs[1].value;
        total(btn);
    }
    function total(btn){
        var uls=btn.parentNode.parentNode.parentNode.parentNode.getElementsByTagName("ul");

        var sum=0;

        for(var i=0;i<uls.length;i++){
            var lis=uls[i].getElementsByTagName("li");
            var m=lis[4].innerHTML;
            sum += parseInt(m);
        }

        var total=document.getElementById("total");

        total.innerHTML = "总价："+sum;
    }
</script>
</html>