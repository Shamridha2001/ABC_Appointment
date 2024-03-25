<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
  <div class="container-fluid" >
    <img style="border-radius:50%;width: 70px;height: 70px; margin:0 10px 0 50px " alt="" src="img/logoabc.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: red;"></p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
        <a class="nav-link active mx-0 mx-md-3 fs-6" aria-current="page" href="DoctorDashbord.jsp"></a>
        <a class="nav-link mx-0 mx-md-3  fs-6" href="Home.jsp">Home</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="TestResult.jsp">Manage Testresult</a>
                
      </div>
    </div>
  </div>
</nav>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="TestResult">"TestResult"</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="add-result.jsp">add</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="search-update-result.jsp">Search Specific & Update</a>
        </li>
        
       
    </ul>
    <div class="container-fluid">
       
        <br/>
        <p>${message}</p>
        <br/>
        <div class="container">
            <form method="post" action="testResultController">
                <div class="mb-3">
                    <label for="appointmentID" class="form-label">Appointment ID:</label>
                    <input type="text" class="form-control" id="appointmentID" name="appointmentID"/>
                </div>
                <div class="mb-3">
                    <label for="result" class="form-label">Result:</label>
                    <input type="text" class="form-control" id="result" name="result"/>
                </div>
                <div class="mb-3">
                    <label for="report" class="form-label">Report:</label>
                    <!-- Assuming the report is uploaded as a file -->
                    <input type="file" class="form-control" id="report" name="report"/>
                </div>
                <div class="mb-3">
                    <label for="doctorName" class="form-label">Doctor Name:</label>
                    <input type="text" class="form-control" id="doctorName" name="doctorName"/>
                </div>
                <div class="mb-3">
                    <label for="technicianName" class="form-label">Technician Name:</label>
                    <input type="text" class="form-control" id="technicianName" name="technicianName"/>
                </div>
                <input type="hidden" name="type" value="add"/>
                <button type="submit" class="btn btn-primary">Register</button>
            </form>
        </div>
    </div>
     </div>
</body>
</html>
