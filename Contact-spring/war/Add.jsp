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

	<h1>Add Customer</h1>

	
		<table>
			<tr>
				<td>Employee ID :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="eid" name="id" /></span></td>
			</tr>
			<tr>
				<td>First Name :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="fname" name="firstName" /></span></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="lname" name="lastName" /></span></td>
			</tr>
			<tr>
				<td>Phone Number :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="pno" name="pno" /></span></td>
			</tr>
			<tr>
				<td>Email ID:</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="email" name="email" /></span></td>
			</tr>
		</table>
		 <br>
  <input type="submit" id="Add" value="Add">
 

<div id="responsecontainer" align="center">

</div>


</body>
</html>
