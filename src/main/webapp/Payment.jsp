<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>KFC Colombo</title>
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
        <a class="nav-link active mx-0 mx-md-3 fs-6" aria-current="page" href="PAGE"></a>
       
        
        <a class="nav-link mx-0 mx-md-3 fs-6" href="add-appointment.jsp">Make Appointment</a>  
        <a class="nav-link mx-0 mx-md-3 fs-6" href="add-payment.jsp">Make Payment</a>  
        <a class="nav-link mx-0 mx-md-3 fs-6" href="TestResult.jsp">View Test Result</a>      
      </div>
    </div>
  </div>
</nav>
<div class="container-fluid">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Store</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="search-update-payment.jsp">Search Specific & Update</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="add-payment.jsp">Add Payment</a>
        </li>
    </ul>
    <br/>
    <p>${message}</p>
    <br/>
    <div class="form-group p-5 mx-5 mb-4 ">
 	<div class=" p-5 mx-5 bg-info">
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr class="table-dark">
                    <th>Payment ID</th>
                    <th>Patient ID</th>
                    <th>Amount [LKR]</th>
                    <th>Payment Date</th>
                    <th>Cardholder Name</th>
                    <th>Card Number</th>
                    <th>Expiry Date</th>
                    <th>CVC Number</th>
                    <th>Remove from Store</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="payment" items="${paymentList}">
                    <tr>
                        <td>${payment.idPayment}</td>
                        <td>${payment.patientID}</td>
                        <td>${payment.amount}</td>
                        <td>${payment.paymentDate}</td>
                        <td>${payment.cardholderName}</td>
                        <td>${payment.cardNo}</td>
                        <td>${payment.exDate}</td>
                        <td>${payment.cvcNo}</td>
                        <td>
                            <form method="post" action="paymentController">
                                <input type="hidden" name="paymentId" value="${payment.idPayment}"/>
                                <input type="hidden" name="type" value="delete"/>
                                <button type="submit" class="btn btn-danger">Remove</button>
                            </form>
                            <form action="receipt.jsp" method="get">
        					<button type="submit">Get Receipt</button>
    						</form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    </div>
    </div>
</div>
<br/>
</body>
</html>
