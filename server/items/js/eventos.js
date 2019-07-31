$(document).ready(function() {
	listar_encuestas();
	listar_facilitadores();
});

function listar_encuestas(){
	$.ajax({
	    url : '../controller/encuesta.php',
	    data : {id_evento: $("#id_evento").val()},
	    type : 'POST',
	    dataType : 'json',
	    success : function(respuesta) {
	    	// console.log(respuesta);
	    	if (respuesta.status == 200) {
	    		$(respuesta.data).each(function(indice, valor){
	    			$("<div class='row div_items'>\
			            <div class='col-md-6'>\
			              <span>"+valor.nombre+"</span>\
			            </div>\
			            <div class='col-md-6'>\
			              <span>"+valor.fecha_creado+"</span>\
			            </div>\
			          </div>").insertBefore("#div_container_encuestas");
	            })
	    		
	    	}
	    },
	    error : function(respuesta) {
	    	console.log(respuesta);
	    }
	});
}

function listar_facilitadores(){
	$.ajax({
	    url : '../controller/usuario.php',
	    data : {tipo: "usuarios_por_evento", id_evento: $("#id_evento").val()},
	    type : 'POST',
	    dataType : 'json',
	    success : function(respuesta) {
	    	// console.log(respuesta);
	    	if (respuesta.status == 200) {
	    		$(respuesta.data).each(function(indice, valor){
	    			$("<div class='row div_items'>\
			            <div class='col-md-4'>\
			              <span>"+valor.nombre+"</span>\
			            </div>\
			            <div class='col-md-4'>\
			              <span>"+valor.email+"</span>\
			            </div>\
			            <div class='col-md-4'>\
			              <span>"+valor.tipo+"</span>\
			            </div>\
			          </div>").insertBefore("#div_container_facilitadores");
	            })
	    		
	    	}
	    },
	    error : function(respuesta) {
	    	console.log(respuesta);
	    }
	});
}