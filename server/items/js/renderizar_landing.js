$(document).ready(function(){

	$.ajax({
	    url : '../../server/controller/landing_page.php',
	    data : {tipo:"renderizar_landing", hash: $("#hash").val()},
	    type : 'POST',
	    dataType : 'json',
	    success : function(respuesta, status, req) {
	    	console.log(respuesta, status, req);
	    	if (respuesta["status"] == 200) {
	    		$("#instancia_provisional_jquery").hide();
	    		$(respuesta["data"][0]["data_html"]).insertBefore("#hash");
	    	}else{
	    		window.location.href = "error.html";
	    	}

	    },
	    error : function(respuesta, status, req) {
	    	console.log(respuesta, status, req);
	    },
	    complete : function(xhr, status) {
	    }
	});

});