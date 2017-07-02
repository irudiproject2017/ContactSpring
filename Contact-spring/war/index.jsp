<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import= "java.io.IOException,javax.servlet.RequestDispatcher,javax.servlet.ServletException,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,com.google.appengine.api.users.User,com.google.appengine.api.users.UserService,com.google.appengine.api.users.UserServiceFactory,java.io.PrintWriter" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body >


  
    <%
   UserService userService = UserServiceFactory.getUserService();
	User user = userService.getCurrentUser();
	response.setContentType("text/html");
	if (user!=null)
	{
		response.sendRedirect("list.jsp");

	}
	else 
	{
		   response.getWriter().println("<a href='"+ userService.createLoginURL(request.getRequestURI())+ "'> sign in</a>");
		 
	}
	
 %>    

 
   


</body>


</html>