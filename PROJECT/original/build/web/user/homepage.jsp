<%-- 
    Document   : Homepage
    Created on : 5 Jan, 2017, 2:20:40 PM
    Author     : John Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style>
             body {margin:0;
             background-image:url(../user/photo/bck.jpg);
             background-repeat: no-repeat;
             background-size: 1500px,1000px;
             }
             h1{
                 padding-top: 30px;
                 float: right;
                 color: whitesmoke;
             }
            tr {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
            position: fixed;
            top: 0;
            width: 100%;
            }           
            td {
            float: left;
            padding-left: 20px;
            padding-top: 7px;
            padding-bottom: 5px;
            }
           
            td a {
            display: block;
            color: white;
            padding: 10px;
            text-decoration: none;
            }            
            td a:hover {
             background-color: red;
             padding-right: 25px;
             padding-left: 25px;
            }
            menu{
                padding-top: 1px;               
            }
             ul {
            float: left;
            padding-left: 20px;
            padding-top: 70px;
            padding-bottom: 5px;
            }          
            li a {
            display: block;
            color: white;
            padding: 10px;
            text-decoration: none;
            }           
            li a:hover {
             background-color: blueviolet;
             padding-right: 25px;
             padding-left: 25px;
            }
        </style>
    </head>
    <body>
        <%
              String fname="";
              String lname="";
              String gender="";
              String dob="";
              String email="";
              String phone="";
              String uname="";
              String pword="";
            String id=session.getAttribute("uid").toString();
            String sel="select * from tbl_users where user_id='"+id+"'";
            ResultSet rs=con.selectCommand(sel);
            if(rs.next())
                {
                    fname=rs.getString("fname");
                    lname=rs.getString("lname");
                    gender=rs.getString("gender");
                    email=rs.getString("email");
                    dob=rs.getString("dob");
                    phone=rs.getString("phone");
                    uname=rs.getString("uname");
                    pword=rs.getString("pword");
                }
        %>
        <header>
            <table>
                <tr>
                <td> <a href="../guest/home.jsp">Home</a></td>
                <td><a href="../guest/news.jsp">News</a></td>
                <td> <a href="../guest/ourcontact.jsp">Contact</a></td>
                <td><a href="../guest/about.jsp">About</a></td>
                <td><a href="login.jsp">Logout</a></td>
                </tr>
            
            </table>
        </header>
        <h1>Hello <%=fname%></h1>
        <div class="menu">
        <ul>
            <li><a href="calllogs.jsp">Call Logs</a></li>
            <li><a href="messagelist.jsp">Messages</a></li>
            <li><a href="gallery.jsp">Gallery</a></li>            
            <li><a href="appdetails.jsp">App Details</a></li>
            <li><a href="contacts.jsp">Contacts</a></li>
            <li><a href="battery.jsp">Battery Status</a></li>
            <li><a href="network.jsp">Network Status</a></li>
            <li><a href="editprofile.jsp">Edit Profile</a></li>
            <li><a href="changepassword.jsp">Change password</a></li>
        </ul>
    </div>
    </body>
</html>
