$(document).ready(function(){
	$.ajax({
        url: "../controller/control.php",
        type: "POST",
        dataType: "json", 
        data: {id_event: 1, accion: "get_event"}, 
        success: function(data, status, req) {
        	if (data['status'] == 200) {
        		$("#evento").text(data['data']['nombre']);
        		$("#fecha_evento").text(data['data']['fecha']);
        		$("#dir_evento").text(data['data']['direccion']);
        	}else{
        		console.log("ERROR");
        	}
        },
        error: function (data, status, req) {
            console.log(req);
        }
    });
});