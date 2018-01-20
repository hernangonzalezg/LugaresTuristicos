<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require_once '../config/config.php';
class ModelLugares{

	private $pdo;

	public function __CONSTRUCT() {
		try{
			$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
			$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}catch(Exception $e){
			die($e->getMessage());
		}
	}

	public function Obtener($id){
        $jsonresponse = array();
        try{
            $stm = $this->pdo->prepare("SELECT * FROM lugares, regiones where lugares_id=? and regi_id=lugares_regiones_id");
            $stm->execute(array($id));
            $r = $stm->fetch(PDO::FETCH_OBJ);

            $lugares = new Lugares();
					$lugares->__SET('lugares_id', $r->lugares_id);
					$lugares->__SET('lugares_nombre',  utf8_encode($r->lugares_nombre));
					$lugares->__SET('lugares_descripcion',  utf8_encode($r->lugares_descripcion));
					$lugares->__SET('lugares_urlimagen',  $r->lugares_urlimagen);
					$lugares->__SET('lugares_regiones_id',  $r->lugares_regiones_id);
					$lugares->__SET('regi_nombre',  $r->regi_nombre);

            $jsonresponse['success'] = true;
            $jsonresponse['message'] = 'Se obtuvo  correctamente';
            $jsonresponse['datos'] = $lugares->returnArray();
        } catch (Exception $e){
            //die($e->getMessage());
            $jsonresponse['success'] = false;
            $jsonresponse['message'] = 'Error ';             
        }
        return $jsonresponse;
    }

}
?>
