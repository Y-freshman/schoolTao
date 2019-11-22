$(document).ready(function(){
	var vm = new Vue({
		  el: '#goodsDetail',
		  data: {
			  goods:[],
			  dialogVisible:false,
			  visible:false,
			  num:1,
		  },
			
		  methods: {
			  cart() {
				  let that = this;
				  $.ajax({
					  url: "/home/gdsDetails/adCart.do",
					  async: true,
					  type: "post",
					  data: JSON.stringify({
						  goodsId: sessionStorage.getItem("goodsId"),
						  userId: 1,
						  goodsNum: vm.num
					  }),
					  contentType: "application/json",
					  dataType: 'json',
					  success: function(res){
			              if(res.code == "200"){
			            	  that.$message({message: '添加购物车成功~',type: 'success'});
			              }else{
			            	  that.$message.error('啊哦！系统错误，请稍后添加');
			              }
			              
		            }
				  })
				  vm.visible = false;
			  },
			  handleChange(value) {
				  //console.log(value);
			  },
			  /*
			  open() {
				  const h = this.$createElement;
			        this.$msgbox({
			          title: '加入购物车',
			          message: h('p', null, [
			        	h('span', { style: 'color: teal' }, '所需数量:'),
			            h('input', { class:'gdNum',placeholder:'现有数量"vm.goods.goodsNum"'}),
			          ]),
			          showCancelButton: true,
			          confirmButtonText: '确定',
			          cancelButtonText: '取消',
			          beforeClose: (action, instance, done) => {
			            if (action === 'confirm') {
			              var num = $(".gdNum").val();
			              console.log(num);
			              adCart(num);
			              done();
			            } else {
			              done();
			            }
			          }
			        }).then(action => {
			          this.$message({
			            type: 'success',
			            message: '添加购物车成功',
			          });
			        });
		      },*/
			  
			  /**
			   * 立即购买
			   */
			  buy(){
				  this.$message({
                      message: '购买成功',
                      type: 'success'
                   }); 
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
			  date: function(date){
					var date = new Date(date);
					Y = date.getFullYear() ;
					M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) ;
					D = date.getDate();
					h = date.getHours() + ':';
					m = date.getMinutes() + ':';
					s = date.getSeconds(); 
					return (Y+"年"+M+"月"+D+"日");
			 },
		  }
		  
	});
	
	/**
	   * 添加购物车
	   */
	function adCart(){
		  
	  }
	
	/**
	 * 获取当前商品详细信息
	 * @returns
	 */
	function getGdsDetail(){
		var gdId = sessionStorage.getItem("goodsId");
		$.ajax({
			  url: "/home/gdsDetails/gdsDetails.do",
			  async: false,
			  type: "post",
			  data: JSON.stringify({
				  gdId: gdId
			  }),
			  contentType: "application/json",
			  dataType: 'json',
			  success: function(data){
	              vm.goods = data.goods;
	              //console.log(vm.goods);
	              vm.goods.goodsPics = data.goods.goodsPics.split(",");
	              //console.log(vm.goods.goodsNum);
              }
		  })
	  }
	getGdsDetail();
});
