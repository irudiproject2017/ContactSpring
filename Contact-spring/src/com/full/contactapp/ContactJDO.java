package com.full.contactapp;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class ContactJDO {

    @PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Key key;

    @Persistent
    private String Eid;
    
    @Persistent
    private String FirstName;

    @Persistent
    private String LastName;

    @Persistent
    private String PhoneNumber;
    
    @Persistent
    private String Email;
    
   

    public void setEid(String Eid)
    {
 	   this.Eid=Eid;
    }
    public String getEid()
    {
 	   return Eid;
    }
    
    public void setFName(String FirstName)
    {
 	   this.FirstName=FirstName;
    }
    public String getFirstName()
    {
 	   return FirstName;
    }
    
    public void setLName(String LastName)
    {
 	   this.LastName=LastName;
    }
    public String getLastName()
    {
 	   return LastName;
    }
    
    public void setPhoneNumber(String PhoneNumber)
    {
 	   this.PhoneNumber=PhoneNumber;
    }
    public String getPhoneNumber()
    {
 	   return PhoneNumber;
    }
    
    public void setEmail(String Email)
    {
 	   this.Email=Email;
    }
    public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}
	public String getEmail()
    {
 	   return Email;
    }
}
