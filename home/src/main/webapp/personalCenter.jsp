<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<link rel="shortcut icon" href="img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="css/element.css">
<link rel="stylesheet" href="css/fonts/element-icons.woff">
<link rel="stylesheet" href="css/personalCenter.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<div id="personalCenter">
		<el-container class="header">
			<el-col :span="2">
			</el-col>
			<el-col :span="1.5">
				<div class="grid-content ">
			  		<el-link :underline="false"  href="#" ><img src="img/icon_1.png" class="personalCenter_tubiao"></img></el-link>
			  	</div>
			</el-col>
			<el-col :span="4">
		  			<p style="color: #1296db;font-size: 14px;font-weight: 600;float: left;margin-top: 18px;">校园二手淘&nbsp&nbsp<span style="color: black;font-size:20px;">我的中心</span></p>
			</el-col>
			<el-col :span="8">
				<div style="margin-top:20px;">
					<el-menu class="el-menu-demo" mode="horizontal" >
					  <el-menu-item >首页</el-menu-item>
					  <el-submenu index="1">
					    <template slot="title" >账户设置</template>
					    <el-menu-item>选项1</el-menu-item>
					    <el-menu-item >选项2</el-menu-item>
					    <el-menu-item >选项3</el-menu-item>
					  </el-submenu>
					  <el-menu-item >消息中心</el-menu-item>
					  <el-menu-item ><a href="#" target="_blank" style="text-decoration:none; ">订单管理</a></el-menu-item>
					</el-menu>
				</div> 
			</el-col>
			<el-col :span="6">
			  	 <div class="grid-content ">
				  	<div style="margin-top: 30px;">
					  <el-input placeholder="请输入你想要的商品"  class="input-with-select">
					    <el-button slot="append"  type="primary"  icon="el-icon-search" style="background-color: #409EFF; color: white;">搜索</el-button>
					  </el-input>
					</div>
				</div>
			 </el-col>
			 <el-col :span="1">
			 
			 </el-col>
			 <el-col :span="3">
		 		<div style="margin-top: 30px;">
				    <a href="#"><el-button  type="danger"  icon="el-icon-shopping-cart-2" >我的购物车</el-button></a>
				</div>
			 </el-col>
		</el-container>
		
	
		<el-container>
			<el-aside style="background:#eee;">
			<el-row class="tac">
				  <el-col :span="12">
				    <el-menu
				      default-active="2"
				      class="el-menu-vertical-demo"
				      @open="handleOpen"
				      @close="handleClose">
					      <el-submenu index="1">
					        <template slot="title">
					          <i class="el-icon-setting"></i>
					          <span>我的账号</span>
					        </template>
					          <el-menu-item index="1-1">选项1</el-menu-item>
					          <el-menu-item index="1-2">选项2</el-menu-item>
					          <el-menu-item index="1-3">选项3</el-menu-item>
					      </el-submenu>
				          <el-submenu index="2">
					        <template slot="title"><i class="el-icon-menu"></i>我的订单</template>
					          <el-menu-item index="2-1"><i class="el-icon-bank-card"></i>待付款</el-menu-item>
					          <el-menu-item index="2-2"><i class="el-icon-takeaway-box"></i>代发货</el-menu-item>
					          <el-menu-item index="2-3"><i class="el-icon-truck"></i>代收货</el-menu-item>
					          <el-menu-item index="2-4"><i class="el-icon-s-claim"></i>已完成</el-menu-item>
					      </el-submenu>
					      
				      <el-menu-item index="3">
				        <i class="el-icon-star-off"></i>
				        <span slot="title">我的收藏</span>
				      </el-menu-item>
				      <el-menu-item index="4">
				        <i class="el-icon-circle-plus-outline"></i>
				        <span slot="title">发布求购</span>
				      </el-menu-item>
				      <el-submenu index="5">
					        <template slot="title"><i class="el-icon-question"></i>常见问题</template>
					          <el-menu-item index="3-1">选项1</el-menu-item>
					          <el-menu-item index="3-2">选项2</el-menu-item>
					          <el-menu-item index="3-3">选项3</el-menu-item>
					  </el-submenu>
				    </el-menu>
				  </el-col>
				  </el-row>
			</el-aside>
			
			<el-main>
				<div class="toux_top">
					<el-row>
						 <el-col :span="24">
					  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333;margin-top:20px;"></el-avatar>
						  		<div >
						  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7;margin-left: 25px;margin-top: -15px;" lazy></el-image>
						  		</div>
						  		<div style="text-align: center;">
					  			<span style="color: #333;font-size: 16px;font-weight:bold;margin-left: 12px;">freshman</span>
					  			</div>
						</el-col> 
					</el-row>
			   </div>
			
