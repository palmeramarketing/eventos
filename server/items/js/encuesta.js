$(document).ready(function() {
	var id_event;
	var table;
	var cont_opcion = 2;

	$(".nueva_pregunta").attr("disabled",true);

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
	$(".nueva_pregunta").click(function(){
		if ($(this).hasClass("active")) {
			$(".div_registrar").slideUp();
		}else{
			$(".div_registrar").slideDown();
		}
		$(this).toggleClass("active");
	});
	// ------------------------------------------

	$("#tipo_pregunta").change(function(){
		var seleccion = $("#tipo_pregunta option:selected").val();
		if ((seleccion == "simple") || (seleccion == "multi")) {
			$(".textarea_opcion").css("display", "none");
			$(".sistema_opciones").css("display", "block");
		}else if (seleccion == "libre"){
			$(".sistema_opciones").css("display", "none");
			$(".textarea_opcion").css("display", "block");
		}else{
			$(".textarea_opcion").css("display", "none");
			$(".sistema_opciones").css("display", "none");
		}
	});

	$("#mod_tipo_pregunta_edit").change(function(){
		var seleccion = $("#mod_tipo_pregunta_edit option:selected").val();
		if ((seleccion == "simple") || (seleccion == "multi")) {
			$(".textarea_opcion").css("display", "none");
			$(".sistema_opciones").css("display", "block");
			$(".botn_agregar_opcion").css("display", "block");
		}else if (seleccion == "libre"){
			$(".sistema_opciones").css("display", "none");
			$(".botn_agregar_opcion").css("display", "none");
			$(".textarea_opcion").css("display", "block");
		}else{
			$(".textarea_opcion").css("display", "none");
			$(".sistema_opciones").css("display", "none");
			$(".botn_agregar_opcion").css("display", "none");
		}
	});

	$("#agregar_respuesta").click(function(){
		cont_opcion++;
		$("<div class='form-group sistema_opciones' id='div-opcion-"+cont_opcion+"'>\
	          <div class='col-xs-8 col-xs-offset-1'>\
	          	<div class='input-group'>\
	            	<input type='text' id='opcion-"+cont_opcion+"' name='opcion-"+cont_opcion+"' tabindex="+cont_opcion+" placeholder='Opci&oacute;n' class='form-control input_style'>\
	            	<span class='input-group-addon cerrar_opcion' style='cursor: pointer;' onclick='cerrar_opcion("+cont_opcion+")'>X</span>\
	            </div>\
	          </div>\
	        </div>").insertBefore(".div_agregar_respuesta");
	});

	// ACCION REGISTRAR ENCUESTA-------------
    $("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_registro_pregunta").validate({
    	rules:{
            crear_pregunta:{required:!0,minlength:5}
    	},
    	submitHandler: function(form) {
    		var tipo_pregunta = $("#tipo_pregunta option:selected").val();
    		var datos = {
				tipo: "registrar",
				id_evento: $("#eventos_carga option:selected").val(),
				pregunta: $("#crear_pregunta").val(),
				tipo_pregunta: tipo_pregunta
			}
    		if ((tipo_pregunta == "simple") || (tipo_pregunta == "multi")) {
    			var opciones = $('[id*=opcion-], form_registro_pregunta').serializeArray(); //Campos del form convertidos en Array

    			if (validacion_opciones(opciones) == true){
    				$("input[type=text]").removeClass("input_opcion_vacio");
					datos.respuestas = opciones;
    			}else{
    				return false;
    			}
    		}else if (tipo_pregunta == "libre") {
    			datos.respuestas = "Respuesta Libre";
    		}else{
    			return false;
    		}
			$.ajax({
			    url : '../controller/encuesta.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Nueva pregunta registrada.", "alert-success");
			    		$("#form_registro_pregunta")[0].reset();
			    		listar_participantes($("#eventos_carga option:selected").val());
			    	}else if (respuesta.status == 500) {
			    		alert_message("Error! ","Hubo un error con el servidor.", "alert-danger");
			    	};
			    },
			    error : function(respuesta) {
			    	console.log(respuesta);
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
		$(".nueva_pregunta").attr("disabled",false);
		var table = $('#tabla_lista_preguntas').DataTable({
			"destroy":true,
			"ajax":{
				"method":"POST",
				"data":{id:id_evento},
				"url":"../controller/encuesta.php",
				"dataType":"json"
			},
			"columns":[
				{"data":"pregunta"},
				{"data":"tipo"},
				{"defaultContent":"<span id='boton-accion' title='Editar Encuesta' class='glyphicon glyphicon-edit accion_mod' data-toggle='modal' data-target='#myModal_modifcar''>\
				</span><span id='boton-accion' title='Ver Encuesta' class='glyphicon glyphicon-eye-open accion_ver' data-toggle='modal' data-target='#myModal''>\
				</span><span id='boton-accion' title='Eliminar Encuesta' class='glyphicon glyphicon-trash accion_eliminar' data-toggle='confirmation' data-title='¿Estás seguro?'></span>"}
			]
		});
	}else{
		$(".nueva_pregunta").attr("disabled",true);
		$(".div_registrar").css("display","none");
		var table = $('#tabla_lista_preguntas').DataTable();
		table.clear().draw();
	}

	// CARGAR DATOS MODAL MODIFICAR--------------
	$('#tabla_lista_preguntas tbody').unbind("click"); //IMPORTANTE NO MODIFICAR
	$('#tabla_lista_preguntas tbody').on("click", ".accion_mod", function(){
		var data = table.row($(this).parents("tr")).data();
		id_pregunta = data.id;
		$("#mod_pregunta_edit").val(data.pregunta);
		$("#mod_tipo_pregunta_edit").val(data.tipo);
		var tipo_pregunta= data.tipo;
		if ((data.tipo == "simple") || (data.tipo == "multi")) {
			$(".botn_agregar_opcion").css("display", "block");
		}else if (data.tipo == "libre"){
			$(".botn_agregar_opcion").css("display", "none");
		}else{
			$(".botn_agregar_opcion").css("display", "none");
		}

		$.ajax({
		    url : '../controller/encuesta.php',
		    data : {id: id_pregunta, tipo: "buscar-respuestas"},
		    type : 'POST',
		    dataType : 'json',
		    success : function(respuesta) {
		    	console.log(respuesta);
					var posicion;
					if ((tipo_pregunta == "simple") || (tipo_pregunta == "multi")) {
						for (var i = 0; i < respuesta.data.length; i++) {
							posicion= i + 1;
							$("<div class='form-group sistema_opciones limpiar_campos_modal' id='div-opcion-edit-"+posicion+"'>\
							<div class='col-xs-8 col-xs-offset-2'>\
							<label>Respuesta "+posicion+"</label>\
							<div class='input-group'>\
							<input type='hidden' id='mod_id_pregunta"+posicion+"' name='mod_id_pregunta"+posicion+"' Value='"+respuesta.data[i].id+"' >\
							<input type='text' id='mod_respuesta_edit"+posicion+"' name='mod_respuesta_edit"+posicion+"' Value='"+respuesta.data[i].descripcion+"' class='form-control input_style'>\
							<span class='input-group-addon cerrar_opcion' style='cursor: pointer;' onclick='elimnar_opcion("+posicion+", "+respuesta.data[i].id+")'>X</span>\
							</div>\
							</div>\
							</div>").insertBefore(".botn_agregar_opcion");
						}
						$(".textarea_opcion").css("display", "none");
						$("#mod_id_libre").val("");
						$('[id*=div-opcion-edt]').remove();
					}else if (tipo_pregunta == "libre"){
						$(".botn_agregar_opcion").css("display", "none");
						$(".textarea_opcion").css("display", "block");
						$("#mod_id_libre").val(respuesta.data[0].id);
					}
					$('#agregar_respuesta_edit').unbind("click");
					$("#agregar_respuesta_edit").click(function(){
						posicion++;
						$("<div class='form-group sistema_opciones' id='div-opcion-edt"+posicion+"'>\
					          <div class='col-xs-8 col-xs-offset-2'>\
										<label>Respuesta </label>\
					          	<div class='input-group'>\
					            	<input type='text' id='mod_respuesta_new"+posicion+"' name='mod_respuesta_new"+posicion+"' tabindex="+posicion+" placeholder='Opci&oacute;n' class='form-control input_style'>\
					            	<span class='input-group-addon cerrar_opcion' style='cursor: pointer;' onclick='cerrar_opcion_editar("+posicion+")'>X</span>\
					            </div>\
					          </div>\
					        </div>").insertBefore(".botn_agregar_opcion");
					});
		    },
		    error : function(respuesta) {
		    	alert_message("Error! ","Imposible conectar con el servidor, intente de nuevo más tarde.", "alert-danger");
		    }
		});
	});
	// ------------------------------------------

	// CARGAR DATOS MODAL MODIFICAR--------------
	$('#tabla_lista_preguntas tbody').on("click", ".accion_ver", function(){
		var data = table.row($(this).parents("tr")).data();
		id_pregunta = data.id;
		var tipo_pregunta= data.tipo;
		$("#mod_pregunta").text(data.pregunta);
		$("#mod_tipo_pregunta").text("Respuesta "+tipo_pregunta);
		$.ajax({
		    url : '../controller/encuesta.php',
		    data : {id: id_pregunta, tipo: "buscar-respuestas"},
		    type : 'POST',
		    dataType : 'json',
		    success : function(respuesta) {
		    	console.log(respuesta);
					if ((tipo_pregunta == "simple") || (tipo_pregunta == "multi")){
						for (var i = respuesta.data.length - 1; i >= 0; i--) {
						$("<div class='form-group sistema_opciones limpiar_campos_modal' id='div-opcion-"+i+"'>\
				          <div class='col-xs-8 col-xs-offset-2'>\
				          	<div class='input-group'>\
				          		<span>"+respuesta.data[i].descripcion+"</span>\
				            </div>\
				          </div>\
				        </div>").insertAfter(".tipo_pregunta");
		    		}
					}
		    },
		    error : function(respuesta) {
		    	alert_message("Error! ","Imposible conectar con el servidor, intente de nuevo más tarde.", "alert-danger");
		    }
		});
	});
	// ------------------------------------------

	// ACCION LIMPIAR MODAL----------------------
	$(".cerrar_modal").click(function(e){
		if ($(e.target).is('.cerrar_modal')) {
			setTimeout(function(){
				$(".limpiar_campos_modal").remove();
			}, 500);
    	}
	});
	// ------------------------------------------


	// ACCION MODIFICAR PREGUNTAS-------------
	$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_modifi_preguntas").validate({
    	rules:{
            mod_pregunta:{required:!0,minlength:5},
            mod_tipo_pregunta:{required:!0}
    	},
    	submitHandler: function(form) {
			var tipo_pregunta = $("#mod_tipo_pregunta_edit option:selected").val();
			var datos = {
				tipo:"modificar",
				id: id_pregunta,
				pregunta:$("#mod_pregunta_edit").val(),
				tipo_pregunta:$("#mod_tipo_pregunta_edit").val()
			};

			if ((tipo_pregunta == "simple") || (tipo_pregunta == "multi")) {
				var opciones_id = $('[id*=mod_id_pregunta], form_modifi_preguntas').serializeArray(); //Campos del form convertidos en Array
				var opciones_resp = $('[id*=mod_respuesta_edit], form_modifi_preguntas').serializeArray(); //Campos del form convertidos en Array
				var opciones_new = $('[id*=mod_respuesta_new], form_modifi_preguntas').serializeArray(); //Campos del form convertidos en Array

				if(opciones_resp.length < 2 && opciones_new.length < 2){
					alert_message("Aviso! ","Debes tener al menos 2 respuestas", "alert-warning");
					return false;
				}

				if (validacion_opciones(opciones_resp) == true){
					$("input[type=text]").removeClass("input_opcion_vacio");
				datos.respuestas = opciones_resp;
				datos.respuestas_id = opciones_id;
				}else{
					return false;
				}

				if (opciones_new.length > 0){
					if (validacion_opciones(opciones_new) == true){
						$("input[type=text]").removeClass("input_opcion_vacio");
						datos.respuestas_new = opciones_new;
					}else{
						return false;
					}
				} else {
					datos.respuestas_new = 0;
				}

			}else if (tipo_pregunta == "libre") {
				datos.respuestas = "Respuesta Libre";
				datos.respuestas_id = $("#mod_id_libre").val();
			}else{
				return false;
			}

			$.ajax({
			    url : '../controller/encuesta.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Pregunta actualizada.", "alert-success");
			    		setTimeout(function(){
								listar_participantes($("#eventos_carga option:selected").val());
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

	// ACCION ELIMINAR PREGUNTA------------------
	$('#tabla_lista_preguntas tbody').on("click", ".accion_eliminar", function(){
		$(this).confirmation({
			onConfirm: function() {
				var data = table.row($(this).parents("tr")).data();
				var datos = {
					tipo:"eliminar",
					id:data.id
				};
				$.ajax({
				    url : '../controller/encuesta.php',
				    data : datos,
				    type : 'POST',
				    dataType : 'json',
				    success : function(respuesta) {
				    	if (respuesta.status == 200) {
				    		//$(".boton_listar").click();
				    		listar_participantes($("#eventos_carga option:selected").val());
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
	$(".mensaje-strong").text(strong+" ");
	$(".mensaje-span").text(span);
	$(".mensaje-div").addClass("alert "+tipo);
	$(".mensaje-div").slideDown();
	setTimeout(function(){ $(".mensaje-div").slideUp(); }, 2500);
};

function cerrar_opcion(contador){
	$("#div-opcion-"+contador).remove();
};

function cerrar_opcion_editar(contador){
	$("#div-opcion-edt"+contador).remove();
};

function elimnar_opcion(contador, id_pregunta){
	var datos = {
		tipo:"eliminar_respuesta",
		id:id_pregunta
	};
	$.ajax({
			url : '../controller/encuesta.php',
			data : datos,
			type : 'POST',
			dataType : 'json',
			success : function(respuesta) {
				if (respuesta.status == 200) {
					$("#div-opcion-edit-"+contador).remove();
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
};


function validacion_opciones(opciones){
	var valid = true;
	for (x=0; x<opciones.length; x++){
		if (opciones[x].value == "") {
			$("#"+opciones[x].name).addClass("input_opcion_vacio");
			valid = false;
		}
	}
	return valid;
};
