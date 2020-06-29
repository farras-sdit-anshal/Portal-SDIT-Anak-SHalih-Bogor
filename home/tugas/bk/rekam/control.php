<?php
include ("modal.php");
include ("view.php");

if (!empty ($_POST['nama'])){

    $obj = getList ($_POST['nama']);
    
    if ($obj->num_rows >0){
        
        while ($data = mysqli_fetch_assoc ($obj)){
            $kelas = mysqli_fetch_assoc (getClass ($data['nis']));
            include ("view-detail.php");
        }
    }
    else {
        include ("view-not-found.php");
    }
    
    
}
else {
    include ("view-default.php");
}


?>