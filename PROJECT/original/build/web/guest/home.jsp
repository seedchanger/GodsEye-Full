<%-- 
    Document   : home
    Created on : Feb 25, 2017, 11:55:21 AM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../stylesheet.css" rel="stylesheet" type="text/css"/>
        <title>Home</title>
        <style>
            body {margin:0;
            font:fantasy;}
            ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
            position: fixed;
            top: 0;
            width: 100%;
            text-decoration:none;
            }
            li {
            float: left;         
            padding-top: 7px;
            }
            li a {
            display: block;
            
            color: white;
            padding: 15px;
            text-decoration:none;
            }
           body{
             background-image:url("../guest/Photo/gkn.jpg");
             background-repeat:no-repeat;
             background-attachment: inherit;
             background-size:device-width;
             padding-top:40px;
             }
             li a:hover {
             background-color: red;
             padding-left: 25px;
            }
            #writing{
                color: white;
                <%--padding-left: 20px;    --%>           
            }
            p{
                text-align: justify;          
                background-color: black;
                font-size: 18px;
                width:device-width-1;
                border: 25px grey;
                padding: 20px;               
              }
              u{
                  font-size: 27px;
                  color: red;
              }
              h1{
                  color:white;
                  padding-left:device-width;
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
        </header> 
       <br>
       <br>
<div class="container">  
       <div id="writing">
<h1>Welcome to GOD'S EYE</h1></<br>
           <p><u>Introduction</u><br>
               God's Eye is a Employee monitoring application.It has a server part and client part.
               God’s Eye is an android app to monitor your friend’s or children’s activities or get eyes on your employee’s activities during working hour. God’s Eye application works silently on targeted device and provides all information regarding the activities done on that device like Facebook & WhatsApp conversations, Call logs, GPS Location, Text messages etc. The app will be invisible on the host phone. All the activities on the host phone can be monitored through a web application from anywhere anytime. 
               <br><br><u>Working</u><br>
               Android application must be installed on employee's phone, then register and log in to the God's Eye. You are done !!! 
               <br> If a call or message is made or the location changes or if a new contact was added it will be visible is web page. Admin is able to see the details with the help of a email notification.
               <br><b</b>
       </div>
   </div>
   </div>
    </body>
</html>
