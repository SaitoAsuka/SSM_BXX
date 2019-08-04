<%--
  Created by IntelliJ IDEA.
  User: Saito
  Date: 2019/7/28
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>密码修改</title>
    <link rel="stylesheet" href="../css/self.css">
    <link rel="stylesheet" href="../css/password.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/password.js"></script>
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
            <dd><a href="#">密码修改</a></dd>
        </dl>
        <dl class="discount">
            <dt>我的优惠券&nbsp<img src="/imgs/close.png"></dt>
            <dd><a href="#">全场九折（2）</a></dd>
            <dd><a href="#">满减折扣（10）</a></dd>
        </dl>

    </div>
    <div class="password">
        <div class="bt">
            修改密码
        </div>
        <form action="/pages/changePwd.do" method="post">

            <p>${success }</p>
            <p>${error1 }</p>
            <p>${error2 }</p>
            <div class="put">
                <P>请输入原密码：</P>
                <input type="password" name="orgpwd" id="orgpwd">
            </div>
            <div class="put">
                <p>请输入新密码：</p>
                <input type="password" name="newpwd" id="newpwd">
            </div>
            <div class="put">
                <p>确认新密码：</p>
                <input type="password" name="newtoopwd" id="newtoopwd">
            </div>
            <div class="sub">
                <input type="submit" value="确定">
            </div>

        </form>


    </div>


</div>


</body>
</html>
