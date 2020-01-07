<%-- 
    Document   : privacy
    Created on : Mar 24, 2017, 12:39:54 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Privacy & Policy</title>
        <style>
            body{
                background-image: url(../guest/Photo/hvj.jpg);
                background-size: 1400px,1000px;            }
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
            em
            {
                color:white;
            }
        </style>
    </head>
    <body>
        <%
                        String did=session.getAttribute("did").toString();
     %>
        <header>
        <ul>
            <ol><a href="homepage.jsp?did=<%=did%>">Home-Dashboard</a></ol>
            <ol><a href="news.jsp">News</a></ol>
            <ol><a href="ourcontact.jsp">Contact</a></ol>
            <ol><a href="about.jsp">About</a></ol>
            <ol><a href="../guest/homr.jsp">Logout</a></ol>
        </ul> 
        </header> <br><br>
        <div class="container"><br><br>
        <h1>God's Eye</h1>
        <h3>Privacy and Policy</h3>
        <p><br><h4>What personal information do we collect from the people that visit our blog, website or app?</h4>
When ordering or registering on our site, as appropriate, you may be asked to enter your name, email address,
mailing address, phone number, or other details to help you with your experience.<br><br>
<h4>When do we collect information?</h4>
We collect information from you when you register on our site, place an order or enter information on our site.<br><br>
<h4>How do we use your information?</h4>
We may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:
<br>
    To personalize user’s experience and to allow us to deliver the type of content and product offerings in which you are most interested.
    <br>To allow us to better service you in responding to your customer service requests.<br>
    To quickly process your transactions.<br>
    <br>
<h4>Contacting Us</h4>

If there are any questions regarding this privacy policy you may contact us using the information below.
<address>
    godseyejtj@gmail.com<br>
    +91-9497877638<br><br>
Last Edited on 2017-03-27
</address>
        </div>
        </p>
<div class="footer">
        <ul> 
          <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
           <ol><a href="terms.jsp">Terms of Use</a></ol>
          <ol><a href="https://mail.google.com/mail/u/0/#inbox?compose=15b348aae025381e">Feedback</a></ol>
          <br><br> <em>Copyright &copy; 2017. Designed by Team <strong>God's Eye</strong></em>
           <br>&nbsp;&nbsp;&nbsp;
           
    </div>
    </body>
</html>
