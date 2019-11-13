$(document).ready(function(){
	var vm = new Vue({
		  el: '#purchaseCar',
		  data() {
		      return {
		        tableData: [{
		          title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
		          head_pic: 'img/goods/timg.jpg',
		          color: '颜色分类：墨绿色（加绒款）',
		          size:	'尺码：L',
			      price: '￥79',
			      source: '站在远处看从前',
			      sum: '￥79',
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      color: '颜色分类：墨绿色（加绒款）',
			      size:	'尺码：L',
	        	  price: '￥79',
	        	  source: '站在远处看从前',
	        	  sum: '￥79',
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      color: '颜色分类：墨绿色（加绒款）',
			      size:	'尺码：L',
	        	  price: '￥79',
	        	  source: '站在远处看从前',
	        	  sum: '￥79',
			    }, {
			      title: '2019秋冬女装春装新款上衣连衣裙加绒加厚打底衫女长袖衬衫t恤女',
			      head_pic: 'img/goods/timg.jpg',
			      color: '颜色分类：墨绿色（加绒款）',
			      size:	'尺码：L',
	        	  price: '￥79',
	        	  source: '站在远处看从前',
	        	  sum: '￥79',
			    }],
			    multipleSelection: []
		  }
		},

	    methods: {
	      toggleSelection(rows) {
	        if (rows) {
	          rows.forEach(row => {
	            this.$refs.multipleTable.toggleRowSelection(row);
	          });
	        } else {
	          this.$refs.multipleTable.clearSelection();
	        }
	      },
	      deleteRow(index, rows) {
	          rows.splice(index, 1);
	      },
	      handleSelectionChange(val) {
	        this.multipleSelection = val;
	      },
	      getSummaries(param) {
	          const { columns, data } = param;
	          const sums = [];
	          columns.forEach((column, index) => {
	            if (index === 0) {
	              sums[index] = '总价';
	              return;
	            }
	            const values = data.map(item => Number(item[column.property]));
	            if (!values.every(value => isNaN(value))) {
	              sums[index] = values.reduce((prev, curr) => {
	                const value = Number(curr);
	                if (!isNaN(value)) {
	                  return prev + curr;
	                } else {
	                  return prev;
	                }
	              }, 0);
	              sums[index] += ' 元';
	            } else {
	              sums[index] = 'N/A';
	            }
	          });

	          return sums;
	        },
	      sizeOn(row, column, cell, event){
	        	$(".size").css("border","1px dashed red");
	        } 
	    },
	    filters: {
		  
	    },
	  
	});
	
});