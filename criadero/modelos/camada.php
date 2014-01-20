<?php
class camadaModelo extends Modelo{	
	var $tabla='criadero_nacimiento_de_camada';
	var $pk='id';
	var $campos= array('id', 'fecha', 'foto', 'numero_de_crias', 'peso_total', 'madre', 'padre', 'serie');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' camada.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='fecha' ) {
					$filtros .= ' camada.fecha like :fecha OR ';
				} 
				if ( $filtro['dataKey']=='foto' ) {
					$filtros .= ' camada.foto like :foto OR ';
				} 
				if ( $filtro['dataKey']=='numero_de_crias' ) {
					$filtros .= ' camada.numero_de_crias like :numero_de_crias OR ';
				} 
				if ( $filtro['dataKey']=='peso_total' ) {
					$filtros .= ' camada.peso_total like :peso_total OR ';
				} 
				if ( $filtro['dataKey']=='madre' ) {
					$filtros .= ' camada.madre like :madre OR ';
				} 
				if ( $filtro['dataKey']=='padre' ) {
					$filtros .= ' camada.padre like :padre OR ';
				} 
				if ( $filtro['dataKey']=='serie' ) {
					$filtros .= ' camada.serie like :serie OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' camada '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fecha' ) {
				$sth->bindValue(':fecha','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='foto' ) {
				$sth->bindValue(':foto','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='numero_de_crias' ) {
				$sth->bindValue(':numero_de_crias','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='peso_total' ) {
				$sth->bindValue(':peso_total','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='madre' ) {
				$sth->bindValue(':madre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='padre' ) {
				$sth->bindValue(':padre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='serie' ) {
				$sth->bindValue(':serie','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT camada.id, camada.fecha, camada.foto, camada.numero_de_crias, camada.peso_total, camada.madre, camada.padre, camada.serie FROM '.$this->tabla.' camada '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT camada.id, camada.fecha, camada.foto, camada.numero_de_crias, camada.peso_total, camada.madre, camada.padre, camada.serie FROM '.$this->tabla.' camada '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='fecha' ) {
				$sth->bindValue(':fecha','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='foto' ) {
				$sth->bindValue(':foto','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='numero_de_crias' ) {
				$sth->bindValue(':numero_de_crias','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='peso_total' ) {
				$sth->bindValue(':peso_total','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='madre' ) {
				$sth->bindValue(':madre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='padre' ) {
				$sth->bindValue(':padre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='serie' ) {
				$sth->bindValue(':serie','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['fecha']='';
			$obj['foto']='';
			$obj['numero_de_crias']='';
			$obj['peso_total']='';
			$obj['madre']='';
			$obj['padre']='';
			$obj['serie']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT camada.id, camada.fecha, camada.foto, camada.numero_de_crias, camada.peso_total, camada.madre, camada.padre, camada.serie
 FROM criadero_nacimiento_de_camada AS camada
  WHERE camada.id=:id';
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
		 
		if ( isset( $datos['fecha'] ) ){
			$strCampos .= ' fecha=:fecha, ';
		} 
		if ( isset( $datos['foto'] ) ){
			$strCampos .= ' foto=:foto, ';
		} 
		if ( isset( $datos['numero_de_crias'] ) ){
			$strCampos .= ' numero_de_crias=:numero_de_crias, ';
		} 
		if ( isset( $datos['peso_total'] ) ){
			$strCampos .= ' peso_total=:peso_total, ';
		} 
		if ( isset( $datos['madre'] ) ){
			$strCampos .= ' madre=:madre, ';
		} 
		if ( isset( $datos['padre'] ) ){
			$strCampos .= ' padre=:padre, ';
		} 
		if ( isset( $datos['serie'] ) ){
			$strCampos .= ' serie=:serie, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Camada Creada';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Camada Actualizada';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['fecha'] ) ){
			$sth->bindValue(':fecha', $datos['fecha'] );
		}
		if  ( isset( $datos['foto'] ) ){
			$sth->bindValue(':foto', $datos['foto'] );
		}
		if  ( isset( $datos['numero_de_crias'] ) ){
			$sth->bindValue(':numero_de_crias', $datos['numero_de_crias'] );
		}
		if  ( isset( $datos['peso_total'] ) ){
			$sth->bindValue(':peso_total', $datos['peso_total'] );
		}
		if  ( isset( $datos['madre'] ) ){
			$sth->bindValue(':madre', $datos['madre'] );
		}
		if  ( isset( $datos['padre'] ) ){
			$sth->bindValue(':padre', $datos['padre'] );
		}
		if  ( isset( $datos['serie'] ) ){
			$sth->bindValue(':serie', $datos['serie'] );
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