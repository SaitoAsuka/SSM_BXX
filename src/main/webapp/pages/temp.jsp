<%@ page language="java"
         import="cn.tedu.ssm.bean.User"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
        .top{

            width:1400px;
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
            width:1400px;
            height:200px;
            margin-left:20px;
            border: 1px solid red;
        }
        .produce b{
            margin-left: 100px;
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
<c:import url="head.jsp"></c:import>
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
    <c:forEach items="${findOrder }" var="order">
        <div class="details" id="details">
            <ul>
                <li class="produce" style="margin-top: 10px;width: 380px;">
                    <b><a href="#"><img src="${order.c_image}" width="180px" height="180px"></a></b><br>
                </li>
                <li class="g_name">
                    <b style="font-size: 30px;">${order.c_name}</b>
                </li>
                <li class="price">
                        ${order.c_price}
                </li>
                <li class="num">
                    <input type="button" value="-" id="jian" onclick="change(this,-1)"  />
                    <input id="text" type="text" size="1" value="${order.c_num}" />
                    <input type="button" value="+" id="add" onclick="change(this,1)"  />
                </li>
                <li class="count_money">
                        ${order.c_total }
                </li>
                <li class="handle">
                    <p>
                        <a href="toDelete.do?c_id=${order.c_id }&c_status=${order.c_status}">${order.c_handle }</a>
                    </p>
                </li>
            </ul>
        </div>
    </c:forEach>
    <div id="total" style="text-align: right;width:1400px;height:50px;margin-top: 20px;" >总价:0</div>
    <div id="tijiao" style="text-align: right;width:1400px;height:50px;"><a href="#">提交</a></div>
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