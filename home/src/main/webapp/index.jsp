<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=no">
<title>校园二手2</title>
<!-- 引入样式 -->
<link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<style>
  .el-header, .el-footer {
    background-color: #B3C0D1;
    color: #333;
    text-align: center;
    line-height: 60px;
  }
  
  .el-aside {
    background-color: #D3DCE6;
    color: #333;
    text-align: center;
    line-height: 200px;
  }
  
  .el-main {
    background-color: #E9EEF3;
    color: #333;
    text-align: center;
    line-height: 160px;
  }
  
  body > .el-container {
    margin-bottom: 40px;
  }
  
  .el-container:nth-child(5) .el-aside,
  .el-container:nth-child(6) .el-aside {
    line-height: 260px;
  }
  
  .el-container:nth-child(7) .el-aside {
    line-height: 320px;
  }
</style>
</head>
<body>
	<div id="app">
		<el-container>
		  <el-header>Header</el-header>
		  <el-container>
		    <el-aside width="200px">Aside</el-aside>
		    <el-container>
		      <el-main>Main</el-main>
		      <el-footer>Footer</el-footer>
		    </el-container>
		  </el-container>
		</el-container>
	</div>
</body>
<!-- 引入组件库 -->
<script src="js/vue.js"></script>
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script>
    new Vue({
      el: '#app',
      data:{
    	  
      },
    })
</script>
</html>