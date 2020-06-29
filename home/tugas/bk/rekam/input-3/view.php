<!DOCTYPE html>
<html>
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bimbingan Konseling</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body id="body">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="../">
        <img src="../img/3x3.png" alt="..." class="img" style="width: 2rem">
      </a>
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="../input/?nis=<?php echo $biodata['nis'];?>">Karakter Perkembangan<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../input-1/?nis=<?php echo $biodata['nis'];?>">Prestasi Akademik<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../input-2/?nis=<?php echo $biodata['nis'];?>">Bakat & Minat<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Motivasi Belajar<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../input-4/?nis=<?php echo $biodata['nis'];?>">Latar Belakang Keluarga<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../input-5/?nis=<?php echo $biodata['nis'];?>">Catatan Anekdot<span class="sr-only">(current)</span></a>
          </li>
        </ul>
      </div>
    </nav>
    
    <div class="container bg-light mt-5 mb-5 p-4">
      
      <table class="biodata">
        <tr>
          <th colspan=2>Biodata Siswa</th>
        </tr>
        <tr>
          <td>NIS</td>
          <td> : <?php echo $biodata['nis'];?></td>
        </tr>
        <tr>
          <td>Nama siswa</td>
          <td> : <?php echo ucwords ( strtolower ($biodata ['nama_siswa'] ) )?></td>
        </tr>
        <tr>
          <td>Kelas</td>
          <td> : <?php echo $kelas ['tingkat']."".$kelas ['kelas']?></td>
        </tr>
        <tr>
          <td>Jenis kelamin</td>
          <td> : <?php echo $biodata ['jenis_kelamin']?></td>
        </tr>
        <tr>
          <td>Tempat/Tanggal lahir</td>
          <td> : <?php echo $biodata ['tempat_lahir']." / ".$biodata['tanggal_lahir']?></td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td> : <?php echo $biodata ['alamat']?></td>
        </tr>
      </table>      
      
      <hr>
      <form class="mt-3" action="insert/" method="post">
        <div class="form-group font-weight-bold mb-5">
          <label for="motivasi_belajar" class="h4">Motivasi Belajar</label>
          <p class="text-muted">Dapat dijelaskan melalui narasi berdasarkan observasi dan hasil kuesioener</p>
          <textarea name="motivasi_belajar" class="form-control" id="motivasi_belajar" rows="3"></textarea>
          
          <!--Ini history terakhir pencatatan -->
          <?php
          $kognitif = getInformasiBk ($biodata['nis'],4,0);
          if ($kognitif->num_rows > 0 ){
              while ($result = mysqli_fetch_assoc ($kognitif)){
                $petugas = mysqli_fetch_assoc (getEmployeByid($result['petugas']));
                
                echo  '<div class="card ml-4 pt-2 mb-2 mt-2 w-75 alert-secondary">
                  <p class="h6 pl-2">'.' kelas '.$result['kelas'].'. Pada '.setGoodDate($result['waktu']).'</p>
                  <p class="h6 pl-2 mr-2"><small>'.$result['keterangan'].'</small></p>
                  <div class="card-footer text-muted">
                    <small class="text-muted">Dicatat '.$petugas['nama_depan'].' '.$petugas['nama_belakang'].'</small>
                  </div>
                </div>';
              }
              echo '<a href="#" class="text-muted ml-4">Tekan untuk history lengkap</a>';
          }
          ?>
          
        </div>
        <input style="display: none;" type="text" value="<?php echo $biodata['nis'];?>" name="nis">
        <input style="display: none;" type="text" value="<?php echo $_SERVER['REQUEST_URI']?>" name="url">
        <input type="submit" class="btn btn-outline-secondary w-50 " value="catat">
      </form>
    </div>
  </body>
</html>
