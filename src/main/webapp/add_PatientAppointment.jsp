<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Add Appointment</title>
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
 <a class="nav-link active mx-0 mx-md-3  fw-bold fs-7 mt-3" href="PatientDashboard.jsp">Home</a>
                
      </div>
    </div>
  </div>
</nav>

<div class="container-fluid">
               <ul class="nav nav-tabs mt-4 px-10  bg-primary pt-10">
  <li class="nav-item">
    <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link active" href="PatientAppointment">VIEW</a>
  </li>
  <li class="nav-item">
    <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link " href="search_PatientAppointment.jsp">SEARCH & UPDATE </a>
  </li>
  <li class="nav-item">
    <a class="bg-dark text-white fw-bold fs-7 mt-3 nav-link " href="add_PatientAppointment.jsp">ADD</a>
  </li>
   </ul>
		<br/>
		<br/>
		<div class="container form-group p-5 mx-auto mb-2 bg-light border border-primary border-4" style="max-width: 800px;">
		
		<div class="container">
			  <h3> <center><b> SCHEDULE APPOINTMENT</b> </center></h3>
			<br/>
                <form method="post" action="patientappointmentController">
                    <br/>
                    <label for="userName"><b>User Name:</b></label>
                    <input type="text" class="form-control mt-2" id="userName" name="userName"/>
                    <br/>
                    <label for="appointmentDate"><b>Appointment Date:</b></label>
                    <input type="date" class="form-control mt-2" id="appointmentDate" name="appointmentDate"/>
                    <br/>
                    <label for="testName"><b>Test Name:</b></label>
                    <input type="text" class="form-control mt-2" id="testName" name="testName"/>
                    <br/>
                    <label for="appointmentRequest"><b>Appointment Request:</b></label>
                    <textarea class="form-control mt-2" id="appointmentRequest" name="appointmentRequest"></textarea>
                    <input type="hidden" name="type" value="add"/>
                    <br/>
                    <button type="submit" class="btn btn-primary">SCHEDULE</button>         
                </form>     
            </div>      
        </div>
    </div>
</div>
</body>
</html>
