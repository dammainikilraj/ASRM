$(function() {

	function setHeight() {

		windowHeight = $(window).height();
		height1 = $(".body-container").height();
		if (height1 > windowHeight) {

			$('.lexicon_left_block').height(height1);
		} else {
			var s1 = $('.lexicon_left_block').height(windowHeight - 50);

			var s2 = $(".body-container").height(windowHeight); 
			/* alert("side col height"+s1.height()+"container h"+s2.height()); */
		}
	};
/*	$(function() {
		windowHeight = $(window).height();
		height1 = $(".body-container").height();
		if (height1 > windowHeight) {

			$('.lexicon_left_block').height(windowHeight);
		} else {
			var s1 = $('.lexicon_left_block').height(windowHeight - 50);

			var s2 = $(".body-container").height(windowHeight); 
			 alert("side col height"+s1.height()+"container h"+s2.height()); 
		}
		});*/
/*	function setHeight() {

		windowHeight = $(window).height();
			var s1 = $('.lms-side-col').height(windowHeight - 50);

	}

	setHeight();*/
	// ==========================leave form s
	// ==================================//

      
	var days = [ "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday",
		 			"Friday", "Saturday", "Sunday" ];
		 	
		 	var unavailableDays = [ "Saturday", "Sunday" ];
		 	var unavailableDates = [ "2016/03/24", "2016/03/27", "2016/04/05" ]; // yyyy/MM/dd
		 	function unavailable(date) {
		 		ymd = date.getFullYear() + "/"
		 				+ ("0" + (date.getMonth() + 1)).slice(-2) + "/"
		 				+ ("0" + date.getDate()).slice(-2);
		 		day = new Date(ymd).getDay();
	 		if ($.inArray(ymd, unavailableDates) < 0
		 				&& $.inArray(days[day], unavailableDays) < 0) {
		 			return [ true, "enabled", "Book Now" ];
		 		} else {
		 			return [ false, "disabled", "Booked Out" ];
	 		}
		 	}
		

//		 	function unavailable(date) {
//		 		ymd = date.getFullYear() + "/"
//		 				+ ("0" + (date.getMonth() + 1)).slice(-2) + "/"
//		 				+ ("0" + date.getDate()).slice(-2);
//		 		day = new Date(ymd).getDay();
//		 		if ($.inArray(ymd, unavailableDates) < 0
//		 				&& $.inArray(days[day], unavailableDays) < 0) {
//		 			return [ true, "enabled", "Book Now" ];
//		 		} else {
//		 			return [ false, "disabled", "Booked Out" ];
//		 		}
//		 	}
//		
// 	
 //$( "#from" ).datepicker({
  // defaultDate: "+1w",
  // changeMonth: true,
  // dateFormat: 'yy-mm-dd',
  // yearRange: "-100:+0",
 // beforeShowDay: unavailable,
 // onClose: function( selectedDate ) {
//     $( "#to" ).datepicker( "option", "minDate", selectedDate );
//     
//     var start = $("#from").datepicker("getDate");
//     var end = $("#to").datepicker("getDate");
//     
//     
//     if(start> 0 && end > 0){
//     var startDate = new Date(start);
//     var endDate = new Date(end);
//     var totalSundays = 0;
//     var totalSaturdays = 0;
//     var optional = 0;
//
//
//     for (var i = startDate; i <= endDate; ){
//         if (i.getDay() == 0){
//             totalSundays++;
//         }
//          if (i.getDay() == 6){
//             totalSaturdays++;
//         }
//        optional=totalSundays+totalSaturdays
//         i.setTime(i.getTime() + 1000*60*60*24);
//     }
//     var days = (end - start) / (1000 * 60 * 60 * 24);
//     
//     
//     
//     $("#TotalDays").val((days+1)-optional);
//     }
//     
//   }
// });
// 
// $( "#to" ).datepicker({
//   defaultDate: "+1w",
//   changeMonth: true,
//   dateFormat: 'yy-mm-dd',
//   yearRange: "-100:+0",
//   beforeShowDay: unavailable,
//   /* numberOfMonths: 3, */
//   onClose: function( selectedDate ) {
//     $( "#from" ).datepicker( "option", "maxDate", selectedDate );
//		
//		  var start = $("#from").datepicker("getDate");
//     var end = $("#to").datepicker("getDate");
//     
//     if(start> 0 && end > 0){
//     var startDate = new Date(start);
//     var endDate = new Date(end);
//     var totalSundays = 0;
//     var totalSaturdays = 0;
//     var optional = 0;
//
//
//     for (var i = startDate; i <= endDate; ){
//         if (i.getDay() == 0){
//             totalSundays++;
//         }
//          if (i.getDay() == 6){
//             totalSaturdays++;
//         }
//        optional=totalSundays+totalSaturdays
//         i.setTime(i.getTime() + 1000*60*60*24);
//     }
//     var days = (end - start) / (1000 * 60 * 60 * 24);
//     
//     /*$("#TotalDays").val(days+1);*/
//     $("#TotalDays").val((days+1)-optional);
//     
//     } 
//	}

// });

	// =============================leave form e=============================//

/*	$('.datepick').each(function() {
		$(this).datepicker({
			dateFormat : "yy-mm-dd",
			changeMonth : true,
			changeYear : true,
			maxDate : "+0d",
			yearRange : '-100:+0',
		}).on('change', function() {
			if ($('.datepick').valid()) {
				$('.datepick').removeClass('invalid').addClass('success');
			}
		});
	});*/

		 	
	 $(document).ready(function(){

// 		 var dateToday = new Date();
// 		 var yrRanges = '"'+( dateToday.getFullYear()-30)+':'+(dateToday.getFullYear() + 30)+'"';
		    $("#date-picker-start").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-100:+100",
//		        yearRange: "2002:2012",
//		        yearRange: "-100:+100",
		        onSelect: function(selectedDate) {
		        //	alert("in date picker");
		          $("#date-picker-end").datepicker("option","minDate", selectedDate)
		        }
		    
		    });
		    $("#date-picker-end").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-30:+50",
//		        yearRange: "2002:2012",
//		        yearRange: "-100:+100",
		        onSelect: function(selectedDate) {
		          $("#date-picker-start").datepicker("option","maxDate", selectedDate)
		        }
		    
		    });
		    
		    $("#date-picker-start1").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-100:+100",
