<%--
    Document   : student
    Created on : Jun 17, 2023, 8:20:04 PM
    Author     : hirus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

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

        td {
            width: 200px;
            font-size: 20px;
            height: 50px;
            padding: 20px;
        }

        table {
            border-radius: 30px;
            background: linear-gradient(to bottom, #00a6ff, #00ffff);
            padding: 10px;
            width: 700px;
        }

        button {
            height: 50px;
            width: 150px;
        }

        select {
            background-color: #d3fcff;
        }

        .check {
            margin-left: 30px;
        }

        .form {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        h1 {
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
        <h1> Enter Student details </h1>
        <br><br>
    </div>

    <div class="form">
        <form action="student" method="post" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td> Name </td>
                    <td><input class="input" name="sname" placeholder="enter your name" type="text" id="sname"></td>
                </tr>
                <tr>
                    <td> Address </td>
                    <td><input class="input" name="address" placeholder="enter your address" type="text" id="address"></td>
                </tr>
                <tr>
                    <td> Province </td>
                    <td>
                        <select name="province" id="province">
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
                    <td> Email </td>
                    <td><input class="input" name="email" placeholder="enter your email" type="text" id="email"></td>
                </tr>
                <tr>
                    <td> Phone No </td>
                    <td><input class="input" name="phone" placeholder="enter your phone number" type="text" id="phone"></td>
                </tr>
                <tr>
                    <td> Job </td>
                    <td>
                        <select name="job" id="job">
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
                    <td> Languages</td>
                    <td>
                        <input type="checkbox" id="java" name="lng" value="Java" class="check">
                        <label for="java"> Java </label>
                        <input type="checkbox" id="cplus" name="lng" value="C++" class="check">
                        <label for="cplus"> C++ </label>
                        <input type="checkbox" id="c" name="lng" value="C" class="check">
                        <label for="c"> C </label>
                        <br>
                        <input type="checkbox" id="html" name="lng" value="HTML" class="check">
                        <label for="html"> HTML </label>
                        <input type="checkbox" id="php" name="lng" value="PHP" class="check">
                        <label for="php"> PHP </label>
                        <input type="checkbox" id="python" name="lng" value="Python" class="check">
                        <label for="python"> Python </label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </td>
                    <td>
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </td>
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
            var name = document.getElementById("sname").value.trim();
            var address = document.getElementById("address").value.trim();
            var province = document.getElementById("province").value.trim();
            var email = document.getElementById("email").value.trim();
            var phone = document.getElementById("phone").value.trim();
            var job = document.getElementById("job").value.trim();
            
            
              
            if (name === "") {
                alert("Please enter your name");
                return false;
            }

            if (address === "") {
                alert("Please enter your address");
                return false;
            }

            if (province === "") {
                alert("Please select a province");
                return false;
            }

            if (email === "") {
                alert("Please enter your email");
                return false;
            }

            if (phone === "") {
                alert("Please enter your phone number");
                return false;
            }

            if (job === "") {
                alert("Please select a job");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
