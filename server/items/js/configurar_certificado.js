listar_certificados();
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

$("#nuevo_cert").click(function(){
	if ($(this).hasClass("active")) {
		$("#registroCert").slideUp();
	}else{
		$("#registroCert").slideDown();
	}
	$(this).toggleClass("active");
});

$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
$("#form_registrar_certificado").validate({
	rules:{
				eventos_carga:{required:!0},
				nombre:{required:!0,minlength:5},
				archivo_html:{required:!0},
	},
	submitHandler: function(form) {

		var form_data = new FormData($('#form_registrar_certificado')[0]);

		$.ajax({
			url: "../controller/certificado.php",
			data: form_data,
			contentType: false,
	        processData: false,
			type: "POST",
			dataType: "json",
			success: function(respuesta, status, req){
				if (respuesta.status == 200) {
					alert_message("Exito! ","Certificado agregado.", "alert-success");
					setTimeout(function(){
						listar_certificados(); }, 2000);
				}else if (respuesta.status == 1062) {
					alert_message("Aviso! ","Ya existe un certificado para este evento.", "alert-warning");
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

$("#enviar_cod_part").click(function(){
	if ($("#cod_part").val() == "") {
		return false;
	}
});

function listar_certificados(){
	// LISTAR EVENTOS----------------------------
	var table = $('#tabla_lista_cert').DataTable({
		"destroy":true,
		"ajax":{
			"method":"POST",
			"url":"../controller/certificado.php",
			"dataType":"json"
		},
		"columns":[
			{"data":"id"},
			{"data":"nombre"},
			{"data":"nombre_certificado"},
			{"defaultContent":"<span id='boton-accion' class='accion_ver glyphicon glyphicon-eye-open' data-toggle='modal' data-target='#myModal''>\
								 </span><span id='boton-accion' class='glyphicon glyphicon-trash accion_eliminar' data-toggle='confirmation' data-title='¿Estás seguro?'></span>"}
		]
	});

	// CARGAR DATOS MODAL MODIFICAR--------------
	$('#tabla_lista_cert tbody').on("click", ".accion_ver", function(){
		var data = table.row($(this).parents("tr")).data();
		var id_cert = data.id;
		$("#id_certificado").val(id_cert);
		$("#formCertificado").submit();
	});
	// ------------------------------------------


	// ACCION ELIMINAR EVENTO--------------------
	$('#tabla_lista_cert tbody').on("click", ".accion_eliminar", function(){
		$(this).confirmation({
			onConfirm: function() {
				var data = table.row($(this).parents("tr")).data();
				var datos = {
					tipo:"eliminar_certificado",
					id:data.id
				}
				$.ajax({
						url : '../controller/certificado.php',
						data : datos,
						type : 'POST',
						dataType : 'json',
						success : function(respuesta) {
							if (respuesta.status == 200) {
								listar_certificados();
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
	$(".mensaje-strong").text(strong+" ");
	$(".mensaje-span").text(span);
	$(".mensaje-div").addClass("alert "+tipo);
	$(".mensaje-div").slideDown();
	setTimeout(function(){ $(".mensaje-div").slideUp(); }, 2500);
};
