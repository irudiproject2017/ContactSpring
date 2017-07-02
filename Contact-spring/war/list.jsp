<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.full.contactapp.ContactJDO" %>
    <%@ page import="com.full.contactapp.PMF" %>
    <%@ page import =" javax.jdo.PersistenceManager" %>
    <%@ page import ="  javax.jdo.Query" %>
    <%@ page import ="java.util.*" %>
    <%@page import= "java.io.IOException,javax.servlet.RequestDispatcher,javax.servlet.ServletException,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,com.google.appengine.api.users.User,com.google.appengine.api.users.UserService,com.google.appengine.api.users.UserServiceFactory,java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

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

<h1><align="center"> CRUD - SPRING + JSP + GAE</align></h1>

	Functions : <a href="Add.jsp">Add contact</a>
<a href="Search.jsp">Search contact</a>
<a href="Update.jsp">Update Contact</a>
<a href="Delete.jsp">Delete contact</a>
<a href="Mail.jsp">Send Mail</a>

 <%
   UserService userService = UserServiceFactory.getUserService();
	User user = userService.getCurrentUser();
	response.setContentType("text/html");
	if (user!=null)
	{
     %>
	
		<a href=<%=userService.createLogoutURL(request.getRequestURI())%> align="right" >LogOut</a>
	
	<%
	}
	else 
	{
		response.sendRedirect("index.jsp");

	}
    %>

	<hr />

	
<div id="responsecontainer" align="center">

</div>

  
</body>
</html>
