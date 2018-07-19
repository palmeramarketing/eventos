$(document).ready(function(){
	$.ajax({
	    url : '../controller/control.php',
	    data : {accion: "visualize_event"},
	    type : 'POST',
	    dataType : 'json',
	    success : function(data, status, req) {
	    	console.log(data, status, req);
	    	if (data["status"] == 200) {
	    		$("#nombre_evento").text(data.data.evento.nombre);
	    		$("#fecha_evento").text(data.data.evento.fecha);
	    		$("#direccion_evento").text(data.data.evento.direccion);
	    		$("#total_participantes_evento").text(data.data.participantes.total_participantes);
	    		$("#total_preguntas_evento").text(data.data.cuestionario.total_preguntas);
	    		$("#total_respuestas_evento").text(data.data.respuestas.total_respuestas);
	    	}else if (data["status"] == 404){
	    		console.log(data, status, req);
	    		alert("Error al cargar el evento");
		    	// window.location.href = 'descargar_evento.php';
	    	}
	    },
	    error : function(data, status, req) {
	    	alert("Error al cargar los eventos");
	    	console.log(data, status, req);
	    }
	});
});