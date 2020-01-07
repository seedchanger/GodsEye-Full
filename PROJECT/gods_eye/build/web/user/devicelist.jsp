<%-- 
    Document   : devicelist
    Created on : Mar 28, 2017, 6:15:04 PM
    Author     : John Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../css/tablecss.css" rel="stylesheet" type="text/css" />
        <title>Device List</title>
        <style> 
        h3{
                 padding-top: 30px;
                 float: right;
                 color: black;
             }
            body
            {
                margin:0;
                background-image:url("../guest/Photo/kdh.jpg");
                background-size: 1400px,700px;
            }
           
            li
            {
                float: left;
                padding-left: 20px;
                padding-top: 7px;
                padding-bottom: 5px;
            }
            li a
            {
                display: block;
                color: white;
                padding: 10px;
                text-decoration: none;
            }
            p
            {
                font-family: sans-serif;
                color: black;
                font-size: 30px;
                align:justify;
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
            footer{
                padding-top: 500px;
            }
            div.text{
                    text-align: justify;
                    text-justify: inter-word;
            }
            em{
                color:white;
            }
            table
            {
                margin-left: 400px;
                
            }
            h2,h4{
                color:white;
            }
         </style>
    </head>
    <body>
         <header>
        <ul>
            <li><a href="#">Home-Dashboard</a></li>
            <li><a href="news.jsp">News</a></li>
            <li><a href="ourcontact.jsp">Contact</a></li>      
            <li><a href="about.jsp">About</a></li>
            <li><a href="../guest/home.jsp">Logout</a></li>
           
        </ul>
         <%
            String fname="";             
            String id=session.getAttribute("uid").toString();
            String sel="select * from tbl_users where user_id='"+id+"'";
            ResultSet rs=con.selectCommand(sel);
            if(rs.next())
                {
                    fname=rs.getString("fname");
                }
        %>
       <div class="container">
            <br>
           <h3>Hello <%=fname%></h3>
           <h2>Device List</h2><br>
           <h4>Select Any Device</h4>
           <table>
        <tr>
            <th>Device Name</th>&nbsp;
            <th>&nbsp;</th>
        </tr>
        <tr>       
        <%            
            String se="select * from tbl_devices where userid='"+id+"'";
            ResultSet rsd=con.selectCommand(se);
            String dname="";
            String did="";
            while(rsd.next())
            {
                dname=rsd.getString("devicename");
                did=rsd.getString("deviceid");
        %>
        <td><%=dname%></td>
        <td><a href="homepage.jsp?did=<%=did%>"><input type="button" id="" value="Select"></a></td>
        </tr>   
        <%
            }
        %>

           </table>
        </div>
        <br><br><br> <br><br><br> <br><br><br>
         <br><br><br>
         <div class="footer">
        <ul>         
          <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
           <ol><a href="terms.jsp">Terms of Use</a></ol>
          <ol><a href="https://mail.google.com/mail/u/0/#inbox?compose=15b348aae025381e">Feedback</a></ol>
          <br><br> <em>Copyright &copy; 2017. Designed by Team <strong>God's Eye</strong></em>
           <br>&nbsp;&nbsp;&nbsp;
        </ul>
    </body>
</html>