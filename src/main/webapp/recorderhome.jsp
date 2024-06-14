<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style type="text/css">
body{
background-image:url("lib4.gif");
background-size:1250px
;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
<header>

<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Library Managment System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:8080/LibraryManagements/recorderhome.jsp">Home</a>
        </li>
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="http://localhost:8080/LibraryManagements/navbar.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Details
          </a>
          <ul class="dropdown-menu">
            <li><form class="dropdown-item" action="Rretrive" method=post>
<button>Retrieve student Data</button>
</form></li>
            <li><form class="dropdown-item" action="Retriev" method=post>
<button>Retrieve Book Details</button></form>
</li>

          </ul>
        </li>
        
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      <form action="Rlogout.jsp"><button class="btn btn-outline-success">logout</button></form>
           
    </div>
    
  </div>
  
</nav>
</header>
<h2 style=color:white>welcome to KLU Library Management Your the Recorder
You have access to the data but can not modify the data.Records Management is a field of management which governs how organizations create, receive, store, use, access, and dispose of records, regardless of whether records are in paper or electronic format.<br/>Ultimately, Records Management ensures that institutional records of vital historical, fiscal, and legal value are identified and preserved, and that non-essential records are discarded in a timely manner according to established guidelines and identified legislation.</h2>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>