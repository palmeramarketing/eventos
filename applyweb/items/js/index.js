$(document).ready(function(){
    var data = {
        id_evento: $("#id_evento").val(),
        email: $("#email").val()
    };
    $.ajax({
        url: "../controller/control.php",
        type: "POST",
        dataType: "json", 
        data: {datos: data, accion: "comprobar_cargar"}, 
        success: function(respuesta, status, req) {
            console.log(status, respuesta, req);
            var encuesta = respuesta.data;
            for (var i = 0; i < encuesta.length; i++) {

                var pregunta = "";
                var id_pregunta = "div_pregunta-"+i;
                var id_respuesta = "div_respuesta-"+i;

                pregunta = "<div class='div_pregunta' id="+id_pregunta+" hidden>\
                                <span>"+encuesta[i].pregunta+"</span>\
                            </div>\
                            <div class='div_respuesta' id="+id_respuesta+" hidden>\
                            </div>";

                $("#div_contenedor_encuesta").append(pregunta);

                var resp_html = "";
                var respuestas = "";

                for (var o = 0; o < encuesta[i].respuestas.length; o++) {

                    if (encuesta[i].tipo == "multi") {
                        resp_html = "<div class='div_resp'>\
                                        <input type='checkbox' name='checkbox-"+i+"' value="+encuesta[i].respuestas[o].descripcion+">\
                                        <span class='label_resp'>"+encuesta[i].respuestas[o].descripcion+"</span>\
                                    </div>";
                    }else if (encuesta[i].tipo == "simple") {
                        resp_html = "<div class='div_resp'>\
                                        <input type='radio' name='radio-"+i+"' value="+encuesta[i].respuestas[o].descripcion+">\
                                        <span class='label_resp'>"+encuesta[i].respuestas[o].descripcion+"</span>\
                                    </div>";
                    }else if (encuesta[i].tipo == "libre") {
                        resp_html = "<div class='div_resp'>\
                                        <textarea name='resp_libre-"+i+"' id='respuesta_libre-"+i+"' cols='100' rows='5' placeholder='Describa aqui su respuesta'></textarea>\
                                    </div>";
                    }

                    respuestas += resp_html;
                }

                $("#"+id_respuesta).append(respuestas);
            }
            $("#div_pregunta-0, #div_respuesta-0").css("display","block");
        },
        error: function (data, status, req) {
            console.log(data, status, req);
        }
    });
});


$("#comenzar").click(function(){
    if ($("#email").val() == "") {
        return false;
    }
    var datos = {
         id_evento: 1,
         email: $("#email").val()
    }
	$.ajax({
        url: "../controller/control.php",
        type: "POST",
        dataType: "json", 
        data: {datos: datos, accion: "buscar_participante"}, 
        success: function(data, status, req) {
        },
        error: function (data, status, req) {
            console.log(req);
        }
    });
});