<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Add Patient</title>
    <style>
        body {
            background-color: #191970;
        }
        .navbar {
            background-color: #4682B4;
        }
        .navbar-brand {
            color: red;
            font-weight: bold;
            font-size: 1.5rem;
        }
        .navbar-nav .nav-link {
            color: black;
            font-weight: bold;
        }
        .nav-tabs .nav-link {
            color: #ffffff;
            font-weight: bold;
        }
        .form-group {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
        h3 {
            color: #000000;
            font-weight: bold;
            margin-bottom: 20px;
        }
        label {
            color: #000000;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 8px;
            width: 100%;
            margin-bottom: 15px;
        }
        button[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 1rem;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
            
        }
        .custom-container {
            max-width: 250px; /* Change this value to adjust width */
            margin: auto;
            }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <img style="border-radius:70%;width: 70px;height: 70px; margin-right: 10px;" alt="" src="img/logoabc.jpg">
    <p class="navbar-brand">ABC LAB</p>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link" href="ReceptionistDashboard.jsp">Home</a>
        <a class="nav-link" href="welcome.jsp">Manage Test</a>
        <a class="nav-link" href="Technician.jsp">Manage Technician</a>
        <a class="nav-link" href="Doctor.jsp">Manage Doctor</a>
        <a class="nav-link" href="Appointment.jsp">Manage Appointment</a>
        <a class="nav-link active" href="Patient.jsp">Manage Patient</a>
      </div>
    </div>
  </div>
</nav>

<div class="container-fluid">
    <ul class="nav nav-tabs mt-2 px-4 bg-secondary pt-1">
        <li class="nav-item">
            <a class="nav-link text-white" href="Patient.jsp">Store</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" href="search-update-patient.jsp">Search Specific & Update</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active text-white" href="add-patient.jsp">Add</a>
        </li>
    </ul>
    <br/>
    <br/>
    <div class="form-group p-5 mx-1 mb-1">
        <div class="container">
            <h3>Register Patient</h3>
            <br/>
            <p>${message}</p>
            <br/>
            <form method="post" action="patientController">
                <br/>
                <label for="patientName">Patient Name:</label>
                <input type="text" class="form-control" id="patientName" name="patientName"/>
                <br/>
                <label for="dateOfBirth">Date of Birth:</label>
                <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth"/>
                <br/>
                <label for="gender">Gender:</label>
                <select class="form-select" id="gender" name="gender">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
                <br/>
                <label for="contactNumber">Contact Number:</label>
                <input type="text" class="form-control" id="contactNumber" name="contactNumber"/>
                <br/>
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email"/>
                <br/>
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address"/>
                <br/>
                <label for="medicalProblems">Medical Problems:</label>
                <input type="text" class="form-control" id="medicalProblems" name="medicalProblems"/>
                <br/>
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username"/>
                <br/>
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password"/>
                <br/>
                <input type="hidden" name="type" value="add"/>
                <br/>
                <button type="submit" class="btn btn-primary">Register</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
