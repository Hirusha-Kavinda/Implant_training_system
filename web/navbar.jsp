<%-- 
    Document   : navbar
    Created on : Jun 17, 2023, 4:42:02 PM
    Author     : hirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        
        
        <style>
           .navbar-brand, .nav-link{
                color: white;
                font-weight : 500;
                
                
            }
            
            li{ margin-left: 20%; font-size: 25px; }
            
            nav{
                position: fixed
            }
           
        </style>
        

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
    <body>
        
        
         <nav class="navbar navbar-expand-lg navbar bg-primary fixed-top" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="adminlogin.jsp"> admin </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="student.jsp"> Students</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="job.jsp"> Jobs </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
        
        
        
    </body>
</html>
