package org.apache.jsp.misc_0020test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class upload_0020photo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      db.ConnectionClass obj = null;
      synchronized (_jspx_page_context) {
        obj = (db.ConnectionClass) _jspx_page_context.getAttribute("obj", PageContext.PAGE_SCOPE);
        if (obj == null){
          obj = new db.ConnectionClass();
          _jspx_page_context.setAttribute("obj", obj, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Upload Photo</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"abst2.jpg\">\n");
      out.write("        \n");
      out.write("        ");

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
         
      out.write("\n");
      out.write("        <h2>Upload Photo</h2>\n");
      out.write("        <form enctype=\"multipart/form-data\" method=\"post\" action=\"uploadaction.jsp\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>First Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"fname\" placeholder=\" first name...\"></td>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Last name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"lname\" placeholder=\" last name...\"></td>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td>Male<input type=\"radio\" name=\"gender\" value=\"male\">\n");
      out.write("                    FeMale<input type=\"radio\" name=\"gender\" value=\"female\"</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Place</td>\n");
      out.write("                    <td><select name=\"place\">\n");
      out.write("                        <option value=\"0\">--select--</option>\n");
      out.write("                        <option value=\"Ernakulam\">Ernakulam</option>\n");
      out.write("                        <option value=\"Thodupuzha\">Thodupuzha</option>\n");
      out.write("                        <option value=\"Muvattupuzha\">Muvattupuzha</option></select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>username</td>\n");
      out.write("                    <td><input type=\"text\" name=\"username\" value=\"\" placeholder=\" username...\"></td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"password\" value=\"\" placeholder=\" password...\"></td>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Select photo</td>\n");
      out.write("                    <td><input type=\"file\" name=\"photo\" value=\"\" placeholder=\"\">   \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"submit\" value=\"submit\">\n");
      out.write("                        <input type=\"reset\" name=\"reset\" value=\"Reset\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("          </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
