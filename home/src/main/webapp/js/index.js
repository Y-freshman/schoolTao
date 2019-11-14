$(document).ready(function(){
	var vm = new Vue({
		  el: '#shouye',
		  data: {
		    
		  },
		  methods: {
			  goSy: function () {
				  $(".shouye_fl").click();
			  },
			  alert: function (e) {
				  this.$message({
			          message: '恭喜你，'+e,
			          type: 'success'
			        });
			  },
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
		  },
		  filters: {
			  
		  },
		  
	});
	$(".shouye_fl").click();
});
