<%-- 
    Document   : selection
    Created on : Jun 26, 2023, 8:48:31 PM
    Author     : hirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        
        
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<style>

table{
  
    justify-content: center;
    align-items: center;
   
}
 th{
    width: 8%;
    border: solid 1px;
    text-align: center;
     background: linear-gradient(to bottom, #494fff, #00c8ff);
 }

 tr:hover{

    background: linear-gradient(to bottom, #49ffb6, #00c8ff);
    color: black
 }

 tr{
    background: linear-gradient(to bottom, #ffffff, #80d5e6);

 }
 td{
    
    width: 8%;
    border: solid 1px;
    
 }

 h1{
    text-align: center;
 }
</style>

        
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <jsp:include page="adminNav.jsp" />
        
        <br><br>
        
         <div>

                      <br><br><br>
         <div class ="row">             

        <h1> Selection Report</h1>
        
          <form action="exportReport.jsp" method="post">
        <input type="submit" value="Export to Excel" class="btn btn-success">
    </form>

         </div>
        <br>

                    <table>
                    <tr>
                        <th>company name</th>
                <th>company address</th>
                <th>company province</th>
                <th>company email</th>
                <th>student name</th>
                <th>student address</th>
                <th>student province</th>
                <th>student email</th>
                <th>student phone</th>
                <th>job</th>
                <th>language</th>
                    </tr>

                    
         <% 
            try {
                // Connect to the database
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/implant_trainig?useSSL=false", "root", "dark123night");
                Statement stmt = con.createStatement();

                // Retrieve the data from the database table
                String sql = "SELECT company_name,company_address,company_province,company_email,student_name,student_address,student_province,student_email,phone,company_job,languages FROM savedata";
                ResultSet rs = stmt.executeQuery(sql);

                // Loop through the result set and display the data in a table row
                while (rs.next()) {
                    String cname = rs.getString("company_name");
                    String caddress = rs.getString("company_address");
                    String cprovince = rs.getString("company_province");
                    String cemail = rs.getString("company_email");
                    
                    String sname = rs.getString("student_name");
                    String saddress = rs.getString("student_address");
                    String sprovince = rs.getString("student_province");
                    String semail = rs.getString("student_email");
                    
                    String phone = rs.getString("phone");
                    String job = rs.getString("company_job");
                    String languages = rs.getString("languages");

                    // Display the retrieved data in a table row    %>
                    
                    
                    <tr>
                        <td><%= cname %></td>
                        <td><%= caddress %></td>
                        <td><%= cprovince %></td>
                        <td><%= cemail %></td>
                          <td><%= sname %></td>
                        <td><%= saddress %></td>
                        <td><%= sprovince %></td>
                        <td><%= semail %></td>
                        
                        <td><%= phone %></td>
                        <td><%= job %></td>
                        <td><%= languages %></td>
                    </tr>
                    <%
                }

                // Close the database connection
                rs.close();
                stmt.close();
                con.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        %>
                </table>
                
                
                
                <br><br><br><br><br><br><br><br><br><br><br><br>
                </div>
                
                
                
     <jsp:include page="footer.jsp" />            
                
                
    </body>
</html>
