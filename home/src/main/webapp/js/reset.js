$(document).ready(function(){
	var vm = new Vue({
		  el: '#reset',
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
			      }
		  },
		  filters: {
			  
		  },
		  
	});
	
});
