<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Manage Appointment</title>
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
    <ul class="nav nav-tabs mt-2 px-4  bg-secondary pt-1">
        <li class="nav-item">
            <a class="bg-dark text-white nav-link" href="Appointment">Appointments</a>
        </li>
        <li class="nav-item">
            <a class="bg-secondary text-white nav-link" href="search-update-appointment.jsp">Search </a>
        </li>
        <li class="nav-item">
            <a class="bg-secondary text-white nav-link" href="add-appointment.jsp">Add</a>
        </li>
        <li class="nav-item"></li>
    </ul>
    <br/>
        <br/>
        <div class="form-group p-5 mx-5 mb-4 ">
 		<div class=" p-5 mx-5">
 		<div class=" p-5 mx-5 bg-info">
        <div class="container ">
        <div class="row">
    		<div class="col-md-12 text-center">
        <h3 class="text-center">Search Appointment</h3>
        </div>
  		</div>
        <br/>
        <form method="get" action="appointmentController">
            <div class="form-group">
                Enter Appointment ID: <input type="text" name="appointmentID">
                <input type="hidden" name="type" value="specific">
                <button type="submit" class="btn btn-info bg-dark text-white">Search</button>            
            </div>
        </form>
        <br/>
        <p class="text-center">${searchResult}</p>
        <br/>
        <h3 class="text-center">Appointment</h3>
        <br/>
        <form method="post" action="appointmentController">
            <label for="appointmentID">Appointment ID:</label>
            <input type="text" readonly class="form-control" id="appointmentID" name="appointmentID" value="${not empty appointment ? appointment.appointmentID : ''}"/>
            <br/>
            <label for="userName">User Name:</label>
            <input type="text" class="form-control" id="userName" name="userName"  value="${not empty appointment ? appointment.userName : ''}"/>
            <br/>
            <label for="appointmentDate">Appointment Date:</label>
            <input type="date" class="form-control" id="appointmentDate" name="appointmentDate"  value="${not empty appointment ? appointment.appointmentDate : ''}"/>
            <br/>
            <label for="testName">Test Name:</label>
            <input type="text" class="form-control" id="testName" name="testName"  value="${not empty appointment ? appointment.testName : ''}"/>
            <br/>
            <label for="appointmentRequest">Appointment Request:</label>
            <textarea class="form-control" id="appointmentRequest" name="appointmentRequest">${not empty appointment ? appointment.appointmentRequest : ''}</textarea>
            <input type="hidden" name="type" value="update"/>
            <br/>
            <button type="submit" class="btn btn-warning">Update</button>            
        </form>     
    </div>    
    </div>
    </div>  
    </div>
</div>
</body>
</html>
