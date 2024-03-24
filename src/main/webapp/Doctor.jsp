<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>kfc colombo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Technician.jsp">Manage Technician</a>
        <a class="nav-link active mx-0 mx-md-3 fs-6 font-weight-bold" aria-current="page" href="Doctor.jsp">Manage Doctor</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Appointment.jsp">Manage Appointment</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Patient.jsp">Manage Patient</a>
                
      </div>
    </div>
  </div>
</nav>




<div class="container-fluid">
    <ul class="nav nav-tabs mt-2 px-4  bg-secondary pt-1">
  <li class="nav-item">
    <a class="bg-dark text-white nav-link active" href="Doctor">Store</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="search-update-Doctor.jsp">Search Specific & Update</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="add-Doctor.jsp">Add</a>
  </li>
  <li class="nav-item">
  </li>
</ul>
    <br/>
    <p>${message}</p>
    <br/>
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr class="table-dark">
                    <th>Doctor ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Specialist Type</th>
                    <th>Remove from Store!</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="doctor" items="${doctorList}">
                    <tr>
                        <td>${doctor.doctorID}</td>
                        <td>${doctor.firstName}</td>
                        <td>${doctor.lastName}</td>
                        <td>${doctor.phoneNumber}</td>
                        <td>${doctor.address}</td>
                        <td>${doctor.email}</td>
                        <td>${doctor.specialistType}</td>
                        <td>
                            <form method="post" action="doctorController">
                                <input type="hidden" name="doctorID" value="${doctor.doctorID}"/>
                                <input type="hidden" name="type" value="delete"/>
                                <button type="submit" class="btn btn-danger">Remove</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<br/>
</body>
</html>
