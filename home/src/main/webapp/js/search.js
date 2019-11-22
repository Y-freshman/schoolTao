$(document).ready(function(){
	var vm = new Vue({
		  el: '#search',
		  data: {
			  input:sessionStorage.getItem("input"),
		  },
		  methods: { 
			  jubao: function () {
				  this.$message({
					  message: '我们已收到您的举报，感谢支持！',
					  type: 'warning'
				  });
			  },
			  goSy: function () {
				  sessionStorage.setItem("html","sy");
				  location.href="./index.jsp";
			  },
	
		  },
		  filters: {
			  
		  },
		  
	});
	
		
});
