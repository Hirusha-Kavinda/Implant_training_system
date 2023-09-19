/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package impant;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hirus
 */
@WebServlet(name = "student", urlPatterns = {"/student"})
public class student extends HttpServlet {
    
    

    

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          String name = request.getParameter("sname");  
           String address = request.getParameter("address"); 
            String province = request.getParameter("province"); 
             String email = request.getParameter("email"); 
              String phone = request.getParameter("phone"); 
               String job = request.getParameter("job"); 
                String language [] = request.getParameterValues("lng"); 
        
        
        
         try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/implant_trainig?useSSL=false","root","dark123night");
                Statement stmnt = con.createStatement();
                
               
                
                
                String sql = "INSERT INTO testrej (name, address, province, email, phone, job, language)VALUES (?,?,?,?,?,?,?)" ;
                 PreparedStatement statement = con.prepareStatement(sql);
    statement.setString(1, name);
    statement.setString(2, address);
    statement.setString(3, province);
    statement.setString(4, email);
    statement.setString(5, phone);
    statement.setString(6, job);
    statement.setString(7, String.join(",", language));

    statement.executeUpdate();
                con.close();
                
              }catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
              
              }
        
        
        
        
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet student</title>");            
            out.println("</head>");
                    
  
    
            out.println("<body>");
            
    RequestDispatcher navbarDispatcher = request.getRequestDispatcher("/navbar.jsp");
    navbarDispatcher.include(request, response);
    
    
        out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<style>");
           
            out.println(".stu {");
            out.println("    background-color: lightblue;");
            out.println("    text-align: center;");
            out.println("    margin: 150px auto 0 auto;");
            out.println("    width: 50%;");
            out.println("    padding: 20px;");
            out.println("}");
          

            out.println("</style>");
            out.println("<title>Servlet job</title>");     
            
            out.println("</head>");
            out.println("<body>");
            
            out.println("<div class=\"stu\">");
            
            
            out.println("<h1> Student Details insert succesfully</h1>");
              out.println("<br><br>");
            out.println("<h3> Student name : " + name +"</h3>");
            out.println("<h3> Student address : " + address +"</h3>");
            out.println("<h3> Student province : " + province +"</h3>");
            out.println("<h3> Student email : " + email +"</h3>");
            out.println("<h3> Student Phone no : " + phone +"</h3>");
            out.println("<h3> applied job : " + job +"</h3>");
             for (int i=0; i<language.length; i++){
            out.println("<h3> Languages : "  + language[i] + "</h3>");
             }
              out.println("<br><br>");
       
            out.println("<button style=\"background-color: blue; color: white; padding: 10px 20px; border: none; cursor: pointer;\"  onclick=\"location.href='home.jsp';\">Go Back</button>");
            
            out.println("</div>");
            
            out.println("<script>");
            out.println("function goBack() {");
            out.println("    window.history.back();");
            out.println("}");
            out.println("</script>");
            
            out.println("</body>");
            out.println("</html>");
            }
            
            
            
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
