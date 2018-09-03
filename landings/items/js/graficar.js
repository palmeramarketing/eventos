$(document).ready(function(){

	if ($("#id_event").attr("tipo") == "evento") {
		$.ajax({
		    url : '../controller/graficar.php',
		    data : {id_event: $("#id_event").val(), tipo: "evento"},
		    type : 'POST',
		    dataType : 'json',
		    success : function(respuesta) {
		    	console.log(respuesta);
		    	var preguntas = [];
		    	var series = [];
		    	var pos = 0;
		    	for (var i = respuesta["encuestas"].length - 1; i >= 0; i--) {
		    		preguntas[i] = respuesta["encuestas"][i]["pregunta"];
		    		for (var u = respuesta["encuestas"][i]["respuestas"].length - 1; u >= 0; u--) {
		    			series[pos] = {name: respuesta["encuestas"][i]["respuestas"][u]["name"], 
		    						 data: respuesta["encuestas"][i]["respuestas"][u]["data"]}
		    			pos++;
		    		}
		    	}
		    	$(function () { 
				    var myChart = Highcharts.chart('contenedor', {
				        chart: {
				            type: 'column'
				        },
				        title: {
				            text: $("#id_event").attr("evento")
				        },
				        legend: {
					        enabled: false
					        
					    },
				        xAxis: {
				            categories: preguntas //Preguntas
				        },
				        yAxis: {
				            title: {
				                text: 'Número de respuestas'
				            }
				        },
				        series: series
				    });
				});
		    },
		    error : function(respuesta) {
		        alert("NADA");
		    },
		    // código a ejecutar sin importar si la petición falló o no
		    // complete : function(xhr, status) {
		    //     alert('LOADING!!!!!!!!!!');
		    // }
		}); 	
	}
});
