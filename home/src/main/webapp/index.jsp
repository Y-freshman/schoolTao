<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=no">
<title>校园二手淘</title>
<link rel="shortcut icon" href="img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="css/element.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<div id="shouye">
		<el-container>
		  <el-header>
		  	<el-row type="flex" class="row-bg">
			  <el-col :span="12">
			  	<div class="grid-content ">
			  		<img src="img/icon_2.png" class="shouye_tubiao"></img>
			  		<span style="color: blue">校园二手淘</span>
			  	</div>
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
		  </el-header>
		  <el-main>
		  	Main
		  </el-main>
		  <el-footer>
		  	Footer
		  </el-footer>
		</el-container>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/index.js"></script>
</html>