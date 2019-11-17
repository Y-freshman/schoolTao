$(document).ready(function(){
	var vm = new Vue({
		  el: '#register',
		  data: {
			  options: [{
		          value: '您的电话号码',
		          label: ''
		        }, {
		          value: '您的大学学校',
		          label: ''
		        }, {
		          value: '您的初恋名字',
		          label: ''
		        }, {
		          value: '您最喜欢的歌手',
		          label: ''
		        }, {
		          value: '您最喜欢的篮球运动员',
		          label: ''
		        }],
		        value: '',
				root: '',
				pass: '',
		        checkPass: '',
		        answer: ''
		  },
		  methods: {
			  submitForm() {
			            if(vm.root === '') {
			            	 this.$message.error('请输入用户名');
			              } 
			            else if(vm.pass === '' || vm.checkPass === '' ){
			            	this.$message.error('请输入密码');
			            }
			            else if(vm.pass!==vm.checkPass){
			            	this.$message.error('两次密码不一致');
			            }
			            else if(vm.value === ''){
			            	this.$message.error('请选择密保问题');
			            }
			            else if(vm.answer === ''){
			            	this.$message.error('请填入密码答案');
			            }else {
			            	this.$message.success('恭喜注册您成功！！！');
			            }
			      }
		  },
		  filters: {
			  
		  },
		  
	});
	
});
