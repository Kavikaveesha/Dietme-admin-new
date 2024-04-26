<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form</title><link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    
    .login-form {
      border-radius: 10px;
      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
      margin: auto;
      padding: 20px;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    .btn-primary {
      background-color: green;
      border-color: green;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="login-form">
      <div class="row">
        <div class="col-md-6">
          <img src="common/assests/loginImg.png" class="img-fluid" alt="Login Image">
        </div>
        <div class="col-md-6 mt-5">
          <h2 class="">Admin Login</h2>
          <form>
            <div class="form-group">
              <label for="username">Username</label>
              <input type="text" class="form-control" id="username" placeholder="Enter username">
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" placeholder="Enter password">
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">
        <script>
            var status = document.getElementById("status").value;
            if (status == "failed") {
                swal("Login Error", "Invalid email or password", "error");
            }
            
        </script>
</body>
</html>