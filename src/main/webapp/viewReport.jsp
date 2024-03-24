<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Report</title>
</head>
<body>
    <h1>View Report</h1>
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
