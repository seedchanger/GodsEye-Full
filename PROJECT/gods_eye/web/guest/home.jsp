<%-- 
    Document   : home
    Created on : Feb 25, 2017, 11:55:21 AM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        
        <title>Home</title>
        <style>

            header
            {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
                position:absolute;
                top: 0;
                width: 100%;
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
            body
            {
                background-image:url("../guest/Photo/gkn.jpg");
                background-repeat:repeat;
                background-attachment: inherit;
                background-size:device-width;
                padding-top:40px;
                height: 100%;
            }
            ol a:hover
            {
                background-color: red;
                padding-left: 25px;
            }
            #writing
            {
                color: black;     
            }
            p
            {
                text-align: justify;          
                background-color: #ffff66;
                box-shadow: 1px 1px 5px 5px white;
                font-size: 16px;
                width:device-width-2;
                border: 25px grey;
                padding: 20px; 
                color:black;
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
            h1
            {
                color:white;
                padding-left:device-width;
            }
            writing
            {
                position: absolute;
                height: 100%;
                width: 100%;
                overflow: auto;
            }
            em
            {
                color:white;
                padding-left: 450px;
            }
            hr{
                border: 1px solid #ffffff;
            }
            sub{
                color:white;
                margin-left:50px;               
                padding-right: 20px;
            }
            video
            {
                box-shadow: 1px 1px 5px 5px #2b542c;
                box-decoration-break:clone;
            }
        </style>
   </head>
   <body>
       <%
             session.setAttribute("uid", "NULL");
             session.setAttribute("did","NULL");
             %>
   <header>
        <ul>
            <ol><a href="home.jsp">Home</a></ol>
            <ol><a href="news.jsp">News</a></ol>
            <ol><a href="ourcontact.jsp">Contact</a></ol>
            <ol><a href="download.jsp">Download</a></ol>
            <ol><a href="about.jsp">About</a></ol>
            <ol><a href="../user/login.jsp">Login</a></ol>
            <ol><a href="signup.jsp">Register</a></ol>
            <ol><a href="../admin/loginad.jsp">Admin</a></ol>
        </ul> 
    </header> 
   </div>
    <div class="container">
    <br><br>
       <div id="writing">
        <h1>Welcome to GOD'S EYE</h1></<br>
            <div>
    <video width="600px" height="400px" autoplay loop>
        <source src="../guest/Photo/gods.mp4" type="video/mp4">
        </div><br><br>
           <p><u>About GOD'S EYE</u><br>
               God's Eye is a Employee monitoring application.It has a server part and client part.
               God’s Eye is an android app to monitor your friend’s or children’s activities or get eyes on your employee’s activities during working hour. God’s Eye application works silently on targeted device and provides all information regarding the activities done on that device like Facebook & WhatsApp conversations, Call logs, GPS Location, Text messages etc. The app will be invisible on the host phone. All the activities on the host phone can be monitored through a web application from anywhere anytime. 
               <br><br>This application is a hidden application which is not visible to the smart phone user. The major issue of child missing can be solved with the help of this system. The android application uses GPS and this helps in locating the missing child’s location. The parents are worried about their children. By missing the children, the parents are scared to go to the family trip. These are lots of chances to miss the child in trip. This project is developing for those parents that they have worried to miss their child. In Today’s world lots of child’s have smart phones. With the help of smart phones GPS, and this system parents can watch on their child. System helps to send the child’s smart phones exact location in the parent's smart phone when parent demand to check the child’s location.<br><b</b>
       </div>
    <br>
    </div>
    <div class="footer">
        <ul> 
           <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
           <ol><a href="terms.jsp">Terms of Use</a></ol>
           <ol><a href="https://mail.google.com/mail/u/0/#inbox?compose=15b348aae025381e">Feedback</a></ol>
           <br>&nbsp;&nbsp;&nbsp;
           <hr>
           <div class="container">
           <sub>God's Eye is specially designed to monitor your under aged children, employees, and a phone that you own. But before using this App as a monitoring tool in your device, make sure that you are providing all the essential information regarding this App 
        to the user of the phone. It's user's responsibility to follow all the relevant laws of their country regarding the use of God's Eye App. If you have any doubts, please first consult your local attorney before using God's Eye. By using this App, you represent that God's Eye 
        will be used only in the lawful manner. Checking other person's messages 
        and others phone activities secretly and installing God's Eye App on other person's phone without their knowledge can be taken as an illegal activity in your country. God's Eye is not taking any responsibility for any misuse and damage caused by our App.        
           </sub>
               </div>
           <hr>
           <em>Copyright &copy; 2017. Designed by Team <strong>God's Eye</strong></em>
        </ul>      
       
       </div>
    </body>
</html>
