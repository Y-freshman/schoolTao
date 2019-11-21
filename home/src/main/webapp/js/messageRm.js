$(document).ready(function(){
	var vm = new Vue({
		  el: '#messageRm',
		  data: {
			  activeNames: ['1'],
			  squareUrl: "https://cube.elemecdn.com/9/c2/f0ee8a3c7c9638a54940382568c9dpng.png",
			  userName: '一蓑烟雨任平生',
			  sex: '0',
			  message: [
				  {
					  id: 1,
					  squareUrl: "https://cube.elemecdn.com/9/c2/f0ee8a3c7c9638a54940382568c9dpng.png",
					  remainer: '一蓑烟雨任平生',
					  toRemainer: 'angle',
					  time: '2019-11-02 16:32:52',
					  sex: '0',
					  content: '失去你的我，比乞丐落魄',
					  subContent: [
						  {
							  remainer: '一蓑烟雨任平生',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
						  {
							  remainer: '我',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
						  {
							  remainer: '一蓑烟雨任平生',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
					  ]
				  },
				  {
					  id: 2,
					  squareUrl: "https://cube.elemecdn.com/9/c2/f0ee8a3c7c9638a54940382568c9dpng.png",
					  remainer: '一蓑烟雨任平生',
					  toRemainer: 'angle',
					  time: '2019-11-02 16:32:52',
					  sex: '1',
					  content: '失去你的我，比乞丐落魄',
					  subContent: [
						  {
							  remainer: '一蓑烟雨任平生',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
						  {
							  remainer: '一蓑烟雨任平生',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
						  {
							  remainer: '一蓑烟雨任平生',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
						  ]
				  },
				  {
					  id: 3,
					  squareUrl: "https://cube.elemecdn.com/9/c2/f0ee8a3c7c9638a54940382568c9dpng.png",
					  remainer: '一蓑烟雨任平生',
					  toRemainer: 'angle',
					  time: '2019-11-02 16:32:52',
					  sex: '0',
					  content: '失去你的我，比乞丐落魄',
					  subContent: [
						  {
							  remainer: '一蓑烟雨任平生',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
						  {
							  remainer: '一蓑烟雨任平生',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
						  {
							  remainer: '一蓑烟雨任平生',
							  toRemainer: 'angle',
							  content: '抱紧你的我，比国王富有',
							  time: '2019-11-02 16:32:52',
						  },
						  ]
				  },
			  ],
			  drawer: false,
		      direction: 'btt',
		      textarea: '',
		  },
		  methods: {
			  handleChange(name) {
			        console.log(name);
			        $.ajax({
						url: "/home/remain/selectSub.do",
						async: false,
						type: "post",
						data: JSON.stringify({
							lastId: 4
						}),
						contentType: "application/json",
						dataType: 'json',
						success: function(data){
							for(var i=0; i<vm.message.length; i++){
								vm.message[i].subContent = data.remains
							}
						}
					})
			  },
			  handleClose(done) {
		            done();
		      },
		      reply(){
		    	  
		      }
		  },
		  filters: {
			  dateFormat(date){
					var date = new Date(date);
					Y = date.getFullYear() + '-';
					M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
					D = date.getDate() + ' ';
					h = date.getHours() + ':';
					m = date.getMinutes() + ':';
					s = date.getSeconds(); 
					return (Y+M+D+h+m+s);
				}
		  },
		  
	});
	
	function getAllMain(){
		$.ajax({
			  url: "/home/remain/selectMain.do",
			  async: false,
			  type: "post",
			  data: JSON.stringify({
				  receiverId: 2
			  }),
			  contentType: "application/json",
			  dataType: 'json',
			  success: function(data){
				  vm.message = data.remains;
	              console.log(vm.message);
            }
		  })
	}
	getAllMain();
	
});