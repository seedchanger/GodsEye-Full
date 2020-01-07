<%-- 
    Document   : ourcontact
    Created on : Feb 25, 2017, 3:43:39 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <style>
            body{
                background-image:url("../guest/Photo/gf.jpg");
                background-size: 1400px,700px;
            }
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
            p{
                font-family: sans-serif;
                color: whitesmoke;
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
        </header> 
        <br><br>
        <p><b>Contact Us</b></p>
        <div class="fixed">
            <table align="center">
                <tr>
                    <td><div id="summary">
                            <img class="img" src="../guest/Photo/johnit.jpg" width="200px" height="200px">
                        </div>
                        <div id="detail">Johnit Jasan<br>+919497060693<br>jjohnit@gmail.com</div><br>
                      </td>
                    <td>
                        <div id="summary">
                        <img class="img" src="../guest/Photo/2.jpg" width="200px" height="200px">
                        </div>
                        <div id="detail">John Paul Francis<br>+919497877638<br>johnpaulfrancis@gmail.com</div><br>
                    </td>
                    <td>
                         <div id="summary">
                        <img class="img," src="../guest/Photo/tresa.jpg" width="200px" height="200px">
                         </div>
                        <div id="detail">Tresa Mathew<br>+919656984402<br>sumat4me@gmail.com</div><br>
                    </td>
                </tr>
             
            </table>
            
        </div>
    </body>
</html>
