$(document).ready(function(){
	var table;

	$(".nuevo_landing").attr("disabled",true);

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
		listar_landing_page($("#eventos_carga option:selected").val());
	});
	// ------------------------------------------

	$(".boton_listar").click(function(){
		listar_landing_page($("#eventos_carga option:selected").val());
	});

	// MOSTRAR FORMULARIO DE REGISTRO------------
	$(".nuevo_landing").click(function(){
		if ($(this).hasClass("active")) {
			$(".div_registrar").slideUp();
		}else{
			$(".div_registrar").slideDown();
		}
		$(this).toggleClass("active");
	});
	// ------------------------------------------

	$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_registro_landing").validate({
		rules:{
			nombre_landing:{required:!0,minlength:5},
			archivo_html:{required:!0}
		},
		submitHandler: function(form) {

			var form_data = new FormData($('#form_registro_landing')[0]);
			form_data.append("id_evento", $("#eventos_carga option:selected").val());

			$.ajax({
				url: "../controller/landing_page.php",
				data: form_data,
				contentType: false,
		        processData: false,
				type: "POST",
				dataType: "json",
				success: function(respuesta, status, req){
					if (respuesta.status == 200) {
						alert_message("Exito! ","Landing Page agregado.", "alert-success");
						listar_landing_page($("#eventos_carga option:selected").val());
					}else if (respuesta.status == 1062) {
						alert_message("Aviso! ","Ya existe un Landing Page con las mismas caracteristicas.", "alert-warning");
					}else{
						alert_message("Error! ","Hubo un error, pilla la consola a ver...", "alert-danger");
					}
					console.log(respuesta, status, req);
				},
				error: function(respuesta, status, req){
					alert_message("Error! ","CRASH, pilla la consola a ver que paso...", "alert-danger");
					console.log(respuesta, status, req);
				}
			})
		}
	});
});

	// LISTAR LANDING PAGE----------------------
function listar_landing_page(id_evento){
	id_evento = parseInt(id_evento);
	if(Number.isInteger(id_evento)){
		$(".nuevo_landing").attr("disabled",false);
		var table = $('#tabla_lista_landing_page').DataTable({
			"destroy":true,
			"ajax":{
				"method":"POST",
				"data":{id_evento:id_evento},
				"url":"../controller/landing_page.php",
				"dataType":"json"
			},
			"columns":[
				{"data":"id"},
				{"data":"nombre_landing"},
				{"data":"hash_id"},
				{"data":"estatus"},
				{"defaultContent":"<span id='boton-accion' class='accion_modificar glyphicon glyphicon-cog' data-toggle='modal' data-target='#myModal'></span>\
								   <span id='boton-accion' class='glyphicon glyphicon-trash accion_eliminar' data-toggle='confirmation' data-title='¿Estás seguro?'></span>\
								   <span id='boton-accion' class='glyphicon glyphicon-link accion_linkear' data-toggle='modal' data-target='#ModalLink'></span>"}
			]
		});
	}else{
		$(".nuevo_landing").attr("disabled",true);
		$(".div_registrar").css("display","none");
		var table = $('#tabla_lista_landing_page').DataTable();
		table.clear().draw();
	}

	// CARGAR DATOS MODAL MODIFICAR--------------
	$('#tabla_lista_landing_page tbody').unbind("click"); //IMPORTANTE NO MODIFICAR
	$('#tabla_lista_landing_page tbody').on("click", ".accion_modificar", function(){
		var data = table.row($(this).parents("tr")).data();
		id_landing = data.id;
		$("#mod_nombre_landing").val(data.nombre_landing);
	});
	// ------------------------------------------

	// ACCION LINKEAR LANDING PAGE---------------
	$('#tabla_lista_landing_page tbody').on("click", ".accion_linkear", function(){
		var host = location.hostname;
		var data = table.row($(this).parents("tr")).data();
		var hash = data.hash_id;
		var link = "http://"+host+"/eventos/landings/view/index.php?hash="+hash;
		$("#link_input_landing").val(link);
		$("#vinculo_landing").attr("href", link);
	});
	// ------------------------------------------

	// ACCION MODIFICAR LANDING PAGE-------------
	$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_modifi_landing").validate({
    	rules:{
            mod_nombre_landing:{required:!0,minlength:2},
            mod_archivo_html:{required:!0},
    	},
    	submitHandler: function(form) {

    		var form_data = new FormData($('#form_modifi_landing')[0]);
			form_data.append("id_landing", id_landing);

			$.ajax({
			    url : '../controller/landing_page.php',
			    data: form_data,
				contentType: false,
		        processData: false,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Participante actualizado.", "alert-success");
			    		setTimeout(function(){
			    			$(".cerrar_modal").click();
			    			listar_landing_page($("#eventos_carga option:selected").val());
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

	// ACCION ELIMINAR LANDING PAGE-------------
	$('#tabla_lista_landing_page tbody').on("click", ".accion_eliminar", function(){
		$(this).confirmation({
			onConfirm: function() {
				var data = table.row($(this).parents("tr")).data();
				var datos = {
					tipo:"eliminar_landing",
					id_landing:data.id
				};
				$.ajax({
				    url : '../controller/landing_page.php',
				    data : datos,
				    type : 'POST',
				    dataType : 'json',
				    success : function(respuesta) {
				    	if (respuesta.status == 200) {
				    		listar_landing_page($("#eventos_carga option:selected").val());
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