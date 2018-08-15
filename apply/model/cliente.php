<?php
    require_once "../plugins/nusoap/nusoap.php"; //Importacion NuSOAP
    class Cliente
    {

        function connect(){
            // URL del webservices a conectar
            // $cliente = new nusoap_client("http://localhost/webservice/WS-cw-eventos.php",false);
            $cliente = new nusoap_client("http://palmera.marketing/webservice/WS-cw-eventos.php?wsdl");
            $error = $cliente->getError(); //Capturamos cualquier error de conexion
            if ($error) {
                return array(false, $error);
            }else{
                return array(true, $cliente);
            }
        }

        function manejador($result, $cliente){
            // Verificamos si no hubo respuesta o el metodo no existe
            if ($cliente->fault) {
                return ["data"=>"", "error"=>$result, "status"=>500];
            } else {
                $error = $cliente->getError(); // Capturamos cualquier error del metodo
                if ($error) {
                    return ["data"=>"", "error"=>$error, "status"=>500];
                } else {
                    $result = base64_decode($result); // Decodificamos respuesta
                    // Proceso para convertirlo en Array
                    $xml = simplexml_load_string($result, "SimpleXMLElement", LIBXML_NOCDATA);
                    $json = json_encode($xml);
                    $array = json_decode($json,TRUE);
                    return ["data"=>$array, "error"=>"", "status"=>200];
                }
            }
        }

        function get_event_ready($id_event){
        	list($res, $cliente) = self::connect();
            if ($res) {
                $result = $cliente->call("Eventos.get_event_ready", array("id_event" => $id_event));
                $result = json_decode($result,true);
                return ["data"=>$result, "error"=>"", "status"=>200];
                // return self::manejador($result, $cliente);
            }else{
                return ["data"=>"", "error"=>$cliente, "status"=>500];
            }
        }
        
        function get_event($event){
            list($res, $cliente) = self::connect();
            if ($res) {
                // Antes de conectar, enviamos las credenciales de validaciones
                $cliente->setCredentials("Yanuel","123456","basic"); 
                // Llamamos a uno de los metodos que realiza el Webservice
                $result = $cliente->call("Eventos.get_event", array("name_event" => $event));
                $result = json_decode($result);
                return ["data"=>$result, "error"=>"", "status"=>200];
                // return self::manejador($result, $cliente);
            }else{
                return ["data"=>"", "error"=>$cliente, "status"=>500];
            }

        }

        function get_all_event(){
            list($res, $cliente) = self::connect();
            if ($res) {
                // Antes de conectar, enviamos las credenciales de validaciones
                // $cliente->setCredentials("Yanuel","123456","basic"); 
                // Llamamos a uno de los metodos que realiza el Webservice
                $result = $cliente->call("Eventos.get_all_event", array());
                $result = json_decode($result);
                return ["data"=>$result, "error"=>"", "status"=>200];
                // return self::manejador($result, $cliente);
            }else{
                return ["data"=>"", "error"=>$cliente, "status"=>500];
            }
        }

        function get_all_poll($id_event){
            list($res, $cliente) = self::connect();
            if ($res) {
                // Antes de conectar, enviamos las credenciales de validaciones
                $cliente->setCredentials("Yanuel","123456","basic"); 
                // Llamamos a uno de los metodos que realiza el Webservice
                $result = $cliente->call("Eventos.get_all_poll", array('id_event'=>$id_event));
                $result = json_decode($result);
                return ["data"=>$result, "error"=>"", "status"=>200];
                // return self::manejador($result, $cliente);
            }else{
                return ["data"=>"", "error"=>$cliente, "status"=>500];
            }
        }

        function get_user($id_user){
            list($res, $cliente) = self::connect();
            if ($res) {
                // Antes de conectar, enviamos las credenciales de validaciones
                $cliente->setCredentials("Yanuel","123456","basic"); 
                // Llamamos a uno de los metodos que realiza el Webservice
                $result = $cliente->call("Eventos.get_user", array('id_user'=>$id_user));
                $result = json_decode($result);
                // return self::manejador($result, $cliente);
            }else{
                return ["data"=>"", "error"=>$cliente, "status"=>500];
            }
        }
    }
?>