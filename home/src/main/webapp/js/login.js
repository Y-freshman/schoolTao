$(document).ready(function(){
	var vm = new Vue({
		  el: '#login',
		  data: {
				root: '',
				password: '',
		  },
		  methods: {
			  submitForm: function (root,password) {
				  var that = this;
				  $.ajax({
					  url: "/home/user/logins.do",
					  async: false,
					  type: "post",
					  data: JSON.stringify({
						  root: vm.root,
						  password: vm.password,
					  }),
					  contentType: "application/json",
					  dataType: 'json',
					  success: function(data){
						  if(data.code == "500"){
							  that.$message({
								  message: '账号或密码错误，请重新登录！',
								  type: 'warning'
							  });
							  return;
						  }
						  window.history.go(-1);
					  }
				  })
			  },
		  },
		  filters: {
			  
		  },
	});
	
});
