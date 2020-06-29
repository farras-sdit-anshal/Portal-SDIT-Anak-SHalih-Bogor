<?php


if ( ( (boolean)file_exists ("../output/file/$_GET[order].pdf"))){
    
    header("Content-type:application/pdf");
    
    // It will be called downloaded.pdf
    header("Content-Disposition:attachment;filename=rekam-prilaku-qr-barcode.pdf");
    
    // The PDF source is in original.pdf
    readfile("../output/file/$_GET[order].pdf");
    
}
else {
    echo "Tidak ada file yang dapat di download";
}



?>