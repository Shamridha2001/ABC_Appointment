
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style>
    body {
      background-image: url('img/recep.jpg'); /* Replace 'your-image.jpg' with the path to your background image */
      background-size: cover; /* Ensure the image covers the entire background */
      background-position: center; /* Center the background image */
      background-repeat: no-repeat; /* Prevent the background image from repeating */
      height: 100vh; /* Set the height to 100% of the viewport height */
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
  <div class="col-md-7    well" style="padding:0 0 0 50px ;">
  
  <div class="container mt-5 ">
  <h2> ADMIN LOGIN </h2>
      <form id="loginForm" action="administratorlogincontroller" method="post">
  
    <div class="form-group mt-4">
        <label for="username"><b>Username:</b></label><br>
        <input type="text" id="username" class="form-control" name="username" required><br>
     </div>
    <div class="form-group mt-4">
      <label for="pwd"><b>Password:</b></label>
      <input type="password" id="password" class="form-control" name="password" required><br>
      
    </div>
     <button type="submit" class="btn btn-primary mb-5 mt-4">LOGIN >></button>
      </form>
  
</div>
   
  </div>
  
</div>

</body>
</html>