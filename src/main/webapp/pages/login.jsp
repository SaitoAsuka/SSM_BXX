<%--
  Created by IntelliJ IDEA.
  User: Saito
  Date: 2019/7/23
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>并夕夕-欢迎登陆</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        .logo {
            height: 450px;
            width: 100%;

            background: url("../imgs/index_banner.jpg") 80%;
            margin-top: 150px;
        }
        .loginbox{
            width: 300px;
            height: 250px;
            float:right;
            margin-top: 100px;
            margin-right:50px;
            margin-bottom: 10px;

        }
        p{
            color:white;
            font-weight: bold;
        }
        .loginbox>form>div{
            width: 200px;
            margin: 0 auto;
            margin-top: 20px;

        }
        .ipt>input{
            width: 200px;
            height: 20px;
            border-radius: 5px;
        }
        .sbt>input{
            width: 80px;

        }
        .right{
            float: right;
        }
    </style>
</head>
<body>
<div class="logo">
    <div class="loginbox">
        <form action="/pages/toLogin.do" method="post">
            <div class="ipt">
                <p>Name:</p>
                <input required="true" type="text" name="username" placeholder="QQ/wechat/Email">
                ${string}
            </div>
            <div requied="true" class="ipt">
                <p>Password:</p>
                <input type="password" name="password" placeholder="password">

            </div>
            <div class="sbt">
                <input type="submit" value="登录">
                <input class="right" type="button" value="注册">
            </div>
        </form>
    </div>
</div>
</body>
</html>
