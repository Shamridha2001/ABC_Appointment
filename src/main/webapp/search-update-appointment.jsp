<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>kfc colombo</title>
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="Appointment">Patients</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="add-appointment.jsp">add</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="search-update-appointment.jsp">Search Specific & Update</a>
        </li>
        
       
    </ul>
    <br/>
  
           <div class="container">
        <h3>Search Appointment-----------------</h3>
        <br/>
        <form method="get" action="appointment">
            <label for="appointmentID">Appointment ID: </label>
            <input type="number" class="form-control" id="appointmentID" name="appointmentID"/>
            <input type="hidden" name="type" value="specific"/>
            <br/>
            <button type="submit" class="btn btn-info">Search</button>
        </form>

        <br/>
        <p>${message}</p>
        <br/>
        <h3>Edit Appointment-----------------</h3>
        <br/>
        <br/>
        <form method="post" action="appointment">
            <label for="appointmentID">Appointment ID:    </label>
            <input type="text" readonly class="form-control" id="appointmentID" name="appointmentID" value="${appointment.appointmentID}"/>
            <br/>
            <br/>
            <label for="username">UserName:    </label>
            <input type="text" class="form-control" id="username" name="username"  value="${appointment.username}"/>
            <br/>
            <br/>
            <label for="appointmentDate">Appointment Date:    </label>
            <input type="date" class="form-control" id="appointmentDate" name="appointmentDate"  value="${appointment.appointmentDate}"/>
            <br/>
            <br/>
            <label for="testName">Test Name:    </label>
            <input type="text" class="form-control" id="testName" name="testName"  value="${appointment.testName}"/>
            <br/>
            <label for="doctorName">Doctor Name:    </label>
            <input type="text" class="form-control" id="doctorName" name="doctorName"  value="${appointment.doctorName}"/>
            <br/>
            <br/>
            <label for="appointmentRequest">Appointment Request:    </label>
            <input type="text" class="form-control" id="appointmentRequest" name="appointmentRequest"  value="${appointment.appointmentRequest}"/>
            <input type="hidden" name="type" value="update"/>
            <br/>
            <br/>
            <button type="submit" class="btn btn-warning">Update</button>
        </form>
    </div>
</div>
</body>
</html>