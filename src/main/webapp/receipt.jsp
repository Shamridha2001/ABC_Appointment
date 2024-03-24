<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Receipt</title>
</head>
<body>
    <h2>Receipt</h2>
    
    <table border="1">
        <tr>
            <th>Payment ID</th>
            <th>Patient ID</th>
            <th>Amount</th>
            <th>Payment Date</th>
            <th>Cardholder Name</th>
            <th>Card Number</th>
            <th>Expiry Date</th>
            <th>CVC Number</th>
        </tr>
        <tr>
            <td>${payment.paymentId}</td>
            <td>${payment.patientId}</td>
            <td>${payment.amount}</td>
            <td>${payment.paymentDate}</td>
            <td>${payment.cardholderName}</td>
            <td>${payment.cardNo}</td>
            <td>${payment.exDate}</td>
            <td>${payment.cvcNo}</td>
        </tr>
    </table>
</body>
</html>
