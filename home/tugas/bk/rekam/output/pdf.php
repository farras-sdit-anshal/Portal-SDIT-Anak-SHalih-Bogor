<?php
    
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
    
    // Output the generated PDF to Browser 
    $dompdf->stream("rekam-prilaku.pdf");
    
    //send to filemanager
    $output = $dompdf->output();
    file_put_contents ("file/".$fileStroge.".pdf",$output);
    
?>
