<?php
class aplicacion_empresaModelo extends Modelo{	
	var $tabla='erp_empresa_app';
	var $pk='id';
	var $campos= array('id', 'fk_empresa', 'nombre_empresa', 'fk_app', 'nombre_app', 'status');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' aplicacion_empresa.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='fk_empresa' ) {
					$filtros .= ' aplicacion_empresa.fk_empresa like :fk_empresa OR ';
				} 
				if ( $filtro['dataKey']=='nombre_empresa' ) {
					$filtros .= ' empresa0.nombre like :nombre_empresa OR ';
				} 
				if ( $filtro['dataKey']=='fk_app' ) {
					$filtros .= ' aplicacion_empresa.fk_app like :fk_app OR ';
				} 
				if ( $filtro['dataKey']=='nombre_app' ) {
					$filtros .= ' app1.nombre like :nombre_app OR ';
				} 
				if ( $filtro['dataKey']=='status' ) {
					$filtros .= ' aplicacion_empresa.status like :status OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='
 LEFT JOIN erp_empresa AS empresa0 ON empresa0.id = aplicacion_empresa.fk_empresa
 LEFT JOIN constructor_app AS app1 ON app1.id = aplicacion_empresa.fk_app';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' aplicacion_empresa '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_empresa' ) {
				$sth->bindValue(':fk_empresa','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_empresa' ) {
				$sth->bindValue(':nombre_empresa', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_app' ) {
				$sth->bindValue(':fk_app','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_app' ) {
				$sth->bindValue(':nombre_app', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='status' ) {
				$sth->bindValue(':status','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT aplicacion_empresa.id, aplicacion_empresa.fk_empresa, empresa0.nombre AS nombre_fk_empresa, aplicacion_empresa.fk_app, app1.nombre AS nombre_fk_app, aplicacion_empresa.status FROM '.$this->tabla.' aplicacion_empresa '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT aplicacion_empresa.id, aplicacion_empresa.fk_empresa, empresa0.nombre AS nombre_fk_empresa, aplicacion_empresa.fk_app, app1.nombre AS nombre_fk_app, aplicacion_empresa.status FROM '.$this->tabla.' aplicacion_empresa '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='fk_empresa' ) {
				$sth->bindValue(':fk_empresa','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_empresa' ) {
				$sth->bindValue(':nombre_empresa', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_app' ) {
				$sth->bindValue(':fk_app','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_app' ) {
				$sth->bindValue(':nombre_app', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='status' ) {
				$sth->bindValue(':status','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['fk_empresa']='';
			$obj['nombre_empresa']='';
			$obj['fk_app']='';
			$obj['nombre_app']='';
			$obj['status']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT aplicacion_empresa.id, aplicacion_empresa.fk_empresa, empresa0.nombre AS nombre_fk_empresa, aplicacion_empresa.fk_app, app1.nombre AS nombre_fk_app, aplicacion_empresa.status
 FROM erp_empresa_app AS aplicacion_empresa
 LEFT JOIN erp_empresa AS empresa0 ON empresa0.id = aplicacion_empresa.fk_empresa
 LEFT JOIN constructor_app AS app1 ON app1.id = aplicacion_empresa.fk_app
  WHERE aplicacion_empresa.id=:id';
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
		 
		if ( isset( $datos['fk_empresa'] ) ){
			$strCampos .= ' fk_empresa=:fk_empresa, ';
		} 
		if ( isset( $datos['fk_app'] ) ){
			$strCampos .= ' fk_app=:fk_app, ';
		} 
		if ( isset( $datos['status'] ) ){
			$strCampos .= ' status=:status, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Aplicacion de Empresa Creada';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Aplicacion de Empresa Actualizada';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['fk_empresa'] ) ){
			$sth->bindValue(':fk_empresa', $datos['fk_empresa'] );
		}
		if  ( isset( $datos['fk_app'] ) ){
			$sth->bindValue(':fk_app', $datos['fk_app'] );
		}
		if  ( isset( $datos['status'] ) ){
			$sth->bindValue(':status', $datos['status'] );
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