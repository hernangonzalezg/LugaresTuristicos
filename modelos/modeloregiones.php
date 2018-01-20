<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require_once '../config/config.php';
class ModelRegiones{

	private $pdo;

	public function __CONSTRUCT() {
		try{
			$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
			$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}catch(Exception $e){
			die($e->getMessage());
		}
	}

	public function listar(){
		$responsearray = array();
		try{
			$result = array();
			$stm=$this->pdo->prepare("SELECT * FROM regiones");
			$stm->execute();
			foreach($stm->fetchALL(PDO::FETCH_OBJ) as $r){
				$regiones = new Regiones();
					$regiones->__SET('regi_id', $r->regi_id);
					$regiones->__SET('regi_nombre',  utf8_encode($r->regi_nombre));
					$regiones->__SET('regi_ordinal',  $r->regi_ordinal);
					$regiones->__SET('regi_urlimagen',  $r->regi_urlimagen);
				$result[] = $regiones->returnArray();
			}
			$responsearray['success']=true;
			$responsearray['message']='Listado correctamente';
			$responsearray['datos']=$result;

		}catch(Exception $e){
			echo $e;
			$responsearray['success']=false;
			$responsearray['message']='Error al listar Regiones';
		}
		return $responsearray;
	}
	public function Obtener($id){
        $jsonresponse = array();
        try{
            $result = array();
			$stm=$this->pdo->prepare("SELECT * FROM lugares where lugares_regiones_id=?");
			$stm->execute(array($id));
			foreach($stm->fetchALL(PDO::FETCH_OBJ) as $r){
				$lugares = new Lugares();
					$lugares->__SET('lugares_id', $r->lugares_id);
					$lugares->__SET('lugares_nombre',  utf8_encode($r->lugares_nombre));
					$lugares->__SET('lugares_descripcion',  utf8_encode($r->lugares_descripcion));
					$lugares->__SET('lugares_urlimagen',  $r->lugares_urlimagen);
					$lugares->__SET('lugares_regiones_id',  $r->lugares_regiones_id);
				$result[] = $lugares->returnArray();
			}
			$responsearray['success']=true;
			$responsearray['message']='Listado correctamente';
			$responsearray['datos']=$result;
        } catch (Exception $e){
            //die($e->getMessage());
            $responsearray['success'] = false;
            $responsearray['message'] = 'Error ';             
        }
        return $responsearray;
    }
}
?>
