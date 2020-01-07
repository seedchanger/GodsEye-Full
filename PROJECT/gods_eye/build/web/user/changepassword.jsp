<%-- 
    Document   : change_password
    Created on : 17 Jan, 2017, 10:31:11 AM
    Author     : John Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Change Password</title>
        <style>
             body{
                background-image:url(../user/photo/123.jpg);
                color: whitesmoke;
            }
             input[type=password]{
                 width: 300px;
                 margin: 5px;
                 box-sizing: border-box;
                 border: 2px solid #ccc;
                 border-radius: 4px;
                 font-size: 16px;
                 background-color: white;
                 background-position: 10px 10px; 
                 background-repeat: no-repeat;
                 padding: 12px 20px 12px 40px;
                 transition: width 0.4s ease-in-out;
                 box-shadow: 5px 5px #2b542c;
                }
                input[type=password]:focus {
                     width: 120%;
                }
                 .submit{
                    background-color: #00e600;
                    color: black;
                    box-sizing: border-box;
                    font-size:large;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 12px 30px;
                    margin: 15px 0;
                    cursor: pointer;
                    width: 40%;
                    box-shadow: 5px 5px #2b542c;     
                 }
                 .submit:hover , .reset:hover
                 {
                    box-shadow: 15px 15px #2b542c;
                 }
            .reset{
                    background-color:  #ff1a1a;
                    color: black;
                    font-size:large;
                    box-sizing: border-box;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 12px 30px;
                    margin:5px 0;
                    box-shadow: 5px 5px #2b542c;
                    cursor: pointer;
                    width: 40%;                  
            }
            ul 
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
            em{
                color:white;
            }
        </style>
    </head>
    
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
        </header>
        <%
            String pword="";
            String id=session.getAttribute("uid").toString();
            String sel="select * from tbl_users where user_id='"+id+"'";
            ResultSet rs=con.selectCommand(sel);
            if(rs.next())
                {
                    pword=rs.getString("pword");
                }
            if(request.getParameter("submit")!=null)
            {
            if(pword.equals(request.getParameter("passwordo")))
            {
                String up="update tbl_users set pword='"+request.getParameter("passwordn")+"' where user_id='"+id+"'";
            boolean b=con.executeCommand(up);
            if(b==true)
            {   
                 %>
                  <script>
                         alert("Please Login Again..");
                    </script>
                 <%
                 response.sendRedirect("../user/login.jsp");
                
            
            }
            }
            else {
                %>        
                    <script>
                         alert("Operation Failed");
                    </script>
        <% 
            }
            }
        %> 
        <div class="container">
        <h1>Change Password</h1>
        <br><br><br><br>
        <form>
            <center>
        <table>
            <tr>
                <td>Current Password :</td>
                <td><input type="password" name="passwordo"></td>               
            </tr>
            <tr>
                <td>New Password :</td>
                <td><input type="password" name="passwordn"></td>
            </tr>
            <tr>
                <td align="center" colspan='3'><input type="submit" name="submit" value="Submit" class="submit">
                <input type="reset" name="cancel" value="Clear" class="reset"></td>
            </tr>
        </table>
            </center>
        </form>
        </div>
        <br><br><br><br>
        <br><br><br><br>
        <div class="footer">
            <ul>         
                <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
                <ol><a href="terms.jsp">Terms of Use</a></ol>
                <ol><a href="https://mail.google.com/mail/u/0/#inbox?compose=15b348aae025381e">Feedback</a></ol>
                <br><br> <em>Copyright &copy; 2017. Designed by Team <strong>God's Eye</strong></em>
            </ul>
           </div>
    

