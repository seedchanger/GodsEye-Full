<%-- 
    Document   : homead
    Created on : Apr 4, 2017, 12:52:26 AM
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
        <title>Home Admin</title>
        <style>
            table
            {
                margin-left: 50px;
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
             li a:hover {
             background-color: red;
             padding-right: 25px;
             padding-left: 25px;
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
        </style>
    </head>
    <body>
        <header>
        <ul>
            <li><a href="#">Home-Dashboard</a></li>
            <li><a href="../guest/home.jsp">Logout</a></li>
           
        </ul>
            <div class="container">
        <h2>Welcome Admin!</h2><br>
    <center><h3>User's List</h3></center>
    <br>
    <script>
        function delete()
        {
             
             String sel="delete from tbl_users where user_id='"+eid+"'";
        }
    </script>
    <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>E-Mail</th>
                    <th>Phone</th>
                    <th>User Name</th>
                    <th>&nbsp;</th>
                </tr>
                <tr>
                    <%
                        
                        String id=session.getAttribute("aid").toString();
                        String sel="select * from tbl_users";
                        String eid="";
                        ResultSet rs=con.selectCommand(sel);
                        while(rs.next())
                        {        
                            eid=rs.getString("user_id");
                    %>
                      <td><%=rs.getString("fname")%></td>
                      <td><%=rs.getString("lname")%></td>
                      <td><%=rs.getString("email")%></td>
                      <td><%=rs.getString("phone")%></td>
                      <td><%=rs.getString("uname")%></td>
                      <td><a href="homead.jsp?eid=<%=eid%>"><input type="button" id="" value="Delete" onclick="delete()"></td>
                    </tr>
                    <%
                            }
                    %>
                </tr>
    </table>
            </div>
    </body>
</html>
