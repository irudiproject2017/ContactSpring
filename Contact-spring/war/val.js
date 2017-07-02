$(document).ready(function(){
	
	$("#Add").click(function(){
		
		var eid1 = $("#eid").val();
		var fname1 = $("#fname").val();
		var lname1 = $("#lname").val();
		var pno1 = $("#pno").val();
		var email1 = $("#email").val();

		var addData = { Eid:eid1, Fname:fname1, Lname:lname1, Phone:pno1, Mail:email1 };
		var getData = JSON.stringify(addData);
		
		if(eid1==''||fname1==''||lname1==''||pno1==''||email1=='')
		{
		alert("Please Fill All Fields");
		}
		else
		{
		$.ajax({
		type: "POST",
		url: "/Add.ds",
		dataType:'json',
		data:'data='+getData,
		success: function(data){
		alert(data);
		}
		});
		}
		return false;
		});

$("#Update").click(function(){
	var eid1 = $("#eid").val();
	var fname1 = $("#fname").val();
	var lname1 = $("#lname").val();
	var pno1 = $("#pno").val();
	var email1 = $("#email").val();

	// Returns successful data submission message when the entered information is stored in database.
	var dataString = 'eid2='+ eid1 + '&fname2='+ fname1 + '&lname2='+ lname1 + '&pno2='+ pno1 + '&email2='+ email1;
	if(eid1==''||fname1==''||lname1==''||pno1==''||email1=='')
	{
	alert("Please Fill All Fields");
	}
	else
	{
	// AJAX Code To Submit Form.
	$.ajax({
	type: "POST",
	url: "/Update.ds",
	data: dataString,
	success: function(data){
	alert(data);
	}
	});
	}
	return false;
	});

$("#search").click(function(){
	var eid1 = $("#eid").val();
	

	// Returns successful data submission message when the entered information is stored in database.
	var dataString = 'eid2='+ eid1 ;
	if(eid1=='')
	{
	alert("Please Fill the Field");
	}
	else
	{
	// AJAX Code To Submit Form.
	$.ajax({
	type: "POST",
	url: "/search.ds",
	data: dataString,
	success: function(data){
	alert(data);
	}
	});
	}
	return false;
	});

$("#delete").click(function(){
	var eid1 = $("#eid").val();
	

	// Returns successful data submission message when the entered information is stored in database.
	var dataString = 'eid2='+ eid1 ;
	if(eid1=='')
	{
	alert("Please Fill the Field");
	}
	else
	{
	// AJAX Code To Submit Form.
	$.ajax({
	type: "POST",
	url: "/delete.ds",
	data: dataString,
	success: function(data){
	alert(data);
	}
	});
	}
	return false;
	});

$("#mail").click(function(){
	var To1 = $("#To").val();
	var Subject1 = $("#Subject").val();
	var Message1 = $("#Message").val();
	
	// Returns successful data submission message when the entered information is stored in database.
	var dataString = 'To2='+ To1 + '&Subject2='+ Subject1 + '&Message2='+ Message1 ;
	if(To1==''||Subject1==''||Message1=='')
	{
	alert("Please Fill All Fields");
	}
	else
	{
	// AJAX Code To Submit Form.
	$.ajax({
	type: "POST",
	url: "/sendmail.ds",
	data: dataString,
	success: function(data){
	alert(data);
	}
	});
	}
	return false;
	});
});