$(document).ready(function() {

	$('.input-group.date').datepicker({
		format: "yyyy-mm-dd"
	});

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
				direccion:$("#direccion_evento").val()
			};
			$.ajax({
			    url : '../controller/evento.php',
			    data : datos,
			    type : 'POST',
			    dataType : 'json',
			    success : function(respuesta) {
			    	if (respuesta.status == 200) {
			    		$("#mensaje-strong").text("Exito! ");
			    		$("#mensaje-span").text("Nuevo evento registrado.");
			    		$(".mensaje-div").addClass("alert alert-success");
			    		$(".mensaje-div").css("display","block");
			    	}else if (respuesta.status == 1062) {
			    		$("#mensaje-strong").text("Aviso! ");
			    		$("#mensaje-span").text("El evento ya existe.");
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