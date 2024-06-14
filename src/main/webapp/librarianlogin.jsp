<!DOCTYPE html>
<html>
 
<head>
    <meta name="viewport"
          content="width=device-width, initial-scale=1">
           <style>
        body {
            height: 100%;
            font-family: Arial, sans-serif;
        }
         
        * {
            box-sizing: border-box;
        }
         
        h1 {
            text-align:center;
            color:blue;
            -webkit-text-stroke: 1px black;
        }
         
        /* styling background image */
        .bg-img {
            background-image: url(
"lib3.jpg");
            min-height: 725px;
            background-size: cover;
        }
     
        /* Styling the form container */
        .container {
            position: absolute;
            left: 50px;
            top: 50px;
            margin: 20px;
            max-width: 500px;
            padding: 50px;
        }
 
        b {
            color: green;
            font-size:26px;
            -webkit-text-stroke: 1px black;
        }
     
        /* Full-width input */
        input[type=text],
        input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 15px 0px;
            border: 2px solid green;
        }
         
 
     
        /* Styling the submit button */
        .button {
            background-color: green;
            color: white;
            padding: 16px 16px;
            border: none;
            cursor: pointer;
            width: 100%;
        }
         
        .button:hover {
            transform: scale(1.1);
            transition: transform 0.3s;
        }
    </style>
</head>
 
<body>
    <div class="bg-img">
        <h1>Librarian Login</h1>
         
        <form class="container" action="LibraryLogin" method="post">
            <b>Email</b>
            <input type="text"
                   placeholder="Enter email"
                   name="Lemail"
                   required>
 <br/>
            <b>Password</b>
            <input type="password"
                   placeholder="Enter Password"
                   name="Lpassword"
                   required>
 
            <button type="submit"
                    class="button">
                  Login
              </button>
               
        </form>
    </div>
</body>
 
</html>