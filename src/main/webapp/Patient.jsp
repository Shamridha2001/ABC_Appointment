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
            <a class="nav-link active" aria-current="page" href="Patient">Patients</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="add-patient.jsp">add</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="search-update-patient.jsp">Search Specific & Update</a>
        </li>
        
       
    </ul>
    <br/>
    <p>${message}</p>
    <br/>
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr class="table-dark">
                    <th>Patient ID</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Contact Number</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Medical Problems</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Remove Patient</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="patient" items="${patientList}">
                    <tr>
                        <td>${patient.patientId}</td>
                        <td>${patient.name}</td>
                        <td>${patient.dateOfBirth}</td>
                        <td>${patient.gender}</td>
                        <td>${patient.contactNumber}</td>
                        <td>${patient.email}</td>
                        <td>${patient.address}</td>
                        <td>${patient.medicalProblems}</td>
                        <td>${patient.username}</td>
                        <td>${patient.password}</td>
                        <td>
                            <form method="post" action="patientController">
                                <input type="hidden" name="patientId" value="${patient.patientId}"/>
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