<?php
class rolModelo extends Modelo{	
	var $tabla='system_rol';
	var $pk='id';
	var $campos= array('id', 'nombre', 'descripcion');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' rol.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='nombre' ) {
					$filtros .= ' rol.nombre like :nombre OR ';
				} 
				if ( $filtro['dataKey']=='descripcion' ) {
					$filtros .= ' rol.descripcion like :descripcion OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' rol '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre' ) {
				$sth->bindValue(':nombre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='descripcion' ) {
				$sth->bindValue(':descripcion','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}		
			}
		}
		$exito = $sth->execute();		
		if ( !$exito ){
			$error = $this->getError( $sth );
			throw new Exception($error['msg']); //TODO: agregar numero de error, crear una exception MiEscepcion
		}
		
		$tot = $sth->fetchAll(PDO::FETCH_ASSOC);
		$total = $tot[0]['total'];
		
		$paginar=false;
		if ( isset($params['limit']) && isset($params['start']) ){
			$paginar=true;
		}
		
		if ($paginar){
			$limit=$params['limit'];
			$start=$params['start'];
			$sql = 'SELECT rol.id, rol.nombre, rol.descripcion FROM '.$this->tabla.' rol '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT rol.id, rol.nombre, rol.descripcion FROM '.$this->tabla.' rol '.$joins.$filtros;
		}
				
		$sth = $pdo->prepare($sql);
		if ($paginar){
			$sth->bindValue(':limit',$limit,PDO::PARAM_INT);
			$sth->bindValue(':start',$start,PDO::PARAM_INT);
		}
		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre' ) {
				$sth->bindValue(':nombre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='descripcion' ) {
				$sth->bindValue(':descripcion','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}	
			}
		}
		$exito = $sth->execute();

		
		if ( !$exito ){		
			$error = $this->getError( $sth );
			throw new Exception($error['msg']); //TODO: agregar numero de error, crear una exception MiEscepcion			
		}
		
		$modelos = $sth->fetchAll(PDO::FETCH_ASSOC);				
		
		return array(
			'success'=>true,
			'total'=>$total,
			'datos'=>$modelos
		);
	}
	
	function nuevo( $params ){
		$obj=array();
		
			$obj['id']='';
			$obj['nombre']='';
			$obj['descripcion']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT rol.id, rol.nombre, rol.descripcion
 FROM system_rol AS rol
  WHERE rol.id=:id';
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		 $sth->BindValue(':id',$llave ); 
		$exito = $sth->execute();
		if ( !$exito ){
			$error =  $this->getError( $sth );
			throw new Exception($error['msg']);
		}
		
		$modelos = $sth->fetchAll(PDO::FETCH_ASSOC);
		
		if ( empty($modelos) ){						
			throw new Exception("Elemento no encontrado");
		}
		
		if ( sizeof($modelos) > 1 ){			
			throw new Exception("El identificador est� duplicado"); //TODO: agregar numero de error, crear una exception MiEscepcion
		}
		
		return $modelos[0];			
	}
	
	function guardar( $datos ){
	
		$esNuevo=( empty( $datos['id'] ) )? true : false;			
		$strCampos='';
		
		//--------------------------------------------
		// CAMPOS A GUARDAR
		 
		if ( isset( $datos['nombre'] ) ){
			$strCampos .= ' nombre=:nombre, ';
		} 
		if ( isset( $datos['descripcion'] ) ){
			$strCampos .= ' descripcion=:descripcion, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Rol Creado';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Rol Actualizado';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['nombre'] ) ){
			$sth->bindValue(':nombre', $datos['nombre'] );
		}
		if  ( isset( $datos['descripcion'] ) ){
			$sth->bindValue(':descripcion', $datos['descripcion'] );
		}		
		if ( !$esNuevo)	{
			$sth->bindValue(':id', $datos['id'] );
		}	
		//--------------------------------------------
		$exito = $sth->execute();
		if ( !$exito ){
			$error =  $this->getError( $sth );
			throw new Exception($error['msg']);
		}
		
		if ( $esNuevo ){
			$idObj=$pdo->lastInsertId();
		}else{
			$idObj=$datos['id'];
		}	
		
		
		
		
		$obj=$this->obtener( $idObj );
		return array(
			'success'=>true,
			'datos'=>$obj,
			'msg'=>$msg
		);
		
	}
}
?>