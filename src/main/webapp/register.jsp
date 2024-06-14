<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
body{
 background-image: url("register.jpg");
background-repeat: no-repeat;
  
      height: 100vh;
}
button{

background-color: #ff0066;
font-size: 40px;}
h1{
 font-size: 40px;
  color: #00b300;
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
          justify-content: right;
      align-items: right;
       display: flex;
    
    }

  
    .form {
      margin: 10px; 
    }
    p{
     color:#ff0066;
     font-size: 40px;
     
    }
</style>
</head>
<body>
<div class="form-containers">
<form class="form" action="recorder.jsp">
<h1>If you are <br/> A recorder <br/>do Register here</h1>
<button>RECORDER</button>
</form>
<form class="form" action="librarian.jsp">
<h1>If you are <br/> A librarian <br/>do Register here</h1>
<button>LIBRARIAN</button>
</form>
</div>
<br/><br/><br/><br/>
<p>
 Welcome to library Management system By register into recorder can help you to just access the data
 <br/> By register into librarian can access the data as well as update the data</p>
</body>
</html>