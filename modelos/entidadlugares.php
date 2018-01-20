<?php

class Lugares{
	private $lugares_id;
	private $lugares_nombre;
	private $lugares_descripcion;
	private $lugares_urlimagen;
	private $lugares_regiones_id;
	
	public function __GET ($k){
		
		return $this->$k;
	}
	public function __SET($k,$v){
		$this->$k=$v;
	}
	public function returnArray(){
		return get_object_vars($this);
	}
}

?>