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
<link rel="stylesheet" href="css/qiugou.css">
</head>
<body>
	<%@include file="/inc/header.inc"%>
	<div id="qiugou">
		<el-container>
		  <el-main style="background: linear-gradient(to bottom, #fff , #eee);">
		  	<el-row :gutter="20" >
			  <el-col :span="17" :offset="1">
			  	<el-tabs type="border-card">
				  <el-tab-pane>
				    <span slot="label">综合排序<i class="el-icon-download"></i> </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">创建时间<i class="el-icon-download"></i> </span>
				  </el-tab-pane>
				  <el-tab-pane>
				    <span slot="label">热度优先<i class="el-icon-download"></i> </span>
				  </el-tab-pane>
				  
				</el-tabs>
			  </el-col>
			  <el-col :span="6" >
			   <el-button type="primary" icon="el-icon-s-flag"  @click="fbqg()" round>发布求购</el-button>
			  </el-col>
			</el-row>
		  	<el-row :gutter="20" >
			 <el-col :span="22" :offset="1">
			  <el-col :span="8" >
			  	<el-card style="margin-bottom:10px;">
			  	<div style="float: left;min-height: 60px;width:100%"  class="qg_card">
			  		<div style="float: left;width:60px">
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
				  		<el-button type="primary" style="padding: 8px 10px;margin: 5px 0px 0px -13px;" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  		<div style="float: right;width:73%;color: #333;font-size: 15px">
			  			<div>
			  				想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  				想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			</div>
			  			<div class="demo-image__preview" style="margin-top: 5px" >
			  				<el-image @click="xr_lb(0)" style="width: 30%;"  src="img/lunbo_1.jpg"  :preview-src-list="lunbo"></el-image>
			  				<el-image @click="xr_lb(1)" style="width: 30%;"  src="img/lunbo_2.jpg"  :preview-src-list="lunbo"></el-image>
			  				
			  			</div>
			  			<div style="float: right;margin: 10px 10px 0px 10px">
				  			<el-link type="primary"  class="qg_plsl"  id="qg_plsl0"  ><i class="el-icon-chat-line-square"></i> 0</el-link>
				  			<el-link type="primary"  class="qg_zkpl"  id="qg_zkpl0"  @click="zkpl(0)" >展开评论</el-link>
				  			<el-link type="primary"  id="qg_sqpl0" @click="sqpl(0)" style="display:none"> 收起评论</el-link>
				  		</div>
			  			
			  		</div>
			  	</div>
			  	<div id="qg_pl0" style="float:left;width: 100%;display: none">
			  	<el-divider ><i class="el-icon-chat-dot-square"></i></el-divider>
			  		<div style="float: left;width:100%;padding: 10px 0;border-bottom: 1px solid #ccc">
				  		<div style="float: left;width:60px">
				  			<div style="float: left;">
					  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
					  		</div>
					  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
					  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" ></el-image>
					  		</div>
					  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
					  			<span style="color: #999;font-size: 13px;font-weight: 600">听风说与</span>
					  		</div>
				  		</div>
				  		<div style="float: right;color: #666;font-size: 14px;width: 73%">
				  			<div style="float: right;color: #666;font-size: 14px">
					  			<el-link type="primary" style="float:right"><i class="el-icon-thumb"></i> 0</el-link>
					  			
					  		</div>
				  			<p style="margin-bottom: 0;width: 70%">300多的要不要。0</p>
				  			<div style="float: right;color: #666;font-size: 14px">
					  			刚刚
					  		</div>
				  		</div>

			  		</div>
			  		<div style="float: left;width:100%;padding: 10px 0;border-bottom: 1px solid #ccc">
				  		<div style="float: left;width:60px">
				  			<div style="float: left;">
					  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
					  		</div>
					  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
					  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" ></el-image>
					  		</div>
					  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
					  			<span style="color: #999;font-size: 13px;font-weight: 600">听风说与</span>
					  		</div>
				  		</div>
				  		<div style="float: right;color: #666;font-size: 14px;width: 73%">
				  			<div style="float: right;color: #666;font-size: 14px">
					  			<el-link type="primary" style="float:right"><i class="el-icon-thumb"></i> 0</el-link>
					  			
					  		</div>
				  			<p style="margin-bottom: 0;width: 70%">300多的要不要。0</p>
				  			<div style="float: right;color: #666;font-size: 14px">
					  			刚刚
					  		</div>
				  		</div>

			  		</div>
			  		<div style="float: left;width:100%;padding: 10px 0;border-bottom: 1px solid #ccc">
				  		<div style="float: left;width:60px">
				  			<div style="float: left;">
					  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
					  		</div>
					  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
					  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" ></el-image>
					  		</div>
					  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
					  			<span style="color: #999;font-size: 13px;font-weight: 600">听风说与</span>
					  		</div>
				  		</div>
				  		<div style="float: right;color: #666;font-size: 14px;width: 73%">
				  			<div style="float: right;color: #666;font-size: 14px">
					  			<el-link type="primary" style="float:right"><i class="el-icon-thumb"></i> 0</el-link>
					  			
					  		</div>
				  			<p style="margin-bottom: 0;width: 70%">300多的要不要。0</p>
				  			<div style="float: right;color: #666;font-size: 14px">
					  			刚刚
					  		</div>
				  		</div>

			  		</div>
			  		
			  		<div style="float: left;width:100%;margin-top: 15px">
			  			<el-input placeholder="说点什么..." maxlength="10" >
						    <el-button slot="append" icon="el-icon-position" style="background-color: #409EFF; color: white;">发布</el-button>
						</el-input>
			  		</div>
			  	</div>
			   </el-card>
			  	<el-card style="margin-bottom:20px;">
			  	<div style="float: left;min-height: 60px;width:100%"  class="qg_card">
			  		<div style="float: left;width:60px">
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
				  		<el-button type="primary" style="padding: 8px 10px;margin: 5px 0px 0px -13px;" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  		<div style="float: right;width:73%;color: #333;font-size: 15px">
			  			<div>
			  				想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  				想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			</div>
			  			<div class="demo-image__preview" style="margin-top: 5px" >
			  				<el-image @click="xr_lb(0)" style="width: 30%;"  src="img/lunbo_1.jpg"  :preview-src-list="lunbo"></el-image>
			  				<el-image @click="xr_lb(1)" style="width: 30%;"  src="img/lunbo_2.jpg"  :preview-src-list="lunbo"></el-image>
			  				
			  			</div>
			  			<div style="float: right;margin: 10px 10px 0px 10px">
				  			<el-link type="primary"  class="qg_plsl"  id="qg_plsl1"  ><i class="el-icon-chat-line-square"></i> 0</el-link>
				  			<el-link type="primary"  class="qg_zkpl"  id="qg_zkpl1"  @click="zkpl(1)" >展开评论</el-link>
				  			<el-link type="primary"  id="qg_sqpl1" @click="sqpl(1)" style="display:none"> 收起评论</el-link>
				  		</div>
			  			
			  		</div>
			  	</div>
			  	<div id="qg_pl1" style="float:left;width: 100%;display: none">
			  	<el-divider ><i class="el-icon-chat-dot-square"></i></el-divider>
			  		<div style="float: left;width:100%;padding: 10px 0;border-bottom: 1px solid #ccc">
				  		<div style="float: left;width:60px">
				  			<div style="float: left;">
					  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
					  		</div>
					  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
					  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" ></el-image>
					  		</div>
					  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
					  			<span style="color: #999;font-size: 13px;font-weight: 600">听风说与</span>
					  		</div>
				  		</div>
				  		<div style="float: right;color: #666;font-size: 14px;width: 73%">
				  			<div style="float: right;color: #666;font-size: 14px">
					  			<el-link type="primary" style="float:right"><i class="el-icon-thumb"></i> 0</el-link>
					  			
					  		</div>
				  			<p style="margin-bottom: 0;width: 70%">300多的要不要。0</p>
				  			<div style="float: right;color: #666;font-size: 14px">
					  			刚刚
					  		</div>
				  		</div>

			  		</div>
			  		<div style="float: left;width:100%;padding: 10px 0;border-bottom: 1px solid #ccc">
				  		<div style="float: left;width:60px">
				  			<div style="float: left;">
					  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
					  		</div>
					  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
					  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" ></el-image>
					  		</div>
					  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
					  			<span style="color: #999;font-size: 13px;font-weight: 600">听风说与</span>
					  		</div>
				  		</div>
				  		<div style="float: right;color: #666;font-size: 14px;width: 73%">
				  			<div style="float: right;color: #666;font-size: 14px">
					  			<el-link type="primary" style="float:right"><i class="el-icon-thumb"></i> 0</el-link>
					  			
					  		</div>
				  			<p style="margin-bottom: 0;width: 70%">300多的要不要。0</p>
				  			<div style="float: right;color: #666;font-size: 14px">
					  			刚刚
					  		</div>
				  		</div>

			  		</div>
			  		<div style="float: left;width:100%;padding: 10px 0;border-bottom: 1px solid #ccc">
				  		<div style="float: left;width:60px">
				  			<div style="float: left;">
					  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
					  		</div>
					  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
					  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" ></el-image>
					  		</div>
					  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
					  			<span style="color: #999;font-size: 13px;font-weight: 600">听风说与</span>
					  		</div>
				  		</div>
				  		<div style="float: right;color: #666;font-size: 14px;width: 73%">
				  			<div style="float: right;color: #666;font-size: 14px">
					  			<el-link type="primary" style="float:right"><i class="el-icon-thumb"></i> 0</el-link>
					  			
					  		</div>
				  			<p style="margin-bottom: 0;width: 70%">300多的要不要。0</p>
				  			<div style="float: right;color: #666;font-size: 14px">
					  			刚刚
					  		</div>
				  		</div>

			  		</div>
			  		
			  		<div style="float: left;width:100%;margin-top: 15px">
			  			<el-input placeholder="说点什么..." maxlength="10" >
						    <el-button slot="append" icon="el-icon-position" style="background-color: #409EFF; color: white;">发布</el-button>
						</el-input>
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
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/qiugou.js"></script>
<script src="js/header.js"></script>
</html>