<!-- 				<div class="tx">
					<el-row>
						 <el-col :span="2">
							<div style="float: left;margin-top: 20px;margin-left: 20px;">
				  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333;"></el-avatar>
					  		</div>
					  		<div style="float: left;width:15px;height:15px;margin-top: -15px;margin-left: 45px;">
					  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" lazy></el-image>
					  		</div>
					  		<div style="text-align: center;">
				  			<span style="color: #333;font-size: 16px;font-weight:bold;margin-left: 12px;">freshman</span>
				  			</div>
						 </el-col>
						
						<el-col :span="2">
							<br>
						</el-col>  
						<el-col :span="3">
								 <el-link :underline="false"  href="#" class="xinxi" >个人资料</el-link>
						</el-col> 
						<el-col :span="3">
								<el-link :underline="false"  href="#" class="xinxi">我的留言</el-link>
						</el-col> 
						<el-col :span="3">
								<el-link :underline="false"  href="#" class="xinxi">交易信息</el-link>
						</el-col> 
						<el-col :span="6">
							<br>
						</el-col> 
						<el-col :span="4">
							<br>
						</el-col> 
					</el-row>
			   </div> -->
				<div class="tx">
					<el-row style="margin-top: 10px;">
						
						<el-col :span="6">
							 <el-link :underline="false"  href="#" >
								 <i class="el-icon-bank-card"></i>
								 <br>待付款
							</el-link>
						</el-col>
						<el-col :span="6">
							<el-link :underline="false"  href="#" >
								<i class="el-icon-takeaway-box"></i>
								<br>代发货 
							</el-link>
						</el-col> 
						<el-col :span="6">
							<el-link :underline="false"  href="#" >
								<i class="el-icon-truck"></i>
								<br>代收货
							</el-link>
						</el-col>  
						<el-col :span="6">
							<el-link :underline="false"  href="#" >
								<i class="el-icon-s-claim"></i>
								<br>已完成
							</el-link>
						</el-col>  
					</el-row>
			   </div>
			   
			   <div class="liuyan">
					<div class="like1">
							<span class="like2">
								我的通知
							</span>
							<el-button icon="el-icon-refresh" class="huan_button" @click="change()">刷一刷</el-button>
					</div>
					
					<el-row :gutter="20" >
				  		<el-col :span="24" >
				  		<el-collapse accordion>
							  <el-collapse-item>
							    <template slot="title">
							    	<el-col :span="2" >
							   		 <el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333;margin-left: 20px;"></el-avatar>
			  						</el-col>
							    	<el-col :span="2" >
							   		  <p style="font-size:14px;font-weight:bold;">freshman</p>
			  						</el-col>
			  						<el-col :span="16" >
			  						</el-col>
			  						<el-col :span="4" >
			  								 <span style="font-size:14px;font-weight:bold;">2019-11-17</span>
			  						</el-col>
							    </template>
							    <div>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</div>
							  </el-collapse-item>
							  <el-collapse-item>
							    <template slot="title">
							    	<el-col :span="2" >
							   		 <el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333;margin-left: 20px;"></el-avatar>
			  						</el-col>
							    	<el-col :span="2" >
							   		  <p style="font-size:14px;font-weight:bold;">freshman</p>
			  						</el-col>
			  						<el-col :span="16" >
			  						</el-col>
			  						<el-col :span="4" >
			  								 <span style="font-size:14px;font-weight:bold;">2019-11-17</span>
			  						</el-col>
							    </template>
							    <div>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</div>
							  </el-collapse-item>
							  <el-collapse-item>
							    <template slot="title">
							    	<el-col :span="2" >
							   		 <el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333;margin-left: 20px;"></el-avatar>
			  						</el-col>
							    	<el-col :span="2" >
							   		  <p style="font-size:14px;font-weight:bold;">freshman</p>
			  						</el-col>
			  						<el-col :span="16" >
			  						</el-col>
			  						<el-col :span="4" >
			  								 <span style="font-size:14px;font-weight:bold;">2019-11-17</span>
			  						</el-col>
							    </template>
							    <div>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</div>
							  </el-collapse-item>
							  <el-collapse-item>
							    <template slot="title">
							    	<el-col :span="2" >
							   		 <el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333;margin-left: 20px;"></el-avatar>
			  						</el-col>
							    	<el-col :span="2" >
							   		  <p style="font-size:14px;font-weight:bold;">freshman</p>
			  						</el-col>
			  						<el-col :span="16" >
			  						</el-col>
			  						<el-col :span="4" >
			  								 <span style="font-size:14px;font-weight:bold;">2019-11-17</span>
			  						</el-col>
							    </template>
							    <div>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</div>
							  </el-collapse-item>
							  <el-collapse-item>
							    <template slot="title">
							    	<el-col :span="2" >
							   		 <el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333;margin-left: 20px;"></el-avatar>
			  						</el-col>
							    	<el-col :span="2" >
							   		  <p style="font-size:14px;font-weight:bold;">freshman</p>
			  						</el-col>
			  						<el-col :span="16" >
			  						</el-col>
			  						<el-col :span="4" >
			  								 <span style="font-size:14px;font-weight:bold;">2019-11-17</span>
			  						</el-col>
							    </template>
							    <div>与现实生活一致：与现实生活的流程、逻辑保持一致，遵循用户习惯的语言和概念；</div>
							  </el-collapse-item>
							  
							</el-collapse>
				  		</el-col>
					</el-row>
					
					<div class="block">
					  <el-pagination
					    layout="prev, pager, next"
					    :total="50">
					  </el-pagination>
					</div>
				</div>
			
			   
				<div class="like">
					<div class="like1">
							<span class="like2">
								猜你喜欢
							</span>
							<el-button icon="el-icon-refresh" class="huan_button" @click="change()">换一组</el-button>
					</div>
					
				<el-row :gutter="20" >
			  		<el-col :span="24" >
			  		</el-col>
				</el-row>
				
				<el-row :gutter="20" >
		  		<el-col :span="8" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		<el-col :span="8" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		<el-col :span="8" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		
			 </el-row>
				
				
							<el-row :gutter="20" >
		  		<el-col :span="8" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		<el-col :span="8" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		<el-col :span="8" >
			  		<el-card>
					  	<div style="float: left;height: 200px">
					  		<div >
					  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
					  		</div>
					  		<div style="margin-top: 10px;height:70px;">
					  			<div style="height: 40px;overflow: hidden;margin-bottom: 5px;">
					  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套13245</el-link>
					  			</div>
					  			<div><b style="color: #673AB7;float: left;">￥330.00</b>
					  			<span style="color: #999;font-size: 13px;float: right;margin-top: 5px;margin-left: -5px">
					  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i></el-link>
					  			</span></div>
					  			
					  		</div>
					  	</div>
					</el-card>
				</el-col>
		  		
			 </el-row>
			</div>	
				
			
			 
	
				
			</el-main>
		</el-container>
		
		
		<%@include file="/inc/footer.inc"%>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/personalCenter.js"></script>
</html>