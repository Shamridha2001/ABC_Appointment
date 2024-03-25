<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Search and Update Payment</title>
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
                <a class="nav-link" href="Payment">Store</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Search Specific & Update</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="add-payment.jsp">Add</a>
            </li>
        </ul>
         <br/>
        <br/>
        <div class="form-group p-5 mx-5 mb-4 ">
 		<div class=" p-5 mx-5">
 		<div class=" p-5 mx-5 bg-info">
        <div class="container ">
        <div class="row">
    		<div class="col-md-12 text-center">
                        <h3 class="text-center">Search Payment</h3>
                        </div>
  		</div>
                        <br/>
                        <form method="get" action="paymentController">
                            Enter Payment ID: <input type="text" name="paymentId">
                            <input type="hidden" name="type" value="specific">
                            <button type="submit" class="btn btn-info">Search</button>            
                        
        </form>
        <br/>
        <p class="text-center">${searchResult}</p>
        <br/>
        
                        
                        <h3 class="text-center">Edit Payment</h3>
                        <br/>
                        <form method="post" action="paymentController">
                            <label for="paymentId">Payment ID:</label>
                            <input type="text" readonly class="form-control" id="paymentId" name="paymentId" value="${not empty payment ? payment.idPayment : ''}"/>
                            <br/>
                            <label for="patientId">Patient ID:</label>
                            <input type="text" class="form-control" id="patientId" name="patientId"  value="${not empty payment ? payment.patientID : ''}"/>
                            <br/>
                            <label for="amount">Amount:</label>
                            <input type="number" class="form-control" id="amount" name="amount"  value="${not empty payment ? payment.amount : ''}"/>
                            <br/>
                            <label for="paymentDate">Payment Date:</label>
                            <input type="date" class="form-control" id="paymentDate" name="paymentDate"  value="${not empty payment ? payment.paymentDate : ''}"/>
                            <br/>
                            <label for="cardholderName">Cardholder Name:</label>
                            <input type="text" class="form-control" id="cardholderName" name="cardholderName"  value="${not empty payment ? payment.cardholderName : ''}"/>
                            <br/>
                            <label for="cardNo">Card Number:</label>
                            <input type="text" class="form-control" id="cardNo" name="cardNo"  value="${not empty payment ? payment.cardNo : ''}"/>
                            <br/>
                            <label for="exDate">Expiry Date:</label>
                            <input type="text" class="form-control" id="exDate" name="exDate"  value="${not empty payment ? payment.exDate : ''}"/>
                            <br/>
                            <label for="cvcNo">CVC Number:</label>
                            <input type="number" class="form-control" id="cvcNo" name="cvcNo"  value="${not empty payment ? payment.cvcNo : ''}"/>
                            <input type="hidden" name="type" value="update"/>
                            <br/>
                            <button type="submit" class="btn btn-warning">Update</button>            
                        </form>     
                    </div>
                </div>
           </div>
  		</div>  
    </div>
</body>
</html>
