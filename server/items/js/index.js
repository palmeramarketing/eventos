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
			    		// Convertir objeto en Array devoviendo solo el Valor
				    	var array = $.map(respuesta.data, function(value, index) {
						    return [value];
						});
						console.log(array.toString());
			    		window.location.href = "view/inicio.php?login="+array.toString();
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