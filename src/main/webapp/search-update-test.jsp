<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Search and Update Test</title>
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
        <a class="nav-link mx-0 mx-md-3  fs-6" href="ReceptionistDashboard.jsp">Home</a>
        <a class="nav-link active mx-0 mx-md-3 fs-6" aria-current="page" href="welcome.jsp">Manage Test</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Technician.jsp">Manage Technician</a>
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
    <a class="bg-dark text-white nav-link active" href="Test">Store</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="search-update-test.jsp">Search Specific & Update</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="add-Test.jsp">Add</a>
  </li>
  <li class="nav-item">
  </li>
</ul>
        <br/>
        <br/>
        <div class="container form-group p-5 mx-5 mb-4 bg-light">
            <h3>Search Test-----------------</h3>
            <br/>
            <form method="get" action="testController">
            <div class="form-group">
                Enter Test ID: <input type="text" name="testid">
                <input type="hidden" name="type" value="specific">
                <button type="submit" class="btn btn-info">Search</button>            
            </form>
                        
            <br/>
            <p>${searchResult}</p>
            <br/>
            <h3>Edit Test-----------------</h3>
            <br/>
            <form method="post" action="testController">
                <label for="testid">Test ID:</label>
                <input type="text" readonly class="form-control" id="testid" name="testid" value="${not empty test ? test.testid : ''}"/>
                <br/>
                <label for="testName">Test Name:</label>
                <input type="text" class="form-control" id="testName" name="testName"  value="${not empty test ? test.name : ''}"/>
                <br/>
                <label for="testPrice">Price:</label>
                <input type="number" class="form-control" id="testPrice" name="testPrice"  value="${not empty test ? test.price : ''}"/>
                <input type="hidden" name="type" value="update"/>
                <br/>
                <button type="submit" class="btn btn-warning">Update</button>            
            </form>     
        </div>      
    </div>
</body>
</html>