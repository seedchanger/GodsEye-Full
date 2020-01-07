<%-- 
    Document   : Login
    Created on : Feb 25, 2017, 3:43:39 PM
    Author     : John Paul Francis
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../css/logincss.css" rel="stylesheet" type="text/css" />
        <title>Login-Admin</title>
        <style>
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
            a{
                text-decoration: none;
                color:white;
                font-size: 16px;
            }
        </style>
    </head>
    <body>
         <header>
        <ul>
            <li><a href="../guest/home.jsp">Home</a></li>
        </ul>
         </header>
        <%
            if (request.getParameter("submit")!= null)
            {
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                String ins="select * from tbl_admin where uname='"+username+"' and pword='"+password+"'" ;
                ResultSet rs=obj.selectCommand(ins);
                if(rs.next())
                {
                    session.setAttribute("aid", rs.getString("id"));
                    response.sendRedirect("homead.jsp");
                }    
                else
                {
        %>
                         <script>
                         alert("Invalid User name or Password");
                         </script>
                     <%   
                }
            }
                      %>
     <body class="container-fluid">
                     
    <form method="post">
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="box">
                            <div class="input-group">
               
				<form role="form">

                                    <label align='center'><h2>God's Eye</h2></label><br><label><h3><h3>Admin Login</h3></label><br>

					<div class="form-group">
						<label>Username</label>
						<input type="text" class="form-control" name="username" placeholder="Enter username">
					</div>

					<div class="form-group">
						<label>Password</label>
						<input type="password" class="form-control" name="password" placeholder="Password">
					</div>

					<p class="text-center">You agree to the <strong>Terms & Conditions</strong>.</p>

					<input type="submit" class="btn-block btn btn-lg btn-primary" name="submit" value="Login">

					<p class="text-center">New to God's Eye?  <a href="../guest/signup.jsp">Register here</a></p>
				</form>
			</div>
		</div>
                </div>
    </div>
        <br><br><br>

</body>
</html>