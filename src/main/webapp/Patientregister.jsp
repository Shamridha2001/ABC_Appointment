<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Add Patient</title>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link" href="Patientregister"></a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="Patientlogin.jsp">Login</a>
        </li>
    </ul>
    <br/>
    <br/>
    <div class="container">
        <h3>Register Patient</h3>
        <br/>
        <p>${message}</p>
        <br/>
        <form method="post" action="patientregController">
            <br/>
            <label for="patientName">Patient Name:</label>
            <input type="text" class="form-control" id="patientName" name="patientName"/>
            <br/>
            <br/>
            <label for="dateOfBirth">Date of Birth:</label>
            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth"/>
            <br/>
            <br/>
            <label for="gender">Gender:</label>
            <select class="form-select" id="gender" name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
            <br/>
            <br/>
            <label for="contactNumber">Contact Number:</label>
            <input type="text" class="form-control" id="contactNumber" name="contactNumber"/>
            <br/>
            <br/>
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email"/>
            <br/>
            <br/>
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" name="address"/>
            <br/>
            <br/>
            <label for="medicalProblems">Medical Problems:</label>
            <input type="text" class="form-control" id="medicalProblems" name="medicalProblems"/>
            <br/>
            <br/>
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" name="username"/>
            <br/>
            <br/>
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password"/>
            <br/>
            <input type="hidden" name="type" value="add"/>
            <br/>
            <br/>
            <button type="submit" class="btn btn-primary">Register</button>
            
        </form>
    </div>
</div>
</body>
</html>
