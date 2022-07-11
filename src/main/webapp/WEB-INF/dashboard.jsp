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
    <div class="container "> <!-- Beginning of Container -->
      <nav class="navbar navbar-expand-lg bg-light m-3 ">
        <div class="container-fluid transparent-input ">
         
          <a class="navbar-brand" href="#">
             <img src="/images/nowakworknew.png" alt="" width="100" height="100">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/dashboard">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/create">New job</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/edit">Edit Job</a>
              </li>
              <li class="nav-item">
                <a class="btn btn-warning" href="/logout"> Log out </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="container">

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
            <c:forEach var="i" items="${allJobs}">
            <tr>
              <td> <a href="/showOne/${i.id}/"> ${i.description } </a>  <a class="btn btn-info" href="/edit/${i.id}"> edit </a><a class="btn btn-info" href="/delete/${i.id}"> delete </a></td> 
              <td>${i.location}</td>
              <td>${i.phoneNumber }</td>
            </tr>
          
             </c:forEach>
          </tbody>
        </table>

      </div>
        
    </div> <!-- End of Container -->
</body>
</html>