$(document).ready(function() {
	var id_event;
	var table;
	var cont_opcion = 2;

	$(".nueva_pregunta").attr("disabled",true);

	$.ajax({
	    url : '../controller/participante.php',
	    data : {tipo:"select"},
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
		$(".div_registrar").css("display","block");
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
    			var opciones = $('#form_registro_pregunta').serializeArray(); //Campos del form convertidos en Array
    			if (validacion_opciones(opciones) == true){
    				$("input[type=text]").removeClass("input_opcion_vacio");
    				opciones.shift(); //Eliminar primera posicion
					datos.respuestas = opciones;
    			}else{
    				return false;
    			}
    		}else if (tipo_pregunta == "libre") {
    			datos.respuestas = "textarea";
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
			    		$(".boton_listar").click();
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
				{"defaultContent":"<span id='boton-accion' class='glyphicon glyphicon-eye-open accion_modificar' data-toggle='modal' data-target='#myModal''>\
				</span><span id='boton-accion' class='glyphicon glyphicon-trash accion_eliminar' data-toggle='confirmation' data-title='¿Estás seguro?'></span>"}
			]
		});
	}else{
		$(".nueva_pregunta").attr("disabled",true);
		$(".div_registrar").css("display","none");
		var table = $('#tabla_lista_preguntas').DataTable();
		table.clear().draw();
	}

	// CARGAR DATOS MODAL MODIFICAR--------------
	$('#tabla_lista_preguntas tbody').on("click", ".accion_modificar", function(){
		var data = table.row($(this).parents("tr")).data();
		id_pregunta = data.id;
		$("#mod_pregunta").text(data.pregunta);
		$("#mod_tipo_pregunta").text(data.tipo);
		$.ajax({
		    url : '../controller/encuesta.php',
		    data : {id: id_pregunta, tipo: "buscar-respuestas"},
		    type : 'POST',
		    dataType : 'json',
		    success : function(respuesta) {
	    		for (var i = 0; i < respuesta.data.length; i++) {
					$("<div class='form-group sistema_opciones limpiar_campos_modal' id='div-opcion-"+i+"'>\
			          <div class='col-xs-8 col-xs-offset-1'>\
			          	<div class='input-group'>\
			          		<span>"+respuesta.data[i].descripcion+"</span>\
			            </div>\
			          </div>\
			        </div>").insertAfter(".tipo_pregunta");
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
            mod_tipo_pregunta:{required:!0,minlength:5}
    	},
    	submitHandler: function(form) {
			var datos = {
				tipo:"modificar", 
				id: id_pregunta,
				pregunta:$("#mod_pregunta").val(),
				tipo:$("#mod_tipo_pregunta").val()
			};
			$.ajax({
			    url : '../controller/encuesta.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Pregunta actualizada.", "alert-success");
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
	$(".mensaje-div").css("display","block");
};

function cerrar_opcion(contador){
	$("#div-opcion-"+contador).remove();
};

function validacion_opciones(opciones){
	var valid = true;
	for (x=1; x<opciones.length; x++){
		if (opciones[x].value == "") {
			$("#"+opciones[x].name).addClass("input_opcion_vacio");
			valid = false;
		}
	}
	return valid;
};