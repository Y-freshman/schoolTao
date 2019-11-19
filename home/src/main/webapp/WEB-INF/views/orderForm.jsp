<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
<link rel="shortcut icon" href="/home/img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="/home/css/element.css">
<link rel="stylesheet" href="/home/css/fonts/element-icons.woff">
<link rel="stylesheet" href="/home/css/orderForm.css">
<link rel="stylesheet" href="/home/css/index.css">
</head>
<body>
	<%@include file="/inc/header2.inc"%>
	<div id="orderForm">
		<el-tabs v-model="activeName" @tab-click="handleClick">
		    <el-tab-pane label="所有订单" name="first">
				<el-input placeholder="请输入订单号或者物品名进行搜索..." :clearable="clear" v-model="input3" class="input-with-select">
				    <el-button slot="append" icon="el-icon-search" class="oderForm_search">订单搜索</el-button>
				</el-input>
				<template>
				<el-table ref="multipleTable" :data="tableData" tooltip-effect="dark" border 
				  style="width: 100%;border:1px solid rgb(72, 115, 172);" @selection-change="handleSelectionChange">
				    <el-table-column type="selection" width="40" style="border:1px solid rgb(72, 115, 172);"> </el-table-column>
				    <el-table-column label="商品信息" width="325">
				    	<template slot-scope="scope">
					        <el-row>
							  <el-col :span="12"><div class="grid-content">
							  	<img :src="scope.row.head_pic" class="head_pic"/>
							  </div></el-col>
							  <el-col :span="12"><div class="grid-content" style="margin-left: -20px;">
							  	<el-link href="goodsDetail.jsp" :underline="false" target="_blank">
							  		{{ scope.row.title }}
							  	</el-link>
							  </div></el-col>
							</el-row>
					    </template>
				    </el-table-column>
				    <el-table-column label="交易时间" prop="time" width="120"></el-table-column>
				    <el-table-column label="数量" prop="gd_num" width="40"></el-table-column>
				    <el-table-column label="出手人" width="151"> 
			    		<template slot-scope="scope">
			    			<el-link type="primary">
				        	{{ scope.row.source }}
				        	</el-link>
		    			</template>
				    </el-table-column>
				    <el-table-column label="实付款" width="111">
				    	<template slot-scope="scope">
				        	<span class="purchaseCar_sum">￥{{ scope.row.sum }}</span>
		    			</template>
				    </el-table-column>
				    <el-table-column label="交易状态" width="120">
				    	<template slot-scope="scope">
					        <el-button type="text" size="small">
					          <span style="color:#0f63bb" v-if="scope.row.status == '交易成功'">{{ scope.row.status }}</span>
					          <span style="color:#0fbb75" v-if="scope.row.status == '交易进行中'">{{ scope.row.status }}</span>
					          <span style="color:rgb(186, 15, 187)" v-if="scope.row.status == '交易已取消'">{{ scope.row.status }}</span>
					          <span style="color:red" v-if="scope.row.status == '待付款'">{{ scope.row.status }}</span>
					        </el-button>
		      			</template>
				    </el-table-column>
				    <el-table-column label="操作" width="111" show-overflow-tooltip> 
				    	<template slot-scope="scope">
					        <li><el-button type="primary" size="small" v-if="scope.row.status == '交易进行中'" 
					        @click="gdSure0(scope.$index)">
					          确认收货
					        </el-button></li>
					        <li><el-button type="text" size="small" v-if="scope.row.status != '交易进行中'">
					          <span style="color:#f56c8a">追加评论</span>
					        </el-button></li>
		      			</template>
				    </el-table-column>
				</el-table>
				</template>
				<div class="block">
				    <el-pagination
				      @size-change="handleSizeChange"
				      @current-change="handleCurrentChange"
				      :current-page="currentPage4"
				      :page-sizes="[100, 200, 300, 400]"
				      :page-size="100"
				      layout="total, sizes, prev, pager, next, jumper"
				      :total="400">
				    </el-pagination>
				  </div>
			</el-tab-pane>
		    <el-tab-pane label="待付款" name="second">
				<el-input placeholder="请输入订单号或者物品名进行搜索..." :clearable="clear" v-model="input3" class="input-with-select">
				    <el-button slot="append" icon="el-icon-search" class="oderForm_search">订单搜索</el-button>
				</el-input>
				<template>
				<el-table ref="multipleTable" :data="tableData1" tooltip-effect="dark" border 
				  style="width: 100%;border:1px solid rgb(72, 115, 172);" @selection-change="handleSelectionChange">
				    <el-table-column type="selection" width="40" style="border:1px solid rgb(72, 115, 172);"> </el-table-column>
				    <el-table-column label="商品信息" width="325">
				    	<template slot-scope="scope">
					        <el-row>
							  <el-col :span="12"><div class="grid-content">
							  	<img :src="scope.row.head_pic" class="head_pic"/>
							  </div></el-col>
							  <el-col :span="12"><div class="grid-content" style="margin-left: -20px;">
							  	<el-link href="goodsDetail.jsp" :underline="false" target="_blank">
							  		{{ scope.row.title }}
							  	</el-link>
							  </div></el-col>
							</el-row>
					    </template>
				    </el-table-column>
				    <el-table-column label="交易时间" prop="time" width="120"></el-table-column>
				    <el-table-column label="数量" prop="gd_num" width="40"></el-table-column>
				    <el-table-column label="出手人" width="151"> 
			    		<template slot-scope="scope">
			    			<el-link type="primary">
				        	{{ scope.row.source }}
				        	</el-link>
		    			</template>
				    </el-table-column>
				    <el-table-column label="实付款" width="111">
				    	<template slot-scope="scope">
				        	<span class="purchaseCar_sum">￥{{ scope.row.sum }}</span>
		    			</template>
				    </el-table-column>
				    <el-table-column label="交易状态" width="120">
				    	<template slot-scope="scope">
					        <el-button type="text" size="small">
					          <span style="color:red">{{ scope.row.status }}</span>
					        </el-button>
		      			</template>
				    </el-table-column>
				    <el-table-column label="操作" width="111" show-overflow-tooltip> 
				    	<template slot-scope="scope">
					        <li><el-button type="text" size="small">
					          <span style="color:#f56c8a">追加评论</span>
					        </el-button></li>
		      			</template>
				    </el-table-column>
				</el-table>
				</template>
				<div class="block">
				    <el-pagination
				      @size-change="handleSizeChange"
				      @current-change="handleCurrentChange"
				      :current-page="currentPage4"
				      :page-sizes="[100, 200, 300, 400]"
				      :page-size="100"
				      layout="total, sizes, prev, pager, next, jumper"
				      :total="400">
				    </el-pagination>
				  </div>
			</el-tab-pane>
		    <el-tab-pane label="待收货" name="third">
				<el-input placeholder="请输入订单号或者物品名进行搜索..." :clearable="clear" v-model="input3" class="input-with-select">
				    <el-button slot="append" icon="el-icon-search" class="oderForm_search">订单搜索</el-button>
				</el-input>
				<template>
				<el-table ref="multipleTable" :data="tableData2" tooltip-effect="dark" border 
				  style="width: 100%;border:1px solid rgb(72, 115, 172);" @selection-change="handleSelectionChange">
				    <el-table-column type="selection" width="40" style="border:1px solid rgb(72, 115, 172);"> </el-table-column>
				    <el-table-column label="商品信息" width="325">
				    	<template slot-scope="scope">
					        <el-row>
							  <el-col :span="12"><div class="grid-content">
							  	<img :src="scope.row.head_pic" class="head_pic"/>
							  </div></el-col>
							  <el-col :span="12"><div class="grid-content" style="margin-left: -20px;">
							  	<el-link href="goodsDetail.jsp" :underline="false" target="_blank">
							  		{{ scope.row.title }}
							  	</el-link>
							  </div></el-col>
							</el-row>
					    </template>
				    </el-table-column>
				    <el-table-column label="交易时间" prop="time" width="120"></el-table-column>
				    <el-table-column label="数量" prop="gd_num" width="40"></el-table-column>
				    <el-table-column label="出手人" width="151"> 
			    		<template slot-scope="scope">
			    			<el-link type="primary">
				        	{{ scope.row.source }}
				        	</el-link>
		    			</template>
				    </el-table-column>
				    <el-table-column label="实付款" width="111">
				    	<template slot-scope="scope">
				        	<span class="purchaseCar_sum">￥{{ scope.row.sum }}</span>
		    			</template>
				    </el-table-column>
				    <el-table-column label="交易状态" width="120">
				    	<template slot-scope="scope">
					        <el-button type="text" size="small">
					          <span style="color:#0f63bb" v-if="scope.row.status == '交易成功'">{{ scope.row.status }}</span>
					          <span style="color:#0fbb75" v-if="scope.row.status == '交易进行中'">{{ scope.row.status }}</span>
					        </el-button>
		      			</template>
				    </el-table-column>
				    <el-table-column label="操作" width="111" show-overflow-tooltip> 
				    	<template slot-scope="scope">
					        <li><el-button type="primary" size="small" v-if="scope.row.status == '交易进行中'" @click="gdSure(scope.$index)">
					          确认收货
					        </el-button></li>
					        <li><el-button type="text" size="small" v-if="scope.row.status != '交易进行中'">
					          <span style="color:#f56c8a">追加评论</span>
					        </el-button></li>
		      			</template>
				    </el-table-column>
				</el-table>
				</template>
				<div class="block">
				    <el-pagination
				      @size-change="handleSizeChange"
				      @current-change="handleCurrentChange"
				      :current-page="currentPage4"
				      :page-sizes="[100, 200, 300, 400]"
				      :page-size="100"
				      layout="total, sizes, prev, pager, next, jumper"
				      :total="400">
				    </el-pagination>
				  </div>
			</el-tab-pane>
		</el-tabs>
	</div>
	<%@include file="/inc/footer.inc"%>
	<template>
	      <el-backtop target="#orderForm"></el-backtop>
		</template>
</body>
<script src="/home/js/vue.js"></script>
<script src="/home/js/element.js"></script>
<script src="/home/js/jquery.min.js"></script>
<script src="/home/js/orderForm.js"></script>
<script src="/home/js/header.js"></script>
</html>