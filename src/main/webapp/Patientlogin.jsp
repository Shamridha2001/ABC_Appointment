<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Login</title>
<script>
    function displayErrorMessage(message) {
        var errorMessageDiv = document.getElementById("errorMessage");
        errorMessageDiv.innerText = message;
        errorMessageDiv.style.display = "block";
    }
</script>
<style>
    body {
      background-image: url('img/doc img.jpg'); /* Replace 'your-image.jpg' with the path to your background image */
      background-size: cover; /* Ensure the image covers the entire background */
      background-position: center; /* Center the background image */
      background-repeat: no-repeat; /* Prevent the background image from repeating */
      height: 100vh; /* Set the height to 100% of the viewport height */
    }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light  " >
  <div class="container-fluid " >
    <img style="border-radius:50%;width: 70px;height: 70px; margin:0 10px 0 50px " alt="" src="img/logo.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: red;">Logo name</p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
              <a class="nav-link mx-0 mx-md-3 fs-6" href="H_home.jsp">Home</a>
       <a class="nav-link active mx-0 mx-md-3 fs-6" aria-current="page" href="H_doctor.jsp">Doctor</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="ReceptionistLogin.jsp">Receptionist</a>
        <a class="nav-link mx-0 mx-md-3 fs-6" href="TechnicianLogin.jsp">Technician</a>
        
      </div>
    </div>
  </div>
</nav>

    <h2>Patient Login</h2>
    <form action="patientLoginController" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login" onclick="return validateForm()">
        
        <div id="errorMessage" style="display: none; color: red;"></div>
    </form>
    <p><a href="Patientregister.jsp">Register</a></p>

    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            
            // You can add client-side validation if needed
            
            // If the username or password is empty, display an error message
            if (username.trim() === "" || password.trim() === "") {
                displayErrorMessage("Username and password are required.");
                return false;
            }
            
            // If no validation errors, submit the form
            return true;
        }
    </script>
</body>
</html>
