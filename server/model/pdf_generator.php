<?php

require_once "../plugins/mpdf-v6.1.0/mpdf.php";

class PDF_generator
{

	function imprimir_pdf($datos){
		$html =  $datos["data"]["data_html"];
		$mpdf = new Mpdf();
		$mpdf->WriteHTML($html);
		$mpdf->Output();
	}

}
?>