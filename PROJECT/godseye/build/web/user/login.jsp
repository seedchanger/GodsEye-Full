<%-- 
    Document   : login
    Created on : Jan 5, 2017, 3:31:16 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <%
        if(request.getParameter("submit")!=null)
        {
            String username=request.getParameter("username");
            String password=request.getParameter("password");
        }
    %>
    <body>
        <h4>Login</h4>
        <form action="home" method="post">
        <table>
            <tr>
                <td>Username</td>
                <td><input type="text" name="username" placeholder="username" </td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" placeholder="password"</td>
            </tr>
            
            <tr>
                <td>
                    <p></p>
                    <input type="submit" value="Login" name="Login">
                    <input type="reset" value="Cancel" name="Cancel">
                </td>
            </tr>
    </table>
        </form>
    </body>
</html>