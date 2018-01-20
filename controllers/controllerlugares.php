<?php
header('Access-Control-Allow-Origin: *');
	require_once '../modelos/entidadlugares.php';
	require_once '../modelos/modelolugares.php';

	$modellu= new ModelLugares();

	if(isset($_REQUEST['Accion'])){
		switch($_REQUEST['Accion']){

		/*case 'listar':
				$jsondata=$modelcc->listar();
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;*/

        case 'obtener':
            $jsondata = $modellu->Obtener($_REQUEST['luId']);
            header('Content-type: application/json; charset=utf-8');
            echo json_encode($jsondata);            
            break;		
  	}
}

?>