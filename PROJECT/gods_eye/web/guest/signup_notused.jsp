<%-- 
    Document   : Signup
    Created on : Feb 25, 2017, 3:43:39 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Registration</title>
        <style>
            body{
                margin:0;
                background-image:url("../guest/Photo/sh.png");
                background-size: 1400px,700px;
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
            li {
            float: left;
            padding-left: 20px;
            padding-top: 7px;
            padding-bottom: 5px;
            }
            li a {
            display: block;
            color: white;
            padding: 10px;
            text-decoration: none;
            }
            p{
                font-family: sans-serif;
                color: black;
                font-size: 40px;
            }
             .fixed{
                font-family: sans-serif;
                color:black;
                font-size: 20px;
                margin-left: 400px;
            }
            #summary:hover + #detail, #detail:hover {
             display: block;
            }
            #detail {
             display: none;
             color:black;
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
            .submit{
                    background-color: #00e600;
                    color: black;
                    box-sizing: border-box;
                    font-size:large;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 7px 20px;
                    margin: 5px 0;
                    cursor: pointer;
                    width: 40%;
                   box-shadow: 5px 5px #2b542c;
                 }
            .cancel{
                    background-color:  #ff1a1a;
                    color: black;
                    font-size:large;
                    box-sizing: border-box;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 7px 20px;
                    margin: 5px 0;
                    box-shadow: 5px 5px #2b542c;
                    cursor: pointer;
                    width: 40%;
            }
             .submit:hover , .cancel:hover
                 {
                    box-shadow: 15px 15px #4b5257;
                 }
            input[type=text],input[type=password],input[type=email],input[type=number],input[type=date]
            {
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
            input[type=text]:focus
            {
                  width: 120%;
            }
            input[type=password]:focus 
            {
                width: 120%;
            }
            input[type=number]:focus 
            {
                width: 120%;
            }
            input[type=email]:focus 
            {
                width: 120%;
            }
            input[type=date]:focus 
            {
                width: 120%;
            }
        </style>
    </head>
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
    <body>
    <%
        
        String fname="";
        String lname="";
        String gender="";
        String username="";
        String password="";
        String email="";
        String phone="";
        String dob="";
        if(request.getParameter("submit")!=null)
        {
            fname=request.getParameter("fname");
            lname=request.getParameter("lname");
            gender=request.getParameter("gender");
            username=request.getParameter("username");
            password=request.getParameter("password");
            email=request.getParameter("email");
            phone=request.getParameter("phone");
            dob=request.getParameter("dob");
            
            String ins="insert into tbl_users(fname,lname,gender,email,dob,phone,uname,pword)values('"+fname+"','"+lname+"','"+gender+"','"+email+"','"+dob+"','"+phone+"','"+username+"','"+password+"')";
            boolean b=con.executeCommand(ins);
            if(b==true)
            {
                out.println(b);
                response.sendRedirect("../user/login.jsp");
            }
        }       
    %>
    <header>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="news.jsp">News</a></li>
            <li><a href="ourcontact.jsp">Contact</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="../user/login.jsp">Login</a></li>
            <li><a href="signup.jsp">Register</a></li>
        </ul>
        </header>   
    <center><h2>Registration</h2></center>
    
        <form>
            <div class="fixed">
            <table>
                <tr>
                    <td>First Name</td><td></td><td><input type="text" name="fname" required></td>
                </tr>
                <tr>
                    <td>Last Name</td><td></td><td><input type="text" name="lname" required></td>
                </tr>
                <tr>
                    <td>Gender</td><td></td><td><input type="radio" name="gender" value="male" >Male<input type="radio" name="gender" value="female">Female</td>
                </tr>  
                <tr>
                    <td>Date of Birth</td><td></td><td><input type="date" name="dob required"></td>
                </tr>
                <tr>
                    <td>Email</td><td></td><td><input type="email" name="email" required></td>
                </tr>
                <tr>
                    <td>Phone</td><td></td><td><input id="phn" type="number" name="phone" onchange="phonenumber(this.value)" value="" required></td>
                </tr>
                <tr>
                    <td>Username</td><td></td><td><input type="text" name="username" required></td>
                </tr>
                <tr>
                    <td>Password</td><td></td><td><input type="password" name="password" required></td>
                </tr>
                <br>
                <tr>  
                    <td colspan="3" align="center"><input type="submit" name="submit" value="Submit" class="submit">
                    <input type="reset" name="reset" value="Cancel" class="cancel"></td>
                </tr>
            </table>
            </div>
        </form> 
    <br>
    <div class="footer">
            <ul>         
                <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
                <ol><a href="Contactusadmin.jsp">Contact Us</a></ol>
                <ol><a href="feedbackadmin.jsp">Feedback</a></ol>
                <ol><a href="index.jsp">Logout</a></ol>
                <ol><a href="sitemapadmin.jsp">Site map</a></ol>
                <br>
            </ul>      
        </div>
    </body>
</html>
