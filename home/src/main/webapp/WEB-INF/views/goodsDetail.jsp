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
		<!-- <el-breadcrumb separator="/">
		  <el-breadcrumb-item :to="{ path: '/' }"><span style="font-weight:400">首页</span></el-breadcrumb-item>
		  <el-breadcrumb-item><a href="/" style="font-weight:400">校园二手</a></el-breadcrumb-item>
		  <el-breadcrumb-item><a href="/" style="font-weight:400">二手分类</a></el-breadcrumb-item>
		  <el-breadcrumb-item>史丹利</el-breadcrumb-item>
		</el-breadcrumb> -->
		<div class="gd_main">
			<el-container>
			  <el-container>
			    <el-aside width="480px">	
					<el-image src="img/goods/timg.jpg"></el-image>
					<el-row>
					  <el-col :span="6"><div class="grid-content bg-purple">
					  	<el-image src="img/goods/timg.jpg"></el-image>
					  </div></el-col>
					  <el-col :span="6"><div class="grid-content bg-purple">
					  	<el-image src="img/goods/timg.jpg"></el-image>
					  </div></el-col>
					  <el-col :span="6"><div class="grid-content bg-purple">
					  	<el-image src="img/goods/timg.jpg"></el-image>
					  </div></el-col>
					  <el-col :span="6"><div class="grid-content bg-purple">
					  	<el-image src="img/goods/timg.jpg"></el-image>
					  </div></el-col>
					</el-row>
				</el-aside>
			    <el-container>
			      <el-main>
					<p><b>{{title}}</b></p>
					<div class="gd_price">
						<p><span class="gd_detail_item">物品价格:</span>
							<span class="gd_detail_price">{{now_price}}</span>
							<s>{{old_price}}</s></p>
						<p><span class="gd_detail_item">物品现状:</span>
							<span class="gd_detail_status item_info">{{status}}</span></p>
						<p><span class="gd_detail_item">可交易地点:</span>
							<span class="gd_detail_address item_info">{{address}}</span></p>
						<p><span class="gd_detail_item">可交易时间:</span>
							<span class="gd_detail_time item_info">{{time}}</span></p>
						<p><span class="gd_detail_item">联系人:</span>
							<span class="gd_detail_people item_info">{{people}}</span></p>
						<template>
						  <span class="gd_detail_item">期望数量:&emsp;&emsp;&emsp;&emsp;</span>
						  <el-input-number v-model="num" @change="handleChange" controls-position="right" :min="1" :max="own_num" label="描述文字"></el-input-number>
						</template>
						<el-row><br>
						  <el-button type="danger" style="font-size: 18px;">
						  	立即购买
						  </el-button>
						  <el-button type="primary" icon="el-icon-shopping-cart-full" style="font-size: 18px;">
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