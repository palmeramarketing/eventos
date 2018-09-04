$(document).ready(function() {

	var datos = {
		tipo:"perfil",
		usuario:$("#login").val()
	};

	buscar_usuario(datos);
	// $("input[type=submit]").button(),$("input").addClass("ui-corner-all"),
	// $.validator.addMethod("valueNotEquals",function(e,i,a){return a!==e},"Value must not equal arg."),
	// $("#form-inicio-sesion").validate({
 //    	rules:{
 //            usuario_r:{required:!0,minlength:2},
 //            password_r:{required:!0,minlength:5}
 //    	},
 //    	submitHandler: function(form) {
	// 		var datos = {
	// 			tipo:"login",
	// 			usuario:$("#usuario").val(),
	// 			password:$("#password").val()
	// 		};
 //    	}
 //    });
});

function buscar_usuario(datos){
	$.ajax({
	    url : '../controller/usuario.php',
	    data : datos,
	    type : 'POST',
	    dataType : 'json',
	    success : function(respuesta) {
	    	if (respuesta.status == 200) {
	    		console.log(respuesta);
	    		$("#email-show").text(respuesta.data[0].email);
	    		$("#usuario-show").text(respuesta.data[0].nombre);
	    		if (respuesta.data[0].tipo == "admin") {
	    			$("#tipo-show").text("Administrador");
	    		}else{
	    			$("#tipo-show").text(respuesta.data[0].tipo);
	    		}
	    		return false;
	    	}
	    },
	    error : function(respuesta) {
	        $("#mensaje-strong").text("Error! ");
    		$("#mensaje-span").text("Hubo un error con el servidor, intente de nuevo más tarde.");
    		$(".mensaje-div").addClass("alert alert-danger");
    		$(".mensaje-div").css("display","block");
	    },
	    // código a ejecutar sin importar si la petición falló o no
	    // complete : function(xhr, status) {
	    //     alert('LOADING!!!!!!!!!!');
	    // }
	});
}
