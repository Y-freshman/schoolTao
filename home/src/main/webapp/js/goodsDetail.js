$(document).ready(function(){
	var vm = new Vue({
		  el: '#goodsDetail',
		  data() {
			  return {
			      num: 1
			    }; 	
		  },
		  methods: {
			  handleChange(value) {
			      console.log(value);
			    } 
		  },
		  filters: {
			  
		  },
		  
	});
	
});
