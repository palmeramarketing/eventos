$(document).ready(function(){
	$.ajax({
	    url : '../controller/control.php',
	    data : {accion: "check_and_get_all_event"},
	    type : 'POST',
	    dataType : 'json',
	    success : function(data, status, req) {
	    	console.log(data, status, req);
	    	if (data["status"] == 200) {
		    	for (var i = 0; i < data["data"].length; i++) {
		    		$('#select_evento').append($('<option>', { 
				        value: data["data"][i]["id"],
				        text : data["data"][i]["nombre"] 
					    }));
		    	}
	    	}else if (data["status"] == 300){
	    		$(".div_row_cargar_evento").css("display","none");
				mensaje("info");
				setTimeout("window.location.href = 'mi_evento.php'", 5000);
	    	}
	    },
	    error : function(data, status, req) {
	    	$(".div_row_cargar_evento").css("display","none");
			mensaje("danger");
	    	console.log(data, status, req);
	    }
	});

	$("#select_evento").change(function(){
		if ($("#select_evento").val() == "null") {
			$(".button_cargar_evento").prop('disabled', true);
		}else{
			$(".button_cargar_evento").prop('disabled', false);
		}
	});

	$(".button_cargar_evento").click(function(){
		if ($("#select_evento").val() == "null") {
			alert("seleccione un evento para cargar");
		}else{
			$.ajax({
			    url : '../controller/control.php',
			    data : {id_event: $("#select_evento").val(), accion: "get_event_ready"},
			    type : 'POST',
			    dataType : 'json',
			    success : function(data, status, req) {
			    	mensaje("success");
			    	setTimeout("window.location.href = 'mi_evento.php'", 5000);
			    },
			    error : function(data, status, req) {
			    	mensaje("warning");
			    	console.log(data, status, req);
			    }
			});
		}
	});
});

function mensaje(tipo){
	var alert = ".alert-";
	alert = alert+tipo;
	$("#row_mensajes_alertas").css("display", "inherit");
	$(alert).css("display", "inherit");
}