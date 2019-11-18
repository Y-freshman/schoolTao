$(document).ready(function(){
	var vm = new Vue({
		  el: '#publishGoods',
		  data: {
			   goods_name: '',
			   goods: {
			         Name: '',
			         counterPrice: '',
			         retailPrice: '',
			         isNew: '',
			         brief: '',
			         picUrl: '',
			        },
		       rules: {
			          Name: [
			        	  { required: true, message: '请输入商品名称', trigger: 'blur' },
				          { min: 2, max: 7, message: '长度在 2 到 7 个字符', trigger: 'blur' }
			          ]
			        },
		       imageUrl: '',
			  },
			  methods: {
				  submitForm(goods) {
					  this.$refs[goods].validate((valid) => {
				          if (valid) {
				        	  this.$message.success('提交成功！！');
				          } else {
				        	 this.$message.error('error submit!!');
				        	 return false;
				          }
				        });
				      },
			      resetForm(goods) {
				        this.$refs[goods].resetFields();
				  },
				  handleAvatarSuccess(res, file) {
				      this.goods.picUrl = URL.createObjectURL(file.raw);
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
