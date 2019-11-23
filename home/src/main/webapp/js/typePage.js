$(document).ready(function(){
	var vm = new Vue({
		  el: '#typePage',
		  data: {
			  items1:[],
			  items2:[],
			  items3:[],
			  name:sessionStorage.getItem("typePage")
		  },
		  methods: { 
			  jubao: function () {
				  this.$message({
					  message: '我们已收到您的举报，感谢支持！',
					  type: 'warning'
				  });
			  },
			  back: function () {
				  window.history.go(-1);
			  },
			  toGoods: function (e) {
				  sessionStorage.setItem("goodsId",e);
				  window.open("/home/gdsDetail.do");
			  },
		  },
		  filters: {
			  
		  },
		  
	});
	function xr_Page() {
		
		$.ajax({
			type: "post",
			dataType:"json",
			async:false,//同步异步
			contentType:"application/json", 
			url: "/home/gdsDetails/selectTypePage.do",
			data:  JSON.stringify({
				goodsType:sessionStorage.getItem("typePage"),
			}), 
			success: function(data) {
				//console.log(data.list);
				vm.items1 = [];
				vm.items2 = [];
				vm.items3 = [];
				for(let i =0;i<=data.list.length/3;i++){
					if((i*3)<data.list.length){
						vm.items1.push(data.list[i*3]);
						vm.items1[i].goodsPics = data.list[i*3].goodsPics.split(",");
					}
					if((i*3+1)<data.list.length){
						vm.items2.push(data.list[i*3+1]);
						vm.items2[i].goodsPics = data.list[i*3+1].goodsPics.split(",");
					}
					if((i*3+2)<data.list.length){
						vm.items3.push(data.list[i*3+2]);
						vm.items3[i].goodsPics = data.list[i*3+2].goodsPics.split(",");
					}
				}
			},
			error: function(){
				alert('数据加载失败~');
			}
		});
	}
	xr_Page();	
		
});
