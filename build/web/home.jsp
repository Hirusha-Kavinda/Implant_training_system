<%-- 
    Document   : home
    Created on : Jun 17, 2023, 4:44:34 PM
    Author     : hirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            
  .bg {
   background-image: url('https://www.scottmadden.com/content/uploads/2018/11/SSOW_CA_Social_LI.png');
   background-size: cover;
   background-repeat: no-repeat;
  height: 800px;
  display: flex;
  opacity: 80%;

   
}

.sliate{
    position: absolute;
    opacity: 100%;
     margin-top: 100px;
     margin-left: 34%;
    color: black;
    font-size: 180px;
    text-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

.word{
    font-size: 60px;
    position: absolute;
    margin-top: 350px;
     margin-left: 22%;
    font-weight: 700;
    
}
   
            
        </style>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <jsp:include page="navbar.jsp" />
       
        
        <div class="bg">
            
           <h1 class="sliate">SLIATE</h1>
           
           <h1 class="word"> Job Training And Placement System</h1>
         
        </div>
        <jsp:include page="footer.jsp" />
        
        
        
    </body>
</html>
