<%-- 
    Document   : contacts
    Created on : Feb 25, 2017, 11:28:46 AM
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
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/tablecss.css" rel="stylesheet" type="text/css"/>
        <title>Contacts</title>
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

    <div class="container">      
    <h2>Contacts List</h2>
    <br><br>
<table>
                <tr>
                    <th>Name</th>
                    <th>Phone Number</th>
                </tr>
                <tr>
                    <%
                        
                        String id=session.getAttribute("did").toString();
                        String sel="select * from tbl_contacts where deviceid='"+id+"'";
                        ResultSet rs=con.selectCommand(sel);
                        while(rs.next())
                        {                        
                    %>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("number")%></td>
                    </tr>
                    <%
                            }
                    %>
            </table>
            <br>
           
    </div><br><br><br><br><br><br>
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