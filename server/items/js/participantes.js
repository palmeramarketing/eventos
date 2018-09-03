$(document).ready(function() {
	var id_event;
	var table;

	$(".nuevo_participante").attr("disabled",true);

	$.ajax({
	    url : '../controller/participante.php',
	    data : {tipo:"select", id: $('#id_user_logeado').val(), perfil: $('#perfil_user_logeado').val()},
	    type : 'POST',
	    dataType : 'json',
	    success : function(respuesta) {
	    	$(respuesta.data).each(function(indice, valor){
                $("#eventos_carga").append('<option value="' + valor.id + '">' + valor.nombre + '</option>');
            })

	    },
	    error : function(respuesta) {
	    },
	    complete : function(xhr, status) {
	    }
	});

	// MOSTRAR PARTICIPANTES-----------------------------
	var evento = $("#evento").val();
	if (evento > 0) {
		listar_participantes(evento);
	}

	// SELECT EVENTO-----------------------------
	$("#eventos_carga").change(function(){
		listar_participantes($("#eventos_carga option:selected").val());
	});
	// ------------------------------------------

	$(".boton_listar").click(function(){
		listar_participantes($("#eventos_carga option:selected").val());
	});

	// CARGAR DATEPICKER-------------------------
	$('.input-group.date').datepicker({
		format: "yyyy-mm-dd"
	});
	// ------------------------------------------

	// MOSTRAR FORMULARIO DE REGISTRO------------
	$(".nuevo_participante").click(function(){
		if ($(this).hasClass("active")) {
			$(".div_registrar").slideUp();
		}else{
			$(".div_registrar").slideDown();
		}
		$(this).toggleClass("active");
	});
	// ------------------------------------------

	// ACCION REGISTRAR PARTICIPANTE-------------
    $("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_registro_participante").validate({
    	rules:{
            email_participante:{required:!0,email:!0},
            nombre_participante:{required:!0,minlength:2},
            apellido_participante:{required:!0,minlength:2},
            direccion_participante:{required:!0,minlength:5},
            telefono_participante:{required:!0,minlength:5}
    	},
    	submitHandler: function(form) {
			var datos = {
				tipo:"registrar",
				id_evento:$("#eventos_carga option:selected").val(),
				email:$("#email_participante").val(),
				nombre:$("#nombre_participante").val(),
				apellido:$("#apellido_participante").val(),
				direccion:$("#direccion_participante").val(),
				telefono:$("#telefono_participante").val()
			};
			$.ajax({
			    url : '../controller/participante.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Nuevo participante registrado.", "alert-success");
			    		$("#form_registro_participante")[0].reset();
			    		listar_participantes($("#eventos_carga option:selected").val());
			    	}else if (respuesta.status == 1062) {
			    		alert_message("Aviso! ","El participante ya existe.", "alert-warning");
			    	}else if (respuesta.status == 500) {
			    		alert_message("Error! ","Hubo un error con el servidor.", "alert-danger");
			    	}else if (respuesta.status == 409) {
			    		alert_message("Info! ","El participante ya está registrado en éste evento.", "alert-info");
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
});

	// LISTAR PARTICIPANTES----------------------
function listar_participantes(id_evento){
	id_evento = parseInt(id_evento);
	if(Number.isInteger(id_evento)){
		$(".nuevo_participante").attr("disabled",false);
		var table = $('#tabla_lista_participantes').DataTable({
			"destroy":true,
			"ajax":{
				"method":"POST",
				"data":{id:id_evento},
				"url":"../controller/participante.php",
				"dataType":"json"
			},
			"columns":[
				{"data":"email"},
				{"data":"nombre"},
				{"data":"apellido"},
				{"data":"direccion"},
				{"data":"telefono"},
				{"defaultContent":"<span id='boton-accion' title='Editar Participante' class='accion_modificar glyphicon glyphicon-edit' data-toggle='modal' data-target='#myModal''></span>\
								   <span id='boton-accion' title='Eliminar Participante' class='glyphicon glyphicon-trash accion_eliminar' data-toggle='confirmation' data-title='¿Estás seguro?'></span>"}
			]
		});
	}else{
		$(".nuevo_participante").attr("disabled",true);
		$(".div_registrar").css("display","none");
		var table = $('#tabla_lista_participantes').DataTable();
		table.clear().draw();
	}

	// CARGAR DATOS MODAL MODIFICAR--------------
	$('#tabla_lista_participantes tbody').unbind("click"); //IMPORTANTE NO MODIFICAR
	$('#tabla_lista_participantes tbody').on("click", ".accion_modificar", function(){
		var data = table.row($(this).parents("tr")).data();
		id_participante = data.id;
		$("#mod_email_participante").val(data.email);
		$("#mod_nombre_participante").val(data.nombre);
		$("#mod_apellido_participante").val(data.apellido);
		$("#mod_direccion_participante").val(data.direccion);
		$("#mod_telefono_participante").val(data.telefono);
	});
	// ------------------------------------------

	// ACCION MODIFICAR PARTICIPANTE-------------
	$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_modifi_participante").validate({
    	rules:{
            email_participante:{required:!0,email:!0},
            nombre_participante:{required:!0,minlength:2},
            apellido_participante:{required:!0,minlength:2},
            direccion_participante:{required:!0,minlength:5},
            telefono_participante:{required:!0,minlength:5}
    	},
    	submitHandler: function(form) {
			var datos = {
				tipo:"modificar",
				id: id_participante,
				email:$("#mod_email_participante").val(),
				nombre:$("#mod_nombre_participante").val(),
				apellido:$("#mod_apellido_participante").val(),
				direccion:$("#mod_direccion_participante").val(),
				telefono:$("#mod_telefono_participante").val()
			};
			$.ajax({
			    url : '../controller/participante.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Participante actualizado.", "alert-success");
			    		setTimeout(function(){
			    			$(".cerrar_modal").click();
			    			$(".boton_listar").click();
			    		}, 3500);
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

	// ACCION ELIMINAR PARTICIPANTES-------------
	$('#tabla_lista_participantes tbody').on("click", ".accion_eliminar", function(){
		$(this).confirmation({
			onConfirm: function() {
				var data = table.row($(this).parents("tr")).data();
				var datos = {
					tipo:"eliminar",
					id:data.id
				};
				$.ajax({
				    url : '../controller/participante.php',
				    data : datos,
				    type : 'POST',
				    dataType : 'json',
				    success : function(respuesta) {
				    	if (respuesta.status == 200) {
				    		$(".boton_listar").click();
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
	// ------------------------------------------

function alert_message(strong, span, tipo){
	$("#mensaje-strong").text(strong+" ");
	$("#mensaje-span").text(span);
	$(".mensaje-div").addClass("alert "+tipo);
	$(".mensaje-div").slideDown();
	setTimeout(function(){ $(".mensaje-div").slideUp(); }, 2500);
}
