$(document).ready(function(){
	var vm = new Vue({
		  el: '#search',
		  data: {
			  input:sessionStorage.getItem("input"),
			  items1:[],
			  items2:[],
			  items3:[],
			  items4:[],
			  list:[],
			  list2:[],
			  loading:true,
			  qb:0,
			  dzsm:0,
			  fzss:0,
			  jsls:0,
			  wjts:0,
			  sxsc:0,
			  tyjs:0,
			  wsjj:0,
			  fnyy:0,
			  bgjj:0,
		  },
		  methods: { 
			  jubao: function () {
				  this.$message({
					  message: '我们已收到您的举报，感谢支持！',
					  type: 'warning'
				  });
			  },
			  toGoods: function (e) {
				  sessionStorage.setItem("goodsId",e);
				  window.open("/home/gdsDetail.do");
			  },
			  type: function (e) {
				    vm.list=[];
				  	if(e == 0){
				  		vm.list = vm.list2;
				  	}else if(e == 1){
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "电子数码"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}else if(e == 2){
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "服装首饰"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}else if(e == 3){
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "酒水零食"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}else if(e == 4){
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "文具图书"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}else if(e == 5){
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "生鲜食材"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}else if(e == 6){
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "体育健身"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}else if(e == 7){
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "卫生洁具"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}else if(e == 8){
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "妇女婴幼"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}else{
			  			for(let i =0;i<vm.list2.length;i++){
			  				//vm.list2[i].goodsPics = vm.list2[i].goodsPics.split(",");
							if(vm.list2[i].goodsType == "办公家居"){
								vm.list.push(vm.list2[i]);
							}
						}
				  	}
				    vm.items1 = [];
					vm.items2 = [];
					vm.items3 = [];
					vm.items4 = [];
					var data = vm.list;
					for(let i =0;i<=data.length/4;i++){
						if((i*4)<data.length){
							vm.items1.push(data[i*4]);
							//vm.items1[i].goodsPics = data[i*4].goodsPics.split(",");
							
						}
						if((i*4+1)<data.length){
							vm.items2.push(data[i*4+1]);
							//vm.items2[i].goodsPics = data[i*4+1].goodsPics.split(",");
							
						}
						if((i*4+2)<data.length){
							vm.items3.push(data[i*4+2]);
							//vm.items3[i].goodsPics = data[i*4+2].goodsPics.split(",");
							
						}
						if((i*4+3)<data.length){
							vm.items4.push(data[i*4+3]);
							//vm.items4[i].goodsPics = data[i*4+3].goodsPics.split(",");
							
						}
					}
			  },
			  goSy: function () {
				  sessionStorage.setItem("html","sy");
				  location.href="./index.jsp";
			  },
			  search: function () {
				  let that = this;
					var val = this.input;
					if(val.match(/^[ ]*$/)){
						  this.$message.error('搜索内容不能为空！');
						  return false;
					  }
					sessionStorage.setItem("input",val);
					$.ajax({
						type: "post",
						dataType:"json",
						async:true,//同步异步
						contentType:"application/json", 
						url: "/home/gdsDetails/search.do",
						data:  JSON.stringify({
							search:vm.input,
						}), 
						success: function(data) {
							vm.qb = data.list.length;
							vm.list2 = data.list;
							vm.dzsm = 0;
							vm.fzss = 0;
							vm.jsls = 0;
							vm.sxsc = 0;
							vm.tyjs = 0;
							vm.wsjj = 0;
							vm.fnyy = 0;
							vm.bgjj = 0;
							vm.wjts = 0;
							for(let i =0;i<data.list.length;i++){
								if(data.list[i].goodsType == "电子数码"){
									vm.dzsm++;
								}else if(data.list[i].goodsType == "服装首饰"){
									vm.fzss++;
								}else if(data.list[i].goodsType == "酒水零食"){
									vm.jsls++;
								}else if(data.list[i].goodsType == "文具图书"){
									vm.wjts++;
								}else if(data.list[i].goodsType == "生鲜食材"){
									vm.sxsc++;
								}else if(data.list[i].goodsType == "体育健身"){
									vm.tyjs++;
								}else if(data.list[i].goodsType == "卫生洁具"){
									vm.wsjj++;
								}else if(data.list[i].goodsType == "妇女婴幼"){
									vm.fnyy++;
								}else{
									vm.bgjj++;
								}
							}
							vm.items1 = [];
							vm.items2 = [];
							vm.items3 = [];
							vm.items4 = [];
							for(let i =0;i<=data.list.length/4;i++){
								if((i*4)<data.list.length){
									vm.items1.push(data.list[i*4]);
									vm.items1[i].goodsPics = data.list[i*4].goodsPics.split(",");
									
								}
								if((i*4+1)<data.list.length){
									vm.items2.push(data.list[i*4+1]);
									vm.items2[i].goodsPics = data.list[i*4+1].goodsPics.split(",");
									
								}
								if((i*4+2)<data.list.length){
									vm.items3.push(data.list[i*4+2]);
									vm.items3[i].goodsPics = data.list[i*4+2].goodsPics.split(",");
									
								}
								if((i*4+3)<data.list.length){
									vm.items4.push(data.list[i*4+3]);
									vm.items4[i].goodsPics = data.list[i*4+3].goodsPics.split(",");
									
								}
							}
							vm.loading = false;
						},
						error: function(){
							that.$message.error('商品加载失败~');
						}
					});
			  },
			  
	
		  },
		  filters: {
			  
		  },
		  mounted: function () {
			  this.$nextTick(()=>{
						let that = this;
						var val = this.input;
						if(val.match(/^[ ]*$/)){
							  this.$message.error('搜索内容不能为空！');
							  vm.loading = false;
							  return false;
						  }
						$.ajax({
							type: "post",
							dataType:"json",
							async:true,//同步异步
							contentType:"application/json", 
							url: "/home/gdsDetails/search.do",
							data:  JSON.stringify({
								search:vm.input,
							}), 
							success: function(data) {
								vm.qb = data.list.length;
								vm.list2 = data.list;
								for(let i =0;i<data.list.length;i++){
									if(data.list[i].goodsType == "电子数码"){
										vm.dzsm++;
									}else if(data.list[i].goodsType == "服装首饰"){
										vm.fzss++;
									}else if(data.list[i].goodsType == "酒水零食"){
										vm.jsls++;
									}else if(data.list[i].goodsType == "文具图书"){
										vm.wjts++;
									}else if(data.list[i].goodsType == "生鲜食材"){
										vm.sxsc++;
									}else if(data.list[i].goodsType == "体育健身"){
										vm.tyjs++;
									}else if(data.list[i].goodsType == "卫生洁具"){
										vm.wsjj++;
									}else if(data.list[i].goodsType == "妇女婴幼"){
										vm.fnyy++;
									}else{
										vm.bgjj++;
									}
								}
								vm.items1 = [];
								vm.items2 = [];
								vm.items3 = [];
								vm.items4 = [];
								for(let i =0;i<=data.list.length/4;i++){
									if((i*4)<data.list.length){
										vm.items1.push(data.list[i*4]);
										vm.items1[i].goodsPics = data.list[i*4].goodsPics.split(",");
										
									}
									if((i*4+1)<data.list.length){
										vm.items2.push(data.list[i*4+1]);
										vm.items2[i].goodsPics = data.list[i*4+1].goodsPics.split(",");
										
									}
									if((i*4+2)<data.list.length){
										vm.items3.push(data.list[i*4+2]);
										vm.items3[i].goodsPics = data.list[i*4+2].goodsPics.split(",");
										
									}
									if((i*4+3)<data.list.length){
										vm.items4.push(data.list[i*4+3]);
										vm.items4[i].goodsPics = data.list[i*4+3].goodsPics.split(",");
										
									}
								}
								vm.loading = false;
							},
							error: function(){
								that.$message.error('商品加载失败~');
							}
						});
					
			    })
		  },
		  
		  
	});
	
	
		
});
