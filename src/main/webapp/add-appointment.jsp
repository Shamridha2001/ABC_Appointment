<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Appointment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .centered-form {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .wider-form {
            width: 50%; /* Adjust the width as needed */
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <img style="border-radius:50%;width: 70px;height: 70px; margin:0 10px 0 50px " alt="" src="img/logoabc.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: red;"></p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
        <a class="nav-link mx-0 mx-md-3  fs-6" href="PatientDashboard.jsp">Home</a>
       <a class="nav-link mx-0 mx-md-3 fs-6" href="add-appointment.jsp">Make Appointment</a>  
        <a class="nav-link mx-0 mx-md-3 fs-6" href="add-payment.jsp">Make Payment</a>  
        <a class="nav-link mx-0 mx-md-3 fs-6" href="TestResult.jsp">View Test Result</a>       
      </div>
    </div>
  </div>
</nav>

<div class="container-fluid">
    <ul class="nav nav-tabs mt-2 px-4 bg-secondary pt-1">
        <li class="nav-item">
            <a class="bg-secondary text-white nav-link" href="Appointment.jsp">Appointments</a>
        </li>
        <li class="nav-item">
            <a class="bg-dark text-white nav-link active" href="search-update-appointment.jsp">Search </a>
        </li>
        <li class="nav-item">
            <a class="bg-secondary text-white nav-link" href="add-appointment.jsp">Add</a>
        </li>
    </ul>
    <br/>
    <br/>
    <div class="centered-form">
        <div class="form-group p-5 mb-4 bg-info wider-form">    
            <div class="container">
                <h3 class="text-center">Schedule Appointment</h3>
                <br/>
                <form method="post" action="appointmentController">
                    <br/>
                    <label for="userName">User Name:</label>
                    <input type="text" class="form-control mt-2" id="userName" name="userName"/>
                    <br/>
                    <label for="appointmentDate">Appointment Date:</label>
                    <input type="date" class="form-control mt-2" id="appointmentDate" name="appointmentDate"/>
                    <br/>
                    <label for="testName">Test Name:</label>
                    <input type="text" class="form-control mt-2" id="testName" name="testName"/>
                    <br/>
                    <label for="appointmentRequest">Appointment Request:</label>
                    <textarea class="form-control mt-2" id="appointmentRequest" name="appointmentRequest"></textarea>
                    <input type="hidden" name="type" value="add"/>
                    <br/>
                    <button type="submit" class="btn btn-primary">Schedule</button>         
                </form>     
            </div>      
        </div>
    </div>
</div>
</body>
</html>
