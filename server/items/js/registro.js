$(document).ready(function() {
	$("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	$.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	$("#form_registro_usaurio").validate({
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
			    		$("#mensaje-strong").text("Exito! ");
			    		$("#mensaje-span").text("Nuevo usuario registrado.");
			    		$(".mensaje-div").addClass("alert alert-success");
			    		$(".mensaje-div").css("display","block");
			    		setTimeout(function(){ window.location = "../index.php"; }, 3500);
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
});