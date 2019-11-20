$(document).ready(function(){
	var vm2 = new Vue({
		  el: '#shouye_db',
		  data: {
		    value:"sy",
		  },
		  methods: {
			  goSy: function () {
				  sessionStorage.setItem("html","sy");
				  //location.href="./index.jsp";
			  },
			  goSy2: function () {
				  sessionStorage.setItem("html","sy");
				  location.href="/home/index.jsp";
			  },
			  search: function () {
				  location.href="/home/search.do";
			  },
			  goQg: function () {
				  sessionStorage.setItem("html","qg");
				  //location.href="./qiugou.jsp";
			  },
			  alert: function (e) {
				  this.$message({
			          message: '恭喜你，'+e,
			          type: 'success'
			        });
			  },
			  
		  },
		  filters: {
			  
		  },
		  
	});
	
	if(sessionStorage.getItem("html") != null && sessionStorage.getItem("html") != undefined){
		vm2.value = sessionStorage.getItem("html");
		if(vm2.value == "sy"){
			$(".shouye_fl").click();
		}else{
			$(".shouye_fl").css("pointer-events","none ");
			$(".shouye_fl").css("cursor","no-drop ");
		}
	}else{
		$(".shouye_fl").click();
	}
});
