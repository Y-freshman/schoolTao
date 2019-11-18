$(document).ready(function(){
	var vm = new Vue({
		  el: '#fabuqiugou',
		  data: {
		    
		  },
		  methods: { 
			  jubao: function () {
				  this.$message({
					  message: '我们已收到您的举报，感谢支持！',
					  type: 'warning'
				  });
			  },
		
		  },
		  filters: {
			  
		  },
		  
	});
	
		
});
