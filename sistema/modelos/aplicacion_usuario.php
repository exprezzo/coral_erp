<?php
class aplicacion_usuarioModelo extends Modelo{	
	var $tabla='erp_usuario_aplicacion';
	var $pk='id';
	var $campos= array('id', 'fk_usuario', 'nombre_Usuario', 'fk_app', 'nombre_app');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' aplicacion_usuario.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='fk_usuario' ) {
					$filtros .= ' aplicacion_usuario.fk_usuario like :fk_usuario OR ';
				} 
				if ( $filtro['dataKey']=='nombre_Usuario' ) {
					$filtros .= ' Usuario0.nombre like :nombre_Usuario OR ';
				} 
				if ( $filtro['dataKey']=='fk_app' ) {
					$filtros .= ' aplicacion_usuario.fk_app like :fk_app OR ';
				} 
				if ( $filtro['dataKey']=='nombre_app' ) {
					$filtros .= ' app1.nombre like :nombre_app OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='
 LEFT JOIN system_usuarios AS Usuario0 ON Usuario0.id = aplicacion_usuario.fk_usuario
 LEFT JOIN constructor_app AS app1 ON app1.id = aplicacion_usuario.fk_app';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' aplicacion_usuario '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_usuario' ) {
				$sth->bindValue(':fk_usuario','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_Usuario' ) {
				$sth->bindValue(':nombre_Usuario', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_app' ) {
				$sth->bindValue(':fk_app','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_app' ) {
				$sth->bindValue(':nombre_app', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT aplicacion_usuario.id, aplicacion_usuario.fk_usuario, Usuario0.nombre AS nombre_fk_usuario, aplicacion_usuario.fk_app, app1.nombre AS nombre_fk_app FROM '.$this->tabla.' aplicacion_usuario '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT aplicacion_usuario.id, aplicacion_usuario.fk_usuario, Usuario0.nombre AS nombre_fk_usuario, aplicacion_usuario.fk_app, app1.nombre AS nombre_fk_app FROM '.$this->tabla.' aplicacion_usuario '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='fk_usuario' ) {
				$sth->bindValue(':fk_usuario','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_Usuario' ) {
				$sth->bindValue(':nombre_Usuario', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_app' ) {
				$sth->bindValue(':fk_app','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_app' ) {
				$sth->bindValue(':nombre_app', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['fk_usuario']='';
			$obj['nombre_Usuario']='';
			$obj['fk_app']='';
			$obj['nombre_app']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT aplicacion_usuario.id, aplicacion_usuario.fk_usuario, Usuario0.nombre AS nombre_fk_usuario, aplicacion_usuario.fk_app, app1.nombre AS nombre_fk_app
 FROM erp_usuario_aplicacion AS aplicacion_usuario
 LEFT JOIN system_usuarios AS Usuario0 ON Usuario0.id = aplicacion_usuario.fk_usuario
 LEFT JOIN constructor_app AS app1 ON app1.id = aplicacion_usuario.fk_app
  WHERE aplicacion_usuario.id=:id';
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
		 
		if ( isset( $datos['fk_usuario'] ) ){
			$strCampos .= ' fk_usuario=:fk_usuario, ';
		} 
		if ( isset( $datos['fk_app'] ) ){
			$strCampos .= ' fk_app=:fk_app, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Aplicacion Instalada';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Aplicacion Actualizada';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['fk_usuario'] ) ){
			$sth->bindValue(':fk_usuario', $datos['fk_usuario'] );
		}
		if  ( isset( $datos['fk_app'] ) ){
			$sth->bindValue(':fk_app', $datos['fk_app'] );
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