<%--
    Document   : editprofile
    Created on : 17 Jan, 2017, 11:38:57 AM
    Author     : John Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit Page</title>
        <style>
            body{
                background-image:url(../user/photo/iig.jpg);
                color: whitesmoke;
            }
             input[type=text] {
                 width: 300px;
                 margin: 5px;
                 box-sizing: border-box;
                 border: 2px solid #ccc;
                 border-radius: 4px;
                 font-size: 16px;
                 background-color: white;
                 background-position: 10px 10px; 
                 background-repeat: no-repeat;
                 padding: 12px 20px 12px 40px;
                 transition: width 0.4s ease-in-out;
                }
                input[type=text]:focus {
                     width: 100%;
                }
                input[type=password] {
                 width: 300px;
                 margin: 5px;
                 box-sizing: border-box;
                 border: 2px solid #ccc;
                 border-radius: 4px;
                 font-size: 16px;
                 background-color: white;
                 background-position: 10px 10px; 
                 background-repeat: no-repeat;
                 padding: 12px 20px 12px 40px;
                 transition: width 0.4s ease-in-out;
                }
                input[type=email] {
                 width: 300px;
                 margin: 5px;
                 box-sizing: border-box;
                 border: 2px solid #ccc;
                 border-radius: 4px;
                 font-size: 16px;
                 background-color: white;
                 background-position: 10px 10px; 
                 background-repeat: no-repeat;
                 padding: 12px 20px 12px 40px;
                 transition: width 0.4s ease-in-out;
                }
                 input[type=number] {
                 width: 300px;
                 margin: 5px;
                 box-sizing: border-box;
                 border: 2px solid #ccc;
                 border-radius: 4px;
                 font-size: 16px;
                 background-color: white;
                 background-position: 10px 10px; 
                 background-repeat: no-repeat;
                 padding: 12px 20px 12px 40px;
                 transition: width 0.4s ease-in-out;
                }
        </style>
    </head>
    <body>
    <%
        
        String id=session.getAttribute("uid").toString();
        String fname="";
        String lname="";
        String gender="";
        String dob="";
        String email="";
        String phone="";
        String sel="select * from tbl_users where user_id='"+id+"'";
            ResultSet rs=con.selectCommand(sel);
            if(rs.next())
                {
                    fname=rs.getString("fname");
                    lname=rs.getString("lname");
                    gender=rs.getString("gender");
                    dob=rs.getString("dob");
                    email=rs.getString("email");
                    phone=rs.getString("phone");
                    
                }
        if(request.getParameter("submit")!=null)
        {      
            fname=request.getParameter("fname");
            lname=request.getParameter("lname");
            gender=request.getParameter("gender");
            String up="update tbl_users set fname='"+fname+"',lname='"+lname+"',gender='"+gender+"' ,dob='"+dob+"' ,email='"+email+"' ,phone='"+phone+"' where user_id='"+id+"'";
            boolean b=con.executeCommand(up);
            if(b==true)
            {
    %>
    <script> alert("Updation Successful");
        </script>
        <%
                response.sendRedirect("homepage.jsp");
            }                  
        }
    %>
    <script>
         function phonenumber(inputtxt)
{
  var phoneno = /^\d{10}$/;
  if(!phoneno.test(inputtxt))
        {
            alert("invalid mobile no");
            document.getElementById("phn").focus();
        }
      
}
       function Validate()
        {
            var x = document.form1.txtPhone.value;
            var y = document.form1.txtMobile.value;
            
         if (y.length>10)
           {
                alert("enter 10 characters");
                
                return false;
           }
           if (y.charAt(0)!="9")
           {
                alert("it should start with 9 ");
                return false
           }
        }
        </script>
        <h1>Edit Profile</h1>
        <form>
            <table align="center">
                <tr>
                    <td>First Name</td><td></td><td><input type="text" name="fname" value="<%=fname%>" required></td>
                </tr>
                <tr>
                    <td>Last Name</td><td></td><td><input type="text" name="lname" value="<%=lname%>" required></td>
                </tr>
                <tr>
                    <td>Gender</td><td></td><td><input type="radio" name="gender"  <%if (gender.equals("male")){%> checked <%}%>  value="male" >Male<input type="radio" name="gender"   <%if (gender.equals("female")){%> checked <%}%>  value="female">Female</td>
                </tr>
                <tr>
                    <td>Date of birth</td><td></td><td><input type="text" name="dob" value="<%=dob%>" required></td>
                </tr>
                <tr>
                    <td>Email</td><td></td><td><input type="email" name="email" value="<%=email%>" required></td>
                </tr>
                <tr>
                    <td>Phone</td><td></td><td><input type="number" name="phone" onchange="phonenumber(this.value)" value="<%=phone%>" required></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="Submit"></td>
                    <td><input type="reset" name="reset" value="Cancel"></td>
                </tr>
            </table>
            </form>
            
    </body>
</html>