//		        yearRange: "2002:2012",
//		        yearRange: "-100:+100",
		        onSelect: function(selectedDate) {
		        //	alert("in date picker");
		          $("#date-picker-end1").datepicker("option","minDate", selectedDate)
		        }
		    
		    });
		    $("#date-picker-end1").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-30:+50",
//		        yearRange: "2002:2012",
//		        yearRange: "-100:+100",
		        onSelect: function(selectedDate) {
		          $("#date-picker-start1").datepicker("option","maxDate", selectedDate)
		        }
		    
		    });
		    
		    
		    $("#date-picker-start2").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-100:+100",
		        onSelect: function(selectedDate) {
		          $("#date-picker-end2").datepicker("option","minDate", selectedDate)
		        }
		    
		    });
		    $("#date-picker-end2").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-100:+100",
		        onSelect: function(selectedDate) {
		          $("#date-picker-start2").datepicker("option","maxDate", selectedDate)
		        }
		    
		    });
		    
		  
		    
		    
		    
		    $("#date-picker-estimatedStart").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-100:+100",
		        onSelect: function(selectedDate) {
		          $("#date-picker-estimatedEnd").datepicker("option","minDate", selectedDate)
		        }
		    });
		    $("#date-picker-estimatedEnd").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-30:+50",
		        onSelect: function(selectedDate) {
		          $("#date-picker-estimatedStart").datepicker("option","maxDate", selectedDate)
		        }
		    });
		 
		    $("#date-picker-plannedStartDate").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-100:+100",
		        onSelect: function(selectedDate) {
		          $("#date-picker-plannedEndDate").datepicker("option","minDate", selectedDate)
		        }
		    });
		    $("#date-picker-plannedEndDate").datepicker({
		    	 dateFormat: 'yy-mm-dd',
		         changeYear: true,
		         changeMonth: true,
		         yearRange: "-30:+50",
		        onSelect: function(selectedDate) {
		          $("#date-picker-plannedStartDate").datepicker("option","maxDate", selectedDate)
		        }
		    });  
		    
		    
		
		    
		    
		    $("#projectStartDate").datepicker({
		        numberOfMonths: 1,
		        maxDate:0,
		        dateFormat:'yy-mm-dd',
		        changeMonth:true,
		        changeYear:true,
		        yearRange: "-100:+0",
		        onSelect: function(selectedDate) {
		          $("#projectStartDate").datepicker("option","minDate", selectedDate)
		        }
		    
		    });
		    
		 
	    $("#empDOB").datepicker({
	        numberOfMonths: 1,
	        maxDate:0,
	        dateFormat:'yy-mm-dd',
	        changeMonth:true,
	        changeYear:true,
	        yearRange: "-100:+0",
	        onSelect: function(selectedDate) {
	          $("#empDOJ").datepicker("option","minDate", selectedDate)
	        }
	    
	    });
	   
	    ;
	    $("#empDOJ").datepicker({ 
	        numberOfMonths: 1,
	        dateFormat:'yy-mm-dd',
	        changeMonth:true,
	        changeYear:true,
	        yearRange: "-100:+0",
	        onSelect: function(selectedDate) {
	        	$("#empDOB").datepicker("option","maxDate", selectedDate)
	         
	        }
	    });
	    
	    $("#holidayDate").datepicker({ 
	        numberOfMonths: 1,
	        dateFormat:'yy-mm-dd',
	        changeMonth:true,
	        changeYear:true,
	        yearRange: "-100:+0",
	        onSelect: function(selectedDate) {
	        	$("#empDOB").datepicker("option","maxDate", selectedDate)
	         
	        }
	    });
	   
	    $("#fileDate").datepicker({ 
	     
	    	numberOfMonths: 1,
	        dateFormat:'yy-mm-dd',
	        changeMonth:true,
	        changeYear:true,
	        yearRange: "-100:+100",
	        onSelect: function(selectedDate) {
	        	$("#fileDate").datepicker("option","maxDate", selectedDate)
	         
	        }
	    });

	    $("#empExitDateId").datepicker({ 
		     
	    	numberOfMonths: 1,
	        dateFormat:'yy-mm-dd',
	        changeMonth:true,
	        changeYear:true,
	        yearRange: "-100:+100",
	        onSelect: function(selectedDate) {
	        	$("#empExitDateId").datepicker("option","maxDate", selectedDate)
	         
	        }
	    });
	    
	    $("#exitDate").datepicker({ 
		     
	    	numberOfMonths: 1,
	        dateFormat:'yy-mm-dd',
	        changeMonth:true,
	        changeYear:true,
	        yearRange: "-100:+100",
	        onSelect: function(selectedDate) {
	        	$("#exitDate").datepicker("option","maxDate", selectedDate)
	         
	        }
	    });
	    
	    

	   /* $(".remainderDate").datepicker({ 

	    /*$(".remainderDate").datepicker({ 

	        numberOfMonths: 1,
	        dateFormat:'yy-mm-dd',
	        changeMonth:true,
	        changeYear:true,
	        yearRange: "-100:+100",

	    });*/
	    
	  
	   
	    
