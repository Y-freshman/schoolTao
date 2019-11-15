$(document).ready(function(){
	var vm = new Vue({
		  el: '#orderForm',
		  data: {
			  activeName: 'second',
			  input3: '',
		      select: '',
		      clear: true,
		      tableData: [{
		          title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
		          head_pic: 'img/goods/timg.jpg',
		          time:	'2019-11-02',
			      source: '站在远处看从前',
			      gd_num: 1,
			      status: '交易成功',
			      sum: 79,
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      time:	'2019-11-02',
	        	  source: '站在远处看从前',
	        	  gd_num: 1,
	        	  status: '交易进行中',
	        	  sum: 89,
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      time:	'2019-11-02',
	        	  source: '站在远处看从前',
	        	  gd_num: 1,
	        	  status: '交易已取消',
	        	  sum: 99,
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      time:	'2019-11-02',
	        	  source: '站在远处看从前',
	        	  gd_num: 1,
	        	  status: '待付款',
	        	  sum: 69,
			    }],
			    tableData1: [ {
			    	title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			    	head_pic: 'img/goods/timg.jpg',
			    	time:	'2019-11-02',
			    	source: '站在远处看从前',
			    	gd_num: 1,
			    	status: '待付款',
			    	sum: 69,
			    },
			    {
			    	title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			    	head_pic: 'img/goods/timg.jpg',
			    	time:	'2019-11-02',
			    	source: '站在远处看从前',
			    	gd_num: 1,
			    	status: '待付款',
			    	sum: 69,
			    }],
			    tableData2: [ {
			    	title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			    	head_pic: 'img/goods/timg.jpg',
			    	time:	'2019-11-02',
			    	source: '站在远处看从前',
			    	gd_num: 1,
			    	status: '交易进行中',
			    	sum: 69,
			    },
			    {
			    	title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			    	head_pic: 'img/goods/timg.jpg',
			    	time:	'2019-11-02',
			    	source: '站在远处看从前',
			    	gd_num: 1,
			    	status: '交易进行中',
			    	sum: 69,
			    }],
			    currentPage4: 4,
		  },
		  methods: {
			  handleClick(tab, event) {
			        
			  },
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
			      handleSelectionChange(val) {
			        this.multipleSelection = val;
			      },
			      sizeOn(row, column, cell, event){
			        	/* $(".size").css("border","1px dashed red"); */
			      },
			      gdMdfySize(){
			    	  
			      },
			      handleSizeChange(val) {
			          console.log(`每页 ${val} 条`);
		        },
		        handleCurrentChange(val) {
		          console.log(`当前页: ${val}`);
		        },
		        gdSure(index){
		        	vm.tableData2[index].status = '交易成功';
		        },
		        gdSure0(index){
		        	vm.tableData[index].status = '交易成功';
		        },
		  },
		  filters: {
			  
		  },
		  
	});
	
});