<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
    <a class="bg-dark text-white fw-bold fs-7 mt-3 nav-link active" href="PatientAppointment">VIEW</a>
  </li>
  <li class="nav-item">
    <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link " href="search_PatientAppointment.jsp">SEARCH & UPDATE </a>
  </li>
  <li class="nav-item">
    <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link " href="add_PatientAppointment.jsp">ADD</a>
  </li>
</ul>
    
  <br/>
    <p>${message}</p>
    <br/>
    <div class="container form-group p-5 mx-auto mb-2 bg-light border border-primary border-4" style="max-width: 1200px;">
        <table class="table table-striped">
            <thead>
                <tr class="table-primary">
                    <th><b>Appointment ID</b></th>
                    <th><b>User Name</b></th>
                    <th><b>Appointment Date</b></th>
                    <th><b>Test Name</b></th>
                    <th><b>Appointment Request</b></th>
                    <th><b>Cancel Appointment</b></th>
                    <th><b>Make Payment</b></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="appointment" items="${appointmentList}">
                    <tr>
                        <td>${appointment.appointmentID}</td>
                        <td>${appointment.userName}</td>
                        <td>${appointment.appointmentDate}</td>
                        <td>${appointment.testName}</td>
                        <td>${appointment.appointmentRequest}</td>
                        <td>
                            <form method="post" action="patientappointmentController">
                                <input type="hidden" name="appointmentID" value="${appointment.appointmentID}"/>
                                <input type="hidden" name="type" value="delete"/>
                                <button type="submit" class="btn btn-danger">CANCEL</button>
                            </form>
                        </td>
                        <td>
    						<form method="post" action="add-payment.jsp">
        					<input type="hidden" name="appointmentID" value="${appointment.appointmentID}"/>
       						 <button type="submit" class="btn btn-primary">Make Payment</button>
    							</form>
						</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    </div>
    </div>
</div>
<br/>
</body>
</html>
