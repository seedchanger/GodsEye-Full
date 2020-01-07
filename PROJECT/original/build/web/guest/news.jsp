<%-- 
    Document   : news
    Created on : Feb 25, 2017, 7:24:24 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News</title>
        <style>
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
            <header>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="news.jsp">News</a></li>
            <li><a href="ourcontact.jsp">Contact</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="../user/login.jsp">Login</a></li>
            <li><a href="signup.jsp">Register</a></li>
        </ul>
            </header><br><br><br>
    <center><img src="../guest/Photo/asfa.gif" width="200px" height="100px"></center>
    </body>
</html>
