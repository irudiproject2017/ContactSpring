<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body {font-family: "Lato", sans-serif;}

ul.tab {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Float the list items side by side */
ul.tab li {float: left;}

/* Style the links inside the list items */
ul.tab li a {
    display: inline-block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of links on hover */
ul.tab li a:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
ul.tab li a:focus, .active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
</style>
<body>

<h1>CONTACTS</h1>

<ul class="tab">
  <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Add')">Add Contact</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Update')">Update Contact</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Search')">Search Contact</a></li>
   <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Delete')">Delete Contact</a></li>
   <li><a href="javascript:void(0)" class="tablinks" onclick="openCity(event, 'Mail')">Mail</a></li>
</ul>


<div id="Add" class="tabcontent">
<br>
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
				<td>Email</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="email" id="email" /></span></td>
			</tr>
		</table>
		 <br>
  <input type="submit" id="Add" value="Add">
 
   <input type="reset" value="Reset">
</div>

<div id="Update" class="tabcontent">
<br>
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
				<td>Email </td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="email" id="email" /></span></td>
			</tr>
		</table> 
		 <br>
  <input type="submit" id="Update" value="Update">
 
   <input type="reset" value="Reset">
</div>

<div id="Search" class="tabcontent">
<br>
  <table>
			<tr>
				<td>Employee ID :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="eid" id="name" /></span></td>
			</tr>

		</table>
		<br>
  <input type="submit" id="Search" value="Search">
 
   <input type="reset" value="Reset">
</div>

<div id="Delete" class="tabcontent">
<br>
  <table>
			<tr>
				<td>Employee ID :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="eid" id="name" /></span></td>
			</tr>

		</table>
		 <br>
  <input type="submit" id="Delete" value="Delete">
 
   <input type="reset" value="Reset">
</div>

<div id="Mail" class="tabcontent">
<br>

  <table>
			<tr>
				<td>To :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="To" id="name" /></span></td>
			</tr>
			
			<tr>
				<td>Subject :</td>
				<td><input type="text" style="width: 185px;" maxlength="30"
					id="Subject" id="name" /></span></td>
			</tr>
			
			<tr>
				<td>Message:</td>
				<td><textarea rows="4" cols="50" id="Message">
 
</textarea></span></td>
			</tr>

		</table>
		<br>
  <input type="submit" id="mail" value="Send">
 
   <input type="reset" value="Reset">
</div>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
     
</body>
</html> 
