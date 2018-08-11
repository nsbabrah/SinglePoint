
	// Jquery code 
	
	  $(document).ready(function(){      
		$('.modal').modal();
	  });
	//   datepicker 
	  $(document).ready(function(){
		$('.datepicker').datepicker();
	  });
	// timepicker
	  $(document).ready(function(){
		$('.timepicker').timepicker();
	  });
	//  pagination part 
	  $(document).ready(function(){
		$('#timesheettable').pageMe({
		  pagerSelector:'#myPager',
		  activeColor: 'blue',
		  prevText:'Anterior',
		  nextText:'Siguiente',
		  showPrevNext:true,
		  hidePageNumbers:false,
		  perPage:10
		});
	  });
		
	