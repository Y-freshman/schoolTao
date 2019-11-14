$(document).ready(function(){
	var vm2 = new Vue({
		  el: '#shouye_db',
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
			  
		  },
		  filters: {
			  
		  },
		  
	});
	$(".shouye_fl").click();
});
