<?php

class Regiones{
	private $regi_id;
	private $regi_nombre;
	private $regi_ordinal;
	
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