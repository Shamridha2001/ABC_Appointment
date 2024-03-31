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
        <a class="nav-link mx-0 mx-md-3  fs-6" href="ReceptionistDashboard.jsp">Home</a>
        <a class="nav-link active mx-0 mx-md-3 fs-6 " aria-current="page" href="welcome.jsp">Manage Test</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Technician.jsp">Manage Technician</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Doctor.jsp">Manage Doctor</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Appointment.jsp">Manage Appointment</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="Patient.jsp">Manage Patient</a>
                
      </div>
    </div>
  </div>
</nav>





<div class="container-fluid mt-2">

<ul class="nav nav-tabs mt-2 px-4  bg-secondary pt-1">
  <li class="nav-item">
    <a class="bg-dark text-white nav-link active" href="Test">Store</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="search-update-test.jsp">Search Specific & Update</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="add-Test.jsp">Add</a>
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
                    <th>Test Code</th>
                    <th>Test Name</th>
                    <th>Price [LKR]</th>
                    
                    <th>Remove from Store!</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="test" items="${testList}">
                    <tr>
                        <td>${test.testid}</td>
                        <td>${test.name}</td>
                        <td>${test.price}</td>
                        
                        <td>
                            <form method="post" action="test">
                                <input type="hidden" name="testid" value="${test.testid}"/>
                                
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
     <div class="container-fluid">
         <ul class="nav nav-tabs mt-2 px-4  bg-secondary pt-1">
  <li class="nav-item">
    <a class="bg-dark text-white nav-link active" href="Test">Store</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="search-update-test.jsp">Search Specific & Update</a>
  </li>
  <li class="nav-item">
    <a class="bg-secondary text-white nav-link " href="add-Test.jsp">Add</a>
  </li>
  <li class="nav-item">
  </li>
</ul>
        <br/>
        <br/>
        <div class="container form-group p-5 mx-5 mb-4 bg-light">
            <h3>Search Test-----------------</h3>
            <br/>
            <form method="get" action="viewtestController">
            <div class="form-group">
                Enter Test ID: <input type="text" name="testid">
                <input type="hidden" name="type" value="specific">
                <button type="submit" class="btn btn-info">Search</button>            
            </form>
                        
            <br/>
            <p>${searchResult}</p>
            <br/>
            <h3>Edit Test-----------------</h3>
            <br/>
            <form method="post" action="viewtestController">
                <label for="testid">Test ID:</label>
                <input type="text" readonly class="form-control" id="testid" name="testid" value="${not empty test ? test.testid : ''}"/>
                <br/>
                <label for="testName">Test Name:</label>
                <input type="text" class="form-control" id="testName" name="testName"  value="${not empty test ? test.name : ''}"/>
                <br/>
                <label for="testPrice">Price:</label>
                <input type="number" class="form-control" id="testPrice" name="testPrice"  value="${not empty test ? test.price : ''}"/>
                <input type="hidden" name="type" value="update"/>
                <br/>
                         
            </form>     
        </div> 
             
</div>
<br/>
</body>
</html>