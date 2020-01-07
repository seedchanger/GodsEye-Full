<%-- 
    Document   : change_password
    Created on : 17 Jan, 2017, 10:31:11 AM
    Author     : John Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <style>
            body{
                background-image:url(../user/photo/imh.jpg);
                color: whitesmoke;
            }
            
                input[type=password]:focus {
                     width: 100%;
                }
                input[type=password] {
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
                }
                .submit{
                    background-color: #4CAF50;
                    color: black;
                    box-sizing: border-box;
                    font-size:large;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 7px 20px;
                    margin: 5px 0;
                    cursor: pointer;
                    width: 90%;
                   
                 }
            .reset{
                     background-color: #e62e00;
                    color: black;
                    font-size:large;
                    box-sizing: border-box;
                    border: 2px solid #ccc;
                    border-radius: 14px;
                    padding: 7px 20px;
                    margin: 5px 0;
                    
                    cursor: pointer;
                    width: 40%;
            }
                 
        </style>
    </head>
    <body>
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
            response.sendRedirect("homepage.jsp");
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
        <h1>Change Password</h1>
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
                <td><input type="submit" name="submit" value="Submit" class="submit"></td>
                <td><input type="reset" name="cancel" value="Clear" class="reset"></td>
            </tr>
        </table>
            </center>
        </form>
    </body>
</html>
