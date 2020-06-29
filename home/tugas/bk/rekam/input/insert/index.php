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
    public $asked = ["kognitif","sosial","emosi","adabakhlak","bahasa"];
    public $countAsked;
    public $arrays;
    public $key;
    
    public function __construct (Array $array){
        $this->arrays = $array;
        $this->key = array_keys ($array);
        $this->countAsked = count ($this->asked);
        $this->countArray = count($this->arrays);
    }
    
    /*
     * back to 
    */
    public function ValidateArray () {
        $result = false;
        $data = $this->arrays;
        $asked = $this->asked;
        if (isset($data[$asked[0]])){
            if (isset($data[$asked[1]])){
                if (isset($data[$asked[2]])){
                    if (isset($data[$asked[3]])){
                        if (isset($data[$asked[4]])){
                            $result = true;
                        }
                    }       
                }
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
        if (empty($data[$asked[0]])){
            if (empty($data[$asked[1]])){
                if (empty($data[$asked[2]])){
                    if (empty($data[$asked[3]])){ 
                        if (empty($data[$asked[4]])){
                            $result = true;
                        }
                        else {
                            $temp = str_replace ("|",", ",$data[$asked[4]]);
                            $data[$asked[4]]= substr ($temp,0,strlen($temp)-2).".";
                        }
                    }
                    else {
                        $temp = str_replace ("|",", ",$data[$asked[3]]);
                        $data[$asked[3]]= substr ($temp,0,strlen($temp)-2).".";
                    }
                }
                else {
                    $temp = str_replace ("|",", ",$data[$asked[2]]);
                    $data[$asked[2]]= substr ($temp,0,strlen($temp)-2).".";
                }
            }
            else {
                $temp = str_replace ("|",", ",$data[$asked[1]]);
                $data[$asked[1]]= substr ($temp,0,strlen($temp)-2).".";
            }
        }
        else {
            $temp = str_replace ("|",", ",$data[$asked[0]]);
            $data[$asked[0]]= substr ($temp,0,strlen($temp)-2).".";
        }
        
        return $data;
        if ($result){
            // Ada yang coba ngubah name di input filed
            header ("location: $data[url]");
            
        }
        
    }
    
    public function shiftArray () {
        $array = $this->arrays;
        for ($i = 0 ; $i < $this->countArray - $this->countAsked ; $i++ ){
            array_pop ($array);
        }
        
        return $array;
    }
}



// Objeck data
$obj = new Validasi($data);

// Validasi array menghindari perubahan nama input
$obj->ValidateArray();

// Validasi array jika salah satu harus ada nilai
$dataValidate = $obj->OneOfThemEmpty();


$arrayValue = $obj->arrays;
$arrayKey = $obj->key;
$arrayAsked = $obj->asked;

$count = count ($obj->shiftArray());

$succsess = 0;
$tampung = "";

//echo "<pre>";
//print_r ($dataValidate);
for ($i = 0 ; $i < $count ;$i++){
    if (!empty($dataValidate[$arrayKey[$i]])){
        
        // echo "key dari $arrayKey[$i] sama dengan index ".array_search ($arrayKey[$i],$arrayAsked)." ".$dataValidate[$arrayKey[$i]]."<br>";
        $form_id = 1;
        $query = "INSERT INTO bk_kar_perkembangan (nis,form_id,inf_id,kelas,keterangan,waktu,petugas) ";
        $query .= "VALUES ('$data[nis]',$form_id,'".array_search ($arrayKey[$i],$arrayAsked)."','".$kelas."','".$dataValidate[$arrayKey[$i]]."','$dataValidate[waktu]','$dataValidate[inputer]')"; 
        
        //echo $query."<br>";
        
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
else {
    header("location:error.php");
}


/*
 * w        w      w     T T T T T T  *   *   *    |
 *  w     w  w    w           T        * * * *     |
 *   w  w     w  w            T         * * *      |
 *    w        w              T       *   *   *    |
 *
 *    =============== Lupa dengan kode sendiri ====================
*/















?>  