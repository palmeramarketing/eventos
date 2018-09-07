$(document).ready(function() {
	var id_event = undefined;

	listar_participante();

	$("#actualizar_datatable").click(function(){
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
			    		AddRow(datos);
			    	}else if (respuesta.status == 1062) {
			    		alert_message("Aviso! ","El evento ya existe.", "alert-warning");
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

});
$("#destruir").click(function(){
	$('#tabla_lista_eventos').DataTable().clear().draw();
});

function listar_participante(){
	// LISTAR EVENTOS----------------------------
	$('#tabla_lista_eventos').DataTable().destroy();
	var table = $('#tabla_lista_eventos').DataTable({
		"destroy":true,
		"ajax":{
			"method":"POST",
			"url":"../controller/evento.php",
			"data":{id: $('#id_user_logeado').val(), perfil: $('#perfil_user_logeado').val()},
			"dataType":"json"
		},
		"columns":[
			{"data":"id"},
			{"data":"nombre"},
			{"data":"fecha"},
			{"data":"direccion"},
			{"data":"hash"},
			{"defaultContent":"<span id='boton-accion' class='accion_modificar glyphicon glyphicon-edit' data-toggle='modal' title='Editar Evento' data-target='#myModal''>\
							   </span><span id='boton-accion' title='Eliminar Evento' class='glyphicon glyphicon-trash accion_eliminar' data-toggle='confirmation' data-title='¿Estás seguro?'></span>\
							   <span id='boton-accion' title='Mostrar grafico' class='accion_graficar glyphicon glyphicon-stats'></span>\
							   <span id='boton-accion' title='Mostrar Participantes' class='accion_participantes glyphicon glyphicon-user'></span>\
							   <span id='boton-accion' title='Mostrar Certificado' class='accion_certificado glyphicon glyphicon-file'></span>\
							   <span id='boton-accion' title='Mostrar Enlaces del Evento' class='glyphicon glyphicon-link accion_linkear' data-toggle='modal' data-target='#ModalLink'></span>"} 
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
	
	// ACCION LINKEAR LANDING PAGE---------------
	$('#tabla_lista_eventos tbody').on("click", ".accion_linkear", function(){
		var host = location.hostname;
		var data = table.row($(this).parents("tr")).data();
		var hash = data.hash;
		var link = "http://"+host+"/eventos/check-in_system/view/inicio.php?hash="+hash;
		$("#link_input_reg_principal").val(link);
		$("#vinculo_reg_principal").attr("href", link);
		// ---
		var link = "http://"+host+"/eventos/check-in_system/view/login.php?hash="+hash;
		$("#link_input_visitador").val(link);
		$("#vinculo_visitador").attr("href", link);
		// ---
		var link = "http://"+host+"/eventos/check-in_system/view/buscar.php?hash="+hash;
		$("#link_input_asistencia").val(link);
		$("#vinculo_asistencia").attr("href", link);
		// ---
		var link = "http://"+host+"/eventos/applyweb/index.php?hash="+hash;
		$("#link_input_encuesta").val(link);
		$("#vinculo_encuesta").attr("href", link);
		// ---
		var link = "http://"+host+"/eventos/check-in_system/view/certificado.php?hash="+hash;
		$("#link_input_certificado").val(link);
		$("#vinculo_certificado").attr("href", link);
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
	$('#tabla_lista_eventos tbody').on("click", ".accion_eliminar", function(){
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

	// ACCION MOSTRAR PARTICIPANTES--------------------
	$("#tabla_lista_eventos tbody").on("click", ".accion_participantes", function(){
		var data = table.row($(this).parents("tr")).data();
		window.location.href = "participantes.php?id_event="+data.id;
	});
	// ------------------------------------------
	
	// ACCION MOSTRAR CERTIFICADO--------------------
	$("#tabla_lista_eventos tbody").on("click", ".accion_certificado", function(){
		var data = table.row($(this).parents("tr")).data();
		window.location.href = "certificado.php?id_event="+data.id+"&evento="+data.nombre;
	});
	// ------------------------------------------
	
	// ACCION MOSTRAR lANDING PAGE--------------------
	//$("#tabla_lista_eventos tbody").on("click", ".accion_landing", function(){
	//	var data = table.row($(this).parents("tr")).data();
	
	//	window.location.href = "landing_page.php?id_event="+data.id;
	//});
	// ------------------------------------------
}

function AddRow(datos){
	var table = $('#tabla_lista_eventos').DataTable();
	var rowNode = table
	    .row.add({
	    	"nombre": datos["nombre"],
	        "fecha": datos["fecha"],
	        "direccion": datos["direccion"]
	    })
	    .draw()
	    .node();
	 
	$( rowNode )
	    .css( {
	    	"opacity": "0"
		})
	    .animate({
	    	opacity: "1"
		});
}

function alert_message(strong, span, tipo){
	$("#mensaje-strong").text(strong+" ");
	$("#mensaje-span").text(span);
	$(".mensaje-div").addClass("alert "+tipo);
	$(".mensaje-div").slideDown();
	setTimeout(function(){ $(".mensaje-div").slideUp(); }, 2500);
}
