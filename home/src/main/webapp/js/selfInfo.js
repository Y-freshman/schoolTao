$(document).ready(function(){
	var vm = new Vue({
		  el: '#selfInfo',
		  data: {
			  ruleForm: {
		          region: '',
		          resource: '',
		          userName: '',
		          selfInfo: '',
		        },
		        rules: {
			          region: [
			            { required: true, message: '请选择活动区域', trigger: 'change' }
			          ],
			          resource: [
			            { required: true, message: '请选择您的性别', trigger: 'change' }
			          ],
			          userName: [
			        	  { required: true, message: '请输入昵称', trigger: 'blur' },
				          { min: 2, max: 7, message: '长度在 2 到 7 个字符', trigger: 'blur' }
			          ],
			          selfInfo: [
			        	  { required: true, message: '介绍介绍自己吧', trigger: 'blur' },
			        	  { min: 2, message: '少于2个字符的介绍怎么能显示你的魅力呢', trigger: 'blur' }
		        	  ]
			        },
			        imageUrl: '',
		  },
		  methods: {
			  submitForm(formName) {
			        this.$refs[formName].validate((valid) => {
			          if (valid) {
			        	  this.$message.error('请输入用户名');
			          } else {
			            console.log('error submit!!');
			            return false;
			          }
			        });
			      },
		      resetForm(formName) {
			        this.$refs[formName].resetFields();
			  },
			  handleAvatarSuccess(res, file) {
			      this.imageUrl = URL.createObjectURL(file.raw);
			  },
	          beforeAvatarUpload(file) {
	            const isJPG = file.type === 'image/jpeg';
	            const isLt5M = file.size / 1024 / 1024 < 5;

	            if (!isJPG) {
	            this.$message.error('上传头像图片只能是 JPG 格式!');
	            }
	            if (!isLt5M) {
	              this.$message.error('上传头像图片大小不能超过 5MB!');
	            }
	            return isJPG && isLt5M;
	          }
		  },
		  filters: {
			  
		  },
		  
	});
	
});