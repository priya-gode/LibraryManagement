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
   <h1>Register as Recorder</h1>
<form onsubmit="return validateForm()" method="post" action="Registerinsert" method="post" >
<input type="text" name="Rname" id="Rname" placeholder="name" required /><br/><br/>
<input type="email" name="Remail" id="Remail" placeholder="email" required  /><br/><br/>
<input type="password" name="Rpassword" id="Rpassword" placeholder="password" required><br/><br/>
<input type="password" name="confrimPassword" id="confirmPassword" placeholder=" reenter password" required><br/><br/>
<input type="text" name="Rmobile" placeholder="mobile no" required/><br/><br/>
 <div class="form-group">
                    <div class="form-check"><label class="form-check-label"><input class="form-check-input" type="checkbox" required>I agree to the license terms.</label></div>
                </div>
 <button>Register</button>

    </form>
  </div>

  <script>
    function validateForm() {
     
      const password = document.getElementById("Rpassword").value;
      const confirmPassword = document.getElementById("confirmPassword").value;
      const isValid=true;

     
      if (Rpassword !== confirmPassword) {
        errorElement.innerHTML = "Passwords do not match.";
        isValid= false;
      }
      if (isValid) {
         
          window.location.href = 'http://localhost:8080/LibraryManagements/recorderlogin.jsp?';
        }

      return true;
    }
   
  </script>
</body>
</html>
