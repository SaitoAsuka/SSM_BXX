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
    <title>假货入驻</title>
    <link rel="stylesheet" href="../css/salable_commodity.css">

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
            <dd><a href="#">已有商品</a></dd>
            <dd><a href="/pages/ToIncrease_commodity.do">新增商品</a></dd>
        </dl>

    </div>
    <div class="rt">
        <table class="order_title" cellpadding="0" cellspacing="0">
            <tr>
                <%--商品图片、名字、介绍--%>
                <th width="650">商品信息</th>

                <th width="100">单价（元）</th>
                <th width="100">库存</th>
                <th width="100">类型</th>
            </tr>
        </table>
        <c:forEach var="good" items="${goods}">
            <div class="item">
                <div class="order_info">
                    <p class="order_item">
                        <span class="good_name">${good.g_name}</span>
                        <span class="good_price">${good.g_price}</span>
                        <span class="good_stock">${good.stock}</span>
                        <c:if test="${good.g_type eq 'brand' }"><span
                                class="good_type">品牌清仓</span></c:if>
                        <c:if test="${good.g_type eq 'supermarket'}"><span
                                class="good_type">食品超市</span></c:if>
                        <c:if test="${good.g_type eq 'sale'}"> <span
                                class="good_type">9.9特卖</span></c:if>
                        <c:if test="${good.g_type eq 'seckill'}"><span
                                class="good_type">限时秒杀</span></c:if>
                    </p>
                </div>
                <div class="details">
                    <ul>

                        <li class="produce">

                            <div class="produce_img">
                                <b ><a href="#"><img src="${good.g_imgpath}" width="150px"></a></b>
                            </div>

                            <div class="produce_describe">
                                ${good.g_info}
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

        </c:forEach>
    </div>


</div>
</body>
</html>
