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
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
  <div class="container-fluid" >
    <img style="border-radius:50%;width: 70px;height: 70px; margin:0 10px 0 50px " alt="" src="img/logoabc.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: red;"></p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
        <a class="nav-link active mx-0 mx-md-3 fs-6" aria-current="page" href="DoctorDashbord.jsp"></a>
        <a class="nav-link mx-0 mx-md-3  fs-6" href="Home.jsp">Home</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="TestResult.jsp">Manage Testresult</a>
                
      </div>
    </div>
  </div>
</nav>
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
