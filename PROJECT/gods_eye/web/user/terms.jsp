<%-- 
    Document   : terms
    Created on : Apr 2, 2017, 4:28:19 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Terms of use</title>
        <style>
            body{
                margin:0;
                background-image:url("../guest/Photo/kdh.jpg");
                background-size:auto;
            }
            em{
                color:white;
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
                font-size: 20px;
                text-align: justify;
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
        
            </style>
    </head>
    <body>
         <%
                        String did=session.getAttribute("did").toString();
     %>
        <header>
            <ul>
                <li><a href="homepage.jsp?did=<%=did%>">Home-Dashboard</a></li>
                <li><a href="news.jsp">News</a></li>
                <li><a href="ourcontact.jsp">Contact</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="../guest/home.jsp">Logout</a></li>
            </ul>
        </header><br>
        <div class="container">
            <br><br><br><h2>Terms of Use</h2>
        <p> The term "us" or "we" or "our" refers to the owners and operators of this site and mobile software. The term "you" refers to the viewer of the site or the person registering and using the mobile software.

By accessing this site or by installing, running, or using the software(Android Application), you are indicating your acknowledgment and acceptance of these terms of use. These terms of use may change. If you continue to use the site or the software(Android Application) after the changes, you acknowledge and accept the changes. Please consult these terms of use for any changes. </p>
        </div>
        <br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br>
        <div class="footer">
        <ul> 
          <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
           <ol><a href="terms.jsp">Terms of Use</a></ol>
          <ol><a href="https://mail.google.com/mail/u/0/#inbox?compose=15b348aae025381e">Feedback</a></ol>
          <br><br> <em>Copyright &copy; 2017. Designed by Team <strong>God's Eye</strong></em>&nbsp;&nbsp;&nbsp;
           
    </div>
        </body>
</html>
