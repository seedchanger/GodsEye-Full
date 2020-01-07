<%-- 
    Document   : ourcontact
    Created on : Feb 25, 2017, 3:43:39 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Contact Us</title>
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
                color:whitesmoke;
                font-size: 30px;
            }
            img{
                padding:50px;
            }
            img:hover{
                border-radius: 50%;                            
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
        </style>
    </head>
    <body>
       <header>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="news.jsp">News</a></li>
            <li><a href="ourcontact.jsp">Contact</a></li>
            <li><a href="download.jsp">Download</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="../user/login.jsp">Login</a></li>
            <li><a href="signup.jsp">Register</a></li>
        </ul>
        </header> 
        <br><br>
        <p><b>Contact Us</b></p>
        <div class="container">
        <div class="fixed">
            <table align="center">
                <tr>
                    <td><div id="summary">
                            <img class="img" src="../guest/Photo/johnit.jpg" width="350px" height="300px">
                        </div>
                        <div id="detail">Johnit Jasan<br>+919497060693<br>jjohnit@gmail.com</div><br>
                      </td>
                    <td>
                        <div id="summary">
                        <img class="img" src="../guest/Photo/2.jpg" width="350px" height="300px">
                        </div>
                        <div id="detail">John Paul Francis<br>+919497877638<br>johnpaulfrancis@gmail.com</div><br>
                    </td>
                    <td>
                         <div id="summary">
                        <img class="img," src="../guest/Photo/tresa.jpg" width="350px" height="300px">
                         </div>
                        <div id="detail">Tresa Mathew<br>+919656984402<br>sumat4me@gmail.com</div><br>
                    </td>
                </tr>
             
            </table>
        </div></div><br><br><br><br>
                <div class="footer">
        <ul>
           <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
           <ol><a href="privaa.jsp">asgsrh</a></ol>
          <ol><a href="feedbackadmin.jsp">Feedback</a></ol>
          <ol><a href="index.jsp">Logout</a></ol>
          <ol><a href="sitemapadmin.jsp">Site map</a></ol>
        </ul>
                </div>

    </body>
</html>
