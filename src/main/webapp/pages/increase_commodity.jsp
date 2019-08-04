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
    <title>新增商品</title>
    <link rel="stylesheet" href="../css/increase_commodity.css">
    <%--<script type="text/javascript" src="../js/jquery.min.js"></script>--%>
    <%--<script type="text/javascript" src="../js/self.js"></script>--%>
</head>
<body>
<%@ include file="/pages/nav.jsp" %>
<div class="top">
    <a href="#">首页 <span>&gt;</span> 假货入驻</a>
</div>
<div class="content">
    <div class="lt">
        <dl class="MyOrder">
            <dt>商品管理&nbsp&nbsp<img src="/imgs/close.png"></dt>
            <dd><a href="/pages/salable_commodity.do">已有商品</a></dd>
            <dd><a href="/pages/ToIncrease_commodity.do">新增商品</a></dd>
        </dl>

    </div>
    <div class="rt">
        <form class="push" action="/pages/PushImg.do" method="post" enctype="multipart/form-data">
            商品名：<input type="text" name="g_name"><br><br><br>
            商品价格： <input type="text" name="g_price"><br><br><br>
            商品信息：<input type="text" name="g_info"><br><br><br>
            商品类型：<select name="g_type">

                <option value="brand">品牌清仓</option>
                <option value="supermarket">食品超市</option>
                <option value="sale">9.9特卖</option>
                <option value="seckill">限时秒杀</option>

            </select><br><br><br>
            上传人：<input type="text" name="add_user"><br><br><br>
            库存：<input type="text" name="stock"><br><br>
            图片：<input type="file" name="file"><br><br>
            <input type="submit" value="提交"><br>
        </form>
    </div>


</div>
</body>
</html>
