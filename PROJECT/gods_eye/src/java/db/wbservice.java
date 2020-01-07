/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author John Paul Francis
 */
@WebService(serviceName = "test")
public class wbservice {

    /**
     * Web service operation
     * @param username
     * @param password
     * @return 
     */
    @WebMethod(operationName = "login")
    public String test1(@WebParam(name = "username") String username, @WebParam(name = "password") String password) {
        
        ConnectionClass obj=new ConnectionClass();
        String sel="select * from tbl_users where uname='"+username+"' and pword='"+password+"'";
        String status="false";
        System.out.print(sel);
        ResultSet rs=obj.selectCommand(sel);
        try {
            if(rs.next())
            {
                status="true";
            }
        } catch (SQLException ex) {
            Logger.getLogger(wbservice.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

    /**
     * Web service operation
     * @param fname
     * @param lname
     * @param dob
     * @param phone
     * @param uname
     * @param email
     * @param pword
     * @param gender1
     * @return 
     */
    @WebMethod(operationName = "reg")                      
    public boolean reg(@WebParam(name = "fname") String fname, @WebParam(name = "lname") String lname, @WebParam(name = "dob") String dob, @WebParam(name = "phone") String phone, @WebParam(name = "email") String email, @WebParam(name = "uname") String uname, @WebParam(name = "pword") String pword, @WebParam(name = "gender1") String gender1) {

        ConnectionClass obj1=new ConnectionClass();
        String ins="insert into tbl_users (gender,fname,lname,dob,email,phone,uname,pword)values('"+gender1+"','"+fname+"','"+lname+"','"+dob+"','"+phone+"','"+email+"','"+uname+"','"+pword+"')";
        boolean status= obj1.executeCommand(ins);
        System.out.print(ins);
        return status;
    }

    /**
     * Web service operation
     * @param jstring
     * @return 
     */
   @WebMethod(operationName = "calllog")
    public Boolean calllog(@WebParam(name = "jstring") String jstring){
        Boolean status = false;
        String ins="";
        ConnectionClass obj1=new ConnectionClass();
        
        try {
        JSONArray cast = new JSONArray(jstring);
               String phone="";
               String type="";
               String date="";
               String duration="";
               
               String sel="select * from tbl_calllog";
                   ResultSet datec = obj1.selectCommand(sel);
                   datec.last();
                   String ldate=datec.getString("timestamp");
                   
               for (int j=0; j<cast.length(); j++) {
                   JSONObject log = cast.getJSONObject(j);
                   phone =log.getString("phone");
                   type =log.getString("calltype");
                   date =log.getString("date");
                   duration =log.getString("duration");
               
                    DateFormat s1 = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.US);
                    DateFormat s2 = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.US);

                    Date dateOne = s1.parse(ldate);
                    Date dateTwo = s2.parse(date);
                    boolean b=dateOne.before(dateTwo);
                   
                   if(b)
                   {
                       ins="insert into tbl_calllog (type,phone,duration,timestamp)values('"+type+"','"+phone+"','"+duration+"','"+date+"')";
                       status = obj1.executeCommand(ins);
                       System.out.print(ins);
                   }
               }
               
        } catch (JSONException | SQLException | ParseException e) {
               e.printStackTrace();
        }
        return status;
    }

    /**
     * @param latitude
     * Web service operation
     * @param longitude
     * @param timestamp
     * @return 
     */
    @WebMethod(operationName = "clocation")
    public boolean clocation(@WebParam(name = "latitude") String latitude, @WebParam(name = "longitude") String longitude, @WebParam(name = "timestamp") String timestamp) {
        
        ConnectionClass obj1=new ConnectionClass();
        String ins="insert into tbl_location (latitude,longitude,timestamp)values('"+latitude+"','"+longitude+"','"+timestamp+"')";
        boolean status= obj1.executeCommand(ins);
        System.out.print(ins);
        return status;
        
    }

    /**
     * Web service operation
     * @param inbox
     * @param sent
     * @return 
     */
    @WebMethod(operationName = "message")
    public Boolean message(@WebParam(name = "inbox") String inbox, @WebParam(name = "sent") String sent) {
        
        Boolean status = false;
        String ins="";
        ConnectionClass obj1;
        obj1 = new ConnectionClass();
        
        try {
        JSONArray cast1 = new JSONArray(inbox);
        JSONArray cast2 = new JSONArray(sent);
        
               String address;
               address = "";
               String body="";
               String type1="inbox";
               String type2="sent";
               String date="";
               String ldate="";
               boolean b;
               
               
               String sel="select * from tbl_smslog where type='"+type1+"'";
                   ResultSet datec1 = obj1.selectCommand(sel);
                   
               for (int j=0; j<cast1.length(); j++) {
                   JSONObject log1 = cast1.getJSONObject(j);
                   address =log1.getString("address");
                   date =log1.getString("date");
                   body =log1.getString("body");
               
                    if(datec1.next())
                   {
                       while(datec1.next())
                       {
                            ldate=datec1.getString("timestamp");
                       }    
                        DateFormat s1 = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.US);
                        DateFormat s2 = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.US);

                        Date dateOne = s1.parse(ldate);
                        Date dateTwo = s2.parse(date);
                        b=dateOne.before(dateTwo);
                   }
                   else
                       b=true;
                   
                   if(b)
                   {
                       ins="insert into tbl_smslog (type,phone,message,timestamp)values('"+type1+"','"+address+"','"+body+"','"+date+"')";
                       status = obj1.executeCommand(ins);
                       System.out.print(ins);
                   }
               }
               
               sel="select * from tbl_smslog where type='"+type2+"'";
               ResultSet datec2 = obj1.selectCommand(sel);
                   
               for (int j=0; j<cast2.length(); j++) {
                   JSONObject log2 = cast2.getJSONObject(j);
                   address =log2.getString("address");
                   date =log2.getString("date");
                   body =log2.getString("body");
                   
                   if(datec2.next())
                   {
                       while(datec2.next())
                       {
                            ldate=datec2.getString("timestamp");
                       }    
                        DateFormat s1 = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.US);
                        DateFormat s2 = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.US);

                        Date dateOne;
                       dateOne = s1.parse(ldate);
                        Date dateTwo;
                       dateTwo = s2.parse(date);
                        b=dateOne.before(dateTwo);
                   }
                   else
                       b=true;
                   
                   if(b)
                   {
                       ins="insert into tbl_smslog (type,phone,message,timestamp)values('"+type2+"','"+address+"','"+body+"','"+date+"')";
                       status = obj1.executeCommand(ins);
                       System.out.print(ins);
                   }
               }   
               
        } catch (JSONException | SQLException | ParseException e) {
        }
        return status;
        
    }
}
