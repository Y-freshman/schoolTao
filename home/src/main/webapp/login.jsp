<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<link rel="shortcut icon" href="img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="css/element.css">
<link rel="stylesheet" href="css/fonts/element-icons.woff">
<link rel="stylesheet" href="css/login.css">

</head>
<body>
	<div id="login">
		<el-header>Header</el-header>
		
		<div class="bc">
			<el-image src="https://img11.360buyimg.com/da/jfs/t16363/164/2298198848/33213/870500f1/5aa68632Nd7790d0c.png"></el-image>
		</div>
	
			<el-container class="logo-box">
			  <el-col :span="4">
			  </el-col>
			 <el-col :span="16">
				<div class="grid-content " style="margin-top: 80px;" >
				
			 		<el-input v-model="root"  placeholder="请输入用户名"  clearable>
	  					 <el-button slot="prepend" icon="el-icon-user-solid"></el-button>
			 		</el-input>
			 		<br><br>
	  				<el-input placeholder="请输入密码" v-model="password" show-password>
	  					 <el-button slot="prepend" icon="el-icon-lock"></el-button>
	  				</el-input>		
	  				<br><br>								 				
				</div>	
				<div>
					<el-button type="primary" style="width:100%;font-size:16px" >登      录</el-button>	
				</div>
				
				<p style="margin-top:20px;">
					<el-link :underline="false" type="primary" style="text-align:left;">忘记密码</el-link>
					<el-link :underline="false" type="primary" style="float:right;">免费注册</el-link>
				</p>
			  </el-col>
  				 
  		
			</el-container>
	
		<el-footer>Footer</el-footer>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/login.js"></script>
</html>