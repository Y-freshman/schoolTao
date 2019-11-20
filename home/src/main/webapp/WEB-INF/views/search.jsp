<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=no">
<title>校园二手淘</title>
<link rel="shortcut icon" href="/home/img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="/home/css/element.css">
<link rel="stylesheet" href="/home/css/index.css">
<link rel="stylesheet" href="/home/css/search.css">
</head>
<body>
	<div id="search">
		﻿<el-row :gutter="20" class="shouye_db" >
			  <el-col :span="6" :offset="1">
			  	<el-link type="success">欢迎您：user321</el-link>
			  </el-col>
			  <el-col :span="3" :offset="7">
			  	<el-link icon="el-icon-shopping-bag-1">我的订单</el-link>
			  </el-col>
			  <el-col :span="4">
			  	<el-link >在线客服/35135435</el-link>
			  </el-col>
			  <el-col :span="3">
			  	<el-link icon="el-icon-shopping-cart-full">购物车(0)</el-link>
			  </el-col>
		</el-row>
		<el-container>
		  <el-header height="auto" >
		  	<el-row type="flex" >
			  <el-col :span="12">
	  			<el-image src="img/icon_1.png" class="shouye_tubiao"  lazy></el-image>
	  			<span class="shouye_tubiao2 "  title="返回首页" @click="goSy()" >
	  				校园二手淘<br>schooltao.com
	  			</span>
			  </el-col>
			  
			  <el-col :span="12">
				<div class="grid-content ">
				  	<div style="margin-top: 15px;">
					  <el-input placeholder="请输入你想要的商品"  class="input-with-select">
					    <el-button slot="append"  @click="search()" type="primary"  icon="el-icon-search" style="background-color: #409EFF; color: white;">搜索</el-button>
					  </el-input>
					</div>
				</div>
			  </el-col>
			</el-row>
		  </el-header>
		</el-container>
		<el-container>
		  <el-main style="background: linear-gradient(to bottom, #fff , #eee);">
		  	<el-row :gutter="20" >
			  <el-col :span="24"  >
			  	<el-tabs type="border-card">
				  <el-tab-pane >
				    <span slot="label" >全部 123<i class="el-icon-download"></i> </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">工业原料 12 </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">建筑设备 12 </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">智能安防 12 </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">电工电器 12 </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">电子元件 12 </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">照明工业 12 </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">办公文教 12 </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">包装用品 12 </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">生鲜食材 12 </span>
				  </el-tab-pane>
				</el-tabs>
			  </el-col>
			</el-row>
		  	<el-row :gutter="20" >
			 <el-col :span="22" :offset="1">
			  <el-col :span="5" :offset="2">
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		<el-col :span="5" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		<el-col :span="5" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		<el-col :span="5" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
				
			 </el-col>
			</el-row>
		  </el-main>
		</el-container>
	<%@include file="/inc/footer.inc"%>
	</div>
</body>
<script src="/home/js/vue.js"></script>
<script src="/home/js/element.js"></script>
<script src="/home/js/jquery.min.js"></script>
<script src="/home/js/search.js"></script>
</html>