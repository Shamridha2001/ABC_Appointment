<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Add Technician</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light" >
  <div class="container-fluid" >
    <img style="border-radius:50%;width: 70px;height: 70px; margin:0 10px 0 50px " alt="" src="img/logo.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: red;">ABC LAB</p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
        <a class="nav-link mx-0 mx-md-3  fs-6 " href="ReceptionistDashboard.jsp">Home</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="welcome.jsp">Manage Test</a>
        <a class="nav-link active mx-0 mx-md-3 fs-6 font-weight-bold" aria-current="page" href="Technician.jsp">Manage Technician</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Doctor.jsp">Manage Doctor</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Appointment.jsp">Manage Appointment</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Patient.jsp">Manage Patient</a>
                
      </div>
    </div>
  </div>
</nav>



<div class="container-fluid">
    <ul class="nav nav-tabs mt-2 px-4  bg-secondary pt-1">
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="Technician">Store</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="search-update-technician.jsp">Search Specific & Update</a>
  </li>
  <li class="nav-item">
    <a class="bg-dark text-white nav-link active" href="add-technician.jsp">Add</a>
  </li>
  <li class="nav-item">
  </li>
</ul>
    <br/>
    <br/>
		<div class="form-group p-5 mx-5 mb-4 bg-light">
        <h3>Register Technician</h3>
        <br/>
        <p>${message}</p>
        <br/>
        <form method="post" action="technicianController">
            <br/>
            <label for="technicianName">Technician Name:</label>
            <input type="text" class="form-control" id="technicianName" name="technicianName"/>
            <br/>
            <br/>
            <label for="technicianSpecialization">Specialization:</label>
            <input type="text" class="form-control" id="technicianSpecialization" name="technicianSpecialization"/>
            <input type="hidden" name="type" value="add"/>
            <br/>
            <br/>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>
</div>
</body>
</html>
