$(document).ready(function(){
	var vm = new Vue({
		  el: '#fabuqiugou',
		  data: {
			  dialogImageUrl: '',
		      dialogVisible: false,
		  },
		  methods: { 
			  jubao: function () {
				  this.$message({
					  message: '我们已收到您的举报，感谢支持！',
					  type: 'warning'
				  });
			  },
			  handleRemove(file, fileList) {
		        console.log(file, fileList);
		      },
		      handlePictureCardPreview(file) {
		        this.dialogImageUrl = file.url;
		        this.dialogVisible = true;
		      },
		  },
		  filters: {
			  
		  },
		  
	});
	
		
});
