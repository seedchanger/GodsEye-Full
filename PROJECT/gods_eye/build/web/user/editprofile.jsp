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
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Edit Profile</title>
        <style>
            body{
                background-image:url(../user/photo/123.jpg);
                color: whitesmoke;
            }
             input[type=text],input[type=email],input[type=number],input[type=date]{
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
                 box-shadow: 5px 5px #2b542c;
                }
                input[type=text]:focus {
                     width: 120%;
                }input[type=email]:focus {
                     width: 120%;
                }input[type=number]:focus {
                     width: 120%;
                }
                input[type=date]:focus {
                     width: 120%;
                }
                 .submit{
                    background-color: #00e600;
                    color: black;
                    box-sizing: border-box;
                    font-size:large;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 12px 30px;
                    margin: 15px 0;
                    cursor: pointer;
                    width: 40%;
                    box-shadow: 5px 5px #2b542c;     
                 }
                 .submit:hover , .reset:hover
                 {
                    box-shadow: 15px 15px #2b542c;
                 }
            .reset{
                    background-color:  #ff1a1a;
                    color: black;
                    font-size:large;
                    box-sizing: border-box;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 12px 30px;
                    margin:5px 0;
                    box-shadow: 5px 5px #2b542c;
                    cursor: pointer;
                    width: 40%;                  
            }
            ul 
            {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
                position: fixed;
                top: 0;
                width: 100%;
            }
            li
            {
                float: left;
                padding-left: 20px;
                padding-top: 7px;
                padding-bottom: 5px;
            }
            li a
            {
                display: block;
                color: white;
                padding: 10px;
                text-decoration: none;
            }
            p
            {
                font-family: sans-serif;
                color: black;
                font-size: 30px;
                align:justify;
            }
            li a:hover {
             background-color: red;
             padding-right: 25px;
             padding-left: 25px;
            }
            ol
            {
                float: left;         
                padding-top: 6px;
            }
            ol a
            {
                display: block;          
                color: white;
                padding: 13px;
                text-decoration:none;
            }
            ol a:hover
            {
                background-color: red;
                padding-left: 25px;
            }
            ul{
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
                position: relative;
                top: 0;
                width: 100%;
            }
            u
            {
                font-size: 27px;
                color: red;
            }
            footer{
                padding-top: 500px;
            }
        </style>
    </head>
    <body>
        <header>
        <ul>
            <li><a href="homepage.jsp">Home-Dashboard</a></li>
            <li><a href="../guest/news.jsp">News</a></li>
            <li><a href="../guest/ourcontact.jsp">Contact</a></li>
            <li><a href="../guest/about.jsp">About</a></li>
            <li><a href="../guest/home.jsp">Logout</a></li>
        </ul>
        </header>
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
            dob=request.getParameter("dob");
            email=request.getParameter("email");
            phone=request.getParameter("phone");
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
        <div class="container">
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
                    <td>Date of birth</td><td></td><td><input type="date" name="dob" value="<%=dob%>" required></td>
                </tr>
                <tr>
                    <td>Email</td><td></td><td><input type="email" name="email" value="<%=email%>" required></td>
                </tr>
                <tr>
                    <td>Phone</td><td></td><td><input type="text" name="phone" onchange="phonenumber(this.value)" value="<%=phone%>" required></td>
                </tr>
                <tr>
                    <td colspan="3" align="center"><input type="submit" name="submit" value="Submit" class="submit">
                        <input type="reset" name="reset" value="Cancel" class="reset"></td>
                </tr>
            </table>
            </form>
            </div>
                <br><br><br>
           <div class="footer">
            <ul>         
                <ol><a href="../guest/privacy.jsp">Privacy & Policy</a></ol>
                <ol><a href="Contactusadmin.jsp">Contact Us</a></ol>
                <ol><a href="feedbackadmin.jsp">Feedback</a></ol>
                <ol><a href="index.jsp">Logout</a></ol>
                <ol><a href="sitemapadmin.jsp">Site map</a></ol>
            </ul>
           </div>
    </body>
</html>
