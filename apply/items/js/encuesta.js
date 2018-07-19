$(document).ready(function(){
	$.ajax({
	    url : '../controller/control.php',
	    data : {accion: "cargar_encuesta"},
	    type : 'POST',
	    dataType : 'json',
	    success : function(respuesta, status, req) {
	    	console.log(status, respuesta, req);
	    	var encuesta = respuesta.data;
	    	for (var i = 0; i < encuesta.length; i++) {

	    		var pregunta = "";
	    		var id_pregunta = "div_pregunta-"+i;
	    		var id_respuesta = "div_respuesta-"+i;

	    		pregunta = "<div class='div_pregunta' id="+id_pregunta+" hidden>\
								<span>"+encuesta[i].pregunta+"</span>\
							</div>\
							<div class='div_respuesta' id="+id_respuesta+" hidden>\
							</div>";

				$("#div_contenedor_encuesta").append(pregunta);

				var resp_html = "";
				var respuestas = "";

				for (var o = 0; o < encuesta[i].respuestas.length; o++) {

					if (encuesta[i].tipo == "multi") {
						resp_html = "<div class='div_resp'>\
										<input type='checkbox' name='checkbox-"+i+"' value="+encuesta[i].respuestas[o].descripcion+">\
										<span class='label_resp'>"+encuesta[i].respuestas[o].descripcion+"</span>\
									</div>";
					}else if (encuesta[i].tipo == "simple") {
						resp_html = "<div class='div_resp'>\
										<input type='radio' name='radio-"+i+"' value="+encuesta[i].respuestas[o].descripcion+">\
										<span class='label_resp'>"+encuesta[i].respuestas[o].descripcion+"</span>\
									</div>";
					}else if (encuesta[i].tipo == "libre") {
						resp_html = "<div class='div_resp'>\
										<textarea name='resp_libre-"+i+"' id='respuesta_libre-"+i+"' cols='100' rows='5' placeholder='Describa aqui su respuesta'></textarea>\
									</div>";
					}

					respuestas += resp_html;
				}

				$("#"+id_respuesta).append(respuestas);
	    	}
			$("#div_pregunta-0, #div_respuesta-0").css("display","block");
	    },
	    error : function(respuesta, status, req) {
	    	console.log(status, respuesta, req);
	    	alert_message("Error! ","Imposible conectar con el servidor, intente de nuevo más tarde.", "alert-danger");
	    }
	});
	var con_preg = 0;
	$("#boton_siguiente").click(function(){
		$("#div_pregunta-"+con_preg+", #div_respuesta-"+con_preg).css("display","none");
		con_preg += 1;
		$("#div_pregunta-"+con_preg+", #div_respuesta-"+con_preg).css("display","block");
	});
});