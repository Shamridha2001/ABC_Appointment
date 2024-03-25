<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC LAB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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

<div class="container-fluid mt-2">

<ul class="nav nav-tabs mt-2 px-4  bg-secondary pt-1">
  <li class="nav-item">
    <a class="bg-dark text-white nav-link active" href="Appointment">Appointments</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link" href="search-update-appointment.jsp">Search </a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link" href="add-appointment.jsp">Add</a>
  </li>
</ul>
    
    <br/>
    <p>${message}</p>
    <br/>
     <div class="form-group p-5 mx-5 mb-4 ">
 	<div class=" p-5 mx-5 bg-info">
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr class="table-dark">
                    <th>Appointment ID</th>
                    <th>User Name</th>
                    <th>Appointment Date</th>
                    <th>Test Name</th>
                    <th>Appointment Request</th>
                    <th>Cancel Appointment</th>
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
                            <form method="post" action="appointmentController">
                                <input type="hidden" name="appointmentID" value="${appointment.appointmentID}"/>
                                <input type="hidden" name="type" value="delete"/>
                                <button type="submit" class="btn btn-danger">Cancel</button>
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
