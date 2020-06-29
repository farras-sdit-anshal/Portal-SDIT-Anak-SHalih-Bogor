<!DOCTYPE html>
<html>
<head>
    <title>Kode Pendaftaran Anak Shalih</title>
    <style>
      body {
        background-color: #727272;
      }
      
      div {
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
        padding: 10px;
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
    </style>
</head>
<body>
  <div>
    <h3>Assalamualaikum Warrahmatullahi Wabarakatuh</h3>
     <h2>Kode Pendaftaran</h2>
     <span class="kode"><?php echo $data[6];?></span>
     <p>
      Gunakan kode berikut untuk mendaftar ke portal SDIT Anak Shalih Bogor.
      Sistem ini akan digunakan untuk mempermudah itegrasi tugas dan berbagai keperluan SDIT Anak Shalih Bogor Islamic School.
     </p>
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
 
</body>
</html>
<?php

$html = ob_get_clean();

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

$mail = new PHPMailer;
                              
//Set PHPMailer to use SMTP.
$mail->isSMTP();            
//Set SMTP host name                          
$mail->Host = "smtp.gmail.com";
//Set this to true if SMTP host requires authentication to send email
$mail->SMTPAuth = true;                          
//Provide username and password     
$mail->Username = "maruffarras@gmail.com";                 
$mail->Password = "farrasmuhammad";                           
//If SMTP requires TLS encryption then set it
//$mail->SMTPSecure = "tls";                           
//Set TCP port to connect to 
$mail->Port = 587;                                   

$mail->From = "farras@anakshalihbogor.sch.id";
$mail->FromName = "Sistem Informasi SDIT Anak Shalih";


$mail->addAddress("$data[3]", "SISTEM SDIT ANAK SHALIH BOGOR");

$mail->isHTML(true);

//Provide file path and name of the attachments
//$mail->addAttachment("file/ask.pdf","yourfotoasdasd.pdf"); //Filename is optional


$mail->Subject = "[Kode Pendaftaran Sistem SDIT Anshal]";
$mail->Body = $html;
$mail->AltBody = "This is the plain text version of the email content";

if(!$mail->send()) 
{
    echo "Mailer Error: " . $mail->ErrorInfo;
}


?>