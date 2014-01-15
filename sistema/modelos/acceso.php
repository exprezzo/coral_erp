<?php
class accesoModelo extends Modelo{	
	var $tabla='erp_usuario_empresa';
	var $pk='id';
	var $campos= array('id', 'fk_usuario', 'nombre_Usuario', 'fk_empresa', 'nombre_empresa', 'status', 'nombre_status_de_acceso');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' acceso.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='fk_usuario' ) {
					$filtros .= ' acceso.fk_usuario like :fk_usuario OR ';
				} 
				if ( $filtro['dataKey']=='nombre_Usuario' ) {
					$filtros .= ' Usuario0.nombre like :nombre_Usuario OR ';
				} 
				if ( $filtro['dataKey']=='fk_empresa' ) {
					$filtros .= ' acceso.fk_empresa like :fk_empresa OR ';
				} 
				if ( $filtro['dataKey']=='nombre_empresa' ) {
					$filtros .= ' empresa1.nombre like :nombre_empresa OR ';
				} 
				if ( $filtro['dataKey']=='status' ) {
					$filtros .= ' acceso.status like :status OR ';
				} 
				if ( $filtro['dataKey']=='nombre_status_de_acceso' ) {
					$filtros .= ' status_de_acceso2.nombre like :nombre_status_de_acceso OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='
 LEFT JOIN system_usuarios AS Usuario0 ON Usuario0.id = acceso.fk_usuario
 LEFT JOIN erp_empresa AS empresa1 ON empresa1.id = acceso.fk_empresa
 LEFT JOIN erp_acceso_status AS status_de_acceso2 ON status_de_acceso2.id = acceso.status';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' acceso '.$joins.$filtros;				
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
			if ( $filtro['dataKey']=='fk_empresa' ) {
				$sth->bindValue(':fk_empresa','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_empresa' ) {
				$sth->bindValue(':nombre_empresa', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='status' ) {
				$sth->bindValue(':status','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_status_de_acceso' ) {
				$sth->bindValue(':nombre_status_de_acceso', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT acceso.id, acceso.fk_usuario, Usuario0.nombre AS nombre_fk_usuario, acceso.fk_empresa, empresa1.nombre AS nombre_fk_empresa, acceso.status, status_de_acceso2.nombre AS nombre_status FROM '.$this->tabla.' acceso '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT acceso.id, acceso.fk_usuario, Usuario0.nombre AS nombre_fk_usuario, acceso.fk_empresa, empresa1.nombre AS nombre_fk_empresa, acceso.status, status_de_acceso2.nombre AS nombre_status FROM '.$this->tabla.' acceso '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='fk_empresa' ) {
				$sth->bindValue(':fk_empresa','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_empresa' ) {
				$sth->bindValue(':nombre_empresa', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='status' ) {
				$sth->bindValue(':status','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_status_de_acceso' ) {
				$sth->bindValue(':nombre_status_de_acceso', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['fk_empresa']='';
			$obj['nombre_empresa']='';
			$obj['status']='';
			$obj['nombre_status_de_acceso']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT acceso.id, acceso.fk_usuario, Usuario0.nombre AS nombre_fk_usuario, acceso.fk_empresa, empresa1.nombre AS nombre_fk_empresa, acceso.status, status_de_acceso2.nombre AS nombre_status
 FROM erp_usuario_empresa AS acceso
 LEFT JOIN system_usuarios AS Usuario0 ON Usuario0.id = acceso.fk_usuario
 LEFT JOIN erp_empresa AS empresa1 ON empresa1.id = acceso.fk_empresa
 LEFT JOIN erp_acceso_status AS status_de_acceso2 ON status_de_acceso2.id = acceso.status
  WHERE acceso.id=:id';
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
		if ( isset( $datos['fk_empresa'] ) ){
			$strCampos .= ' fk_empresa=:fk_empresa, ';
		} 
		if ( isset( $datos['status'] ) ){
			$strCampos .= ' status=:status, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Nuevo Acceso';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Acceso Actualizado';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['fk_usuario'] ) ){
			$sth->bindValue(':fk_usuario', $datos['fk_usuario'] );
		}
		if  ( isset( $datos['fk_empresa'] ) ){
			$sth->bindValue(':fk_empresa', $datos['fk_empresa'] );
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