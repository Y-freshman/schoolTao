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
<link rel="stylesheet" href="css/fabuqiugou.css">
</head>
<body>
	
	<div id="fabuqiugou">
		<el-container>
		  <el-main style="background: linear-gradient(to bottom, #fff , #eee);min-height:400px;padding-top: 0px;">
		  	<el-row :gutter="20" >
		  	  <el-col :span="8">
	  			<el-image src="img/icon_1.png" class="shouye_tubiao"  lazy></el-image>
	  			<span class="shouye_tubiao2" >
	  				校园二手淘<br>www.hcljy.com
	  			</span>
			  </el-col>
			  <el-col :span="8" style="text-align:center;float: left;margin-top: 35px;">
			  	<span class="fbqg_bt">发布求购</span>
			  </el-col>
		  	  <el-col :span="8"  style="float: right;margin-top: 10px;">
			  	<div style="float: right;">
			  		<div style="float: left;">
			  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
			  		</div>
			  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
			  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
			  			<span style="color: #666;font-size: 13px;font-weight: 600">听风说与</span>
			  			<i class="el-icon-male" style="color: #409eff;font-size: 13px;display:none"></i>
			  			<i class="el-icon-female" style="color: #F44336;font-size: 13px;"></i>
			  		</div>
		  		</div>
			  </el-col>
			  
			</el-row>
		  	
		  	<el-row :gutter="20" >
			  <el-col :span="22" :offset="1" >
			  	<span style="color: #666;font-size: 16px;font-weight: 600">求购内容</span>
			  </el-col>
			</el-row>
		  	<el-row :gutter="20" >
			  <el-col :span="22" :offset="1" style="text-align:center">
			  	<el-input
				  type="textarea"
				  :autosize="{ minRows: 4}"
				  placeholder="内容描述区域"
				  v-model="textarea2">
				</el-input>
			  </el-col>
			</el-row>
		  	<el-row :gutter="20" >
			  <el-col :span="22" :offset="1" >
			  	<span style="color: #666;font-size: 16px;font-weight: 600">附加图片</span>
			  	<span style="color: #aaa;font-size: 13px;font-weight: 600">（可不选，最多上传九张）</span>
			  </el-col>
			</el-row>
		  	<el-row :gutter="20" >
			  <el-col :span="22" :offset="1" >
			  	<div style="float: left;width: 8%;margin-right: 2%;">
			  		<div class="fbqg_tpsc" >
				  		<i class="el-icon-delete" style="color:#eee;font-size: 30px;line-height: 50px;"></i>
				  	</div>
				  	<el-image src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #666;z-index:0;position:relative;margin-top: -50px;"></el-image>
			  	</div>
			  	<div class="fbqg_tjtp" >
			  		<i class="el-icon-plus" style="color:#eee;font-size: 30px;line-height: 70px;font-weight: 600"></i>
			  	</div>
			  </el-col>
			</el-row>
		  	<el-row :gutter="20" >
			  <el-col :span="2" :offset="11" style="text-align:center">
			  	<el-button type="primary" icon="el-icon-position">发布</el-button>
			  </el-col>
			</el-row>
		  	
		  </el-main>
		</el-container>
	<%@include file="/inc/footer.inc"%>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/fabuqiugou.js"></script>
</html>