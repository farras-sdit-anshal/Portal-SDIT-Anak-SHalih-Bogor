<?php
include ("modal.php");


// jika yang dipilih adalah download as pdf


if (!empty($_GET['nis']) && isset ($_GET['nis'])){
    
    $siswa = new baseSiswa ($_GET['nis']);
    
    
    
    
    if ($siswa->getBaseSiswa()->num_rows > 0 ){
        
        $data = mysqli_fetch_assoc($siswa->getBaseSiswa());
        $kelas = mysqli_fetch_assoc($siswa->getKelasByNis());
        $tingkat = $_GET['tingkat'];
        
        
        switch ($_GET['order']){
            case "pdf":
                include ("view.php");
                include ("pdf.php");
                break;
            
            case "email":
                include ("pdf-email.php");
                break;
        }
        
    }
    
}

?>