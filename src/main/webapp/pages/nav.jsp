<%--
  Created by IntelliJ IDEA.
  User: Saito
  Date: 2019/7/24
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style type="text/css">
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

    .tab {
        height: 60px;
        text-align: right;
        float: right;
        width: 80%;
        line-height: 60px;

    }

    a {
        text-decoration: none;
    }

    .tab a {
        text-decoration: none;
        color: #6e6e6e;
        font-size: 20px;
        font-weight: lighter;
    }

    .tab > span {
        text-decoration: none;
        color: #6e6e6e;
        font-weight: lighter;
        font-size: 20px;
        margin: 0 10px;
    }
</style>
<div class="header">
    <div class="bxx">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/imgs/pdd_logo.png">
        </div>
        <div class="tab">

            <a href="/pages/home.do">首页</a><span>|</span>
            <a href="#">热点资讯</a><span>|</span>
            <a href="${pageContext.request.contextPath}/pages/salable_commodity.do">假货入驻</a><span>|</span>
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

