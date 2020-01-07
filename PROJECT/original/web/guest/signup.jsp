<%-- 
    Document   : signup
    Created on : 31 Jan, 2017, 5:38:25 PM
    Author     : Johnn Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
       <style>
            body{
                    background-image:url("../guest/Photo/sdn.jpg");
                    background-repeat:repeat;
                    background-size:1500px,1000px;
                    background-attachment: inherit;
            }
            h2{
                    color:black;
                    font-family: cursive;
                    font-size: 36px;
                    padding-top:20px;
                    
            }
            .submit{
                    background-color: #4CAF50;
                    color: black;
                    font-size:large;
                    box-sizing: border-box;
                    border: 2px solid black;
                    border-radius: 14px;
                    padding: 7px 10px;
                    margin: 5px 0;
                    cursor: pointer;
                    width: 40%;
                   
                 }
            .cancel{
                     background-color: #e62e00;
                    color: black;
                    font-size:large;
                    box-sizing: border-box;
                    border: 2px solid black;
                    border-radius: 14px;
                    padding: 7px 20px;
                    margin: 5px 0;
                    cursor: pointer;
                    width: 40%;
            }
            div.fixed{
                     position: fixed;
                     bottom: 70px;
                     right:350px;
                     width: 500px;
                     border: 3px;
                     color: Black;
                 }
            input[type=text] {
                 width: 250px;
                 height: 35px;
                 margin: 5px;
                 box-sizing: border-box;
                 border: 3px solid black;
                 border-radius: 4px;
                 font-size: 16px;
                 background-color: white;
                 background-position: 10px 10px; 
                 background-repeat: no-repeat;
                 padding: 12px 20px 12px 40px;
                 transition: width 0.4s ease-in-out;
                }
                input[type=date] {
                 width: 250px;
                 height: 35px;
                 margin: 5px;
                 box-sizing: border-box;
                 border: 3px solid black;
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
                 width: 250px;
                 height: 35px;
                 margin: 7px;
                 box-sizing: border-box;
                 border: 2px solid black;
                 border-radius: 4px;
                 font-size: 16px;
                 background-color: white;
                 background-position: 10px 10px; 
                 background-repeat: no-repeat;
                 padding: 12px 20px 12px 40px;
                
                 transition: width 0.4s ease-in-out;
                }

            input[type=password]:focus {
                 width: 100%;
                }
                            input[type=text]:focus {
                     width: 100%;
                }
            input[type=email] {
                 width: 250px;
                 height: 35px;
                 margin: 7px;
                 box-sizing: border-box;
                 border: 2px solid black;
                 border-radius: 4px;
                 font-size: 16px;
                 background-color: white;
                 background-position: 10px 10px; 
                 background-repeat: no-repeat;
                 padding: 12px 20px 12px 40px;
                
                 transition: width 0.4s ease-in-out;
                }

            input[type=email]:focus {
                 width: 100%;
                }
                
            input[type=radio]{
                margin: 25px;
                padding: 15px 25px 25px 25px;    
                }
                
 <%-- Header style--%>               
            body {margin:0;}
            ul {
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
            li a:hover {
             background-color: red;
             padding-right: 25px;
             padding-left: 25px;
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
    <center><h2>Register</h2></center>
    
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
                    <td>Phone</td><td></td><td><input id="phn" type="text" name="phone" onchange="phonenumber(this.value)" value="" required></td>
                </tr>
                <tr>
                    <td>Username</td><td></td><td><input type="text" name="username" required></td>
                </tr>
                <tr>
                    <td>Password</td><td></td><td><input type="password" name="password" required></td>
                </tr>
                <tr>
                    <td colspan="3" align="center"><input type="submit" name="submit" value="Submit" class="submit">
                    <input type="reset" name="reset" value="Cancel" class="cancel"></td>
                </tr>
            </table>
            </div>
        </form>           
    </body>
</html>