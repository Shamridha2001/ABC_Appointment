<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search and Update Test</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
        <a class="nav-link active mx-0 mx-md-3  fw-bold fs-7 mt-3" href="Home.jsp">Home</a>
        <a class="nav-link mx-0 mx-md-3 fw-bold fs-7 mt-3" href="TestResult.jsp">Manage Test Result</a>
       
                
      </div>
    </div>
  </div>
</nav>
<div class="container-fluid">
       <ul class="nav nav-tabs mt-4 px-10  bg-primary pt-10">
        <li class="nav-item">
            <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link " href="TestResult">VIEW</a>
        </li>
        
        <li class="nav-item">
            <a class="bg-dark text-white fw-bold fs-7 mt-3 nav-link " href="search-update-result.jsp">SEARCH & UPDATE</a>
        </li>
        <li class="nav-item">
            <a class="bg-primary text-white fw-bold fs-7 mt-3 nav-link active" href="add-result.jsp">ADD</a>
        </li>
        
  </ul>
     <div>
        <div class="container form-group p-5 mx-auto mb-2 bg-light border border-primary border-4" style="max-width: 800px;">
            <h3><center>Search Test Result</center></h3>
            <br/>
            <form method="get" action="testResultController">
                <div class="form-group">
    		  <label for="resultID">Enter Test Result ID:</label>
                    <input type="text" name="resultID" class="form-control mt-2" placeholder="Enter Test Result ID">
                    <input type="hidden" name="type" value="specific">
                    <button type="submit" class="btn btn-primary mt-4">Search</button>
  			   </form>
        </div>
        <br/>
        <p>${searchResult}</p>
        <br/>
            <h3>Edit Test Result</h3>
            <br/>
            <form method="post" action="testResultController">
                <label for="resultID">Result ID:</label>
                <input type="text" readonly class="form-control" id="resultID" name="resultID" value="${not empty testResult ? testResult.resultID : ''}"/>
                <br/>
                <label for="appointmentID">Appointment ID:</label>
                <input type="text" class="form-control" id="appointmentID" name="appointmentID"  value="${not empty testResult ? testResult.appointmentID : ''}"/>
                <br/>
                <label for="result">Result:</label>
                <input type="text" class="form-control" id="result" name="result"  value="${not empty testResult ? testResult.result : ''}"/>
                <br/>
                <label for="doctorName">Doctor Name:</label>
                <input type="text" class="form-control" id="doctorName" name="doctorName"  value="${not empty testResult ? testResult.doctorName : ''}"/>
                <br/>
                <label for="technicianName">Technician Name:</label>
                <input type="text" class="form-control" id="technicianName" name="technicianName"  value="${not empty testResult ? testResult.technicianName : ''}"/>
                <input type="hidden" name="type" value="update"/>
                <br/>
                           
            </form>     
        </div>      
        </div>      
    </div>
</body>
</html>
