<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
body{
 background-image: url("lib23.jpg");

  
      height: 100vh;
}
button{

background-color: yellow;
font-size: 40px;}
h1{
 font-size: 40px;
  color: white;
}
* {
  box-sizing: border-box;
}
.form-container {
 justify-content: right;
      align-items: right;
      display: flex;
    }
    .form-containers{
          justify-content: left;
      align-items: left;
       display: flex;
    
    }

  
    .form {
      margin: 10px; 
    }
    p{
     color:white;
     font-size: 30px;
     text-align: right;
    }
</style>
</head>
<body>
 <div class="form-containers">
 <form  class="form" action="recorderlogin.jsp">
 <h1>If you are <br/> A recorder <br/>do Login here</h1>
 <button>RECORDER</button></form>

 <form class="form" action="librarianlogin.jsp">
 <h1>If you are <br/> A Librarian <br/>do Login here</h1>
 <button>LIBRARIAN</button></form>
 </div>
 <p>
 Welcome to library Management system <br/>By login into recorder can help <br/>you to just access the data
 <br/> By login into librarian can access <br/>the data as well as update the data</p>
</body>
</html>