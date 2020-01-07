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
        <title>Login</title>
        
    </head>
        
    <body>
        
        <%
            if (request.getParameter("submit")!= null)
            {
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                String ins="select * from tbl_users where uname='"+username+"' and pword='"+password+"'" ;
                ResultSet rs=obj.selectCommand(ins);
                if(rs.next())
                {
                    session.setAttribute("uid", rs.getString("user_id"));
                    response.sendRedirect("devicelist.jsp");
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
     <header>
        <ul>
            <li><a href="../guest/home.jsp">Home</a></li>
            <li><a href="../guest/news.jsp">News</a></li>
            <li><a href="../guest/ourcontact.jsp">Contact</a></li>
            <li><a href="../guest/download.jsp">Download</a></li>
            <li><a href="../guest/about.jsp">About</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="../guest/signup.jsp">Register</a></li>
        </ul>
        </header>                  
    <form method="post">
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="box">
                            <div class="input-group">
               
				<form role="form">

                                    <label align='center'><h2>God's Eye</h2></label><br><label><h3><h3>Login</h3></label><br>

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
                     <div class="footer">
            <ul>         
                <ol><a href="../guest/privacy.jsp">Privacy & Policy</a></ol>
                <ol><a href="../guest/terms.jsp">Terms of Use</a></ol>
                <ol><a href="feedbackadmin.jsp">Feedback</a></ol>
                <ol><a href="index.jsp">Logout</a></ol>
                <ol><a href="sitemapadmin.jsp">Site map</a></ol>
                <br>
            </ul>      
                    </div> 
</body>
</html>