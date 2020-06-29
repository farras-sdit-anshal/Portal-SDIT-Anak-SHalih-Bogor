<!DOCTYPE html>
<html>
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bimbingan Konseling</title>
    <link rel="stylesheet" href="../../../../fa/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="javascript.js"></script>
    <style>
        blockquote{
        display:block;
        background: #fff;
        margin: 100px 50px 0px 50px;
        padding: 30px 30px 30px 50px;
        position: relative;
        font-family: Georgia, serif;
        font-size: 20px;
        line-height: 1.2;
        color: #666;
        text-align: justify;
        border-left: 15px solid #c76c0c;
        border-right: 5px solid #c76c0c;
        -moz-box-shadow: 2px 2px 15px #ccc;
        -webkit-box-shadow: 2px 2px 15px #ccc;
        box-shadow: 2px 2px 15px #ccc;
        }
        blockquote::before{
        content: “201C”; /*Unicode for Left Double Quote*/
        font-family: Georgia, serif;
        font-size: 60px;
        font-weight: bold;
        color: #999;
        position: absolute;
        left: 10px;
        top:5px;
        }
        blockquote::after{
        content: “”;
        }
        blockquote a{
        text-decoration: none;
        background: #eee;
        cursor: pointer;
        padding: 0 3px;
        color: #c76c0c;
        }
        blockquote a:hover{
        color: #666;
        }
        blockquote em{
        font-style: italic;
        }
        
        .full {
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 9999;
        }
    </style>
</head>
<body id="body">
    <img id="loading-page" src="img/loading.gif" class="sr-only">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="../">
        <img src="img/3x3.png" alt="..." class="img" style="width: 2rem">
      </a>
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Rekam Prilaku Siswa<span class="sr-only">(current)</span></a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0"  action="#" method="post">
          <input class="form-control mr-sm-2" type="search" name="nama" placeholder="Search" aria-label="Search" autocomplete="off">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>
    
    

</body>

</html>
