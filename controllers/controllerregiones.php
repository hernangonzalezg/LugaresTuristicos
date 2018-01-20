<?php
header('Access-Control-Allow-Origin: *');
	require_once '../modelos/entidadregiones.php';
	require_once '../modelos/modeloregiones.php';
	require_once '../modelos/entidadlugares.php';

	$modelr= new ModelRegiones();

	if(isset($_REQUEST['Accion'])){
		switch($_REQUEST['Accion']){

		case 'listar':
				$jsondata=$modelr->listar();
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;

        case 'obtener':
            $jsondata = $modelr->Obtener($_REQUEST['idRegion']);
            header('Content-type: application/json; charset=utf-8');
            echo json_encode($jsondata);            
            break;		
  	}
}

?>