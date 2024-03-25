
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>Add Patient</title>
     <style>
        .container-bg {
            background-color: #B0E0E6 ;
        }
          .navbar {
            background-color: #B0E0E6;
        }
         
        
        
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg  " >
  <div class="container-fluid" >
    <img style="border-radius:50%;width: 70px;height: 70px; margin:0 10px 0 50px " alt="" src="img/logoabc.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: red;"></p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
        <a class="nav-link mx-0 mx-md-3  fs-6 " href="MainHome.jsp">Home</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Patientlogin.jsp">Login</a>

                
      </div>
    </div>
  </div>
</nav>


<div class="container-fluid">
  

    <br/>
    <br/>
 	<div class="form-group p-5 mx-5 mb-4 ">
 	<div class=" p-5 mx-5">
 	<div class=" p-5 mx-5 bg-info">
    
    <div class="container ">
    <div class="row">
    	<div class="col-md-12 text-center">
        	<h1>REGISTER PATIENT</h1>
    	</div>
  	</div>
        <br/>
        
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
</div>
</div>
</div>
</body>
</html>