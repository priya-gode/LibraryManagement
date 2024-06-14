<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
       background-image: url("register.jpg");
      background-repeat: no-repeat;
    }
     button{
     align-content: center;
      margin: 50;}
    .form-container {
      width: 400px;
      margin: 0 auto;
      padding: 30px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .form-container label,
    .form-container input {
      display: block;
      margin-bottom: 10px;
    }

    .form-container input {
      width: 100%;
      padding: 5px;
    }

    .form-container button {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .error-message {
      color: red;
    }
  </style>
</head>
<body>
  <div class="form-container">
  <h1>Register as Librarian</h1>
<form onsubmit="return validateForm()" method="post" action="RecorderRegister" >
<input type="text" name="Lname" placeholder="name" required /><br/><br/>
<input type="email" name="Lemail"  placeholder="email" required  /><br/><br/>
<input type="password" name="Lpassword" id="password" placeholder="password" required/>
<br/><br/>
<input type="password" name="confrimPassword" id="confirmPassword" placeholder=" reenter password" required/><br/><br/>
<input type="text" name="Lmobile" placeholder="mobileno" required/><br/><br/>
 <div class="form-group">
                    <div class="form-check"><label class="form-check-label" ><input class="form-check-input" type="checkbox" required>I agree to the license terms.</label></div>
                </div>
 <button type="submit">Register</button>

</form>
  </div>

  <script>
    function validateForm() {
     
      var password = document.getElementById('password').value;
      var confirmPassword = document.getElementById('confirmPassword').value;
     

     
      if (password !== confirmPassword) {
        alret( "Passwords do not match!");
        return false;
      }

      return true;
    }
  </script>
</body>
</html>
