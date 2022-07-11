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
      color: black;
      }

      .table {
        color: black;
      }
  </style>
</head>
<body>

  
    <div class="container"> <!-- Beginning of Container -->
      <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
         
          <a class="navbar-brand" href="#">
             <img src="/images/nowakworknew.png" alt="" width="100" height="100">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Featuress</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
              </li>
              <li class="nav-item">
                <a class="nav-link disabled">Disabled</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
        
        <h1>welcome ${user.name}</h1>
        <table class="table">
          <thead>
            
            <tr>
              
              <th scope="col">Work to be done:</th>
              <th scope="col">Location on property</th>
              <th scope="col">Phone Number</th>
           
            </tr>  
          
          </thead>
          <tbody>  
            
            <tr>
              <td> <c:out value="${job.description }" ></c:out> </td> 
              <td><c:out value="${job.location }" ></c:out></td>
              <td><c:out value="${job.phoneNumber }" ></c:out></td>
            </tr>
          
          
          </tbody>
        </table>
        
        

    </div> <!-- End of Container -->
</body>
</html>