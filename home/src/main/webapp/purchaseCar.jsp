<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="css/element.css">
<link rel="stylesheet" href="css/fonts/element-icons.woff">
<link rel="stylesheet" href="css/purchaseCar.css">
</head>
<body>
	<div id="purchaseCar">
		<template>
		  <el-table ref="multipleTable" :data="tableData" tooltip-effect="dark" border 
		  style="width: 100%;border:1px solid rgb(72, 115, 172);" @selection-change="handleSelectionChange">
		    <el-table-column type="selection" width="55" style="border:1px solid rgb(72, 115, 172);"> </el-table-column>
		    <el-table-column label="商品信息" width="570">
		    	<template slot-scope="scope">
			        <el-row>
					  <el-col :span="8"><div class="grid-content">
					  	<img :src="scope.row.head_pic" class="head_pic"/>
					  </div></el-col>
					  <el-col :span="8"><div class="grid-content" style="margin-left: -20px;">
					  	<el-link href="goodsDetail.jsp" :underline="false" target="_blank">
					  		{{ scope.row.title }}
					  	</el-link>
					  </div></el-col>
					  <el-col :span="8"><div class="grid-content size" style="margin-left: 20px;" 
					  @mouseenter="sizeOn">
					  	<i class="el-icon-edit" @click="gdMdfySize" class="gd_mdfy_size"></i>
					  	<p style="margin-top: 0px;">{{ scope.row.color }}</p>
					  	<p style="margin-top: -10px;">{{ scope.row.size }}</p>
					  </div></el-col>
					</el-row>
			    </template>
		    </el-table-column>
		    <el-table-column label="出手人" width="161"> 
	    		<template slot-scope="scope">
	    			<el-link type="primary">
		        	{{ scope.row.source }}
		        	</el-link>
    			</template>
		    </el-table-column>
		    <el-table-column label="金额" width="121">
		    	<template slot-scope="scope">
		        	<span class="purchaseCar_sum">￥{{ scope.row.sum }}</span>
    			</template>
		    </el-table-column>
		    <el-table-column label="操作" width="111" show-overflow-tooltip> 
		    	<template slot-scope="scope">
			        <el-button @click.native.prevent="deleteRow(scope.$index, tableData)"
			          type="text" size="small">
			          <span style="color:red">删除</span>
			        </el-button>
      			</template>
		    </el-table-column>
		  </el-table>
		  <div style="margin-top: 20px" class="purchase_submit">
		  	<el-col :span="12">
			    <el-button type="primary" @click="toggleSelection(tableData)">选择全部</el-button>
			    <el-button type="warning" @click="deleteRow(index, tableData)">删除所选项</el-button>
		    </el-col>
		    <el-col :span="12"  style="text-align:right;">
		    	<el-col :span="8" style="padding-top: 8px;">
		    		<span>已选择商品&ensp;
		    		<span class="gd_num">0</span>&ensp;件
		    	&emsp;&emsp;&emsp;</span>
		    	</el-col>
		    	<el-col :span="8" style="padding-top: 8px;">
		    		合计： <span style="font-size:20px;font-weight:400;color:red;">
		    		￥<span class="sum_price">0</span>&ensp;
		    		</span>
		    	</el-col>
		    	<el-col :span="8">
		    		<el-button type="danger">&emsp;结算&emsp;</el-button>
		    	</el-col>
		    </el-col>
		  </div>
		</template>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/purchaseCar.js"></script>
</html>