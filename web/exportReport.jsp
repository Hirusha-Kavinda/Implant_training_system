<%-- 
    Document   : exportReport
    Created on : Jun 26, 2023, 10:25:12 PM
    Author     : hirus
--%>

<%@ page contentType="application/vnd.ms-excel" %>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*" %>
<%
    try {
        // Set the response headers for Excel file download
        response.setHeader("Content-Disposition", "attachment; filename=\"selection_report.xls\"");
        response.setContentType("application/vnd.ms-excel");

        // Connect to the database
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/implant_trainig?useSSL=false", "root", "dark123night");
        Statement stmt = con.createStatement();

        // Retrieve the data from the database table
        String sql = "SELECT company_name, company_address, company_province, company_email, student_name, student_address, student_province, student_email, phone, company_job, languages FROM savedata";
        ResultSet rs = stmt.executeQuery(sql);

        // Create an Excel file using HTML table format
        out.println("<table>");
        out.println("<tr>");
        out.println("<th>company name</th>");
        out.println("<th>company address</th>");
        out.println("<th>company province</th>");
        out.println("<th>company email</th>");
        out.println("<th>student name</th>");
        out.println("<th>student address</th>");
        out.println("<th>student province</th>");
        out.println("<th>student email</th>");
        out.println("<th>student phone</th>");
        out.println("<th>job</th>");
        out.println("<th>language</th>");
        out.println("</tr>");

        // Loop through the result set and add data to the Excel file
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

            // Add the data row to the Excel file
            out.println("<tr>");
            out.println("<td>" + cname + "</td>");
            out.println("<td>" + caddress + "</td>");
            out.println("<td>" + cprovince + "</td>");
            out.println("<td>" + cemail + "</td>");
            out.println("<td>" + sname + "</td>");
            out.println("<td>" + saddress + "</td>");
            out.println("<td>" + sprovince + "</td>");
            out.println("<td>" + semail + "</td>");
            out.println("<td>" + phone + "</td>");
            out.println("<td>" + job + "</td>");
            out.println("<td>" + languages + "</td>");
            out.println("</tr>");
        }

        out.println("</table>");

        // Close the database connection
        rs.close();
        stmt.close();
        con.close();
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
