$(document).ready(function(){
	var vm = new Vue({
		  el: '#goodsDetail',
		  data: {
			  goodsDetail: {
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
			  }
		  },
		  methods: {
			  handleChange(value) {
			      console.log(value);
			  },
			  
		  },
		  filters: {
			  
		  },
		  
	});
	
	function getGdsDetail(){
		  $.ajax({
			  url: "/home/1.do",
			  async: false,
			  type: get,
			  contentType: "application/json",
			  dataType: 'json',
			  success: function(data){
				  console.log(data);
	                       vm.goodsDetail = data;
                     }
		  })
	  }
	
});
