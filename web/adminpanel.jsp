<%-- 
    Document   : newjspadmin
    Created on : Jun 26, 2023, 3:48:55 PM
    Author     : hirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        
               <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<style>

table{
width: 100%;
border: solid 1px;
font-size: 14px;
border-collapse: collapse;
}

  th {
        border: 1px solid black;
        padding: 8px;
        background-color: aqua;
    }

    td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
        font-weight: 700;
        
    }

    tr:hover{
        background-color: rgb(0, 123, 255);
        color: aliceblue;
    }


    

     

        .input {
            margin-bottom: 10px;
            height: 40px;
            width: 100%;
         
        }

        .form{ 
           
            display: flex;
            justify-content: center;
            align-items: center;
            width: 70%;
            margin-left: 15%;
            color: black;
            background: linear-gradient(to bottom, #00ffa6, #00d5ff);
          

        }

        .trfm , .tdfm {
            border: solid 0px;
            width: 3%;
        }
        .trfm:hover{
            color: black;
            background: linear-gradient(to bottom, #00ffa6, #00d5ff);
        }

        h1,h2{
            text-align: center;
        }
 
</style>




  <script>
        function selectJobRow(row) {
            var rowData = row.cells;
            
            document.getElementById("cid").value = rowData[0].innerText;
            document.getElementById("cname").value = rowData[1].innerText;
            document.getElementById("caddress").value = rowData[2].innerText;
            document.getElementById("cprovince").value = rowData[3].innerText;
            document.getElementById("cemail").value = rowData[4].innerText;
            document.getElementById("cjob").value = rowData[5].innerText;
            document.getElementById("clng").value = rowData[6].innerText;
               
        }
        
        function selectRow(row) {
            var rowData = row.cells;
            document.getElementById("id").value = rowData[0].innerText;
            document.getElementById("name").value = rowData[1].innerText;
            document.getElementById("address").value = rowData[2].innerText;
            document.getElementById("province").value = rowData[3].innerText;
            document.getElementById("email").value = rowData[4].innerText;
            document.getElementById("phone").value = rowData[5].innerText;
            document.getElementById("job").value = rowData[6].innerText;
            document.getElementById("languages").value = rowData[7].innerText;
        }
    
    
    
    function validateForm() {
  // Get the input field values
  var companyName = document.getElementById("cname").value;
  var studentName = document.getElementById("name").value;
  var companyAddress = document.getElementById("caddress").value;
  var studentAddress = document.getElementById("address").value;
  var companyProvince = document.getElementById("cprovince").value;
  var studentProvince = document.getElementById("province").value;
  var companyEmail = document.getElementById("cemail").value;
  var studentEmail = document.getElementById("email").value;
  var phone = document.getElementById("phone").value;
  var companyJob = document.getElementById("cjob").value;
  var languages = document.getElementById("clng").value;

  // Perform validation
  if (companyName === "" || studentName === "" || companyAddress === "" || studentAddress === "" || companyProvince === "" || studentProvince === "" || companyEmail === "" || studentEmail === "" || phone === "" || companyJob === "" || languages === "") {
    alert("Please fill in all fields.");
    return false; // Prevent form submission
  }


  return true; // Allow form submission
}
        
    </script>
    
    
    
    



    </head>
    <body>
      
        
          <jsp:include page="adminNav.jsp" />
        
        
          <br><br><br>
        <div class="container-fluid">

            <h1>Selection Form</h1>
            <br>
       
        <form class="form" onsubmit="return validateForm()"  action="adminpanel" method="POST">

            

            <table class="tbfm">
                
                 <tr class="trfm">
                    <td class="tdfm"></td>
                    <td class="tdfm"><input type="hidden" id="cid" name="cid"></td>
                    <td class="tdfm"></td>
                    <td class="tdfm"><input type="hidden" id="id" name="sid"></td>
                    
                </tr>
                
                <tr class="trfm">
                    <td class="tdfm">Company name : </td>
                    <td class="tdfm"><input class="input" id="cname" name="cname" placeholder="enter company name" type="text"></td>
                    <td class="tdfm">Student Name</td>
                    <td class="tdfm"><input class="input" id="name" name="name" placeholder="Enter name" type="text"></td>
                    
                </tr>

                <tr class="trfm">
                    <td class="tdfm">Company Address : </td>
                    <td class="tdfm"><input class="input" id="caddress" name="caddress" placeholder="enter company address" type="text"></td>
                    <td class="tdfm">Student Address</td>
                    <td class="tdfm"><input class="input" id="address" name="address" placeholder="Enter address" type="text"></td>
                    
                </tr>

                
                <tr class="trfm">
                    <td class="tdfm">Company Province : </td>
                    <td class="tdfm"><input class="input" id="cprovince" name="cprovince" placeholder="enter company province" type="text"></td>
                    <td class="tdfm">Student Province</td>
                    <td class="tdfm"><input class="input" id="province" name="province" placeholder="Enter province" type="text"></td>
                    
                </tr>
               

                <tr class="trfm">
                    <td class="tdfm">Company Email : </td>
                    <td class="tdfm"><input class="input" id="cemail" name="cemail" placeholder="enter company email" type="text"></td>
                    <td class="tdfm">Student Email</td>
                    <td class="tdfm"><input class="input" id="email" name="email" placeholder="Enter email" type="text"></td>
                    
                </tr>

                
                <tr class="trfm">
                    <td class="tdfm"></td>
                    <td class="tdfm"></td>
                     <td class="tdfm"> phone </td>
                    <td class="tdfm"><input class="input" id="phone" name="phone" placeholder="Enter phone" type="text"></td>
                    
                </tr>

               
                <tr class="trfm">
                    <td class="tdfm"> selected job : </td>
                    <td class="tdfm"><input class="input" id="cjob" name="cjob" placeholder="enter company job" type="text"></td>
                    <td class="tdfm"><input class="input" id="job" name="job" placeholder="Enter email" type="text"></td>
                    <td class="tdfm"></td>
                    
                </tr>
                


                <tr class="trfm">
                    <td class="tdfm"> selected languages : </td>
                    <td class="tdfm"><input class="input" id="clng" name="clng" placeholder="enter company languages" type="text"></td>
                    <td class="tdfm"><input class="input" id="languages" name="languages" placeholder="Enter languages" type="text"></td>
                    <td class="tdfm"></td>
                    
                </tr>

                <tr class="trfm">
                    <td class="tdfm"></td>
                    <td class="tdfm"><button class="btn btn-primary" type="submit"> Submit </button></td>
                    <td class="tdfm"></td>
                    
                </tr>

                

                

            </table>
         
            
        </form>
          
        </div>


        <br><br><br>


            <div class="row">
                <div class="col-xl-6">

                    <h2> Job Details</h2>

                    <table>
                    <tr>
                        <th>Job ID</th>
                        <th>Company name</th>
                        <th>Company Address</th>
                        <th>Province</th>
                        <th>Email</th>
                        <th>Job</th>
                        <th>Language</th>
                    </tr>

                    
         <% 
            try {
                // Connect to the database
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/implant_trainig?useSSL=false", "root", "dark123night");
                Statement stmt = con.createStatement();

                // Retrieve the data from the database table
                String sql = "SELECT * FROM job";
                ResultSet rs = stmt.executeQuery(sql);

                // Loop through the result set and display the data in a table row
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String address = rs.getString("address");
                    String province = rs.getString("province");
                    String email = rs.getString("email");
                    String job = rs.getString("job");
                    String languages = rs.getString("lng");

                    // Display the retrieved data in a table row    %>
                    
                    
                    <tr onclick="selectJobRow(this)">
                        <td><%= id %></td>
                        <td><%= name %></td>
                        <td><%= address %></td>
                        <td><%= province %></td>
                        <td><%= email %></td>
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
                </div>
                
                
                
                
                
                
                
                
                
                
                
                
                
               
                <div class="col-xl-6">

                    <h2> Student Details</h2>
                    <table>
                        <tr>
                            <th>Student ID</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Province</th>
                            <th>Email</th>
                            <th>Job</th>
                            <th>phone</th>
                            <th>Language</th>
                        </tr>
                        
                        
                        
         <% 
            try {
                // Connect to the database
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/implant_trainig?useSSL=false", "root", "dark123night");
                Statement stmt = con.createStatement();

                // Retrieve the data from the database table
                String sql = "SELECT * FROM testrej";
                ResultSet rs = stmt.executeQuery(sql);

                // Loop through the result set and display the data in a table row
                while (rs.next()) {
                    int sid = rs.getInt("sid");
                    String name = rs.getString("name");
                    String address = rs.getString("address");
                    String province = rs.getString("province");
                    String email = rs.getString("email");
                    String phone = rs.getString("phone");
                    String job = rs.getString("job");
                    String languages = rs.getString("language");

                    // Display the retrieved data in a table row
                    %>
                    <tr onclick="selectRow(this)">
                        <td><%= sid %></td>
                        <td><%= name %></td>
                        <td><%= address %></td>
                        <td><%= province %></td>
                        <td><%= email %></td>
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
            }                                         %>
        

                    </table>
                </div>

            </div>
            
            <br><br><br>
        </div>
        
        
        <jsp:include page="footer.jsp" />
        
    </body>
</html>
