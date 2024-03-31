<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Add Result</title>
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
        <a class="nav-link active mx-0 mx-md-3  fw-bold fs-7 mt-3" href="Home.jsp">Home</a>
        <a class="nav-link mx-0 mx-md-3 fw-bold fs-7 mt-3" href="TestResult.jsp">Manage Test Result</a>
       
                
      </div>
    </div>
  </div>
</nav>
<div class="container-fluid">
       <ul class="nav nav-tabs mt-4 px-10  bg-primary pt-10">
        <li class="nav-item">
            <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link " href="TestResult">VIEW</a>
        </li>
        
        <li class="nav-item">
            <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link " href="search-update-result.jsp">SEARCH & UPDATE</a>
        </li>
        <li class="nav-item">
            <a class="bg-dark text-white fw-bold fs-7 mt-3 nav-link active" href="add-result.jsp">ADD</a>
        </li>
        
  </ul>
		<br/>
		<br/>
		<div class="container form-group p-5 mx-auto mb-2 bg-light border border-primary border-4" style="max-width: 800px;">
		
		<div class="container">
			  <h3> <center><b> ADD RESULTS</b> </center></h3>
			<br/>
        <div class="container">
            <form method="post" action="testResultController">
                <div class="mb-3">
                    <label for="appointmentID" class="form-label"><b>Appointment ID:</b></label>
                    <input type="text" class="form-control" id="appointmentID" name="appointmentID"/>
                </div>
                <div class="mb-3">
                    <label for="result" class="form-label"><b>Result:</b></label>
                    <input type="text" class="form-control" id="result" name="result"/>
                </div>
                <div class="mb-3">
                    <label for="report" class="form-label"><b>Report:</b></label>
                    <!-- Assuming the report is uploaded as a file -->
                    <input type="file" class="form-control" id="report" name="report"/>
                </div>
                <div class="mb-3">
                    <label for="doctorName" class="form-label"><b>Doctor Name:</b></label>
                    <select class="form-select" id="doctorName" name="doctorName">
                    <option value="Dr. Viqar Manzoor">Dr. Viqar Manzoor</option>
                    <option value="Dr. Rownaq Rasool">Dr. Rownaq Rasool</option>
                    <option value="Dr. Faroq Amin Beg">Dr. Faroq Amin Beg</option>
                    <option value="Dr. Atif Raja">Dr. Atif Raja</option>
                    <option value="Dr. M R Attri Attri">Dr. M R Attri Attri</option>
                </select>
                </div>
                <div class="mb-3">
                    <label for="technicianName" class="form-label"><b>Technician Name:</b></label>
                    <select class="form-select" id="technicianName" name="technicianName">
                    <option value="Mark Patel">Mark Patel</option>
                    <option value="Dr. Rachel Sinclair">Dr. Rachel Sinclair</option>
                    <option value="Emily Nguyen">Emily Nguyen</option>
                    <option value="Javier Rodriguez">Javier Rodriguez</option>
                    <option value="Sarah Johnson">Sarah Johnson</option>
                </select>
                </div>
                <input type="hidden" name="type" value="add"/>
                <button type="submit" class="btn btn-primary">ADD</button>
            </form>
        </div>
    </div>
     </div>
</body>
</html>
