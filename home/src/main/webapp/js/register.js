$(document).ready(function(){
	var vm = new Vue({
		  el: '#register',
		  data: {
				  root: '',
				  pass: '',
		          checkPass: ''
		  },
		  methods: {
			  submitForm() {
			            if(vm.root === '') {
			            	 this.$message.error('请输入用户名');
			              }
			            if(vm.pass === '' || vm.checkPass === '' ){
			            	this.$message.error('请输入密码');
			            }
			            if(vm.pass!==vm.checkPass){
			            	this.$message.error('两次密码不一致');
			            }
			      }
		  },
		  filters: {
			  
		  },
		  
	});
	
});
