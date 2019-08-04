<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>并夕夕-商品详情</title>
	<link rel="stylesheet" href="../css/productInfo.css" />
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/self.js"></script>
</head>
<body>
<%@ include file="/pages/nav.jsp" %>

	<dir class="top">
		<a href="#">首页  &gt; </a><span>商品详情</span>
	</dir>
	
	<div class="entirety">
			<div class="picture">
				<img   src="${GoodsById.g_imgpath }">
			</div>
			
			<div class="describe">
			
				<div class="name">
					<div class="h">${GoodsById.g_name }:</div>
					<div class="p">${GoodsById.g_info }</div>
				</div>
				
				<div class="info">
				
					<div class="i_head">
						<span>并夕夕特价</span>
					</div>
					
					<div class="i_price">
						<div class="ip_head">
							<div class="ip_h">秒杀价:&nbsp;&nbsp;&nbsp;</div>
							<div class="ip_con">
								<span>￥${GoodsById.g_price }</span>
							</div>
						</div>
					
						<div class="ip_sale">
							<span>累计出售：${GoodsById.g_sales}</span>
						</div>
						
						<div class="cx">
							<div class="cx_head">促&nbsp;&nbsp;&nbsp;销:</div>
							<div class="cx_con">
								<div class="xg">
									<div class="xg_head">限&nbsp;购</div>
									 购买不超过20件时享受单件价￥${GoodsById.g_price }，超出数量以结算价为准
								</div>
								<div class="mj">
									<div class="mj_head">满&nbsp;减</div>
									满199元减5元
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="gocart">
					<a href="/pages/toshopping.do?shopping_id=${GoodsById.g_id }" >
						<div class="go">
							<span>加入购物车&gt;</span>
						</div>
					</a>
				</div>
			</div>
	</div>
</body>
</html>