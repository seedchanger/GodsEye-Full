<%-- 
    Document   : ourcontact
    Created on : Feb 25, 2017, 3:43:39 PM
    Author     : John Paul Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">       
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
         <link href="../css/ourcontactcss.css" rel="stylesheet" type="text/css" />
        <title>Contact Us</title>
    </head>
    <body>
         <%
                        String did=session.getAttribute("did").toString();
     %>
        <table>
                <tr>
                <td><a href="homepage.jsp?did=<%=did%>">Home-Dashboard</a></td>
                <td><a href="news.jsp">News</a></td>
                <td><a href="ourcontact.jsp">Contact</a></td>             
                <td><a href="about.jsp">About</a></td>
                <td><a href="../guest/home.jsp">Logout</a></td>
                
                </tr>          
            </table>
        <br><br><br><br>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<section class="team">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <div class="col-lg-12">
          <h6 class="description">OUR TEAM</h6>
          <div class="row pt-md">
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 profile">
              <div class="img-box">
                <img src="../guest/Photo/johnit.jpg" class="img-responsive" width="200" height="200">
                <ul class="text-middle">
                    <p>jjohnit@gmail.com<br>
                    +91 9497060693</p>
                </ul>
              </div>
              <h1>Johnit Jasan</h1>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 profile">
              <div class="img-box">
                  <img src="../guest/Photo/3.jpg" class="img-responsive" height="200" width="200">
                <ul class="text-middle">
                    <p>johnpaulfrancis@gmail.com<br>
                    +91 9497877638</p>
                </ul>
              </div>
              <h1>John Paul Francis</h1>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 profile">
              <div class="img-box">
                  <img src="../guest/Photo/tresa.jpg" class="img-responsive" width="200" height="200">
                <ul class="text-middle">
                    <p>sumat4u@gmail.com<br>
                    +91 9656984402</p>
                </ul>
              </div>
              <h1>Tresa Mathew</h1>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

    </body>
</html>