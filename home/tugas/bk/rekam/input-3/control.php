<?php
include ("modal.php");

if (!empty ($_GET['nis'])){

    $obj = getSiswaByNIs ($_GET['nis']);
    $pegawai = getEmployeByid ($_COOKIE['id']);
    
    if ($obj->num_rows > 0){
        
        $kelas = mysqli_fetch_assoc (getClass ($_GET['nis']));
        $biodata = mysqli_fetch_assoc ($obj);
        
        include ("view.php");
    }
}
else {
    header ("location: ../");
}


?>