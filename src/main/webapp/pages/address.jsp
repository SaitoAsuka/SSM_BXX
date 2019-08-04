<%--
  Created by IntelliJ IDEA.
  User: Saito
  Date: 2019/7/26
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理地址</title>
    <link rel="stylesheet" href="../css/self.css">
    <link rel="stylesheet" href="../css/address.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/address.js"></script>
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

            <form action="/pages/tosetaddress.do" method="post">
                <div class="recName">
                    <span class="red">*</span>
                    收件人：<input name="rec_name" type="text" id="rec_name"/>
                </div>
                <div class="recAddress" data-toggle="distpicker">
                    <span class="red">*</span>
                    <span class="province">省份：</span>
                    <select name="receiverState"></select>
                    <span class="city">城市：</span>
                    <select name="receiverCity"></select>
                    <span class="district">区/县：</span>
                    <select name="receiverDistrict"></select>
                </div>

                <div class="address_detail">
                    <span class="red">*</span>
                    <span class="detail">详细地址（门牌号）：</span>
                    <textarea id="rec_detail" name="rec_detail" rows="4" cols="50" placeholder="建议您如实填写"></textarea>
                </div>

                <div class="rec_phone">
                    <span class="red">*</span>
                    <span class="phone">手机号：</span>
                    <input type="text" name="rec_phone" id="rec_phone"/>
                </div>

                <div class="other_name">
                    <span class="address_name">地址名称：</span>
                    <input type="text" id="rec_addname" name="rec_addname">
                    如：
                    <span class="other">家</span>
                    <span class="other">公司</span>
                    <span class="other">宿舍</span>
                </div>

                <div class="bc">
                    <input type="submit" value="保存收件人信息">
                </div>
            </form>
            <div class="myaddress">
                <div>
                    我的收货地址：
                </div>
                <div class="recName">
                    收件人：${address.r_name }
                </div>
                <div class="recAddress" data-toggle="distpicker">
                    <span class="province">省份：${address.r_province }</span>
                    <span class="city">城市：${address.r_city }</span>
                    <span class="district">区/县：${address.r_district }</span>
                </div>

                <div class="address_detail">
                    <span class="detail">详细地址（门牌号）：${address.r_detail }</span>
                </div>

                <div class="rec_phone">
                    <span class="phone">手机号：${address.r_phone }</span>
                </div>

                <div class="other_name">
                    <span class="address_name">地址名称：${address.r_addname }</span>
                </div>
            </div>


    </div>


</div>

<script type="text/javascript" src="../js/distpicker.data.js"></script>
<script type="text/javascript" src="../js/distpicker.js"></script>
</body>
</html>
