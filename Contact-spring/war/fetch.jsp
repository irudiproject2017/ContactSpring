<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.full.contactapp.ContactJDO" %>
    <%@ page import="com.full.contactapp.PMF" %>
    <%@ page import =" javax.jdo.PersistenceManager" %>
    <%@ page import ="  javax.jdo.Query" %>
    <%@ page import ="java.util.*" %>
    <%@ page import="com.google.gson.Gson" %>
    <%@page import= "java.io.IOException,javax.servlet.RequestDispatcher,javax.servlet.ServletException,javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,com.google.appengine.api.users.User,com.google.appengine.api.users.UserService,com.google.appengine.api.users.UserServiceFactory,java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	


	<h2>Customer Details</h2>

</br>


	<table border="1">
	
			<tr>
				<td><b>Employee ID </b></td>
				<td><b>First Name</b></td>
				<td><b>Last Name</b></td>
				<td><b>Phone Number</b></td>
				<td><b>Email ID</b></td>
				
			</tr>	
	
	<tr>
	<%
	
	PersistenceManager pm = PMF.get().getPersistenceManager();
	Query q = pm.newQuery(ContactJDO.class);
	/* Gson g= new Gson(); */
	
	List<ContactJDO> result =null;
	
	result=(List<ContactJDO>) q.execute();
/* 	String s=g.toJson(result); */
	
	for(ContactJDO c : result){
		
	
	
	%>
	
	<td><%=c.getEid() %></td>
	<td><%=c.getFirstName() %></td>
	<td><%=c.getLastName() %></td>
	<td><%=c.getPhoneNumber() %></td>
	<td><%=c.getEmail() %></td>
	
	
	</tr>
	<%
	
	}
	%>
	
	</table>
	<br>

  
</body>
</html>
