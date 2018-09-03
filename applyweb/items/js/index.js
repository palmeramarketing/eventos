$(document).ready(function(){

    var data = {

        id_evento: $("#id_evento").val(),

        email: $("#email").val()

    };



    $.ajax({

        url: "../controller/control.php",

        type: "POST",

        dataType: "json",

        data: data,

        success: function(respuesta, status, req){

            console.log(respuesta, status, req);

            if (respuesta["status"] == 401) {

                alert_message("Disculpe.", "Usted no se encuentra registrado para realizar ésta encuesta.", "alert-warning");

            }else if (respuesta["status"] == 402) {

                alert_message("Usted", "ya ha participado en ésta encuesta.", "alert-warning");

            }

        },

        error: function(respuesta, status, req){

            console.log(respuesta, status, req);

            alert_message("Error del servidor.", "Por favor Intende de nuevo mas tarde.", "alert-danger");

        }

    });

    $("#comenzar").on("click", function(){

        $.ajax({

            url: "../controller/control.php",

            type: "POST",

            dataType: "json",

            data: {datos: data, accion: "comprobar_cargar"},

            success: function(respuesta, status, req) {

                if (respuesta.status == 200) {



                    $("#div_container_bienvenida").css("display","none");

                    $("#div_container_encuesta").css("display","block");



                    $("#id_participante").val(respuesta.data.id_participante);

                    var encuesta = respuesta.data.encuesta;

                    $("#length_encuesta").val(encuesta.length - 1);



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
                                                <input type='checkbox' class='campo' name='checkbox-"+i+"' value="+encuesta[i].respuestas[o].id+">\
                                                <span class='label_resp'>"+encuesta[i].respuestas[o].descripcion+"</span>\
                                            </div>";

                            }else if (encuesta[i].tipo == "simple") {

                                resp_html = "<div class='div_resp'>\
                                                <input type='radio' class='campo' name='radio-"+i+"' value="+encuesta[i].respuestas[o].id+">\
                                                <span class='label_resp'>"+encuesta[i].respuestas[o].descripcion+"</span>\
                                            </div>";

                            }else if (encuesta[i].tipo == "libre") {

                                resp_html = "<div class='div_resp'>\
                                                <textarea class='campo' name='textarea/"+encuesta[i].respuestas[o].id+"' id='respuesta_libre-"+encuesta[i].respuestas[o].id+"' style='color:black' cols='100' rows='5' placeholder='Describa aqui su respuesta'></textarea>\
                                            </div>";

                            }



                            respuestas += resp_html;

                        }



                        $("#"+id_respuesta).append(respuestas);

                    }



                    $("#div_pregunta-0, #div_respuesta-0").css("display","block");



                }else{

                    console.log(status, respuesta, req);

                    alert_message("Error de autenticación.", "Por favor cargue nuevamente la página desde el enlace de su correo.", "alert-warning");

                }

            },

            error: function (data, status, req) {

                console.log(data, status, req);

                alert_message("Error del servidor.", "Por favor Intende de nuevo mas tarde.", "alert-danger");

            }

        });

    });



    var con_preg = 0;

    $("#boton_siguiente").click(function(){
      if( $('input[type=checkbox]').is(":visible") ){
        if( $('input[type=checkbox]').is(':checked') ){
        } else {
          return false;
        }
      }else if( $('input[type=radio]').is(":visible") ){
        if( $('input[type=radio]').is(':checked') ){
        } else {
          return false;
        }
      }else if( $('textarea').is(":visible") ){
        if( $('textarea').val() == '' ){
        } else {
          return false;
        }
      }
        $("#div_pregunta-"+con_preg+", #div_respuesta-"+con_preg).css("display","none");

        con_preg += 1;

        $("#div_pregunta-"+con_preg+", #div_respuesta-"+con_preg).css("display","block");

        validar_botones(con_preg);

    });



    $("#boton_anterior").click(function(){
        $("#div_pregunta-"+con_preg+", #div_respuesta-"+con_preg).css("display","none");

        con_preg -= 1;

        $("#div_pregunta-"+con_preg+", #div_respuesta-"+con_preg).css("display","block");

        validar_botones(con_preg);

    });



    function validar_botones(num_encuesta){

        if ($("#length_encuesta").val() == num_encuesta) {

            $("#boton_siguiente").css("display", "none");

            $("#boton_finalizar").css("display", "block");

            $("#boton_anterior").css("display", "block");

        }else if (num_encuesta == 0) {

            $("#boton_siguiente").css("display", "block");

            $("#boton_finalizar").css("display", "none");

            $("#boton_anterior").css("display", "none");

        }else if ($("#length_encuesta").val() > num_encuesta) {

            $("#boton_siguiente").css("display", "block");

            $("#boton_finalizar").css("display", "none");

            $("#boton_anterior").css("display", "block");

        }

    }



    $("#boton_finalizar").click(function(){

      if( $('input[type=checkbox]').is(":visible") ){
        if( $('input[type=checkbox]').is(':checked') ){
        } else {
          return false;
        }
      }else if( $('input[type=radio]').is(":visible") ){
        if( $('input[type=radio]').is(':checked') ){
        } else {
          return false;
        }
      }else if( $('textarea').is(":visible") ){
        if( $('textarea').val() == '' ){
          return false;
        }
      }

        var data = {

            respuestas: $("#form_respuestas").serializeArray(),

            id_participante: $("#id_participante").val(),

            id_evento: $("#id_evento").val(),

            email: $("#email").val()

        }



        $.ajax({

            url: "../controller/control.php",

            type: "POST",

            dataType: "json",

            data: {datos: data, accion: "insertar_respuestas_eventos"},

            success: function(respuesta, status, req){

                if (respuesta["status"] == 200) {

                    $("#div_container_encuesta").css("display","none");

                    $("#div_container_gracias").css("display","block");

                }

                console.log(respuesta, status, req);

            },

            error: function(respuesta, status, req){

                console.log(respuesta, status, req);

            }

        });

    });

});

    function alert_message(strong, span, tipo){

        $("#mensaje-strong").text(strong+" ");

        $("#mensaje-span").text(span);

        $(".mensaje-div").addClass("alert "+tipo);

        $(".mensaje-div").slideDown();

        $("#div_container_bienvenida").css("display","none");

        $("#div_container_error_usuario").css("display","block");

    };
