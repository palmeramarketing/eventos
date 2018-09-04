<?php

require_once "../assets/plugins/mpdf-v6.1.0/mpdf.php";
require_once('../mailer/class.phpmailer.php');
require_once('../mailer/PHPMailerAutoload.php');

		$gafete = file_get_contents('../gafetes/gafete-1.html');
        $html = str_replace("@name", "HOLAAA", $gafete);
        $mpdf = new Mpdf();
        $mpdf->WriteHTML($html);
        $mpdf->SetJS('this.print();');
        $mpdf->Output();
?>
