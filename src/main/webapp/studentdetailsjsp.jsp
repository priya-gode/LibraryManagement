<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
          <a class="nav-link active" aria-current="page" href="http://localhost:8080/LibraryManagements/librarianhome.jsp">Home</a>
        </li>
       
      <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/LibraryManagements/studentdetailsjsp.jsp?">Student details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/LibraryManagements/add.jsp?">Book Details</a>
        </li>
           
          </ul>
        </li>
        
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      <form action="Llogout.jsp"><button class="btn btn-outline-success">logout</button></form>
    </div>
    
  </div>
  
</nav>
</header>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<style>

body{
background-image:url("lib9.gif");
background-size:1500px;}
.container {
   max-width: 500px; /* Adjust the width as per your design */
  margin: 0 auto; /* Center the container on the page */
  padding: 20px;
  border: 2px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
.container button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  item-aling:center;
}
.cont button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  item-aling:center;
}
.con button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  item-aling:center;
}
.co{
 max-width: 500px; /* Adjust the width as per your design */
  margin: 0 auto; /* Center the container on the page */
  padding: 20px;
  border: 2px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);}
.co button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  item-aling:center;
}
label{
font-weight: 1000;
 font-size:20px;
    display: inline-block;
    float: left;
    clear: left;
    width: 250px;
    text-align: right;
}
input {
  display: inline-block;
  float: left;
}
.cont{
 max-width: 500px; /* Adjust the width as per your design */
  margin: 0 auto; /* Center the container on the page */
  padding: 20px;
  border: 2px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
.con{
 max-width: 500px; /* Adjust the width as per your design */
  margin: 0 auto; /* Center the container on the page */
  padding: 20px;
  border: 2px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);}
</style>
</head>
<body>
<form action="Studentinsert" method="post" class="container">
<h1>Insert Data</h1>
<label>Student id:</label><input type="text" name="sid"/><br/><br/>
<label>Student Name:</label><input type="text" name="sname"/><br/><br/>
<label>Book Name:</label><input type="text" name="book"/><br/><br/>
<label>Issued Date:</label><input type="text" name="issued"/><br/><br/>
<label>return Date:</label><input type="text" name="returnd"/><br/><br/>
<label>returned Date:</label><input type="text" name="ruturned"/><br/><br/>
<label>Fine:</label><input type="text" name="fine"/><br/><br/>
<label>Status:</label><input type="text" name="status"/><br/><br/>
<button >Insert</button>


</form><br/>
<br/>
<form action="Studentdelete" method="post" class="cont">
<label>Student id:</label><input type="text" name="sid"/><br/><br/>
<button >Delete</button>
</form><br/><br/>

<br/><br/>
<form action="Studentupdates" method="post" class="con">
<h1>Update data  in table</h1>
	<label>Student id:</label><input type="text" name="sid"/><br/><br/>
<label>returned Date:</label><input type="text" name="ruturned"/><br/><br/>
<label>Fine:</label><input type="text" name="fine"/><br/><br/>
<label>Status:</label><input type="text" name="status"/><br/><br/>
	<button >Update</button>
	</form><br/><br/>
	<form class="co" action="Rretrive" method="post">
<button>Retrieve student Data</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>