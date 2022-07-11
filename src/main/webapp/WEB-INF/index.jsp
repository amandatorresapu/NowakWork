<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nowak Work</title>
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="/css/style.css">
  <style>
      body {
      background-image: url("images/tools.jpg");
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
      }
  </style>
  
</head>
<body>
    <div class="container"> 
        <nav class="navbar navbar-expand-lg  ">
          <div class="container-fluid transparent-input ">
            <a class="navbar-brand" href="/">
              <img src="/images/nowakworknew.png" alt="" width="100" height="100">
            </a>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav ">
                <li class="nav-item ">
                  <a class="nav-link active font-size" aria-current="page" href="/dashboard">Nowak Worksss</a>
                </li>
              </ul>
            </div>
          </div>
          
        </nav>
          <!-- Section: Design Block -->
      <section class=" text-center text-lg-start">
        
        <div class=" mb-2">
          <div class="row g-0 d-flex align-items-center">
          
            <div class="col-lg-8">
              <div class="card-body py-1 px-md-3">
                
                <h1>Registration</h1>
                <form:form action="/register" method="post" modelAttribute="newUser">
                  <div class="form-group font-size">
                      <label>First Name:</label>
                      <form:input path="name" class="form-control transparent-input" />
                      <form:errors path="name" class="text-danger" />
                  </div>
                  <div class="form-group font-size">
                    <label>Last Name:</label>
                    <form:input path="lastName" class="form-control transparent-input" />
                    <form:errors path="lastName" class="text-danger " />
                </div>
                  <div class="form-group font-size">
                      <label>Email:</label>
                      <form:input path="email" class="form-control transparent-input" />
                      <form:errors path="email" class="text-danger" />
                  </div>
                  <div class="form-group font-size">
                      <label>Password:</label>
                      <form:password path="password" class="form-control transparent-input" />
                      <form:errors path="password" class="text-danger" />
                  </div>
                  <div class="form-group font-size">
                      <label>Confirm Password:</label>
                      <form:password path="confirm" class="form-control transparent-input" />
                      <form:errors path="confirm" class="text-danger" />
                  </div>
                  <br>
                  <input type="submit" value="Register" class="btn btn-outline-dark btn btn-light" />
                  
              </form:form>
              <h1>Login</h1>
              <form:form action="/login" method="post" modelAttribute="newLogin">
                <div class="form-group font-size">
                    <label>Email:</label>
                    <form:input path="email" class="form-control transparent-input" />
                    <form:errors path="email" class="btn btn-light" />
                </div>
                <div class="form-group font-size">
                    <label>Password:</label>
                    <form:password path="password" class="form-control transparent-input" />
                    <form:errors path="password" class="btn btn-light" />
                </div>
                <br>
                <input type="submit" value="Login" class="btn btn-outline-dark" />
            </form:form>  

              

              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!-- Section: Design Block -->
        
   
       
                
        

   

   
</body>
</html>