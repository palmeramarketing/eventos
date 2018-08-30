$(document).ready(function() {
	var id_event = undefined;

	listar_participante();

	$(".boton_listar").click(function(){
		listar_participante();
	});

// 	window.onunload = function(e) {
//    location.href="https://developer.mozilla.org/es/docs/Web/API/WindowEventHandlers/onbeforeunload"
// };

	// CARGAR DATEPICKER-------------------------
	$('.input-group.date').datepicker({
		format: "yyyy-mm-dd"
	});
	// ------------------------------------------

	// MOSTRAR FORMULARIO DE REGISTRO------------
	$(".nuevo_evento").click(function(){
		if ($(this).hasClass("active")) {
			$(".div_registrar").slideUp();
		}else{
			$(".div_registrar").slideDown();
		}
		$(this).toggleClass("active");
	});
	// ------------------------------------------

	// ACCION REGISTRAR EVENTO-------------------
    $("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_registro_evento").validate({
    	rules:{
            nombre_evento:{required:!0,minlength:2},
            fecha_evento:{required:!0},
            direccion_evento:{required:!0,minlength:5}
    	},
    	submitHandler: function(form) {
			var datos = {
				tipo:"registrar",
				nombre:$("#nombre_evento").val(),
				fecha:$("#fecha_evento").val(),
				direccion:$("#direccion_evento").val(),
				id_user:$("#id_user_logeado").val()
			};
			$.ajax({
			    url : '../controller/evento.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Nuevo evento registrado.", "alert-success");
			    		$("#form_registro_evento")[0].reset();
			    		listar_participante();
			    	}else if (respuesta.status == 1062) {
			    		alert_message("Aviso! ","El evento ya existe.", "alert-warning");
			    	}else if (respuesta.status == 500) {
			    		alert_message("Error! ","Hubo un error con el servidor.", "alert-danger");
			    	};
			    	listar_participante();
			    },
			    error : function(respuesta) {
			        alert_message("Error! ","Imposible conectar con el servidor, intente de nuevo más tarde.", "alert-danger");
			    },
			    // código a ejecutar sin importar si la petición falló o no
			    // complete : function(xhr, status) {
			    //     alert('LOADING!!!!!!!!!!');
			    // }
			});
    	}
    });
	// ------------------------------------------

});

function listar_participante(){
	// LISTAR EVENTOS----------------------------
	var table = $('#tabla_lista_eventos').DataTable({
		"destroy":true,
		"ajax":{
			"method":"POST",
			"url":"../controller/evento.php",
			"data":{id: $('#id_user_logeado').val(), perfil: $('#perfil_user_logeado').val()},
			"dataType":"json"
		},
		"columns":[
			{"data":"nombre"},
			{"data":"fecha"},
			{"data":"direccion"},
			{"defaultContent":"<span id='boton-accion' class='accion_modificar glyphicon glyphicon-cog' data-toggle='modal' data-target='#myModal''>\
							   </span><span id='boton-accion' class='glyphicon glyphicon-trash accion_eliminar' data-toggle='confirmation' data-title='¿Estás seguro?'></span>\
							   <span id='boton-accion' class='accion_graficar glyphicon glyphicon-stats'>"}
		]
	});
	// ------------------------------------------

	// CARGAR DATOS MODAL MODIFICAR--------------
	$('#tabla_lista_eventos tbody').on("click", ".accion_modificar", function(){
		var data = table.row($(this).parents("tr")).data();
		id_event = data.id;
		$("#mod_nombre_evento").val(data.nombre);
		$("#mod_fecha_evento").val(data.fecha);
		$("#mod_direccion_evento").val(data.direccion);
	});
	// ------------------------------------------


	// ACCION GRAFICAR EVENTO--------------------
	$("#tabla_lista_eventos tbody").on("click", ".accion_graficar", function(){
		var data = table.row($(this).parents("tr")).data();
		window.location.href = "graficar.php?id_event="+data.id+"&evento="+data.nombre+"&tipo=evento";
	});
	// ------------------------------------------

	// ACCION MODIFICAR EVENTO-------------------
	$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_modifi_evento").validate({
    	rules:{
            mod_nombre_evento:{required:!0,minlength:2},
            mod_fecha_evento:{required:!0},
            mod_direccion_evento:{required:!0,minlength:5}
    	},
    	submitHandler: function(form) {
			var datos = {
				tipo:"modificar",
				id: id_event,
				nombre:$("#mod_nombre_evento").val(),
				fecha:$("#mod_fecha_evento").val(),
				direccion:$("#mod_direccion_evento").val()
			};
			$.ajax({
			    url : '../controller/evento.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Evento actualizado.", "alert-success");
			    		setTimeout(function(){
			    			listar_participante();
			    			$(".cerrar_modal").click(); }, 2000);
			    	}else if (respuesta.status == 500) {
			    		alert_message("Error! ","Hubo un error con el servidor.", "alert-danger");
			    	};
			    },
			    error : function(respuesta) {
			        alert_message("Error! ","Imposible conectar con el servidor, intente de nuevo más tarde.", "alert-danger");
			    },
			    // código a ejecutar sin importar si la petición falló o no
			    // complete : function(xhr, status) {
			    //     alert('LOADING!!!!!!!!!!');
			    // }
			});
    	}
    });
	// ------------------------------------------

	// ACCION ELIMINAR EVENTO--------------------
	$('#tabla_lista_usuario tbody').on("click", ".accion_eliminar", function(){
		$(this).confirmation({
			onConfirm: function() {
				var data = table.row($(this).parents("tr")).data();
				var datos = {
					tipo:"eliminar",
					id:data.id
				}
				$.ajax({
				    url : '../controller/evento.php',
				    data : datos,
				    type : 'POST',
				    dataType : 'json',
				    success : function(respuesta) {
				    	if (respuesta.status == 200) {
				    		listar_participante();
				    	}else if (respuesta.status == 500) {
				    		alert_message("Error! ","Hubo un error con el servidor.", "alert-danger");
				    	};
				    },
				    error : function(respuesta) {
						alert_message("Error! ","Imposible conectar con el servidor, intente de nuevo más tarde.", "alert-danger");
				    },
				    // código a ejecutar sin importar si la petición falló o no
				    // complete : function(xhr, status) {
				    //     alert('LOADING!!!!!!!!!!');
				    // }
				});
			}
		});
		$(this).confirmation( 'show' );
	});
	// ------------------------------------------
}

function alert_message(strong, span, tipo){
	$("#mensaje-strong").text(strong+" ");
	$("#mensaje-span").text(span);
	$(".mensaje-div").addClass("alert "+tipo);
	$(".mensaje-div").slideDown();
	setTimeout(function(){ $(".mensaje-div").slideUp(); }, 2500);
}
