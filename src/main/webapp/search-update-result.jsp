<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search and Update Test Result</title>
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
        <h1>Search and Update Test Result</h1>
        <br/>
        <div class="container">
            <h3>Search Test Result</h3>
            <form method="get" action="testResultController">
                <div class="mb-3">
                    <label for="resultID" class="form-label">Result ID:</label>
                    <input type="text" class="form-control" id="resultID" name="resultID">
                </div>
                <input type="hidden" name="type" value="specific">
                <button type="submit" class="btn btn-info">Search</button>            
            </form>
            <br/>
            <p>${searchResult}</p>
            <br/>
            <h3>Edit Test Result</h3>
            <form method="post" action="testResultController">
                <div class="mb-3">
                    <label for="resultID" class="form-label">Result ID:</label>
                    <input type="text" readonly class="form-control" id="resultID" name="resultID" value="${not empty testResult ? testResult.resultID : ''}"/>
                </div>
                <div class="mb-3">
                    <label for="appointmentID" class="form-label">Appointment ID:</label>
                    <input type="text" class="form-control" id="appointmentID" name="appointmentID"  value="${not empty testResult ? testResult.appointmentID : ''}"/>
                </div>
                <div class="mb-3">
                    <label for="result" class="form-label">Result:</label>
                    <input type="text" class="form-control" id="result" name="result"  value="${not empty testResult ? testResult.result : ''}"/>
                </div>
                <input type="hidden" name="type" value="update"/>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>         
        </div>      
    </div>
    </div>
</body>
</html>
