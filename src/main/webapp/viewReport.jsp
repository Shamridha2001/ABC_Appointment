<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test</title>
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
        <a class="nav-link mx-0 mx-md-3  fw-bold fs-7 mt-3" href="TechnicianDashboard.jsp">Home</a>
        <a class="nav-link active mx-0 mx-md-3 fw-bold fs-7 mt-3" aria-current="page" href="welcome.jsp">Manage Test Result</a>      
       
                
      </div>
    </div>
  </div>
</nav>

    <div class="container-fluid">
         <ul class="nav nav-tabs mt-4 px-10  bg-primary pt-10">
        <li class="nav-item">
            <a class="bg-dark text-white fw-bold fs-7 mt-3 nav-link active" href="TestResult">BACK</a>
        </li>
        
        
        
       
    </ul>
    </div>
    <% 
        // Retrieve the report URL or file path from the request attribute
        String reportURL = (String) request.getAttribute("reportURL");
    %>
    <% 
        // Check if the reportURL is not null or empty
        if (reportURL != null && !reportURL.isEmpty()) {
    %>
        <iframe src="<%= reportURL %>" width="100%" height="600px"></iframe>
    <% 
        } else {
    %>
        <p>No report available.</p>
    <% 
        }
    %>
</body>
</html>
