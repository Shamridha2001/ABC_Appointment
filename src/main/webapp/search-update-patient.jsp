<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Search  Patient</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-info border border-primary " >
  <div class="container-fluid" >
    <img style="border-radius:50%;width: 100px;height: 100px; margin:0 10px 0 50px " alt="" src="img/logoabc.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: black;">ABC LAB</p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
        <a class="nav-link mx-0 mx-md-3  fw-bold fs-7 mt-3" href="AdministratorDashboard.jsp">Home</a>
        <a class="nav-link  mx-0 mx-md-3 fw-bold fs-7 mt-3" aria-current="page" href="Test.jsp">Manage Test</a>
        <a class="nav-link mx-0 mx-md-3 fw-bold fs-7 mt-3" href="Technician.jsp">Manage Technician</a>
        <a class="nav-link mx-0 mx-md-3 fw-bold fs-7 mt-3" href="Doctor.jsp">Manage Doctor</a>
        <a class="nav-link mx-0 mx-md-3 fw-bold fs-7 mt-3" href="Appointment.jsp">Manage Appointment</a>
        <a class="nav-link active mx-0 mx-md-3 fw-bold fs-7 mt-3" href="Patient.jsp">Manage Patient</a>
                
      </div>
    </div>
  </div>
</nav>
    <div class="container-fluid">
        <ul class="nav nav-tabs mt-4 px-10  bg-primary pt-10">
            <li class="nav-item">
                <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link active" href="Patient">VIEW</a>
            </li>
             <li class="nav-item">
                <a class="bg-dark text-white fw-bold fs-7 mt-3 nav-link " aria-current="page" href="#">SEARCH & UPDATE</a>
            </li>
            <li class="nav-item">
                <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link " href="add-patient.jsp">ADD</a>
            </li>
           
           
        </ul>
        <br/>
        <br/>
        <div class="container form-group p-5 mx-auto mb-2 bg-light border border-primary border-4" style="max-width: 800px;">
            <h3><center>Search Patient </center></h3>
            <br/>
            <form method="get" action="patientController">
            <div class="form-group">
                Enter Patient ID: <input type="text" name="patientId">
                <input type="hidden" name="type" value="specific">
                <button type="submit" class="btn btn-info">Search</button>            
            </form>
                        
            <br/>
            <p>${searchResult}</p>
            <br/>
            <h3><center>Details</center></h3>
            <br/>
            <form method="post" action="patientController">
                <label for="patientId">Patient ID:</label>
                <input type="text" readonly class="form-control" id="patientId" name="patientId" value="${not empty patient ? patient.patientId : ''}"/>
                <br/>
                <label for="patientName">Patient Name:</label>
                <input type="text" class="form-control" id="patientName" name="patientName"  value="${not empty patient ? patient.name : ''}"/>
                <br/>
                <label for="dateOfBirth">Date of Birth:</label>
                <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth"  value="${not empty patient ? patient.dateOfBirth : ''}"/>
                <br/>
                <label for="gender">Gender:</label>
                <select class="form-select" id="gender" name="gender">
                    <option value="Male" ${not empty patient && patient.gender == 'Male' ? 'selected' : ''}>Male</option>
                    <option value="Female" ${not empty patient && patient.gender == 'Female' ? 'selected' : ''}>Female</option>
                    <option value="Other" ${not empty patient && patient.gender == 'Other' ? 'selected' : ''}>Other</option>
                </select>
                <br/>
                <label for="contactNumber">Contact Number:</label>
                <input type="text" class="form-control" id="contactNumber" name="contactNumber"  value="${not empty patient ? patient.contactNumber : ''}"/>
                <br/>
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email"  value="${not empty patient ? patient.email : ''}"/>
                <br/>
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address"  value="${not empty patient ? patient.address : ''}"/>
                <br/>
                <label for="medicalProblems">Medical Problems:</label>
                <input type="text" class="form-control" id="medicalProblems" name="medicalProblems"  value="${not empty patient ? patient.medicalProblems : ''}"/>
                <br/>
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username"  value="${not empty patient ? patient.username : ''}"/>
                <br/>
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password" name="password"  value="${not empty patient ? patient.password : ''}"/>
                
                <br/>
                
            </form>     
        </div>      
    </div>
</body>
</html>