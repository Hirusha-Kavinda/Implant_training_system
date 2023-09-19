/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package impant;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author hirus
 */
@WebServlet(name = "adminlogin", urlPatterns = {"/adminlogin"})
public class adminlogin extends HttpServlet {

 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
           String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
         String defaultUsername = "admin";
        String defaultPassword = "password";
        
      if (defaultUsername.equals(username) && defaultPassword.equals(password)) {
            // Valid credentials, set the adminLoggedIn attribute in session and redirect to admin panel
            request.getSession().setAttribute("adminLoggedIn", true);
            response.sendRedirect("adminpanel.jsp");
        } else {
            // Invalid credentials, display error message
            request.setAttribute("message", "Invalid username or password");
            request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
        }
  
    

}
}

