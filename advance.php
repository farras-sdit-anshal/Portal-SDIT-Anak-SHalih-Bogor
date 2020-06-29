<?php

/*
 * ---------------------------------------------------
 *
 * Muhammad Farras Ma'ruf
 * Bogor, 06 Januari 2020
 * Menemani istri mencucui piring
 *
 * ---------------------------------------------------
*/

// create for object mysql
$host = "localhost";
$username = "farras";
$pass = "farrasmuhammad";
$dbname = "ppdb";

function connectDb (){
    $host = $GLOBALS['host'];
    $username = $GLOBALS['username'];
    $pass = $GLOBALS['pass'];
    $dbname = $GLOBALS['dbname'];
    
    
    
    if (mysqli_connect ($host,$username,$pass,$dbname)){
        return mysqli_connect ($host,$username,$pass,$dbname);
    }
    else {
        die ("Hubungi Muhammad Farras Ma'ruf berikan informasi berikut : <br>File : ".__FILE__."<br>Baris : ".__LINE__);
    }

}

$connect = connectDb();




function kodeUnique () {
  $list = ("1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ");
  $result = "";
  for ($i = 0 ; $i <8 ; $i++){
    $result .= $list[rand(0,9)];
  }
  return $result;
}
$kode = kodeUnique();

/*
 * query string dan prevent spasi serta
 * html tag
 *
 * membutuh kan 1 argumen, array
*/
function setGoodArrayAndGoodMysql ($array){
    $connect = $GLOBALS['connect'];
    $kode = $GLOBALS['kode'];
    $array =  array_values ($array);
    $array =  array_values ($array[0]);
    
    foreach ($array as $val)
        $data[] = mysqli_real_escape_string ( $connect , htmlspecialchars ( htmlentities ( strip_tags (trim ( $val ) ) ) ) );
    
    array_push ($data,$kode);
    return $data;
}


/*
 * Is email registered
 * Apakah email sudah terdaftar atau belum
 * Membutuhkan satu argumen email
 * mengembalikan nilai true jika belum terdaftar
 * mengembalikan nilai false jika terdaftar
*/
function isEmailRegistered ($email) {
  $connect = $GLOBALS['connect'];
  
  $queryCheck = "SELECT * FROM user WHERE email = '$email'";
  
  $mysqlQueryCheck = mysqli_query ($connect,$queryCheck);
  
  if (!mysqli_affected_rows ($connect)){
    
    // Save to database
    
    return true;
    
  }
  else {
    
    echo false;
    
  }
}

/*
 * Get id to save in cookie
*/
function getId ($email,$password) {
  $connect = $GLOBALS['connect'];
  $password = md5 ($password);
  $query = "SELECT * FROM user WHERE email = '$email' AND password = '$password'";
  $mysqli = mysqli_query ($connect,$query);
  
  return mysqli_fetch_assoc ($mysqli);
}


/*
 * Get biodata from id
 * argumen must be id
 * return data form db biodata
*/
function getBiodataFromId () {
  $id = $_COOKIE['id'];
  $connect = $GLOBALS['connect'];
  $query = "SELECT * FROM biodata WHERE id = '$id'";
  $mysqli = mysqli_query ($connect,$query);
  
  return mysqli_fetch_assoc ($mysqli);
}

/*
 * Get biodata from id
 * argumen must be id
 * return raw data
*/
function getBiodataFromIdRaw () {
  $id = $_COOKIE['id'];
  $connect = $GLOBALS['connect'];
  $query = "SELECT * FROM biodata WHERE id = '$id'";
  $mysqli = mysqli_query ($connect,$query);
  
  return $mysqli;
}

function getJobFromId () {
  $id = $_COOKIE['id'];
  $connect = $GLOBALS['connect'];
  $query = "SELECT * FROM akses_tugas WHERE id = '$id'";
  $mysqli = mysqli_query ($connect,$query);
  return ($mysqli);
  
}

