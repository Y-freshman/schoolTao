$(document).ready(function(){
	var vm = new Vue({
		  el: '#login',
		  data: {
				root: '',
				password: '',
		  },
		  methods: {
			  submitForm: function () {
				  $.ajax({
					  url: "/home/logins.do",
					  async: false,
					  type: "post",
					  data: JSON.stringify({
						  root: vm.root,
						  password: vm.password,
					  }),
					  contentType: "application/json",
					  dataType: 'json',
					  success: function(data){
						 console.log(data.user.userName);
						  console.log(data.user.userPassword);
						  
						  if(vm.root == data.user.userName && vm.password == data.user.userPassword){
							  console.log(333);
						  }else{
							  console.log(888);
						  }
					  }
				  })
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
