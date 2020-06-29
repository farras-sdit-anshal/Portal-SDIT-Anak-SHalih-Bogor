<?php
require ("../../../../advance.php");
$mysqli = new mysqli ($host,$username,"$pass");
$mysqli->select_db ($dbname);

$query = "SELECT * FROM perpus_absen WHERE waktu = CURDATE() ORDER BY jam ASC";
$result = $mysqli->query ($query);
//i/*f ($mysqli->affected_rows >0 ){
    //while ($data = $result->fetch_assoc()){
    //    $siswa = new baseSiswa ($data['nis']);
    //    
    //    echo $siswa->getNama();
    //    echo "<br>";
    //    
    //    
    //}
//}*/
//1920.11.104

    $query = "INSERT INTO perpus_absen (nis) VALUES ('1920.11.001')";
      $mysqli->query ($query);
      if ($mysqli->error){
        echo "error";
        echo $mysqli->error;
      }
      else {
        echo "Selamat datang $siswa[nama_siswa]";
      }

?>