<%--
  Created by IntelliJ IDEA.
  User: Saito
  Date: 2019/7/25
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <tile>个人中心</tile>
    <link rel="stylesheet" href="../css/self.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/self.js"></script>
</head>
<body>
<%@ include file="/pages/nav.jsp" %>
<div class="top">
    <a href="#">首页 <span>&gt;</span> 个人中心</a>
</div>
<div class="content">
    <div class="lt">
        <dl class="MyOrder">
            <dt>订单管理&nbsp&nbsp<img src="/imgs/close.png"></dt>
            <dd><a href="/pages/self.do">我的订单</a></dd>
            <dd><a href="/pages/WaitPay.do">待付款</a></dd>
            <dd><a href="/pages/WaitRec.do">待收货</a></dd>
            <dd><a href="/pages/WaitOk.do">待确认</a></dd>
        </dl>


        <dl class="address">
            <dt>地址管理&nbsp&nbsp<img src="/imgs/close.png"></dt>
            <dd><a href="/pages/togetaddress.do">收货地址</a></dd>
        </dl>
        <dl class="pwd">
            <dt>账户安全&nbsp&nbsp<img src="/imgs/close.png"></dt>
            <dd><a href="/pages/password.do">密码修改</a></dd>
        </dl>
        <dl class="discount">
            <dt>我的优惠券&nbsp<img src="/imgs/close.png"></dt>
            <dd><a href="#">全场九折（2）</a></dd>
            <dd><a href="#">满减折扣（10）</a></dd>
        </dl>

    </div>
    <div class="rt">
        <table class="order_title" cellpadding="0" cellspacing="0">
            <tr>
                <%--商品图片、名字、介绍--%>
                <th width="350">商品信息</th>

                <th width="90">数量</th>
                <th width="100">单价（元）</th>
                <th width="100">总付款</th>
                <th width="100">状态</th>
                <th width="100">操作</th>
                <th width="100">售后服务</th>
            </tr>
        </table>
        <c:forEach var="order" items="${AllOrders}">
            <div class="item">

                <div class="order_info">
                    <p class="order_item">
                        <span style="color:gray">${order.c_time}</span>
                        <span>订单编号：${order.c_id}</span>
                    <a href="#">联系客服</a>
                </span>
                    </p>
                </div>
                <div class="details">
                    <ul>

                        <li class="produce">
                        <span>

                        <b><a href="#"><img src="${order.c_image}" width="100px"></a></b>
                        </span>
                            <span>
                        <b class="produce_name">${order.c_name}</b>

                        </span>
                        </li>


                        <li class="num">${order.c_num}件</li>

                        <span class="box_price">
                        <li class="price">专属特价 ￥${order.c_price}</li>
                    </span>

                        <li class="count_money">
                            ￥ ${order.c_total}
                        </li>

                        <li class="state">
                            ${order.c_state}
                        </li>
                        <li class="handle">
                            取消订单
                        </li>
                        <li class="service">
                            <span>退款/退货</span>
                            <br/>
                            <span>我要维权</span>

                        </li>
                        </span>


                    </ul>
                </div>
            </div>

        </c:forEach>
    </div>


</div>
</body>
</html>
