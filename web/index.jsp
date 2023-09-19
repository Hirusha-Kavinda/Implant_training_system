<%-- 
    Document   : index
    Created on : Jun 17, 2023, 4:28:33 PM
    Author     : hirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:include page="navbar.jsp" />
      
         <jsp:include page="home.jsp" />
    </body>
</html>
