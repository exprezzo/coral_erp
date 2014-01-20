<?php
class aplicacionModelo extends Modelo{	
	var $tabla='constructor_app';
	var $pk='id';
	var $campos= array('id', 'nombre', 'ubicacion', 'logo', 'favicon', 'descripcion', 'tags', 'nombre_interno');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' aplicacion.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='nombre' ) {
					$filtros .= ' aplicacion.nombre like :nombre OR ';
				} 
				if ( $filtro['dataKey']=='ubicacion' ) {
					$filtros .= ' aplicacion.ubicacion like :ubicacion OR ';
				} 
				if ( $filtro['dataKey']=='logo' ) {
					$filtros .= ' aplicacion.logo like :logo OR ';
				} 
				if ( $filtro['dataKey']=='favicon' ) {
					$filtros .= ' aplicacion.favicon like :favicon OR ';
				} 
				if ( $filtro['dataKey']=='descripcion' ) {
					$filtros .= ' aplicacion.descripcion like :descripcion OR ';
				} 
				if ( $filtro['dataKey']=='tags' ) {
					$filtros .= ' aplicacion.tags like :tags OR ';
				} 
				if ( $filtro['dataKey']=='nombre_interno' ) {
					$filtros .= ' aplicacion.nombre_interno like :nombre_interno OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' aplicacion '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre' ) {
				$sth->bindValue(':nombre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='ubicacion' ) {
				$sth->bindValue(':ubicacion','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='logo' ) {
				$sth->bindValue(':logo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='favicon' ) {
				$sth->bindValue(':favicon','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='descripcion' ) {
				$sth->bindValue(':descripcion','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='tags' ) {
				$sth->bindValue(':tags','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_interno' ) {
				$sth->bindValue(':nombre_interno','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT aplicacion.id, aplicacion.nombre, aplicacion.ubicacion, aplicacion.logo, aplicacion.favicon, aplicacion.descripcion, aplicacion.tags, aplicacion.nombre_interno FROM '.$this->tabla.' aplicacion '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT aplicacion.id, aplicacion.nombre, aplicacion.ubicacion, aplicacion.logo, aplicacion.favicon, aplicacion.descripcion, aplicacion.tags, aplicacion.nombre_interno FROM '.$this->tabla.' aplicacion '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='ubicacion' ) {
				$sth->bindValue(':ubicacion','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='logo' ) {
				$sth->bindValue(':logo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='favicon' ) {
				$sth->bindValue(':favicon','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='descripcion' ) {
				$sth->bindValue(':descripcion','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='tags' ) {
				$sth->bindValue(':tags','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_interno' ) {
				$sth->bindValue(':nombre_interno','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['ubicacion']='';
			$obj['logo']='';
			$obj['favicon']='';
			$obj['descripcion']='';
			$obj['tags']='';
			$obj['nombre_interno']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT aplicacion.id, aplicacion.nombre, aplicacion.ubicacion, aplicacion.logo, aplicacion.favicon, aplicacion.descripcion, aplicacion.tags, aplicacion.nombre_interno
 FROM constructor_app AS aplicacion
  WHERE aplicacion.id=:id';
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
			throw new Exception("El identificador está duplicado"); //TODO: agregar numero de error, crear una exception MiEscepcion
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
		if ( isset( $datos['ubicacion'] ) ){
			$strCampos .= ' ubicacion=:ubicacion, ';
		} 
		if ( isset( $datos['logo'] ) ){
			$strCampos .= ' logo=:logo, ';
		} 
		if ( isset( $datos['favicon'] ) ){
			$strCampos .= ' favicon=:favicon, ';
		} 
		if ( isset( $datos['descripcion'] ) ){
			$strCampos .= ' descripcion=:descripcion, ';
		} 
		if ( isset( $datos['tags'] ) ){
			$strCampos .= ' tags=:tags, ';
		} 
		if ( isset( $datos['nombre_interno'] ) ){
			$strCampos .= ' nombre_interno=:nombre_interno, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Aplicacion Creada';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Aplicacion Actualizada';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['nombre'] ) ){
			$sth->bindValue(':nombre', $datos['nombre'] );
		}
		if  ( isset( $datos['ubicacion'] ) ){
			$sth->bindValue(':ubicacion', $datos['ubicacion'] );
		}
		if  ( isset( $datos['logo'] ) ){
			$sth->bindValue(':logo', $datos['logo'] );
		}
		if  ( isset( $datos['favicon'] ) ){
			$sth->bindValue(':favicon', $datos['favicon'] );
		}
		if  ( isset( $datos['descripcion'] ) ){
			$sth->bindValue(':descripcion', $datos['descripcion'] );
		}
		if  ( isset( $datos['tags'] ) ){
			$sth->bindValue(':tags', $datos['tags'] );
		}
		if  ( isset( $datos['nombre_interno'] ) ){
			$sth->bindValue(':nombre_interno', $datos['nombre_interno'] );
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