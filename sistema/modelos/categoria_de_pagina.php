<?php
class categoria_de_paginaModelo extends Modelo{	
	var $tabla='system_categoria_pagina';
	var $pk='id';
	var $campos= array('id', 'nombre', 'fk_categoria', 'nombre_categoria_de_pagina');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' categoria_de_pagina.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='nombre' ) {
					$filtros .= ' categoria_de_pagina.nombre like :nombre OR ';
				} 
				if ( $filtro['dataKey']=='fk_categoria' ) {
					$filtros .= ' categoria_de_pagina.fk_categoria like :fk_categoria OR ';
				} 
				if ( $filtro['dataKey']=='nombre_categoria_de_pagina' ) {
					$filtros .= ' categoria_de_pagina0.nombre like :nombre_categoria_de_pagina OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='
 LEFT JOIN system_categoria_pagina AS categoria_de_pagina0 ON categoria_de_pagina0.id = categoria_de_pagina.fk_categoria';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' categoria_de_pagina '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre' ) {
				$sth->bindValue(':nombre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_categoria' ) {
				$sth->bindValue(':fk_categoria','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_categoria_de_pagina' ) {
				$sth->bindValue(':nombre_categoria_de_pagina', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT categoria_de_pagina.id, categoria_de_pagina.nombre, categoria_de_pagina.fk_categoria, categoria_de_pagina0.nombre AS nombre_fk_categoria FROM '.$this->tabla.' categoria_de_pagina '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT categoria_de_pagina.id, categoria_de_pagina.nombre, categoria_de_pagina.fk_categoria, categoria_de_pagina0.nombre AS nombre_fk_categoria FROM '.$this->tabla.' categoria_de_pagina '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='fk_categoria' ) {
				$sth->bindValue(':fk_categoria','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_categoria_de_pagina' ) {
				$sth->bindValue(':nombre_categoria_de_pagina', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['fk_categoria']='';
			$obj['nombre_categoria_de_pagina']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT categoria_de_pagina.id, categoria_de_pagina.nombre, categoria_de_pagina.fk_categoria, categoria_de_pagina0.nombre AS nombre_fk_categoria
 FROM system_categoria_pagina AS categoria_de_pagina
 LEFT JOIN system_categoria_pagina AS categoria_de_pagina0 ON categoria_de_pagina0.id = categoria_de_pagina.fk_categoria
  WHERE categoria_de_pagina.id=:id';
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
		if ( isset( $datos['fk_categoria'] ) ){
			$strCampos .= ' fk_categoria=:fk_categoria, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Categoria de Pagina Creada';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Categoria de Pagina Actualizada';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['nombre'] ) ){
			$sth->bindValue(':nombre', $datos['nombre'] );
		}
		if  ( isset( $datos['fk_categoria'] ) ){
			$sth->bindValue(':fk_categoria', $datos['fk_categoria'] );
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