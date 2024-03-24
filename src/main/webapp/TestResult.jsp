<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Results</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="TestResult">"TestResult"</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="add-result.jsp">add</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="search-update-result.jsp">Search Specific & Update</a>
        </li>
        
       
    </ul>
    <div class="container-fluid">
        <h1>Test Results</h1>
        <br/>
        <p>${message}</p>
        <br/>
        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr class="table-dark">
                        <th>Result ID</th>
                        <th>Appointment ID</th>
                        <th>Result</th>
                        <th>Report</th>
                        <th>Doctor Name</th>
                        <th>Technician Name</th>
                        <th>Remove from Store</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="testResult" items="${testResultList}">
                        <tr>
                            <td>${testResult.resultID}</td>
                            <td>${testResult.appointmentID}</td>
                            <td>${testResult.result}</td>
                            <td><a href="viewReport.jsp?resultID=${testResult.resultID}">Report</a></td>
                            <td>${testResult.doctorName}</td>
                            <td>${testResult.technicianName}</td>
                            <td>
                                <form method="post" action="testResultController">
                                    <input type="hidden" name="resultID" value="${testResult.resultID}"/>
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
    </div>
</body>
</html>
