<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="val.js"></script>
</head>
<body>

    <center>
        <h1>Sending e-mail</h1>
       

	To: <input type="text" id="To" required>
	<br>
	<br>
	Subject: <input type="text" id="Subject" required>
	<br>
	<br>
	Message: <input type="text" id="Message" required>
	<br>
	<br>
	
	<input type="submit" id="mail" value="Submit">
	

    
</body>
</html>