/*
 * Lokasi file tugas
 * berdasarkan tugas pegawai
 * Argumen pertama adalah
 * job dari function getJobFromId
 * mengembalikan path dari tugas
*/
function getPathFromJob ($deskripsi){
  if ($deskripsi !== null){
    $connect = $GLOBALS['connect'];
    $query = "SELECT * FROM tugas WHERE deskripsi = '$deskripsi'";
    $mysqli = mysqli_query ($connect,$query);
    return $mysqli;
  }
  
}

/*
 * is Cookie set or not
 * if yes, stay on board, if no then go to error
*/
function isCookieSet (){
  if (empty ($_COOKIE['id'])){
    header ("location: error.php");
  }
}

/*
 * Is email and password registered
 * Apakah email dan password sudah terdaftar atau belum
 * Membutuhkan satu argumen email dan password
 * mengembalikan nilai true jika email dan password benar
 * mengembalikan nilai false jika email dan password salah
*/
function isEmailAndPasswordRegistered ($email,$password) {
  $connect = $GLOBALS['connect'];
  $password = md5 ($password);
  $queryCheck = "SELECT * FROM user WHERE email = '$email' AND password = '$password'";
  
  $mysqlQueryCheck = mysqli_query ($connect,$queryCheck);
  
  if (mysqli_affected_rows ($connect)){
    
    // Save to database
    
    return true;
    
  }
  else {
    
    echo false;
    
  }
}



function saveNewUser ($email,$password){
  $connect = $GLOBALS['connect'];
  $password = md5 ($password);
  $query = "INSERT INTO user (email,password) VALUES ('$email','$password')";
  $mysqlQuery = mysqli_query ($connect,$query);
  
  if (!mysqli_affected_rows ($connect)){

    return true;
    
  }
  else {
    
    echo false;
    
  }
}

function saveNewBiodate ($depan,$belakang,$nohp,$email){
  $connect = $GLOBALS['connect'];
  $query = "INSERT INTO biodata (nama_depan,nama_belakang,no_hp,email) VALUES ('$depan','$belakang','$nohp','$email')";
  $mysqlQuery = mysqli_query ($connect,$query);
  
  if (!mysqli_affected_rows ($connect)){

    return true;
    
  }
  else {
    
    echo false;
    
  }
}


/*
 * Is job defined
 * need tow argumen, id number and job name
 * return value id has accses true, if not then false
*/

function isJobDefined ($id,$jobName){
  $connect = $GLOBALS['connect'];
  $query = "SELECT * FROM akses_tugas WHERE id = '$id' AND deskripsi = '$jobName'";
  $mysqlQuery = mysqli_query ($connect,$query);
  
    if (!mysqli_affected_rows ($connect)){
  
      return true;
      
    }
    else {
      
      return false;
      
  }
}

/*
 * Validasi form,
 * jika form diset required dan ada orang yang iseng
 * mengedit denga inspect, maka form yg kosong akan mengembalika ke
 * halama page error
 * membutuhkan dua buah arugumen,
 * 1. method $_POST atau $_GET
 * 2. Directory ke halaman error
*/
function isFormValidNotEmpty ($method,$directory){
  $array_validasi = array_keys ($method);
  for ($i = 0 ; $i < count ($method) ; $i++ ) {
    
    if (empty ($method[$array_validasi[$i]])){
      header ($directory);
    }
    
  }
}

/*
 * Untuk menghindara inject mysql
 * Tanda petik dll yang menghasilkan error
 * pada myqli
 * membutuh kan 1 argumen, array
*/
function setGoodMysqli ($array){
    $connect = $GLOBALS['connect'];
    $array_key = array_keys ($array);
    $array_values = array_values ($array);
    $no = 0;
    for ($i = 0 ; $i < count ($array) ; $i++){
        
        $data[$array_key[$no]] = mysqli_real_escape_string ( $connect , htmlspecialchars ( htmlentities ( strip_tags (trim ( $array_values[$i] ) ) ) ) );
        $no+=1;
    }
    return $data;
}

