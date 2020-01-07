<%-- 
    Document   : login.jsp
    Created on : 12 Jan, 2017, 11:07:29 AM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean class="db.ConnectionClass" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../stylesheet.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            body {
                    
            <%--background-image:url(../user/photo/a111.jpg);--%>
                    background-color:#0099ff;
                    background-size: device-width;
                    background-repeat: no-repeat;
                    background-attachment: inherit;
                 }
            h2   {
                    color:papayawhip;
                    font-family: cursive;
                    font-size: 36px;
                 }
            .submit{
                    background-color: #4CAF50;
                    color: black;
                    box-sizing: border-box;
                    font-size:large;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 7px 20px;
                    margin: 5px 0;
                    cursor: pointer;
                    width: 40%;
                   
                 }
            .cancel{
                     background-color: #e62e00;
                    color: black;
                    font-size:large;
                    box-sizing: border-box;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 7px 20px;
                    margin: 5px 0;
                    
                    cursor: pointer;
                    width: 40%;
            }
            div.fixed{
                     position: fixed;
                     width:device-width-2;
                     color: black;
                     font-size:20px;
                 }
             input[type=text]{
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
                }

            input[type=password]:focus {
                     width: 100%;
                }
 <%--Header tag style --%>
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
                    <br>
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
    </body>
</html>
