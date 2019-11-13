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
		  style="width: 100%" @selection-change="handleSelectionChange">
		    <el-table-column type="selection" width="55"> </el-table-column>
		    <el-table-column label="商品信息" width="520">
		    	<template slot-scope="scope">
			        <el-row>
					  <el-col :span="8"><div class="grid-content">
					  	<img :src="scope.row.head_pic" class="head_pic"/>
					  </div></el-col>
					  <el-col :span="8"><div class="grid-content" style="margin-left: -20px;">
					  	<el-link href="https://element.eleme.io" :underline="false" target="_blank">
					  		{{ scope.row.title }}
					  	</el-link>
					  </div></el-col>
					  <el-col :span="8"><div class="grid-content size" style="margin-left: 20px;" 
					  @mouseenter="sizeOn">
					  	<i class="el-icon-edit" style="float: right;clor:red;"></i>
					  	<p style="margin-top: 0px;">{{ scope.row.color }}</p>
					  	<p style="margin-top: -10px;">{{ scope.row.size }}</p>
					  </div></el-col>
					</el-row>
			    </template>
		    </el-table-column>
		    <!-- <el-table-column label="单价" width="80">
		    	<template slot-scope="scope">
		        	<span class="purchaseCar_price">{{ scope.row.price }}</span>
    			</template>
		    </el-table-column> -->
		    <el-table-column label="货源" width="140"> 
	    		<template slot-scope="scope">
	    			<el-link type="primary">
		        	{{ scope.row.source }}
		        	</el-link>
    			</template>
		    </el-table-column>
		    <el-table-column label="金额" width="120">
		    	<template slot-scope="scope">
		        	<span class="purchaseCar_sum">{{ scope.row.sum }}</span>
    			</template>
		    </el-table-column>
		    <el-table-column label="操作" show-overflow-tooltip> 
		    	<template slot-scope="scope">
			        <el-button @click.native.prevent="deleteRow(scope.$index, tableData)"
			          type="text" size="small">
			          <span style="color:red">删除</span>
			        </el-button>
      			</template>
		    </el-table-column>
		  </el-table>
		  
		  <!-- <div style="margin-top: 20px">
		    <el-button @click="toggleSelection([tableData[1], tableData[2]])">切换第二、第三行的选中状态</el-button>
		    <el-button @click="toggleSelection()">取消选择</el-button>
		  </div> -->
		</template>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/purchaseCar.js"></script>
</html>