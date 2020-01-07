<%-- 
    Document   : Login
    Created on : Feb 25, 2017, 3:43:39 PM
    Author     : John Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Login</title>
        <style>
            body{
                margin:0;
                background-image:url("../guest/Photo/sh.png");
                background-size: 1400px,700px;
            }
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
            p{
                font-family: sans-serif;
                color: black;
                font-size: 40px;
            }
             .fixed{
                font-family: sans-serif;
                color:black;
                font-size: 20px;
                align-items:baseline;
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
            input[type=text]
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

            input[type=text]:focus {
                     width: 100%;
                }
            input[type=password] {
                 width: 300px;
                 margin: 7px;
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

            input[type=password]:focus {
                     width: 100%;
                }
                h2{
                    font-size: 40px;
                }
                table{
                    margin-left: 300px;
                }
        </style>
    </head>
    <body>
        
        <%
            if (request.getParameter("submit")!= null)
            {
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                String ins="select * from tbl_users where uname='"+username+"' and pword='"+password+"'" ;
                ResultSet rs=obj.selectCommand(ins);
                if(rs.next())
                {
                    session.setAttribute("uid", rs.getString("user_id"));
                    response.sendRedirect("homepage.jsp");
                }    
                else
                {
        %>
                         <script>
                         alert("Invalid User name or Password");
                         </script>
                     <%   
                }
            }
                      %>
            <form method="post">
        <header>
        <ul>
            <li><a href="../guest/home.jsp">Home</a></li>
            <li><a href="../guest/news.jsp">News</a></li>
            <li><a href="../guest/ourcontact.jsp">Contact</a></li>
            <li><a href="../guest/download.jsp">Download</a></li>
            <li><a href="../guest/about.jsp">About</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="../guest/signup.jsp">Register</a></li>
        </ul>
        </header>
                <div class="container">
                <div class="fixed">
                     <br><br>
                 <table>
                     <h2>Login</h2>
                <tr>
                    <td>Username
                    <input type="text" autocomplete="on" name="username" placeholder="Username..."required></td>             
                </tr>   
                <tr>
                <br>
                    <td>Password
                        <input type="password" name="password" placeholder="Password..." required></td>
                </tr>     
                <tr>
                    <td><p></p>
                        <input type ="submit" name="submit" value="Login" class="submit">
                        <input type="reset" name="cancel" value="Cancel" class="cancel">                   
                    </td>
                </tr>
                </table>
            </div>
        </form>
        </div>
        <br><br><br><br><br><br><br><br><br>
       <%-- <div class="footer">
            <ul>         
                <ol><a href="../guest/privacy.jsp">Privacy & Policy</a></ol>
                <ol><a href="Contactusadmin.jsp">Contact Us</a></ol>
                <ol><a href="feedbackadmin.jsp">Feedback</a></ol>
                <ol><a href="index.jsp">Logout</a></ol>
                <ol><a href="sitemapadmin.jsp">Site map</a></ol>
                <br>
            </ul>      
        </div> --
    </body>
</html>
