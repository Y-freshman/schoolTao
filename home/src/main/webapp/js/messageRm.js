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
			  handleChange(val) {
			        console.log(val);
			  },
			  handleClose(done) {
		            done();
		      },
		      reply(){
		    	  
		      }
		  },
		  filters: {
			  
		  },
		  
	});
});