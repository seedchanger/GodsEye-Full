<%-- 
    Document   : upload photo
    Created on : Jan 11, 2017, 12:05:36 PM
    Author     : John Paul Francis
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.ConnectionClass" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
       <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Photo</title>
    </head>
    <body background="abst2.jpg">
        
        <%
            if(request.getParameter("submit")!=null)
                    {
                        String fname=request.getParameter("fname");
                        String lname=request.getParameter("lname");
                        String gender=request.getParameter("gender");
                        String place=request.getParameter("place");
                        String username=request.getParameter("username");
                        String password=request.getParameter("password");
                        String photo =request.getParameter("photo");
                        
                        String ins="insert into tb_test(fname,lname,gender,place,username,password,photo)values('"+fname+"','"+lname+"','"+gender+"','"+place+"','"+username+"','"+password+"','"+photo+"')";
                        //out.println(ins);
                        boolean b=obj.executeCommand(ins);
                        //out.println(b);
                        
                        if(b==true)
                        {
                            
                            out.println("Succesfully Inserted");
                        }
                        else
                        {
                            out.println("Not Inserted");
                        }
                    }
         %>
        <h2>Upload Photo</h2>
        <form enctype="multipart/form-data" method="post" action="uploadaction.jsp">
            <table>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" placeholder=" first name..."></td>
                    </td>
                </tr>
                <tr>
                    <td>Last name</td>
                    <td><input type="text" name="lname" placeholder=" last name..."></td>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>Male<input type="radio" name="gender" value="male">
                    FeMale<input type="radio" name="gender" value="female"</td>
                </tr>
                <tr>
                    <td>Place</td>
                    <td><select name="place">
                        <option value="0">--select--</option>
                        <option value="Ernakulam">Ernakulam</option>
                        <option value="Thodupuzha">Thodupuzha</option>
                        <option value="Muvattupuzha">Muvattupuzha</option></select>
                    </td>
                </tr>
                <tr>
                    <td>username</td>
                    <td><input type="text" name="username" value="" placeholder=" username..."></td>
                    
                </tr>
                <tr> 
                    <td>password</td>
                    <td><input type="password" name="password" value="" placeholder=" password..."></td>
                    </td>
                </tr>
                <tr>
                    <td>Select photo</td>
                    <td><input type="file" name="photo" value="" placeholder="">   
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="submit" value="submit">
                        <input type="reset" name="reset" value="Reset">
                    </td>
                </tr>
            </table>
          </form>
    </body>
</html>
