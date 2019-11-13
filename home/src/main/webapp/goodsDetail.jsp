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
</head>
<body>
	<div id="goodsDetail">
		<el-header>Header</el-header>
		<el-breadcrumb separator="/">
		  <el-breadcrumb-item :to="{ path: '/' }"><span style="font-weight:400">首页</span></el-breadcrumb-item>
		  <el-breadcrumb-item><a href="/" style="font-weight:400">校园二手</a></el-breadcrumb-item>
		  <el-breadcrumb-item><a href="/" style="font-weight:400">二手分类</a></el-breadcrumb-item>
		  <el-breadcrumb-item>史丹利</el-breadcrumb-item>
		</el-breadcrumb>
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
					<p><b>STANLEY/史丹利单手开工具箱19寸STST73099/73100/73101内含抽屉 单手开工具箱19寸</b></p>
					<div class="gd_price">
						<p>合采价&emsp;&emsp;<span style="color:blue;font-size: 24px;font-weight: 600;">￥239.00&emsp;&emsp;</span>
							<s>￥299</s></p>
						<p>&emsp;&emsp;&emsp;&emsp;&emsp;15套及以上</p>
						<p>货物编码&emsp;&emsp;&emsp;&emsp;10000016</p>
						<p>可交易时间&emsp;&emsp;&emsp;&emsp;联系确认</p>
						<p>联系人&emsp;&emsp;&emsp;&emsp;134xxxx0214</p>
						<template>
						  期望数量&emsp;&emsp;&emsp;&emsp;
						  <el-input-number v-model="num" @change="handleChange" controls-position="right" :min="1" :max="10" label="描述文字"></el-input-number>
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
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/goodsDetail.js"></script>
</html>