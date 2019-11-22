$(document).ready(function(){
	var vm = new Vue({
		  el: '#purchaseCar',
		  data: {
			    tableData: [],
			    multipleSelection: [],
			    checked: false,
			    num1:0,
			    num2:0,
		},

	    methods: {
	      toggleSelection(rows) {
	    	var sum = 0;
	        if (rows) {
	          rows.forEach(row => {
	            this.$refs.multipleTable.toggleRowSelection(row);
	          });
	          for(var i=0; i<vm.tableData.length;i++){
		        	sum += vm.tableData[i].goodsNewPrice;
		        }
	          vm.num1 = vm.tableData.length;
	          vm.num2 = sum;
	        } else {
	        	vm.num1 = 0;
		         vm.num2 = 0;
	          this.$refs.multipleTable.clearSelection();
	          
	        }
	      },
	      deleteRow(index, cartId) {
	          this.$confirm('此操作将使该商品从你的购物车中删除, 是否继续?', '提示', {
	            confirmButtonText: '确定',
	            cancelButtonText: '取消',
	            type: 'warning'
	          }).then(() => {
	        	$.ajax({
	    			  url: "/home/cart/delete.do",
	    			  async: true,
	    			  type: "post",
	    			  data: JSON.stringify({
	    				  cartId: cartId
	    			  }),
	    			  contentType: "application/json",
	    			  dataType: 'json',
	    			  success: function(){
	    				  
	                  }
	    		})
				this.$message({
		            type: 'success',
		            message: '删除成功!'
		        });
	        	getCart();
	        	/*rows.splice(index, 1);*/
	          }).catch(() => {
	            this.$message({
	              type: 'info',
	              message: '已取消删除'
	            });          
	          });
	      },
	      toDetail(goodsId){
	    	  sessionStorage.setItem("goodsId",goodsId);
	    	  location.href = "/home/gdsDetail.do";
	      },
	      handleSelectionChange(val) {
	        this.multipleSelection = val;
	      },
	    },
	    filters: {
	    	xinxian: function (value) {
			    if (!value) return '';
			    value = value.toString();
			    if(value == 1){
			    	return "一成新，望深思";
			    }else if(value == 2){
			    	return "两成新，望深思";
			    }else if(value == 3){
			    	return "三成新，望深思";
			    }else if(value == 4){
			    	return "四成新，望深思";
			    }else if(value == 5){
			    	return "五成新，还可以";
			    }else if(value == 6){
			    	return "六成新，还可以";
			    }else if(value == 7){
			    	return "七成新，还可以";
			    }else if(value == 8){
			    	return "八成新，很不错";
			    }else if(value == 9){
			    	return "九成新，非常棒";
			    }else{
			    	return "全新，简直完美";
			    }
			},
			state(value){
				if (!value) return '';
			    value = value.toString();
			    if(value == 0){
			    	return "已下架";
			    }else if(value == 1){
			    	return "正常售卖";
			    }
			}
	    },
	  
	});
	
	/**
	 * 查询购物车里的商品
	 * @returns
	 */
	function getCart(){
		$.ajax({
			  url: "/home/cart/select.do",
			  async: false,
			  type: "post",
			  data: JSON.stringify({
				  userId: 1
			  }),
			  contentType: "application/json",
			  dataType: 'json',
			  success: function(data){
	              vm.tableData = data;
	              //console.log(vm.tableData);
	              for(var i=0; i<vm.tableData.length; i++){
	            	  vm.tableData[i].goodsPics = vm.tableData[i].goodsPics.split(",");
	              }
            }
		})
	}
	getCart();
	
	
});