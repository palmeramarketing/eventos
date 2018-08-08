$(document).ready(function() {
	var id_event = undefined;

	listar_usuarios();
	$.ajax({
	    url : '../controller/participante.php',
	    data : {tipo:"select", id: $('#id_user_logeado').val(), perfil: $('#perfil_user_logeado').val()},
	    type : 'POST',
	    dataType : 'json',
	    success : function(respuesta) {
	    	$(respuesta.data).each(function(indice, valor){
                $("#mod_evento").append('<option value="' + valor.id + '">' + valor.nombre + '</option>');
            })
	    },
	    error : function(respuesta) {
	    },
	    complete : function(xhr, status) {
	    }
	});

	$("#nuevo_user").click(function(){
		if ($(this).hasClass("active")) {
			$("#registroUser").slideUp();
		}else{
			$("#registroUser").slideDown();
		}
		$(this).toggleClass("active");
	});

	$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_registro_usuario").validate({
    	rules:{
            usuario_r:{required:!0,minlength:2},
            email_r:{required:!0,email:!0},
            password_r:{required:!0,minlength:5}
    	},
    	submitHandler: function(form) {
			var datos = {
				tipo:"registrar",
				usuario:$("#usuario_r").val(),
				email:$("#email_r").val(),
				password:$("#password_r").val()
			};
			$.ajax({
			    url : '../controller/usuario.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		alert_message("Exito! ","Nuevo usuario registrado.", "alert-success");
							$("#form_registro_usuario")[0].reset();
							listar_usuarios();
			    	}else if (respuesta.status == 1062) {
			    		$("#mensaje-strong").text("Aviso! ");
			    		$("#mensaje-span").text("El usuario ya existe.");
			    		$(".mensaje-div").addClass("alert alert-warning");
			    		$(".mensaje-div").css("display","block");
			    	}else if (respuesta.status == 500) {
			    		$("#mensaje-strong").text("Error! ");
			    		$("#mensaje-span").text("Hubo un error con el servidor.");
			    		$(".mensaje-div").addClass("alert alert-danger");
			    		$(".mensaje-div").css("display","block");
			    	};
			    },
			    error : function(respuesta) {
			        $("#mensaje-strong").text("Error! ");
		    		$("#mensaje-span").text("Hubo un error con el servidor, intente de nuevo m&aacute;s tarde.");
		    		$(".mensaje-div").addClass("alert alert-danger");
		    		$(".mensaje-div").css("display","block");
			    },
			    // código a ejecutar sin importar si la petición falló o no
			    // complete : function(xhr, status) {
			    //     alert('LOADING!!!!!!!!!!');
			    // }
			});
    	}
    });

		function listar_usuarios(){
			// LISTAR EVENTOS----------------------------
			var table = $('#tabla_lista_usuario').DataTable({
				"destroy":true,
				"ajax":{
					"method":"POST",
					"url":"../controller/usuario.php",
					"dataType":"json"
				},
				"columns":[
					{"data":"nombre"},
					{"data":"email"},
					{"data":"tipo"},
					{"data":"estatus"},
					{"defaultContent":"<span id='boton-accion' class='accion_modificar glyphicon glyphicon-cog' data-toggle='modal' data-target='#myModal''>\
										 </span><span id='boton-accion' class='accion_evento glyphicon glyphicon-plus' data-toggle='modal' data-target='#modalEventos''>\
									   </span><span id='boton-accion' class='glyphicon glyphicon-trash accion_eliminar' data-toggle='confirmation' data-title='¿Estás seguro?'></span>"}
				]
			});
			// ------------------------------------------

			// CARGAR DATOS MODAL MODIFICAR--------------
			$('#tabla_lista_usuario tbody').on("click", ".accion_modificar", function(){
				var data = table.row($(this).parents("tr")).data();
				id_event = data.id;
				$("#mod_usuario").val(data.nombre);
				$("#mod_email").val(data.email);
				$("#mod_tipo").val((data.tipo== "Administrador")? "admin" : "superadmin");
				$("#mod_estatus").val((data.estatus== "Activo")? 1: 0);
			});
			// ------------------------------------------

			// CARGAR DATOS MODAL EVENTOS--------------
			$('#tabla_lista_usuario tbody').on("click", ".accion_evento", function(){
				var data = table.row($(this).parents("tr")).data();
				$("#mod_id_user").val(data.id);
				var perfil= (data.tipo == "Administrador")? "admin" : "superadmin";

				$.ajax({
				    url : '../controller/participante.php',
				    data : {tipo:"select", id: data.id, perfil: perfil},
				    type : 'POST',
				    dataType : 'json',
				    success : function(respuesta) {
							$("#eventos_usuario").empty();
				    	$(respuesta.data).each(function(indice, valor){
			                $("#eventos_usuario").append(valor.nombre + ' ');
			        })
				    },
				    error : function(respuesta) {
				    },
				    complete : function(xhr, status) {
				    }
				});
			});
			// ------------------------------------------

			// ACCION MODIFICAR USUARIO-------------------
			$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
			$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
			$("#form_modifi_usuario").validate({
		    	rules:{
		            mod_usuario:{required:!0,minlength:2},
		            mod_email:{required:!0},
		            mod_tipo:{required:!0},
		            mod_estatus:{required:!0}
		    	},
		    	submitHandler: function(form) {
					var datos = {
						tipo:"modificar",
						id: id_event,
						nombre:$("#mod_usuario").val(),
						email:$("#mod_email").val(),
						perfil:$("#mod_tipo").val(),
						estatus:$("#mod_estatus").val()
					};
					$.ajax({
					    url : '../controller/usuario.php',
					    data : datos,
					    type : 'POST',
					    dataType : 'json',
					    success : function(respuesta) {
					    	if (respuesta.status == 200) {
					    		alert_message("Exito! ","Usuario actualizado.", "alert-success");
					    		setTimeout(function(){
					    			listar_usuarios();
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

			// ACCION AGREGAR EVENTO-------------------
			$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
			$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
			$("#form_evento_usuario").validate({

		    	submitHandler: function(form) {
					var datos = {
						tipo:"asignar_evento",
						id_evento:$("#mod_evento").val(),
						id_user:$("#mod_id_user").val()
					};
					$.ajax({
					    url : '../controller/usuario.php',
					    data : datos,
					    type : 'POST',
					    dataType : 'json',
					    success : function(respuesta) {
					    	if (respuesta.status == 200) {
					    		alert_message("Exito! "," Evento asignado.", "alert-success");
					    		setTimeout(function(){
					    			listar_usuarios();
					    			$(".cerrar_modal").click(); }, 2000);
					    	}else if (respuesta == 'existe') {
					    		alert_message("Aviso! ","El evento ya esta asignado al este usuario.", "alert-warning");
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
							tipo:"deshabilitar",
							id:data.id
						}
						$.ajax({
						    url : '../controller/usuario.php',
						    data : datos,
						    type : 'POST',
						    dataType : 'json',
						    success : function(respuesta) {
						    	if (respuesta.status == 200) {
						    		listar_usuarios();
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
		}

});
