<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册页面</title>
<link rel="shortcut icon" href="img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="css/element.css">
<link rel="stylesheet" href="css/fonts/element-icons.woff">
<link rel="stylesheet" href="css/register.css">
</head>
<body>
	<div id="register">
	<!-- 	<el-header>Header</el-header> -->
		<el-container class="header">
			<el-col :span="2">
			</el-col>
			<el-col :span="1.5">
				<div class="grid-content ">
			  		<el-link :underline="false"  href="#" ><img src="img/icon_2.png" class="register_tubiao"></img></el-link>
			  	</div>
			</el-col>
			<el-col :span="10">
			  		<p style="color: black;font-size:20px;">校园二手淘&nbsp&nbsp<span style="color: black;font-size:20px;">欢迎注册</span></p>
			</el-col>
			<el-col :span="10">
			  	<div style="text-align:right;padding-right:40px;margin-top: 38px;">
					<el-link :underline="false" type="info" >已有账号？&nbsp</el-link>
					<el-link :underline="false" type="danger"  href="#">请登录&gt;</el-link>
				</div>  
			 </el-col>
		</el-container>
		
		<el-container>
			  <el-col :span="8">
			  </el-col>
			 <el-col :span="8">
				<div class="grid-content " style="margin-top: 150px;">
			 		<el-input v-model="root"  placeholder="请输入用户名"  clearable>
	  					 <el-button slot="prepend" icon="el-icon-user-solid"></el-button>
			 		</el-input>
			 		<br><br>
	  				<el-input placeholder="请输入密码" v-model="pass" show-password>
	  					 <el-button slot="prepend" icon="el-icon-lock"></el-button>
	  				</el-input>		
	  				<br><br>	
	  				<el-input placeholder="请确认密码" v-model="checkPass" show-password>
	  					 <el-button slot="prepend" icon="el-icon-lock"></el-button>
	  				</el-input>		
	  				<br><br>								 				
				</div>	
				<div>
					<el-button type="primary" style="width:100%;font-size:16px" @click="submitForm()">立即注册</el-button>	
				</div>
			  </el-col>
		</el-container>
		
		<!-- <el-container>
			<el-form :model="ruleForm" status-icon :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
			  <el-form-item label="密码" prop="pass">
			    <el-input type="password" v-model="ruleForm.pass" autocomplete="off"></el-input>
			  </el-form-item>
			  <el-form-item label="确认密码" prop="checkPass">
			    <el-input type="password" v-model="ruleForm.checkPass" autocomplete="off"></el-input>
			  </el-form-item>
			  <el-form-item label="年龄" prop="age">
			    <el-input v-model.number="ruleForm.age"></el-input>
			  </el-form-item>
			  <el-form-item>
			    <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
			   
			  </el-form-item>
			</el-form>
		</el-container> -->
		<el-footer>Footer</el-footer>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/register.js"></script>
</html>