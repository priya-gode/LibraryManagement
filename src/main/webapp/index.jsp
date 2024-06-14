<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="veiwport" content="width=device-width, initial-scale=1.0"> 
<style>
body{
 padding: 100px;
 width:80%;
}

.register-photo {
  background: #f1f7fc;
  padding: 100px 0;
}

.register-photo .image-holder {
  display: table-cell;
  width: 60%;
  background: url(lib4.jpg);
  background-size: cover;
}

.register-photo .form-container {
  display: table;
  max-width: 900px;
  width: 80%;
  margin: 0 auto;
  box-shadow: 1px 1px 5px rgba(0,0,0,0.1);
}

.register-photo form {
  display: table-cell;
  width: 400px;
  background-color: #ffffff;
  padding: 40px 60px;
  color: #505e6c;
}

@media (max-width:991px) {
  .register-photo form {
    padding: 40px;
  }
}

.register-photo form h2 {
  font-size: 24px;
  line-height: 1.5;
  margin-bottom: 30px;
}

.register-photo form .form-control {
  background: transparent;
  border: none;
  border-bottom: 1px solid #dfe7f1;
  border-radius: 0;
  box-shadow: none;
  outline: none;
  color: inherit;
  text-indent: 0px;
  height: 40px;
}

.register-photo form .form-check {
  font-size: 13px;
  line-height: 20px;
}

.register-photo form .btn-primary {
  background: green;
  border: none;
  border-radius: 4px;
  padding: 11px;
  box-shadow: none;
  margin-top: 35px;
  text-shadow: none;
  outline: none !important;
}

.register-photo form .btn-primary:hover, .register-photo form .btn-primary:active {
  background: green;
}

.register-photo form .btn-primary:active {
  transform: translateY(1px);
}

.register-photo form .already {
  display: block;
  text-align: center;
  font-size: 12px;
  color: blue;
  opacity: 0.9;
  text-decoration: none;
  
}
button{
background-color: #008CBA;}
</style>
</head>

<body>

<div class="register-photo">
        <div class="form-container">
            <div class="image-holder"></div>
            <form action="register.jsp">
              <h3 class="text-center"><strong>Welcome</strong> to KLU<br/> Library Management System</h3>
                <h2 class="text-center"><strong>Create</strong> an account.</h2>
                <h3>Helps to maintain and manage Library records</h3>
                
               
                <div class="form-group" ><button class="btn btn-success btn-block" type="submit">Register</button>
                <br/>
                <br/></div><a class="already" href="login.jsp">You already have an account? Login here.</a>
                </form>
        </div>
    </div>
</body>

</html>