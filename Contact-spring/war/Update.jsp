<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="val.js"></script>
<script type="text/javascript">

 $(document).ready(function() {
	 
	 setInterval(function(){

   /*  $("#responsecontainer").load(function() { */                

      $.ajax({    
        type: "GET",
        url: "fetch.jsp",             
        dataType: "html",                
        success: function(response){                    
            $("#responsecontainer").html(response); 
            
        }

    });
/* }); */
	 }, 1000);
});

</script>
</head>
<body>

	<h1>Update Customer</h1>

	
		<table>
			<tr>
				<td>Employee ID :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="eid" id="name" /></span></td>
			</tr>
			<tr>
				<td>First Name :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="fname" id="email" /></span></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="lname" id="email" /></span></td>
			</tr>
			<tr>
				<td>Phone Number :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="pno" id="email" /></span></td>
			</tr>
			<tr>
				<td>Email ID:</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="email" id="email" /></span></td>
			</tr>
		</table>
		 <br>
  <input type="submit" id="Update" value="Update">
 

<div id="responsecontainer" align="center">

</div>


</body>
</html>
