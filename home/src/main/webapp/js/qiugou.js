$(document).ready(function(){
	var vm = new Vue({
		  el: '#qiugou',
		  data: {
		    lunbo:[],
		  },
		  methods: { 
			  jubao: function () {
				  this.$message({
					  message: '我们已收到您的举报，感谢支持！',
					  type: 'warning'
				  });
			  },
			  sqpl: function (e) {
				  $("#qg_sqpl"+e).css("display","none");
				  $("#qg_plsl"+e).fadeIn(500);
				  $("#qg_zkpl"+e).fadeIn(500);
				  $("#qg_pl"+e).slideUp(500);
			  },
			  zkpl: function (e) {
				  $("#qg_plsl"+e).css("display","none");
				  $("#qg_zkpl"+e).css("display","none");
				  $("#qg_sqpl"+e).fadeIn(500);
				  $("#qg_pl"+e).slideDown(500);
			  },
			  fbqg: function () {
				  window.open("./fabuqiugou.jsp");
			  },
			  xr_lb: function (e) {
				  if(e == 0){
					  vm.lunbo = [
							'img/lunbo_1.jpg',
						    'img/lunbo_2.jpg',
						    
					  ]
				  }else{
					  vm.lunbo = [
							'img/lunbo_2.jpg',
						    'img/lunbo_1.jpg',
					  ]
				  }
				  
			  },
	
		  },
		  filters: {
			  
		  },
		  
	});
	/*
	$("#qg_card0").hover(function(){
		if($("#qg_sqpl0").css("display") == "none"){
			$(".qg_zkpl0").css("display","none");
		    $("#qg_zkpl0").fadeIn(500);
		}
	},function(){
		if($("#qg_sqpl0").css("display") == "none"){
			$("#qg_zkpl0").css("display","none");
		    $(".qg_zkpl0").fadeIn(500);
		}
	}); 
	$("#qg_card0").mouseover(function(){
		if($("#qg_sqpl0").css("display") == "none"){
			$(".qg_zkpl0").css("display","none");
			$("#qg_zkpl0").fadeIn(500);
		}
	}).mouseout(function(){
		if($("#qg_sqpl0").css("display") == "none"){
			$("#qg_zkpl0").css("display","none");
			$(".qg_zkpl0").fadeIn(500);
		}
	}); 
	*/
		
});
