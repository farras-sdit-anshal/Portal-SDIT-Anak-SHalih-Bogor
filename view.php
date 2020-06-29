<?php
ob_start();
?>
<!DOCTYPE html>

<html>
<head>
    <title>Login SDIT Anak Shalih Bogor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="fa/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body id="body">
  <div class="container p-5 mt-5 bg-light rounded">
    <h1 class="display-4 mt-5 mb-3">SDIT Anak Shalih Bogor</h1>
    <form action="" method="post">
        <div class="col-auto mt-3">
          <span class="badge badge-pill badge-primary mb-2" id="warn-email" class="warn email"></span>
          <label class="sr-only" for="inlineFormInputGroup">Username</label>
          <div class="input-group mb-2">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i>&nbsp</div>
            </div>
            <input name="email" type="text" class="form-control" id="email" placeholder="Email" autocomplete="off">
          </div>
        </div>
 
        <div class="col-auto mt-3">
          <span class="badge badge-pill badge-primary mb-2" id="warn-password" class="warn password"></span>  
          <label class="sr-only" for="inlineFormInputGroup">Password</label>
          <div class="input-group mb-2">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fa fa-key" aria-hidden="true"></i></div>
            </div>
            <input name="password" type="password" class="form-control" id="password" placeholder="Password" autocomplete="off">
          </div>
        </div>
      <div class="col-auto mt-3">
        
        <input class="btn btn-outline-success" name="submit" id="submit" type="submit" value="Login">
      </div>
      <div class="col-auto mt-3">
        <address>Berlum terdaftar ? <a id="daftar">Daftarkan email antum</a></address>
      </div>
      
    </form>
  </div>
  <script src="javascript.js"></script>
  <script>
    isSubmitOk ();
    checkEmpty ();
    daftarEmail();
    isEmailRegistered ();
    isEmailAndPassRegistered ();
  </script>
</body>
</html>
