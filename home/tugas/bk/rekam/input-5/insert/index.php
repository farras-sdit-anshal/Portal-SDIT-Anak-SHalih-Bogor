<?php

require ("../../../../../../advance.php");
isCookieSet();
if (isJobDefined ($_COOKIE['id'],'Catat Rekam Prilaku')){
    header ("location: ../../error.php");
}
if (empty ($_POST)){
    header ("location: ../");
}
$data = setGoodMysqli ($_POST);
$data['waktu'] = date("Y-m-d", time());
$data['inputer'] = $_COOKIE['id'];
$siswa = getKelasByNIs ($data['nis']);

$biodata = mysqli_fetch_assoc ($siswa);
$kelas = $biodata['tingkat']."".$biodata['kelas'];
mysqli_free_result ($siswa);
include_once ("load.php");



// Validasi
class Validasi{
    public $asked = ["catatan_anekdot"];
    public $countAsked;
    public $arrays;
    public $key;
    
    public function __construct (Array $array){
        $this->arrays = $array;
        $this->key = array_keys ($array);
        $this->countAsked = count ($this->asked);
        $this->countArray = count($this->arrays);
    }
    
    public function ValidateArray () {
        $result = false;
        $data = $this->arrays;
        $asked = $this->asked;
        
        for ($i = 0 ; $i < count ($asked) ; $i++){
            if (isset($data[$asked[$i]])){
                $result = true;
            }
        }
        
        if (!$result){
            // Ada yang coba ngubah name di input filed
            header ("location: ../");
            
        }
        return $result;
    }
    
    public function OneOfThemEmpty (){
        $result = false;
        $data = $this->arrays;
        $asked = $this->asked;
        for ($i = 0 ; $i < count ($asked) ; $i++){
            if (empty($data[$asked[$i]])){
                $result = true;
            }
        }
        if ($result){
            // Ada yang coba ngubah name di input filed
            header ("location: $data[url]");
            
        }
        return $result;
    }
    
    public function shiftArray () {
        $array = $this->arrays;
        for ($i = 0 ; $i < $this->countArray - $this->countAsked ; $i++ ){
            array_pop ($array);
        }
        
        return $array;
    }
}

$obj = new Validasi($data);

// Validasi array menghindari perubahan nama input
$obj->ValidateArray();

// Validasi array jika salah satu harus ada nilai
$obj->OneOfThemEmpty();


$arrayValue = $obj->arrays;
$arrayKey = $obj->key;
$arrayAsked = $obj->asked;

$count = count ($obj->shiftArray());

$succsess = 0;
$tampung = "";
for ($i = 0 ; $i < $count ;$i++){
    if (!empty($data[$arrayKey[$i]])){
        
        // echo "key dari $arrayKey[$i] sama dengan index ".array_search ($arrayKey[$i],$arrayAsked)." ".$data[$arrayKey[$i]]."<br>";
        $form_id = 6;
        $query = "INSERT INTO bk_kar_perkembangan (nis,form_id,inf_id,kelas,keterangan,waktu,petugas) ";
        $query .= "VALUES ('$data[nis]',$form_id,'".array_search ($arrayKey[$i],$arrayAsked)."','".$kelas."','".$data[$arrayKey[$i]]."','$data[waktu]','$data[inputer]')"; 
        
        // echo $query."<br>";
        
        //Jalankan perintah sql
        $mysqli = mysqli_query ($connect,$query);
        
        if (mysqli_error ($connect)){
            header ("location: error.php");
        }
        if (mysqli_affected_rows ($connect)){
            $succsess += 1;
        }
        
    }
    
}
if ( $succsess >= 1 ) {
    header("Refresh:1; url= $data[url]");
}









?>  