/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package db;
import java.sql.*;

public class ConnectionClass {
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    public ConnectionClass() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/db", "root","12345");

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }



    public boolean executeCommand(String str) {
        boolean bol = false;
        try {

            st = con.createStatement();
            st.executeUpdate(str);
            bol = true;

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return bol;
    }


    public ResultSet selectCommand(String selQry) {
        try {
            st = con.createStatement();
            rs = st.executeQuery(selQry);
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return rs;
    }
}



