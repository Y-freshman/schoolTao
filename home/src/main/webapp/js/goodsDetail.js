$(document).ready(function(){
	var vm = new Vue({
		  el: '#goodsDetail',
		  data: {
			  goods:[],
		  },
			  
				  /*title: "STANLEY/史丹利单手开工具箱19寸STST73099/73100/73101内含抽屉 单手开工具箱19寸",
				  goodsPic: 'img/goods/timg.jpg',
				  now_price: '￥239.00',
				  old_price: '￥299.00',
				  status: '9成新，很上手',
				  address: '四食堂一楼（不接受改地点）',
				  time: '联系确认',
				  people: '134xxxx0214(张先生)',
				  own_num: 3,
				  num: 1*/
			  
		  
		  methods: {
			  handleChange(value) {
			      console.log(value);
			  },
			  
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
		      },
			  
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
			  }
		  },
		  
	});
	
	/**
	   * 添加购物车
	   */
	function adCart(num){
		  let that = this;
		  $.ajax({
			  url: "/home/gdsDetails/adCart.do",
			  async: false,
			  type: "post",
			  data: JSON.stringify({
				  goodsId: 2,
				  userId: 2,
				  goodsNum: num
			  }),
			  contentType: "application/json",
			  dataType: 'json',
			  success: function(res){
	              /*if(res.code == "200"){
	            	  that.$message({
	                      message: '添加购物车成功',
	                      type: 'success'
	                   });
	            	  return;
	              }
	              that.$message.error('啊哦！系统错误，请稍后添加');*/
            }
		  })
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
	              console.log(vm.goods);
	              vm.goods.goodsPics = JSON.parse(data.goods.goodsPics);
	              console.log(vm.goods.goodsNum);
              }
		  })
	  }
	getGdsDetail();
});
