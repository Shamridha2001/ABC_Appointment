<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script>
    function displayErrorMessage(message) {
        var errorMessageDiv = document.getElementById("errorMessage");
        errorMessageDiv.innerText = message;
        errorMessageDiv.style.display = "block";
    }
</script>
<style>
    .login-container {
        max-width: 400px;
        margin: auto;
        padding: 20px;
        margin-top: 100px;
    }
   
    body {
        background-image: url('img/recep.jpg');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
    }

    body {
        background-image: url('img/doc img.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh;
    }

    .navbar-nav a {
        font-size: 18px; /* Increase font size for navbar links */
    }

    .register-button {
        width: 100px;
    }

    .center {
        margin: auto;
        display: block;
    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
    <img style="border-radius:80%;width: 200px;height: 100px; margin:0 10px 0 50px " alt="" src="img/logoabc.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: red;"></p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
          <a class="nav-link mx-0 mx-md-3 fs-6" href="MainHome.jsp">Home</a>
          
      </div>
    </div>
  </div>
</nav>

<div class="container">
    <div class="col-md-6 login-container">
        <h1 class="text-center mb-4"><b>PATIENT LOGIN</b></h1>
        <form action="patientLoginController" method="post">
            <div class="mb-3">
                <label for="username" class="form-label"><b>Username</b></label>
                <input type="text" name="username" class="form-control" id="username" placeholder="Enter your username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label"><b>Password</b></label>
                <input name="password" type="password" class="form-control" id="password" placeholder="Enter your password">
            </div>
            <input type="submit" class="btn btn-primary btn-block register-button center" value="LOGIN" onclick="return validateForm()">
        </form>
        <p class="text-center mt-3"><a href="Patientregister.jsp">REGISTER</a></p>
    </div>
</div>

<script>
    function validateForm() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
            
        // If the username or password is empty, display an error message
        if (username.trim() === "" || password.trim() === "") {
            displayErrorMessage("Username and password are required.");
            return false;
        }
            
        // If no validation errors, submit the form
        return true;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
