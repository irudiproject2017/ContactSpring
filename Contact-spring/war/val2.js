$(document).ready(function(){
	
	$("#fetch").click(function() { 
		
		$.ajax({    
	        type: "GET",
	        url: "fetch2.jsp",             
	        dataType: "html",                
	        success: function(s){                    
	        	 $("#getdata").html(s); 
	        	 
	        }

	    });
		
	}); 
	
});