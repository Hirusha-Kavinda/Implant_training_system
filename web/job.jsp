<%-- 
    Document   : job
    Created on : Jun 18, 2023, 12:45:34 AM
    Author     : hirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

        <style>

.input {
font-size: 20px;
  width: 400px;
  background-color: #d3fcff;
  color: #000000;
  padding: .15rem .5rem;
  min-height: 50px;
  border-radius: 4px;
  outline: none;
  border: none;
  line-height: 1.15;

}

input:focus {
  border-bottom: 2px solid #5b5fc7;
  border-radius: 4px 4px 2px 2px;
}

input:hover {
  outline: 1px solid lightgrey;
}

td{
    width: 200px;
    font-size: 20px;
    height: 50px;
    padding: 20px;
}


table{

    border-radius: 30px;
    background: linear-gradient(to bottom, #00ffa6, #00d5ff);
    padding: 10px;
    width: 700px;
}


button{

    height: 50px;
    width: 150px;

}

select{

    background-color: #d3fcff;
}

.check {
    margin-left: 30px;
}


.form{

  display: flex;
  justify-content: center;
  align-items: center;
 

}


h1{

    text-align: center;
    justify-content: center;
    display: flex;
}


        </style>
        
        
        
        
        
        
        
        
        
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
         <jsp:include page="navbar.jsp" />
         <div>
            <br><br><br><br>
            <h1>Enter Job Vacancy Details</h1>
            <br><br>
        </div>

        <div class="form">
            <form action="job" method="post" onsubmit="return validateForm()">
                <table>
                    <tr>
                        <td>Company Name</td>
                        <td><input class="input" name="cname" id="cname" placeholder="Enter company name" type="text"></td>
                    </tr>

                    <tr>
                        <td>Company Address</td>
                        <td><input class="input" name="caddress" id="caddress" placeholder="Enter company address" type="text"></td>
                    </tr>

                    <tr>
                        <td>Province</td>
                        <td>
                            <select name="cprovince" id="cprovince">
                                <option value="">Select Province</option>
                                <option value="Central">Central</option>
                                <option value="Eastern">Eastern</option>
                                <option value="North Central">North Central</option>
                                <option value="Northern">Northern</option>
                                <option value="North Western">North Western</option>
                                <option value="Sabaragamuwa">Sabaragamuwa</option>
                                <option value="Southern">Southern</option>
                                <option value="Uva">Uva</option>
                                <option value="Western">Western</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>Company Email</td>
                        <td><input class="input" name="cemail" id="cemail" placeholder="Enter company email" type="email"></td>
                    </tr>

                    <tr>
                        <td>Job vacancies</td>
                        <td>
                            <select name="cjob" id="cjob">
                                <option value="">Select Job</option>
                                <option value="Applications engineer">Applications engineer</option>
                                <option value="Computer scientist">Computer scientist</option>
                                <option value="Network engineer">Network engineer</option>
                                <option value="Software engineer">Software engineer</option>
                                <option value="Web administrator">Web administrator</option>
                                <option value="Full-stack developer">Full-stack developer</option>
                                <option value="Cloud engineer">Cloud engineer</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>Languages</td>
                        <td>
                            <input type="checkbox" id="java" name="clng" value="java">
                            <label for="java">Java</label>

                            <input type="checkbox" id="cplus" name="clng" value="c++">
                            <label for="cplus">C++</label>

                            <input type="checkbox" id="c" name="clng" value="c">
                            <label for="c">C</label>

                            <br>

                            <input type="checkbox" id="html" name="clng" value="html">
                            <label for="html">HTML</label>

                            <input type="checkbox" id="php" name="clng" value="php">
                            <label for="php">PHP</label>

                            <input type="checkbox" id="python" name="clng" value="python">
                            <label for="python">Python</label>
                        </td>
                    </tr>

                    <tr>
                        <td><button type="submit" class="btn btn-primary">Submit</button></td>
                        <td><button type="reset" class="btn btn-danger">Reset</button></td>
                    </tr>
                </table>
            </form>
        </div>

        <div>
            <br><br>
        </div>

        <jsp:include page="footer.jsp" />

        <script>
            function validateForm() {
                var companyName = document.getElementById("cname").value;
                var companyAddress = document.getElementById("caddress").value;
                var companyProvince = document.getElementById("cprovince").value;
                var companyEmail = document.getElementById("cemail").value;
                var job = document.getElementById("cjob").value;

              
                  if (companyName === "") {
                alert("Please enter company name name");
                return false;
            }

            if (companyAddress === "") {
                alert("Please enter your address");
                return false;
            }

            if (companyProvince === "") {
                alert("Please select a province");
                return false;
            }

            if (companyEmail  === "") {
                alert("Please enter your email");
                return false;
            }

            if (job === "") {
                alert("Please select job");
                return false;
            }


                return true;
            }
        </script>
    </body>
</html>
