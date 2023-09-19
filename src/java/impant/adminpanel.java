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
@WebServlet(name = "adminpanel", urlPatterns = {"/adminpanel"})
public class adminpanel extends HttpServlet {


    
    
    
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String cid = request.getParameter("cid"); 
         String sid = request.getParameter("sid"); 
        
          String cname = request.getParameter("cname");
           String sname = request.getParameter("name"); 
         
           String caddress = request.getParameter("caddress");
           String saddress = request.getParameter("address");
           
            String cprovince = request.getParameter("cprovince"); 
            String sprovince = request.getParameter("province"); 
            
             String cemail = request.getParameter("cemail");
              String semail = request.getParameter("email");
              
              String phone = request.getParameter("phone");
             
               String job = request.getParameter("cjob"); 
               
                String language = request.getParameter("clng"); 
        
                
                
                 try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/implant_trainig?useSSL=false","root","dark123night");
                Statement stmnt = con.createStatement();
                
                
                String sql = "INSERT INTO savedata (cid,sid,company_name,student_name,company_address,student_address,company_province,student_province,company_email,student_email,phone,company_job,languages) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)" ;
                 PreparedStatement statement = con.prepareStatement(sql);
    statement.setString(1, cid);
    statement.setString(2, sid);
    statement.setString(3, cname);
    statement.setString(4, sname);
    statement.setString(5, caddress);
    statement.setString(6, saddress );
    statement.setString(7, cprovince);
    statement.setString(8, sprovince);
    statement.setString(9, cemail);
    statement.setString(10, semail);
    statement.setString(11, phone);
    statement.setString(12, job);
    statement.setString(13, language);

    statement.executeUpdate();
    
    
    String deleteJobSql = "DELETE FROM job WHERE id = ?";
        PreparedStatement deleteJobStatement = con.prepareStatement(deleteJobSql);
        deleteJobStatement.setString(1, cid);
        deleteJobStatement.executeUpdate();

        String deleteStudentSql = "DELETE FROM testrej WHERE sid = ?";
        PreparedStatement deleteStudentStatement = con.prepareStatement(deleteStudentSql);
        deleteStudentStatement.setString(1, sid);
        deleteStudentStatement.executeUpdate();
    
    
                con.close();
                
              }catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
              
              }
        
        
        
        
        
        
        
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
            
                RequestDispatcher dispatcher = request.getRequestDispatcher("adminNav.jsp");
    dispatcher.include(request, response);
    
    
    
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet adminpanel</title>");  
            
out.println("<style>");
out.println("body {");
out.println("    text-align: center;");
out.println("}");
out.println("h1 {");
out.println("    margin-top: 50px;");
out.println("}");
out.println("button {");
out.println("    display: block;");
out.println("    margin: 0 auto;");
out.println("    margin-top: 20px;");
out.println("    background-color: blue;");
out.println("    color: white;");
out.println("    padding: 10px 20px;");
out.println("    border: none;");
out.println("    cursor: pointer;");
out.println("}");
out.println("</style>");


            out.println("</head>");
            out.println("<body>");
            
            out.println("<br><br><br><br><br><br><br><br><br>");
            
            out.println("<h1> Job Selection is Succesfully </h1>");
            
            out.println("<br><br><br>");
            
            out.println("<button onclick=\"location.href='selection.jsp';\">Go to Selection Page</button>");
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
