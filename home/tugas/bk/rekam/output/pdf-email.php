<?php
    require ("../../../../../advance.php");
    $siswa = new baseSiswa ($_GET['nis']);
    $data = mysqli_fetch_assoc($siswa->getBaseSiswa());
    $kelas = mysqli_fetch_assoc($siswa->getKelasByNis());
    $tingkat = $_GET['tingkat'];
    include ("view.php");
    $html = ob_get_clean ();    
    
    // include autoloader 
    require_once '../../../../../dompdf/autoload.inc.php';
    
    
    // reference the Dompdf namespace 
    use Dompdf\Dompdf;
    
    
    // instantiate and use the dompdf class 
    $dompdf = new Dompdf();
    
    // (Opsional) Mengatur ukuran kertas dan orientasi kertas
    $dompdf->setPaper('A4', 'portrait');
    
    
    $dompdf->loadHtml($html);
    
    
    // Render the HTML as PDF 
    $dompdf->render();
    
    //send to filemanager
    $output = $dompdf->output();
    file_put_contents ("file/".$fileStroge.".pdf",$output);
    
    $data = mysqli_fetch_assoc($siswa->getBaseSiswa());
    include ("email.php");
?>
