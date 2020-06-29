<!DOCTYPE html>
<html>
<head>
    <title>Kode Pendaftaran Anak Shalih</title>
    <style>
      body {
        background-color: #727272;
      }
      
      .container {
        padding-top: 10px;
        padding-left: 10px;
        padding-right: 10px;
        width: 700px;
        background-color: #9B9B9B;
        text-align: center;
        padding-bottom: 20px;
      }
      
      .second {
        padding-top: 20px;
        padding-left: 10px;
        padding-right: 10px;
        width: 500px;
        margin: 0 auto;
        background-color: #FFFFFF;
        text-align: center;
        padding-bottom: 20px;
      }
      
      span.kode {
        color: white;
        letter-spacing: 5px;
        padding: 3px;
        font-weight: 900;
        background-color: #347C01;
        border-radius: 10px;
      }
      
      p {
        padding-top: 20px;
        font-size: 12px;
        padding-bottom: 20px;
      }
      .arti {
        font-size: 12px;
      }
      
      .arab {
        font-size: 18px;
      }
      
      .alert {
        background-color: #F4D96B;
        padding: 5px;
      }
    </style>
</head>
<body>
    <div class="container">
        <div class="second">
          <h3>Assalamualaikum Warrahmatullahi Wabarakatuh </h3>
           <p>
            Berikut rekam prilaku siswa an <span class="kode"><?php echo ucwords ( strtolower($data['nama_siswa']))?></span>
           </p>
           <p class="alert">!!! Setiap Pengiriman tercatat siapa penerima dan pengirim <span><b>Berkas Rekam Prilaku ini</b></span>.</p>
           <address class="arab">
            كَلِمَتَانِ خَفِيفَتَانِ عَلَى اللِّسَانِ ، ثَقِيلَتَانِ فِى الْمِيزَانِ ، حَبِيبَتَانِ إِلَى الرَّحْمَنِ سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ
            <br>
            </address>
            <address class="arti">
              “Dua kalimat yang ringan di lisan, namun berat ditimbangan, dan disukai Ar Rahman
              yaitu “Subhanallah wa bi hamdih, subhanallahil ‘azhim” (Maha Suci Allah dan segala puji bagi-Nya.
              Maha Suci Allah Yang Maha Agung).
              (HR. Bukhari no. 6682 dan Muslim no. 2694)
           </address>
        </div>
  </div>
 
</body>
</html>
<?php

$html = ob_get_clean();

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../../../../../PHPMailer/src/Exception.php';
require '../../../../../PHPMailer/src/PHPMailer.php';
require '../../../../../PHPMailer/src/SMTP.php';

$mail = new PHPMailer;
                              
//Set PHPMailer to use SMTP.
$mail->isSMTP();            
//Set SMTP host name                          
$mail->Host = "smtp.gmail.com";
//Set this to true if SMTP host requires authentication to send email
$mail->SMTPAuth = true;                          
//Provide username and password     
$mail->Username = "farras@anakshalihbogor.sch.id";                 
$mail->Password = "farras2712";                           
//If SMTP requires TLS encryption then set it
//$mail->SMTPSecure = "tls";                           
//Set TCP port to connect to 
$mail->Port = 587;                                   

$mail->From = "farras@anakshalihbogor.sch.id";
$mail->FromName = "Rekam Prilaku Siswa";


$mail->addAddress($_GET["alamat"], "Civitas SDIT Anak Shalih Bogor");

$mail->isHTML(true);

//Provide file path and name of the attachments
$mail->addAttachment("file/".$fileStroge.".pdf","rekam-prilaku.pdf"); //Filename is optional


$mail->Subject = "[Rekam Prilaku Siswa]";
$mail->Body = $html;
$mail->AltBody = "This is the plain text version of the email content";

if(!$mail->send()) 
{
    echo "Mailer Error: " . $mail->ErrorInfo;
}
else {
        echo "Send to ".$_GET["alamat"];
}


?>