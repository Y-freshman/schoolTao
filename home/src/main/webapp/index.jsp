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
		<%@include file="/inc/header.inc"%>
		<div >
		  	  <el-carousel indicator-position="outside" height="350px">
			    <el-carousel-item style="text-align:center;background-color: #eee;">
			      <el-image src="img/lunbo_1.jpg"   fit="container" style="min-width:60%;"></el-image>
			    </el-carousel-item>
			    <el-carousel-item style="text-align:center;background-color: #eee;">
			      <el-image src="img/lunbo_2.jpg"   fit="container" style="min-width:60%;"></el-image>
			    </el-carousel-item>
			  </el-carousel>
		</div>
		<el-container>
		  <el-main style="background: linear-gradient(to bottom, #fff , #eee);">
		  	<el-row :gutter="20" >
		  		<el-col :span="16" >
		  		|<b id="shouye_eqph" class="shouye_zl">人气排行</b>
		  		</el-col>
		  		<el-col :span="8" >
		  		|<b id="shouye_qg" class="shouye_zl">求购</b>
		  		</el-col>
		  	</el-row>
		  	<el-row :gutter="20" >
			  <el-col :span="16" >
			  <el-row :gutter="20" >
			  <el-col :span="12" >
			   <el-card>
			  	<div style="float: left;height: 130px" class="hot_top">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 98px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span class="hot_top_viewNum" style="color: #999;font-size: 13px;margin-top: 5px;float: left;">
			  			<i class="el-icon-view"></i>1030</span>
			  			<span class="hot_top_pchaseCar" style="color: #999;font-size: 13px;margin-top: 5px;float: left;">
			  			<el-link @click="jiagou()" ><i class="el-icon-shopping-cart-2"></i><span style="font-size: 12px">加至购物车</span></el-link></span>
			  			
			  			</div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 105px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px;margin-top: 5px;float: left;"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 105px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 105px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 105px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套史丹利家用工具箱套装，家用工具箱套装60件套史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			  </el-col>
			  <el-col :span="12" >
			  	<el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%;">
			  			<div style="height: 98px;margin-top: 3px;overflow: hidden;">
			  				<el-link >史丹利家用工具箱套装，家用工具箱套装60件套史丹利家用工具箱套装，家用工具箱套装60件套史丹利家用工具箱套装，家用工具箱套装60件套史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 105px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 105px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 105px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;height: 130px">
			  		<div style="float: left;width:40%">
			  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
			  		</div>
			  		<div style="float: left;margin-left: 5px;width:50%">
			  			<div style="height: 105px;margin-top: 3px">
			  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
			  			</div>
			  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
			  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
			  			
			  		</div>
			  	</div>
			   </el-card>
			  </el-col>
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="24" >
		  		|<b id="shouye_gyyl" class="shouye_zl">工业原料</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="6" >
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
		  		<el-col :span="6" >
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
		  		<el-col :span="6" >
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
		  		<el-col :span="6" >
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
		  		<el-col :span="24" >
		  		|<b id="shouye_jzsb" class="shouye_zl">建筑设备</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="24" >
		  		|<b id="shouye_znaf" class="shouye_zl">智能安防</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="24" >
		  		|<b id="shouye_dgdq" class="shouye_zl">电工电器</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="24" >
		  		|<b id="shouye_dzyj" class="shouye_zl">电子元件</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="24" >
		  		|<b id="shouye_zmgy" class="shouye_zl">照明工业</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="24" >
		  		|<b id="shouye_bgwj" class="shouye_zl">办公文教</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="24" >
		  		|<b id="shouye_bzyp" class="shouye_zl">包装用品</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="24" >
		  		|<b id="shouye_gyyl" class="shouye_zl">生鲜食材</b>
		  		</el-col>
			  		
			 </el-row>
			 <el-row :gutter="20" >
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
		  		<el-col :span="12" >
		  			<el-card>
				  	<div style="float: left;height: 130px">
				  		<div style="float: left;width:40%">
				  			<el-image src="img/gongjuxiang.jpg"  style="height:130px;" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-left: 5px;width:50%">
				  			<div style="height: 105px;margin-top: 3px">
				  				<el-link>史丹利家用工具箱套装，家用工具箱套装60件套</el-link>
				  			</div>
				  			<div><b style="color: #673AB7;float: right;">￥330.00</b>
				  			<span style="color: #999;font-size: 13px"><i class="el-icon-view"></i>1030</span></div>
				  			
				  		</div>
				  	</div>
				   </el-card>
		  		</el-col>
			  		
			 </el-row>
			</el-col> 
		  	<el-col :span="8" >
			   <el-card style="margin-bottom:20px;">
			  	<div style="float: left;min-height: 60px">
			  		<div style="float: left;width:60px">
				  		<div style="float: left;">
				  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
				  		</div>
				  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
				  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
				  			<span style="color: #666;font-size: 13px">听风说与</span>
				  		</div>
			  		</div>
			  		<div style="float: right;width:75%;color: #333;font-size: 15px">
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			
			  			<el-button type="info" style="padding: 8px 15px;margin:5px" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  	</div>
			   </el-card>
			   <el-card style="margin-bottom:20px;">
			  	<div style="float: left;min-height: 60px">
			  		<div style="float: left;width:60px">
				  		<div style="float: left;">
				  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
				  		</div>
				  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
				  			
				  		</div>
				  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
				  			<span style="color: #666;font-size: 13px">听风说与</span>
				  		</div>
			  		</div>
			  		<div style="float: right;width:75%;color: #333;font-size: 15px;line-height: 25px;">
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			<el-button type="info" style="padding: 8px 15px;margin:5px" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  	</div>
			   </el-card>
			   <el-card style="margin-bottom:20px;">
			  	<div style="float: left;min-height: 60px">
			  		<div style="float: left;width:60px">
				  		<div style="float: left;">
				  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
				  		</div>
				  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
				  			
				  		</div>
				  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
				  			<span style="color: #666;font-size: 13px">听风说与</span>
				  		</div>
			  		</div>
			  		<div style="float: right;width:75%;color: #333;font-size: 15px">
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			<el-button type="info" style="padding: 8px 15px;margin:5px" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  	</div>
			   </el-card>
			   <el-card style="margin-bottom:20px;">
			  	<div style="float: left;min-height: 60px">
			  		<div style="float: left;width:60px">
				  		<div style="float: left;">
				  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
				  		</div>
				  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
				  			
				  		</div>
				  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
				  			<span style="color: #666;font-size: 13px">听风说与</span>
				  		</div>
			  		</div>
			  		<div style="float: right;width:75%;color: #333;font-size: 15px">
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			<el-button type="primary" style="padding: 8px 15px;margin:5px" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  	</div>
			   </el-card>
			   <el-card style="margin-bottom:20px;">
			  	<div style="float: left;min-height: 60px">
			  		<div style="float: left;width:60px">
				  		<div style="float: left;">
				  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
				  		</div>
				  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
				  			
				  		</div>
				  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
				  			<span style="color: #666;font-size: 13px">听风说与</span>
				  		</div>
			  		</div>
			  		<div style="float: right;width:75%;color: #333;font-size: 15px">
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			<el-button type="primary" style="padding: 8px 15px;margin:5px" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  	</div>
			   </el-card>
			   <el-card style="margin-bottom:20px;">
			  	<div style="float: left;min-height: 60px">
			  		<div style="float: left;width:60px">
				  		<div style="float: left;">
				  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
				  		</div>
				  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
				  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
				  			<span style="color: #666;font-size: 13px">听风说与</span>
				  		</div>
			  		</div>
			  		<div style="float: right;width:75%;color: #333;font-size: 15px">
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			<el-button type="primary" style="padding: 8px 15px;margin:5px" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  	</div>
			   </el-card>
			   <el-card>
			  	<div style="float: left;min-height: 60px">
			  		<div style="float: left;width:60px">
				  		<div style="float: left;">
				  			<el-avatar src="img/lunbo_1.jpg" style="box-shadow: 1px 2px 5px #333"></el-avatar>
				  		</div>
				  		<div style="float: left;width:15px;height:15px;margin-top: 25px;margin-left: -15px">
				  			<el-image src="img/vip_2.jpg"  style="width:15px;height:15px;box-shadow: 1px 2px 4px #673AB7" lazy></el-image>
				  		</div>
				  		<div style="float: left;margin-top: 45px;margin-left: -55px;width:75px;text-align: center;">
				  			<span style="color: #666;font-size: 13px">听风说与</span>
				  		</div>
			  		</div>
			  		<div style="float: right;width:75%;color: #333;font-size: 15px">
			  			想入手一个蓝牙耳机，价位在199-299，7成新以上，有的留言。
			  			<el-button type="primary" style="padding: 8px 15px;margin:5px" round><i class="el-icon-chat-line-round"></i> 留言</el-button>
			  		</div>
			  	</div>
			   </el-card>
			   
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
<script src="js/index.js"></script>
</html>