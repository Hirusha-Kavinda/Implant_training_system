<%-- 
    Document   : adminlogin
    Created on : Jun 17, 2023, 7:50:18 PM
    Author     : hirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <style>
           
  
            .login-card {
  width: 300px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 10px;
  background-color: #e8e8e8;
  box-shadow: 2px 2px 10px #ccc;
}

.card-header {
  text-align: center;
  margin-bottom: 20px
}

.card-header .log {
  margin: 0;
  font-size: 24px;
  color: black;
}

.form-group {
  margin-bottom: 15px;
}

label {
  font-size: 18px;
  margin-bottom: 5px;
}

input[type="text"], input[type="password"] {
  width: 100%;
  padding: 12px 20px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  transition: 0.5s;
}

input[type="submit"] {
  width: 100%;
  background-color: #0a92e7;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type="submit"]:hover {
  background-color: #ccc;
  color: black;
}



            
        </style>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <jsp:include page="navbar.jsp" />
        
        <br><br><br><br><br><br><br><br>
        
        
        
        
        
       <div class="login-card">
  <div class="card-header">
    <div class="log">ADMIN</div>
  </div>
           <form action="adminlogin" method="POST">
    <div class="form-group">
      <label for="username">Username:</label>
      <input required name="username" id="username" type="text">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input required name="password" id="password" type="password">
    </div>
    <div class="form-group">
      <input value="Login" type="submit">
    </div>
  </form>
</div>
        
        
        
        
        
        

        <br><br><br><br><br><br><br><br><br><br>
         
  <jsp:include page="footer.jsp" />      
        
        
    </body>
</html>
