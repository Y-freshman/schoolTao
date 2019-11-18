<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="shouye_db">
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
	  			<span class="shouye_tubiao2" >
	  				校园二手淘<br>www.hcljy.com
	  			</span>
			  </el-col>
			  <el-col :span="12">
				<div class="grid-content ">
				  	<div style="margin-top: 15px;">
					  <el-input placeholder="请输入你想要的商品"  class="input-with-select">
					    <el-button slot="append"  type="primary"  icon="el-icon-search" style="background-color: #409EFF; color: white;">搜索</el-button>
					  </el-input>
					</div>
				</div>
			  </el-col>
			</el-row>
		  	<el-row type="flex" justify="center" style="margin-bottom:0">
			  <el-col :span="3" :offset="1">
	  				<el-dropdown :hide-on-click="false" trigger="click" >
					  <span class="el-dropdown-link shouye_fl" style="box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1)">
					   <i class="el-icon-s-grid"></i>全部分类
					  </span>
					  <el-dropdown-menu slot="dropdown" style="width:150px;text-align: center;background-color: rgba(0,0,0,0.7);">
					    <el-dropdown-item onclick="javascript:location.href='#shouye_gyyl'">工业原料</el-dropdown-item>
					    <el-dropdown-item onclick="javascript:location.href='#shouye_jzsb'" divided>建筑设备</el-dropdown-item>
					    <el-dropdown-item onclick="javascript:location.href='#shouye_znaf'" divided>智能安防</el-dropdown-item>
					    <el-dropdown-item onclick="javascript:location.href='#shouye_dgdq'" divided>电工电器</el-dropdown-item>
					    <el-dropdown-item onclick="javascript:location.href='#shouye_dzyj'" divided>电子元件</el-dropdown-item>
					    <el-dropdown-item onclick="javascript:location.href='#shouye_zmgy'" divided>照明工业</el-dropdown-item>
					    <el-dropdown-item onclick="javascript:location.href='#shouye_bgwj'" divided>办公文教</el-dropdown-item>
					    <el-dropdown-item onclick="javascript:location.href='#shouye_bzyp'" divided>包装用品</el-dropdown-item>
					    <el-dropdown-item onclick="javascript:location.href='#shouye_sxsc'" divided>生鲜食材</el-dropdown-item>
					  </el-dropdown-menu>
					</el-dropdown>
			  </el-col>
			  <el-col :span="10" :offset="1">
	  			<el-tabs v-model="value">
				    <el-tab-pane name="sy">
					   <span slot="label"  @click="goSy()"><el-link href="index.jsp"> <i class="el-icon-s-home"></i>首页</el-link></span>
					</el-tab-pane>
				    <el-tab-pane name="qg">
					   <span slot="label" @click="goQg()"><el-link href="qiugou.jsp"><i class="el-icon-s-flag"></i> 求购</el-link></span>
					</el-tab-pane>
				    <el-tab-pane name="ppg">
					   <span slot="label"><i class="el-icon-date"></i> 品牌管</span>
					</el-tab-pane>
				    <el-tab-pane name="xg">
					   <span slot="label"><i class="el-icon-date"></i> 限购</span>
					</el-tab-pane>
				    <el-tab-pane name="yh">
					   <span slot="label"><i class="el-icon-date"></i> 优惠</span>
					</el-tab-pane>
				  </el-tabs>
			  </el-col>
			  <el-col :span="9" style="font-size:14px;margin-top:10px">
				   <el-carousel style="float:right;width:333px;color:#666;"height="30px" direction="vertical" :autoplay="true"  indicator-position="none">
				    <el-carousel-item  >
				      <el-link @click="alert(1)">中小企业如何通过智能建造&emsp;[2019-11-12 17:44:00]</el-link>
				    </el-carousel-item>
				    <el-carousel-item  >
				      <el-link @click="alert(2)">叫阿呆和擦掉法布尔而被日本&emsp;[2019-11-13 18:26:00]</el-link>
				    </el-carousel-item>
				   </el-carousel>
				   <span style="float:right;color:#999;"><i class="el-icon-bell"></i>通告：</span>
			  </el-col>
			  
			</el-row>
		  </el-header>
		</el-container>
  </div>