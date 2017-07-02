<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


 <script type="text/javascript">

 $(document).ready(function() {
	 
	 /* setInterval(function(){ */

     $("#responsecontainer").load(function() {                 

      $.ajax({    
        type: "GET",
        url: "fetch.jsp",             
        dataType: "html",                
        success: function(response){                    
            $("#responsecontainer").html(response); 
            
        }

    });
}); 
	
});

</script>

<body>

<div id="responsecontainer" align="center">

</div>
</body>
</html>
