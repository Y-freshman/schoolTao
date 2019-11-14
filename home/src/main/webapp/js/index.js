$(document).ready(function(){
	var vm = new Vue({
		  el: '#shouye',
		  data: {
		    
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
		  },
		  filters: {
			  
		  },
		  
	});
	
});
