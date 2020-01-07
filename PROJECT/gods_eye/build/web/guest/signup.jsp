<%-- 
    Document   : Signup
    Created on : Feb 25, 2017, 3:43:39 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html lang="en">
    <head> 
	<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="../css/registrationcss.css" rel="stylesheet" type="text/css" />


		<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Registration</title>
                <style>
                    body{
                            background-image: url("../guest/Photo/kdh.jpg");

                    }
                </style>
                 <script>
       
     function phonenumber(inputtxt)
{
  var phoneno = /^\d{10}$/;
  if(!phoneno.test(inputtxt))
        {
            alert("invalid mobile no");
            document.getElementById("phn").focus();
        }
      
}
       function Validate()
        {
            var x = document.form1.txtPhone.value;
            var y = document.form1.txtMobile.value;
            
         if (y.length>10)
           {
                alert("enter 10 characters");
                
                return false;
           }
           if (y.charAt(0)!="9")
           {
                alert("it should start with 9 ");
                return false
           }
        }
        </script>
	</head>
	<body>
             <%
        
        String fname="";
        String lname="";
        String gender="";
        String username="";
        String password="";
        String email="";
        String phone="";
        String dob="";
        if(request.getParameter("submit")!=null)
        {
            fname=request.getParameter("fname");
            lname=request.getParameter("lname");
            gender=request.getParameter("gender");
            username=request.getParameter("username");
            password=request.getParameter("password");
            email=request.getParameter("email");
            phone=request.getParameter("phone");
            dob=request.getParameter("dob");
            
            String ins="insert into tbl_users(fname,lname,gender,email,dob,phone,uname,pword)values('"+fname+"','"+lname+"','"+gender+"','"+email+"','"+dob+"','"+phone+"','"+username+"','"+password+"')";
            boolean b=con.executeCommand(ins);
            if(b==true)
            {
                out.println(b);
                response.sendRedirect("../user/login.jsp");
            }
        }       
    %>
    <header>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="news.jsp">News</a></li>
            <li><a href="ourcontact.jsp">Contact</a></li>
            <li><a href="download.jsp">Download</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="../user/login.jsp">Login</a></li>
            <li><a href="signup.jsp">Register</a></li>
        </ul>
        </header>   
		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<h4 align="center">Registration Form</h4>
					<form class="" method="post" action="#">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">First Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
                                                                    <input type="text" class="form-control" name="fname"  placeholder="Enter your First Name" required>
								</div>
							</div>
						</div>
                                            <div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Last Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="text" class="form-control" name="lname"  placeholder="Enter your Last Name" required>
								</div>
							</div>
						</div>
                                            <div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Gender</label>
							<div class="cols-sm-10">
								<div class="input-radio">
                                                                    <table>
                                                                        <tr><td> <input type="radio" name="gender" value="male" >Male <input type="radio" name="gender" value="female">	Female	
                                                                            </td></tr> </table>
                                                                    </div>
							</div>
						</div>
                                            
                                                <div class="form-group">
							<label for="dob" class="cols-sm-2 control-label">Date Of Birth</label>
							<div class="cols-sm-10">
								<div class="input-group">									
                                                                    <input type="date" class="form-control-date" name="dob" >								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Email</label>
							<div class="cols-sm-10">
								<div class="input-group">									
									<input type="email" class="form-control" name="email"  placeholder="Enter your Email" required>
								</div>
							</div>
						</div>
                                               
                                               
                                             <div class="form-group">
							<label for="number" class="cols-sm-2 control-label">Phone Number</label>
							<div class="cols-sm-10">
								<div class="input-group">									
									<input type="number" id="phn" class="form-control-date" name="phone"  placeholder="Enter your phone number" onchange="phonenumber(this.value)" value="" required>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
                                                                    <input type="text" class="form-control" name="username"  placeholder="Enter your Username" required>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
                                                                    <input type="password" class="form-control" name="password" placeholder="Enter your Password" required>
								</div>
							</div>
						</div>

						<div class="form-group ">
                                                    <input type="Submit" name="submit" value="Register" class="btn btn-primary btn-lg btn-block login-button">
						</div>
						
					</form>
				</div>
			</div>
		</div>
                   <div class="footer">
            <ul>         
                <ol><a href="privacy.jsp">Privacy & Policy</a></ol>
                <ol><a href="terms.jsp">Terms of Use</a></ol>
                <ol><a href="https://mail.google.com/mail/u/0/#inbox?compose=15b348aae025381e">Feedback</a></ol><br><br>
               <em>Copyright &copy; 2017. Designed by Team <strong>God's Eye</strong></em>
                <br>
               
            </ul>      
        </div>

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	</body>
</html>