$(document).ready(function(){
	var vm2 = new Vue({
		  el: '#shouye_db',
		  data: {
		    value:"sy",
		    input:'',
		    dialogVisible: false,
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
				  sessionStorage.setItem("input",vm2.input);
				  location.href="/home/search.do";
			  },
			  goQg: function () {
				  sessionStorage.setItem("html","qg");
				  //location.href="./qiugou.jsp";
			  },
			  alert: function (e) {
				  vm2.dialogVisible = true;
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
