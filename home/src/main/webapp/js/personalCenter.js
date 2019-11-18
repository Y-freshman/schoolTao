$(document).ready(function(){
	var vm = new Vue({
		  el: '#personalCenter',
		  data: {
			  index: '',
			  isCollapse: true,
			  value: false,
		  },
		  methods: {
			  	  handleOpen(key, keyPath) {
			        console.log(key, keyPath);
			      },
			      handleClose(key, keyPath) {
			        console.log(key, keyPath);
			      },
			      change(){
			    		this.$message.success('成功换了一批！！！');
			      }
		  },
		  filters: {
			  
		  },
		  
	});
	
});
