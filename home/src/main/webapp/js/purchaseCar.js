$(document).ready(function(){
	var vm = new Vue({
		  el: '#purchaseCar',
		  data: {
		        tableData: [{
		          title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
		          head_pic: 'img/goods/timg.jpg',
		          color: '颜色分类：墨绿色（加绒款）',
		          size:	'尺码：L',
			      price: '￥79',
			      source: '站在远处看从前',
			      sum: 79,
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      color: '颜色分类：墨绿色（加绒款）',
			      size:	'尺码：L',
	        	  price: '￥79',
	        	  source: '站在远处看从前',
	        	  sum: 89,
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      color: '颜色分类：墨绿色（加绒款）',
			      size:	'尺码：L',
	        	  price: '￥79',
	        	  source: '站在远处看从前',
	        	  sum: 99,
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      color: '颜色分类：墨绿色（加绒款）',
			      size:	'尺码：L',
	        	  price: '￥79',
	        	  source: '站在远处看从前',
	        	  sum: 69,
			    }],
			    multipleSelection: [],
			    checked: false
		},

	    methods: {
	      toggleSelection(rows) {
	    	var sum = 0;
	        if (rows) {
	          rows.forEach(row => {
	            this.$refs.multipleTable.toggleRowSelection(row);
	          });
	          for(var i=0; i<vm.tableData.length;i++){
		        	sum += vm.tableData[i].sum;
		        }
	          $(".gd_num").html(vm.tableData.length);
		      $(".sum_price").html(sum);
	        } else {
	          this.$refs.multipleTable.clearSelection();
	          sum = 0;
	          $(".gd_num").html(0);
	          $(".sum_price").html(sum);
	        }
	      },
	      deleteRow(index, rows) {
	          this.$confirm('此操作将永久删除该商品, 是否继续?', '提示', {
	            confirmButtonText: '确定',
	            cancelButtonText: '取消',
	            type: 'warning'
	          }).then(() => {
	            this.$message({
	              type: 'success',
	              message: '删除成功!'
	            });
	            rows.splice(index, 1);
	          }).catch(() => {
	            this.$message({
	              type: 'info',
	              message: '已取消删除'
	            });          
	          });
	      },
	      handleSelectionChange(val) {
	        this.multipleSelection = val;
	      },
	      sizeOn(row, column, cell, event){
	        	/*$(".size").css("border","1px dashed red");*/
	      },
	      gdMdfySize(){
	    	  
	      }
	    },
	    filters: {
		  
	    },
	  
	});
	
});