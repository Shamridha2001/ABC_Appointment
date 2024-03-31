<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Technician Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

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


<nav class="navbar navbar-expand-lg navbar-light bg-info border border-primary " >
  <div class="container-fluid" >
    <img style="border-radius:50%;width: 100px;height: 100px; margin:0 10px 0 50px " alt="" src="img/logoabc.jpg">
    <p class="fw-bold fs-4 mt-3" style="color: black;">ABC LAB</p>
    <button style="margin:0 30px;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="margin:0 50px;">
      <div class="navbar-nav" style="#ffff">
        <a class="nav-link mx-0 mx-md-3  fw-bold fs-7 mt-3" href="Home.jsp">Home</a>
        
                
      </div>
    </div>
  </div>
</nav>

<div class="row g-0  position-relative container mt-5">
  <div class="col-md-7 well" style="padding:0 0 0 50px;">
    <div class="container mt-5">
      <h2>TECNICIAN LOGIN</h2>
      <form id="loginForm" action="technicianLoginController" method="post">
        <div class="form-group mt-4">
          <label for="username"><b>Username:</b></label><br>
          <input type="text" id="username" class="form-control" name="username" required><br>
        </div>
        <div class="form-group mt-4">
          <label for="pwd"><b>Password:</b></label>
          <input type="password" id="password" class="form-control" name="password" required><br>
        </div>
        <button type="submit" class="btn btn-primary mb-5 mt-4"><b>LOGIN >></b></button>
      </form>
    </div>
  </div>
</div>

</body>
</html>
