<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品发布</title>
<link rel="shortcut icon" href="img/icon_3.png" type="image/png" />
<link rel="stylesheet" href="css/element.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/publishGoods.css">
</head>
<body>
	
	
	<div id="publishGoods">
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
			  	<span class="fbqg_bt">商品发布</span>
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
		  	
		  	
		  	
		  	<el-card class="box-card">
		      <h3 style="text-align:center;">商品介绍</h3>
		       		<el-form :model="goods" :rules="rules" ref="goods" label-width="100px" class="demo-ruleForm">
					  	<el-form-item label="商品名称" prop="Name">
					    <el-input type="text" v-model="goods.Name"></el-input>
				  	</el-form-item>
				  	<el-form-item label="专柜价格" prop="counterPrice">
			          <el-input v-model="goods.counterPrice" placeholder="0.00">
			            <template slot="append">元</template>
			          </el-input>
			        </el-form-item>
				 	 <el-form-item label="商品简介" prop="retailPrice">
				          <el-input v-model="goods.retailPrice" placeholder="0.00">
				            <template slot="append">元</template>
				          </el-input>
				      </el-form-item>
				      <el-form-item label="是否新品" prop="isNew">
				          <el-radio-group v-model="goods.isNew">
				            <el-radio :label="true">新品</el-radio>
				            <el-radio :label="false">非新品</el-radio>
				          </el-radio-group>
				       </el-form-item>
				     
					  
					  <el-form-item label="商品图片">
					  	<el-upload
						  action="https://jsonplaceholder.typicode.com/posts/"
						  list-type="picture-card"
						  :on-preview="handlePictureCardPreview"
						  :on-remove="handleRemove">
						  <i class="el-icon-plus"></i>
						</el-upload>
						<el-dialog :visible.sync="dialogVisible">
						  <img width="100%" v-if="goods.picUrl" :src="goods.picUrl" alt="">
						</el-dialog>
					 </el-form-item>
					 
					<el-form-item label="商品简介" prop="brief">
				          <el-input v-model="goods.brief" > </el-input>
				      </el-form-item>
					  <el-form-item>
					    <el-button type="primary" @click="submitForm('goods')">发布</el-button>
					    <el-button @click="resetForm('goods')">重置</el-button>
					  </el-form-item>
				</el-form>
		      	<!-- <el-input v-model="goods_name"  placeholder="请输入商品名称"  clearable>
  					 <el-button slot="prepend" icon="el-icon-user-solid"></el-button>
		 		</el-input> -->
		    </el-card>
		  </el-main>
		</el-container>
	<%@include file="/inc/footer.inc"%>
	</div>
</body>
<script src="js/vue.js"></script>
<script src="js/element.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/publishGoods.js"></script>