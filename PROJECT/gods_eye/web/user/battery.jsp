<%-- 
    Document   : battery
    Created on : Feb 27, 2017, 6:11:58 PM
    Author     : John Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../css/tablecss.css" rel="stylesheet" type="text/css"/>
        <title>Battery</title>
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
            ol,li
            {
                float: left;         
                padding-top: 6px;
            }
            ol a,li a
            {
                display: block;          
                color: white;
                padding: 13px;
                text-decoration:none;
            }
            ol a:hover, li a:hover
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
            li a{
                display: block;
            }
            table
            {
                margin-left: 300px;
            }
            h2
            {
                color: white;
            }
            em{
                color:white;
            }
        </style>
    </head>
<body>
     <%
                        String did=session.getAttribute("did").toString();
     %>
    <div class="header">
        <ul>
            <li><a href="homepage.jsp?did=<%=did%>">Home-Dashboard</a></li>
            <li><a href="news.jsp">News</a></li>
            <li><a href="ourcontact.jsp">Contact</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="../guest/home.jsp">Logout</a></li>
        </ul>
        
    </div>
<br>
    <div class="container">      
    <h1>Battery Level</h1>
    <br><br>
<table>
                <tr>
                    <th>Battery</th>
                    <th>Time</th>
                </tr>
                <tr>
                    <%
                        
                        String id=session.getAttribute("did").toString();
                        String sel="select * from tbl_battery where deviceid='"+id+"'";
                        ResultSet rs=con.selectCommand(sel);
                        while(rs.next())
                        {                        
                    %>
                    <td><%=rs.getString("battery")%></td>
                    <td><%=rs.getString("timestamp")%></td>
                    </tr>
                    <%
                            }
                    %>
            </table>
            <br>
           
    </div><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br>
<div class="footer">
        <ul> 
          <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
           <ol><a href="terms.jsp">Terms of Use</a></ol>
          <ol><a href="https://mail.google.com/mail/u/0/#inbox?compose=15b348aae025381e">Feedback</a></ol>
          <br><br> <em>Copyright &copy; 2017. Designed by Team <strong>God's Eye</strong></em>
           
    </div>
    </body>
</html>
