<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>史丹利详情</title>
<link rel="shortcut icon" href="img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="css/element.css">
<link rel="stylesheet" href="css/fonts/element-icons.woff">
<link rel="stylesheet" href="css/goodsDetail.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<%@include file="/inc/header.inc"%>
	<div id="goodsDetail">
		<div class="gd_main">
			<el-container>
			  <el-container>
			    <el-aside width="480px">	
					<el-image :src="goods.goodsPics[0]"></el-image>
					<el-row>
					  <el-col :span="6" v-for="(item,index) in goods.goodsPics"><div class="grid-content bg-purple">
					  	<el-image :src="goods.goodsPics[index]"></el-image>
					  </div></el-col>
					  
					</el-row>
				</el-aside>
			    <el-container>
			      <el-main>
					<p><b>{{goods.goodsName}}</b></p>
					<div class="gd_price">
						<p><span class="gd_detail_item">物品价格:</span>
							<span class="gd_detail_price">￥{{goods.goodsNewPrice}}</span>
							<s>￥{{goods.goodsOldPrice}}</s></p>
						<p><span class="gd_detail_item">物品现状:</span>
							<span class="gd_detail_status item_info">{{goods.goodsFresh|xinxian}}</span></p>
						<p><span class="gd_detail_item">可交易地点:</span>
							<span class="gd_detail_address item_info">无</span></p>
						<p><span class="gd_detail_item">可交易时间:</span>
							<span class="gd_detail_time item_info">{{goods.goodsTime}}</span></p>
						<p><span class="gd_detail_item">联系人:</span>
							<span class="gd_detail_people item_info">{{goods.goodsUserName}}（{{goods.goodsUserPhone}}）</span></p>
						<template>
						  <span class="gd_detail_item">商品货存:&emsp;&emsp;&emsp;&emsp;</span>
						  <el-input-number v-model="goods.num" @change="handleChange" controls-position="right" :min="1" :max="3" label="描述文字"></el-input-number>
						</template>
						<el-row><br>
						  <el-button type="danger" style="font-size: 18px;" @click="buy">
						  	立即购买
						  </el-button>
						  <el-button type="primary" icon="el-icon-shopping-cart-full" style="font-size: 18px;" @click="adCart">
						  	加入购物车
						  </el-button>
						</el-row>
					</div>
				  </el-main>
			    </el-container>
			  </el-container>
			</el-container>
		</div>
		<%@include file="/inc/footer.inc"%>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/goodsDetail.js"></script>
<script src="js/header.js"></script>
</html>