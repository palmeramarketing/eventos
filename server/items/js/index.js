$(document).ready(function() {
	$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form-inicio-sesion").validate({
    	rules:{
            usuario_r:{required:!0,minlength:2},
            password_r:{required:!0,minlength:5}
    	},
    	submitHandler: function(form) {
			var datos = {
				tipo:"login",
				usuario:$("#usuario").val(),
				password:$("#password").val()
			};
			$.ajax({
			    url : 'controller/usuario.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
							if(respuesta.data.estatus == 1){
								var id= respuesta.data.id;
								window.location.href = "view/inicio.php?login="+id;
							}else if(respuesta.data.estatus == 2){
								$("#inicio").hide();
								$("#recuperar").hide();
								$("#correo").val(respuesta.data.email);
								$("#cambiar").show();
							}else if (respuesta.data.estatus == 0) {
								alert_message("Aviso! ","Su usuario se encuentra bloquedo temporalmente, comuniquese con el administrador del sistema.", "alert-warning");
							}
			    	}else if (respuesta.status == 1062) {
							alert_message("Aviso! ","El usuario ya existe.", "alert-warning");
			    	}else if (respuesta.status == 404) {
							alert_message("Aviso! ","Usuario o contraseña incorrectas.", "alert-warning");
			    	}else if (respuesta.status == 500) {
							alert_message("Error! ","Hubo un error con el servidor.", "alert-danger");
			    	};
			    },
			    error : function(respuesta) {
						alert_message("Error! ","Hubo un error con el servidor, intente de nuevo más tarde.", "alert-danger");
			    },
			    // código a ejecutar sin importar si la petición falló o no
			    // complete : function(xhr, status) {
			    //     alert('LOADING!!!!!!!!!!');
			    // }
			});
    	}
    });

		$("#olvido_passw").on("click", function(){

			 $("#inicio").hide();
			 $("#recuperar").show();
			 $("#cambiar").hide();

		})

		$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	 $("#form-recueperar").validate(
			{
						rules:{
							 email:{required:!0,email:!0},
						},
						messages:{
								 email:{},
						 },
						 submitHandler: function(form) {

									 $.ajax({
										 url : "controller/usuario.php",
										 data : {correo: $("#email").val(), tipo: "recuperar_password"},
										 type : "POST",
										 dataType: "json",
										 success : function(result) {
											 if(result == 500){
												alert_message("Error! ","Hubo un error con el servidor.", "alert-danger");
											 }else if (result == 404){
												alert_message("Aviso! ","Usted no posee usuario en el sistema.", "alert-warning");
											 }else {
												 alert_message("Exito! ","Su nueva clave fue enviada a su correo"+result, "alert-success");
												 $("#inicio").show();
												 $("#recuperar").hide();
												 $("#cambiar").hide();
											 }
										 }
									 })

						 }

			})

		$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	 $("#form-cambiar").validate(
			{
				rules:{
					 password1:{required:!0,minlength:5},
					 password2:{required:!0, minlength:5},
				},
				messages:{
						 password1:{},
						 password2:{},
				 },
				 submitHandler: function(form) {

						 if($("#password1").val() != $("#password2").val()){
							 alert_message("Error! ","Verfique que los passwords ingresados coincidan.", "alert-danger");
							 return false;
						 }

						 $.ajax({
							 url : "controller/usuario.php",
							 data : {correo: $("#correo").val(), passwd: $("#password1").val(), tipo: "cambiar_password"},
							 type : "POST",
							 dataType: "json",
							 success : function(result) {
								 if(result == 200){
									 alert_message("Exito! ","Ingrese con su nueva clave.", "alert-success");
									 $("#inicio").show();
									 $("#recuperar").hide();
									 $("#cambiar").hide();
								 }else{
									 alert_message("Error! ","Hubo un error con el servidor.", "alert-danger");
								 }
							 }
						 })

					}

			})

			function alert_message(strong, span, tipo){
				$(".mensaje-strong").text(strong+" ");
				$(".mensaje-span").text(span);
				$(".mensaje-div").addClass("alert "+tipo);
				$(".mensaje-div").slideDown();
				setTimeout(function(){ $(".mensaje-div").slideUp(); }, 5500);
			}

});
