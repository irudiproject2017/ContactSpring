package com.full.contactapp;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.appengine.labs.repackaged.org.json.JSONObject;
import com.google.appengine.labs.repackaged.org.json.JSONException;

@Controller
public class Contactcontroller {
	 
	@RequestMapping(value = "/Add.ds", method = RequestMethod.POST)
	public void doPost(  HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException, JSONException
	   {
		
		resp.setContentType("text/html");
		  PrintWriter out=resp.getWriter();
		  
		  String record=req.getParameter("data");
		  
		  JSONObject obj = new JSONObject(record);

		  String Ei = obj .get("Eid").toString();
		  String Fname = obj .get("Fname").toString();
		  String Lname = obj .get("Lname").toString();
		  String Phone = obj .get("Phone").toString();
		  String Mail = obj .get("Mail").toString();
		  
		  
			ContactJDO c = new ContactJDO();
		  PersistenceManager pm = PMF.get().getPersistenceManager();
		  
		   
		   Query q = pm.newQuery(ContactJDO.class);
	       q.setFilter("Eid == '" + Ei + "'");
			List<ContactJDO> results = (List<ContactJDO>) q.execute(Ei);
			try
			  {
				if(results.isEmpty())
				{
					  c.setEid(Ei);
					  c.setFName(Fname);
					  c.setLName(Lname);
					  c.setPhoneNumber(Phone);
					  c.setEmail(Mail);
					  
					  pm.makePersistent(c);

					  out.println("Contact Added");


			    }
			    else
			    {
			    	out.println("Contact Already exist");

				}
				
		  }
		  
		  finally{
			  
			  q.closeAll();
			
			}

	   
    	
    }
	
	@RequestMapping(value = "search.ds", method = RequestMethod.POST)
	public void SearchClass(HttpServletRequest req, HttpServletResponse resp)throws IOException , ServletException {

		resp.setContentType("text/html");
		  PrintWriter out=resp.getWriter();
		  
		  String EmpID=req.getParameter("eid2");
			PersistenceManager pm = PMF.get().getPersistenceManager();

			Query q = pm.newQuery(ContactJDO.class);

			q.setFilter("Eid == '" + EmpID + "'");
					

			List<ContactJDO> results = (List<ContactJDO>) q.execute(EmpID);
			
			try{
				
				if(!results.isEmpty()){
					
					out.println("Contact found");
			    }  
			    else{  
			    	out.println("No Contact found");  
				}
			}
			finally{
				
				q.closeAll();
			}

		  
    	
    }
	
	@RequestMapping(value = "Update.ds", method = RequestMethod.POST)
	public void UpdateClass(HttpServletRequest req, HttpServletResponse resp)throws IOException , ServletException {

		resp.setContentType("text/html");
		  PrintWriter out=resp.getWriter();
		  
		  String EmpID=req.getParameter("eid2");
		  String FirstName=req.getParameter("fname2");
		  String LastName=req.getParameter("lname2");
		  String PhoneNumber=req.getParameter("pno2");
		  String Email=req.getParameter("email2");
		  
		 
			PersistenceManager pm = PMF.get().getPersistenceManager();

			Query q = pm.newQuery(ContactJDO.class);

			q.setFilter("Eid == '" + EmpID + "'");
					

			List<ContactJDO> results = (List<ContactJDO>) q.execute(EmpID);
			
			
			
			try{
				
				if(!results.isEmpty()){
					
					  ContactJDO c= pm.getObjectById(ContactJDO.class,results.get(0).getKey());
					  c.setFName(FirstName);
					  c.setLName(LastName);
					  c.setPhoneNumber(PhoneNumber);
					  c.setEmail(Email);
					  pm.makePersistent(c);
					  out.println("Contact Updated ");
			    }  
			    else{  
			    	out.println("No Contact found");
			       
				}
			}
			finally{
				
				q.closeAll();
			}
    	
    }
	
	@RequestMapping(value = "delete.ds", method = RequestMethod.POST)
	public void DeleteClass(HttpServletRequest req, HttpServletResponse resp)throws IOException , ServletException {

		resp.setContentType("text/html");
		  PrintWriter out=resp.getWriter();
		  
		  String EmpID=req.getParameter("eid2");
		  
		 
			PersistenceManager pm = PMF.get().getPersistenceManager();

			Query q = pm.newQuery(ContactJDO.class);

			q.setFilter("Eid == '" + EmpID + "'");
					

			List<ContactJDO> results = (List<ContactJDO>) q.execute(EmpID);
			
			
			
			try{
				
				if(!results.isEmpty()){
					
					ContactJDO c= pm.getObjectById(ContactJDO.class,results.get(0).getKey()); 
					 
					  pm.deletePersistent(c);
					  out.println("Contact Deleted ");
			    }  
			    else{  
			    	
			    	out.println("No Contact found ");
			       
				}
			}
			finally{
				
				q.closeAll();
			}

    	
    }
	
	
	@RequestMapping(value = "sendmail.ds", method = RequestMethod.POST)
	public void sendMail(HttpServletRequest req, HttpServletResponse resp)throws IOException , ServletException {
	
		resp.setContentType("text/html");
		  PrintWriter out=resp.getWriter();
    	
    	String to=req.getParameter("To2");  
	    String sub=req.getParameter("Subject2");  
	    String text=req.getParameter("Message2");  

	    
	    Properties props = new Properties();  
	    props.put("mail.smtp.host", "smtp.gmail.com");  
	    props.put("mail.smtp.socketFactory.port", "465");  
	    props.put("mail.smtp.socketFactory.class",  
	              "javax.net.ssl.SSLSocketFactory");  
	    props.put("mail.smtp.auth", "true");  
	    props.put("mail.smtp.port", "465");  
	     
	    Session session = Session.getDefaultInstance(props,  
	     new javax.mail.Authenticator() {  
	     protected PasswordAuthentication getPasswordAuthentication() {  
	     return new PasswordAuthentication("irudiproject2017@gmail.com","9962787617");
	     }  
	    });  
	     
	  
	    try {  
	     MimeMessage message = new MimeMessage(session);  
	     message.setFrom(new InternetAddress("irudiproject2017@gmail.com")); 
	     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
	     message.setSubject(sub);  
	     message.setText(text);  
	       
	     Transport.send(message);  
	     out.println("Mail Sent");
	        
	     
	    } catch (MessagingException e) {throw new RuntimeException(e);}  
	     
        
    }
	
	
	@RequestMapping(value = "Fetch.ds", method = RequestMethod.POST)
	public void fetchData(HttpServletRequest req, HttpServletResponse resp)throws IOException , ServletException {
		
		
		
	}
	
   
}  