//	tool tip 
	    $('[data-toggle="tooltip"]').tooltip(); 
	    
	    
	    $('.timepicker_noPeriodLabels').timepicker({
	        showPeriodLabels: false,
	        hours: { starts: 0, ends: 12 },
	        minutes: { interval: 15 },
	        timeFormat: 'HH.MM',
	        rows: 3,
	    
	    });
	    
	   
	});

	
	

});

$(function() {
	
	
});



$(document).ready(function() {


    
    $('button[type=submit], input[type=submit],a[type=submit]').on('click',function()
    		  {
    			  var formValid = $("form").valid();
    			  if(formValid){
    				  $(this).prop('disabled', true);
    			     // .attr('disabled','disabled');
    			    $('form').submit();
    			  }
    		    
    		  });
    /*$('button[type=submit], input[type=submit],a[type=submit]').on('click',function()
    		  {
    			  var formValid = $("form").valid();
    			  if(formValid){
    				  $(this).prop('disabled', true);
    			     // .attr('disabled','disabled');
    			    $('form').submit();
    			  }
    		    
    		  });*/
    	
    	
  
	/*
	 * $(window).resize(function() { setHeight(); });
	 */
});

$(function() {
	var Accordion = function(el, multiple) {
		this.el = el || {};
		this.multiple = multiple || false;

		// Variables privadas
		var links = this.el.find('.link');
		// Evento
		links.on('click', {
			el : this.el,
			multiple : this.multiple
		}, this.dropdown)
	}

	Accordion.prototype.dropdown = function(e) {
		var $el = e.data.el;
		$this = $(this), $next = $this.next();

		$next.slideToggle();
		$this.parent().toggleClass('open');

		if (!e.data.multiple) {
			$el.find('.submenu').not($next).slideUp().parent().removeClass(
					'open');
		}
		;
	}

	var accordion = new Accordion($('#accordion'), false);
});
/*
 * $(function() { $( "#datepicker" ).datepicker({ changeMonth: true, changeYear:
 * true }); }); $(function() { $( "#datepicker-end" ).datepicker({ changeMonth:
 * true, changeYear: true }); });
 */