/*
 * Mengkonver si tanggal
 * menjadi format indonesia
 * membutuhkkan satu buah argumen (Time Stamp)
*/
function setGoodDate ($time){
  $time = strtotime ($time);
  $days = date ("D",$time);
  switch ($days){
    
    case "Sun";
      $day = "Ahad";
      break;
    case "Mon";
      $day = "Senin";
      break;
    case "Tue";
      $day = "Selasa";
      break;
    case "Wed";
      $day = "Rabu";
      break;
    case "Thu";
      $day = "Kamis";
      break;
    case "Fri";
      $day = "Jumat";
      break;
    case "Sat";
      $day = "Sabtu";
      break;
  }
  $result = $day.", ".date ("d-M-Y",$time);
  return $result;
}

function getEmployeByid ($id){
  $connect = $GLOBALS['connect'];
  $query = "SELECT * FROM biodata WHERE id = '$id'";
  $mysqli = mysqli_query ($connect,$query);
  
  return $mysqli;
}

function getSiswaByNIs ($nis){
  $connect = $GLOBALS['connect'];
  $query = "SELECT * FROM base_data_siswa WHERE nis = '$nis'";
  $mysqli = mysqli_query ($connect,$query);
  
  return $mysqli;
  
}

function getKelasByNIs ($nis){
  $connect = $GLOBALS['connect'];
  $query = "SELECT * FROM base_data_kelas WHERE nis = '$nis'";
  $mysqli = mysqli_query ($connect,$query);
  
  return $mysqli;
  
}

/*
     * menampilkan hasil catatan guru
     * terhadapsiswa sesuai aspe
     * membutuhkan dua buah argumen
     * 1. Nis 2. informasi_id 3. Form_id
    */
    function getInformasiBk ($nis,$formId,$informasiId){
        $connect = $GLOBALS['connect'];
        $query = "SELECT * FROM bk_kar_perkembangan WHERE nis = '$nis' AND  inf_id = '$informasiId' AND form_id = '$formId' ORDER BY id_pencatatan DESC LIMIT 3";
        $mysqli = mysqli_query ($connect,$query);
        return $mysqli;
    }
    
    class baseSiswa {
      private $nis;
      private $connection;
      
      public function __construct ($nis){
        $this->nis = $nis;
    $host = $GLOBALS['host'];
    $username = $GLOBALS['username'];
    $pass = $GLOBALS['pass'];
    $dbname = $GLOBALS['dbname'];

            
        if (mysqli_connect ($host,$username,$pass,$dbname)){
            $this->connection = mysqli_connect ($host,$username,$pass,$dbname);
        }
        else {
            die ("Hubungi Muhammad Farras Ma'ruf berikan informasi berikut : <br>File : ".__FILE__."<br>Baris : ".__LINE__);
        }

      }
      public function getBaseSiswa (){
            $connect = $GLOBALS['connect'];
            $query = "SELECT * FROM base_data_siswa WHERE nis = '$this->nis'";
            $mysqli = mysqli_query ($connect,$query);
            
            return $mysqli;
      }
      
      public function getKelasByNIs (){
        $connect = $GLOBALS['connect'];
        $query = "SELECT * FROM base_data_kelas WHERE nis = '$this->nis'";
        $mysqli = mysqli_query ($connect,$query);
        
        return $mysqli;
      }
      
      public function getInformasiBk ($formId,$informasiId,$kelas){
        $connect = $GLOBALS['connect'];
        $query = "SELECT * FROM bk_kar_perkembangan WHERE nis = '$this->nis' AND  inf_id = '$informasiId' AND form_id = '$formId' AND kelas LIKE '%$kelas%' ORDER BY id_pencatatan ASC";
        $mysqli = mysqli_query ($connect,$query);
        return $mysqli;
      }
      
      public function setAbsenPerpustakaan () {
        $connect = $GLOBALS['connect'];
      }
      
      
      public function getNama (){
            $connect = $GLOBALS['connect'];
            $query = "SELECT * FROM base_data_siswa WHERE nis = '$this->nis'";
            $mysqli = mysqli_query ($connect,$query);
            
            $data = mysqli_fetch_assoc ($mysqli);
            return $data['nama_siswa'];
      }
    }
?>