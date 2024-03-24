<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Patient Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
    <p>${message}</p>
    <br/>
     <div class="container">
        <table class="table table-stripped">
            <thead>
            <tr class="table-dark">
                <th>Appointment ID</th>
                <th>UserName</th>
                <th>Appointment Date</th>
                <th>Test Name</th>
                <th>Doctor Name</th>
                <th>Appointment Request</th>
                <th>Remove Appointment</th>
                <th>Payment</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="appointment" items="${appointmentList}">
                <tr>
                    <td>${appointment.appointmentID}</td>
                    <td>${appointment.userName}</td>
                    <td>${appointment.appointmentDate}</td>
                    <td>${appointment.testName}</td>
                    <td>${appointment.doctorName}</td>
                    <td>${appointment.appointmentRequest}</td>
                    <td>
                        <form method="post" action="appointment">
                            <input type="hidden" name="appointmentID" value="${appointment.appointmentID}"/>
                            <input type="hidden" name="type" value="delete"/>
                            <button type="submit" class="btn btn-danger">Remove</button>
                        </form>
                    </td>
                    <td>
                        <form action="Payment.jsp">
   					 	<input type="submit" value="Pay">
   					 	
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