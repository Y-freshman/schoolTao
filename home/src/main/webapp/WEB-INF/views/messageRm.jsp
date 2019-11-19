<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>消息留言</title>
<link rel="shortcut icon" href="img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="css/element.css">
<link rel="stylesheet" href="css/fonts/element-icons.woff">
<link rel="stylesheet" href="css/messageRm.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<%@include file="/inc/header.inc"%>
	<div id="messageRm">
		<el-collapse v-model="activeNames" @change="handleChange">
		  <div v-for="item in message">
		    <el-row class="demo-avatar demo-basic">
		    	<el-col :span="2">
		      	  <div class="demo-basic--circle">
		            <div class="block"><el-avatar shape="square" :size="50" :src="item.squareUrl"></el-avatar></div>
		          </div>
		    	</el-col> 
		    	<el-col :span="22">
			    	<div class="block" style="float: left;">
			        	<span style="color:#f56c6ce0;">{{item.remainer}}&ensp;</span>
			        	<i class="el-icon-male" v-if="item.sex == 0" style="color:blue;"></i>
			        	<i class="el-icon-female" v-if="item.sex == 1" style="color:red;"></i>
			        	<p style="margin-top: 9px;">假如爱有太浓易</p>
			        </div>
			        <div style="float:right;">
			        	<span style="color:#666;">{{item.time}}&emsp;&emsp;</span>
			        	<el-button icon="el-icon-delete" plain>删除</el-button>
			        	<el-button @click="drawer = true" icon="el-icon-message" style="margin-left: 16px;">
						  回复
						</el-button>
						<el-drawer title="留言回复" :visible.sync="drawer" :direction="direction"
						  :before-close="handleClose">
						  <el-input type="textarea" :rows="4" placeholder="请输入回复内容" v-model="textarea">
						  </el-input>
						  <el-button type="primary" style="float:right;margin:15px 15px 15px 0;" @click="reply">确定</el-button>
						</el-drawer>
			        </div>
			    </el-col>
			</el-row>  
		    <el-collapse-item :title="item.content" :name="item.id">
		      <div class="block" style="float: left;">
		      		<p v-for="subItem in item.subContent">
		      			<span style="color:#409eff;">{{subItem.remainer}}</span>
		      			<!-- <span style="color:#a43eccfc;" v-if="">{{subItem.remainer}}</span> -->
		      			（{{subItem.time}}）：&emsp;{{subItem.content}}
		      		</p>
		      </div>
		    </el-collapse-item>
		  </div>  
		</el-collapse>
	</div>
	<%@include file="/inc/footer.inc"%>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/messageRm.js"></script>
<script src="js/header.js"></script>
</html>