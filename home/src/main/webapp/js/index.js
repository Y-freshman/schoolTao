$(document).ready(function(){
	var vm = new Vue({
		  el: '#shouye',
		  data: {
			  lunbo:[],
		  },
		  methods: { 
			  jubao: function () {
				  this.$message({
					  message: '我们已收到您的举报，感谢支持！',
					  type: 'warning'
				  });
			  },
			  jiagou: function () {
				  this.$message({
					  message: '成功添加到购物车~',
					  type: 'success'
				  });
			  },
			  sqpl: function (e) {
				  $("#qg_sqpl"+e).css("display","none");
				  $("#qg_plsl"+e).fadeIn(500);
				  $("#qg_zkpl"+e).fadeIn(500);
				  $("#qg_pl"+e).slideUp(500);
			  },
			  zkpl: function (e) {
				  $("#qg_plsl"+e).css("display","none");
				  $("#qg_zkpl"+e).css("display","none");
				  $("#qg_sqpl"+e).fadeIn(500);
				  $("#qg_pl"+e).slideDown(500);
			  },
			  xr_lb: function (e) {
				  if(e == 0){
					  vm.lunbo = [
							'img/lunbo_1.jpg',
						    'img/lunbo_2.jpg',
						    
					  ]
				  }else{
					  vm.lunbo = [
							'img/lunbo_2.jpg',
						    'img/lunbo_1.jpg',
					  ]
				  }
				  
			  },
		  },
		  filters: {
			  
		  },
		  
	});
	
});
