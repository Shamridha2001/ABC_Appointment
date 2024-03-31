<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lab Appointment System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
        <a class="nav-link  mx-0 mx-md-3 fw-bold fs-7 mt-3" aria-current="page" href="AdministratorLogin.jsp">Admin</a>
        <a class="nav-link mx-0 mx-md-3 fw-bold fs-7 mt-3" href="DoctorLogin.jsp">Doctor</a>
        <a class="nav-link mx-0 mx-md-3 fw-bold fs-7 mt-3" href="TechnicianLogin.jsp">Technician</a>
       
                
      </div>
    </div>
  </div>
</nav>

<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" style="height: 450px">
      <img src="img/home 1.jpg" class="d-block w-100" alt="..." style="height: 100%; object-fit:cover; filter: brightness(0.5);">
      <div class="carousel-caption d-none d-md-block top-0 mt-4">
        <h5 class="display-1 fw-bolder text-capitalize">Welcome to ABC Lab</h5>
        <p class="mt-5 fs-3 text-uppercase">Leading the way in medical diagnostics</p>
      </div>
    </div>
    <div class="carousel-item" style="height: 450px">
      <img src="img/tec 1.jpeg" class="d-block w-100" alt="..." style="height: 100%; object-fit:cover; filter: brightness(0.6);">
      <div class="carousel-caption d-none d-md-block top-0 mt-4">
        <h5 class="display-1 fw-bolder text-capitalize">Your Health, Our Priority</h5>
        <p class="mt-5 fs-3 text-uppercase">Providing accurate and timely results</p>
      </div>
    </div>
    <div class="carousel-item" style="height: 450px">
      <img src="img/recep.jpg" class="d-block w-100" alt="..." style="height: 100%; object-fit:cover; filter: brightness(0.6);">
      <div class="carousel-caption d-none d-md-block top-0 mt-4">
        <h5 class="display-1 fw-bolder text-capitalize">Advanced Technology for Better Care</h5>
        <p class="mt-5 fs-3 text-uppercase">Empowering healthcare professionals with cutting-edge diagnostics</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container py-5">
  <h2 class="mb-4">Gallery</h2>
  <div class="row g-3">
    <div class="col-sm-6 col-md-4">
      <div class="card">
        <img src="img/home 3.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Diagnostic Services</h5>
          <p class="card-text">Explore our state-of-the-art diagnostic facilities.</p>
        </div>
      </div>
    </div>
    <!-- Repeat for more images -->
    <div class="col-sm-6 col-md-4">
      <div class="card">
        <img src="img/home 3.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Medical Experts</h5>
          <p class="card-text">Meet our team of experienced medical professionals.</p>
        </div>
      </div>
    </div>
    <!-- Add more columns/cards as needed -->
    <div class="col-sm-6 col-md-4">
      <div class="card">
        <img src="img/home 3.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Patient Care</h5>
