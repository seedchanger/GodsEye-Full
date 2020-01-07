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
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Home Page</title>
        <style>
             body
             {
                 margin:0;
                background-image:url(../user/photo/bck.jpg);
                background-repeat: no-repeat;
                background-size: 1500px,1000px;
             }
             h2{
                 padding-top: 30px;
                 float: right;
                 color: whitesmoke;
             }
            tr
            {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
                position: fixed;
                top: 0;
                width: 100%;
            }           
            td,ol
            {
                float: left;
                padding-left: 20px;
                padding-top: 7px;
                padding-bottom: 5px;
            }
            ol
            {
                  background-color: #00001a;      
            }
            td a, ol a,li a
            {
                display: block;
                color: white;
                padding: 10px;
                text-decoration: none;
            }            
            td a:hover, ol a:hover
            {
                background-color: red;
                padding-right: 25px;
                padding-left: 25px;
            }                    
            menu
            {
                padding-top: 1px;               
            }
            ul
            {
                float: left;
                padding-left: 20px;
                padding-top: 70px;
                padding-bottom: 5px;
                padding-right: 10px;
            }          
            li a:hover
            {
                background-color: blueviolet;
                padding-right: 25px;
                padding-left: 25px;
            }
            em{
                color:wheat;
                 padding-left: 200px;
            }
        </style>
    </head>
    <body>
        <%
            
            String fname="";
            String id=session.getAttribute("uid").toString();
            String did=request.getParameter("did").toString();
            session.setAttribute("did",did);
            System.out.println("did = "+did);
            String sel="select * from tbl_users where user_id='"+id+"'";
            ResultSet rs=con.selectCommand(sel);
            if(rs.next())
                {
                    fname=rs.getString("fname");
                }
        %>
        <header>
            <table>
                <tr>
                    <td><a href="homepage.jsp?did=<%=did%>">Home-Dashboard</a></td>
                <td><a href="news.jsp">News</a></td>
                <td><a href="ourcontact.jsp">Contact</a></td>
                <td><a href="about.jsp">About</a></td>
                <td><a href="../guest/home.jsp">Logout</a></td>
                </tr>          
            </table>
        </header>
        <br>
        <div class="container">
        <h2>Hello <%=fname%></h2>
        </div>
        <div class="menu">
            <br>
        <ul>
            <li><a href="calllogs.jsp">Call Logs</a></li>
            <li><a href="messagelist.jsp">Messages</a></li>
            <li><a href="location.jsp">Location</a></li>
            <li><a href="appdetails.jsp">App Details</a></li>
            <li><a href="contacts.jsp">Contacts</a></li>
            <li><a href="battery.jsp">Battery Status</a></li>
            <li><a href="network.jsp">Network Status</a></li>
            <li><a href="editprofile.jsp">Edit Profile</a></li>
            <li><a href="changepassword.jsp">Change password</a></li>
        </ul>
    </div>
        <br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br>
        <div class="footer">
            <ul>         
                <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
                <ol><a href="terms.jsp">Terms of Use</a></ol>
                <ol><a href="feedbackadmin.jsp">Feedback</a></ol>
                <br><br> <em>Copyright &copy; 2017. Designed by Team <strong>God's Eye</strong></em>
            </ul>      
        </div>
    </body>
</html>
