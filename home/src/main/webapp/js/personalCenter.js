$(document).ready(function(){
	var vm = new Vue({
		  el: '#personalCenter',
		  data: {
			  index: '',
			  input: '',
			  isCollapse: true,
			  value: false,
			  maylike1:[],
			  maylike2:[],
			  picurl:[],
			  dialogVisible: false,
			  dialogVisible1: false,
			  dialogVisible2: false,
			  dialogVisible3: false,
		  },
		  methods: {
			  	  handleOpen(key, keyPath) {
			        console.log(key, keyPath);
			      },
			      handleClose() {
			    	  this.$confirm('确认关闭？')
			          .then(_ => {
			        	  vm.dialogVisible=false;
			          })
			          .catch(_ => {});
			      },
			      handleClose1() {
			    	  this.$confirm('确认关闭？')
			    	  .then(_ => {
			    		  vm.dialogVisible1=false;
			    	  })
			    	  .catch(_ => {});
			      },
			      handleClose2() {
			    	  this.$confirm('确认关闭？')
			    	  .then(_ => {
			    		  vm.dialogVisible2=false;
			    	  })
			    	  .catch(_ => {});
			      },
			      handleClose3() {
			    	  this.$confirm('确认关闭？')
			    	  .then(_ => {
			    		  vm.dialogVisible3=false;
			    	  })
			    	  .catch(_ => {});
			      },
			      change(){
			    	  	like();
			    		this.$message.success('成功换了一批！！！');
			      },
			      toGoods: function (e) {
					  sessionStorage.setItem("goodsId",e);
					  window.open("/home/gdsDetail.do");
				  },
			      jiagou: function () {
					  this.$message({
						  message: '成功添加到购物车~',
						  type: 'success'
					  });
				  },
			      
			      
		  },
		  filters: {
			  
		  },
		  
	});
	function like() {
		$.ajax({
    		type: "post",
    		dataType:"json",
    		async:false,//同步异步
            contentType:"application/json", 
    		url: "/home/gdsDetails/maylike.do",
    		data:  JSON.stringify({
    			//needId:e1,
    		}), 
    		success: function(data) {
    			//vm.qiugou[e2].needTime = data.list;
    			console.log(data);
    			vm.maylike1 = data.list;
    			for(let i=0;i<data.list.length;i++){
    				vm.maylike1[i].goodsPics = data.list[i].goodsPics.split(',');
    			}
    			console.log(vm.maylike1);
    			console.log(vm.maylike1.length);
    			vm.picurl = vm.maylike1.picUrl;

    		},
    		error: function(){
    			that.$message.error('猜你喜欢加载失败~');
    		}
		});
	}
	like();
});
