<%-- 
    Document   : privacy
    Created on : Mar 24, 2017, 12:39:54 PM
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
        <link href="../css/tablecss.css" rel="stylesheet" type="text/css" />
        <title>Messages</title>
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
                margin-left: 220px;
            }
            h1
            {
                color: white;
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
            <li><a href="../guest/news.jsp">News</a></li>
            <li><a href="../guest/ourcontact.jsp">Contact</a></li>
            <li><a href="../guest/about.jsp">About</a></li>
            <li><a href="../guest/home.jsp">Logout</a></li>
        </ul>
        
    </div>

    <div class="container">      
    <h1>Message List</h1>
    <br><br>
<table>
                <tr>
                    <th>Type</th>
                    <th>Phone Number</th>
                    <th>Message</th>
                    <th>Timestamp</th>
                </tr>
                <tr>
                    <%
                        
                        String id=session.getAttribute("did").toString();
                        String sel="select * from tbl_smslog where deviceid='"+id+"'";
                        ResultSet rs=con.selectCommand(sel);
                        while(rs.next())
                        {                        
                    %>
                    <td><%=rs.getString("type")%></td>
                    <td><%=rs.getString("phone")%></td>
                    <td><%=rs.getString("message")%></td>
                    <td><%=rs.getString("timestamp")%></td>

                    </tr>
                    <%
                            }
                    %>
            </table>
            <br>
           
    </div><br><br><br><br><br><br><br>
    <br><br><br><br><br><br>
<div class="footer">
        <ul> 
          <ol><a href="aboutusadmin.jsp">sddfs&nbsp;Us</a></ol>
           <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
          <ol><a href="feedbackadmin.jsp">Feedback</a></ol>
          <ol><a href="index.jsp">Logout</a></ol>
           <ol><a href="sitemapadmin.jsp">Site map</a></ol>
           <br>&nbsp;&nbsp;&nbsp;
           
    </div>
    </body>
</html>
