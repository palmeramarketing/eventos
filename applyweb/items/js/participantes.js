$(document).ready(function(){
	$(".buscar_participante").click(function(){
	if ($("#buscar_email_participante").val() == "") {
		return false;
	}
		$.ajax({
		    url : '../controller/control.php',
		    data : {email: $("#buscar_email_participante").val(), accion: "buscar_un_participante"},
		    type : 'POST',
		    dataType : 'json',
		    success : function(respuesta, status, req) {
		    	console.log(status, respuesta, req);
		    	if (respuesta.status == 200) {
		    		$(".div_contenedor_registrar").css("display", "none");
		    		$(".div_contenedor_usuario").css("display","block");
		    		$("#id_participante").val(respuesta.data.id);
		    		$("#span_nombre").text(respuesta.data.nombre);
		    		$("#span_apellido").text(respuesta.data.apellido);
		    		$("#span_direccion").text(respuesta.data.direccion);
		    		$("#span_telefono").text(respuesta.data.telefono);
		    		$("#div_continuar_encuesta").slideDown();
		    	}else if (respuesta.status == 404) {
		    		$(".div_contenedor_usuario").css("display","none");
		    		$(".div_contenedor_registrar").css("display", "block");
		    		$("#div_continuar_encuesta").slideUp();
		    	}
		    },
		    error : function(respuesta, status, req) {
		    	console.log(status, respuesta, req);
		    	alert_message("Error! ","Imposible conectar con el servidor, intente de nuevo más tarde.", "alert-danger");
		    }
		});
	});
});

$("#continuar_encuesta").click(function(){
	alert($("#id_participante").val());
	// $.post( "../../view/encuesta.php", $("#id_participante").val());
});

$.validator.addMethod('betterEmail', function (value, element) {
	return this.optional(element) || /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value);
}, "Please enter a valid email address.");

$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
$("#form_registro_participante").validate({
	rules:{
	  nombre_participante:{required:!0,minlength:2},
	  apellido_participante:{required:!0,minlength:2},
	  telefono_participante:{required:!0,minlength:2},
	  email_participante:{required:!0,betterEmail:!0},
	  direccion_participante:{required:!0,minlength:7}
	},
	messages:{
	  nombre_participante:{},
	  apellido_participante:{},
	  telefono_participante:{},
	  email_participante:{},
	  direccion_participante:{}
	},
	submitHandler: function(form) {
		var datos = {
			email : $("#email_participante").val(),
			nombre : $("#nombre_participante").val(),
			apellido : $("#apellido_participante").val(),
			direccion : $("#direccion_participante").val(),
			telefono : $("#telefono_participante").val()
		};
		$.ajax({
		    url : '../controller/control.php',
		    data : {datos: datos, accion: "registrar_nuevo_participante"},
		    type : 'POST',
		    dataType : 'json',
		    success : function(respuesta, status, req) {
		    	if (respuesta.status == 200) {
		    		alert_message("Éxito! ","Usuario registrado.", "alert-success");
		    		$("#div_continuar_encuesta").slideDown();
		    	}else if (respuesta.status == 1062) {
		    		alert_message("Aviso!","Éste usuario ya se encuentra registrado en el sistema.","alert-info");
		    		$("#div_continuar_encuesta").slideUp();
		    	}else{
		    		alert_message("Error!","Ocurrió un error, por favor intente de nuevo.","alert-danger");
		    		$("#div_continuar_encuesta").slideUp();
		    	}
		    	console.log(status, respuesta, req);
		    },
		    error : function(respuesta, status, req) {
		    	alert_message("Error! ","Imposible conectar con el servidor, intente de nuevo más tarde.", "alert-danger");
		    	console.log(status, respuesta, req);
		    }
		});
	  }
  });

function alert_message(strong, span, tipo){
	/*
	Tipos de mensajes Bootstrap 3:
	alert-success, .alert-info, .alert-warning y .alert-danger
	 */
	$("#mensaje-strong").text(strong+" ");
	$("#mensaje-span").text(span);
	$(".mensaje-div").addClass("alert "+tipo);
	$(".mensaje-div").slideDown();
	setTimeout(function(){ $(".mensaje-div").slideUp(); }, 3000);
}