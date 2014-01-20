<?php
class elemento_de_catalogoModelo extends Modelo{	
	var $tabla='constructor_catalogo_elemento';
	var $pk='id';
	var $campos= array('id', 'extras', 'campo', 'llave', 'esNulo', 'fk_componente', 'nombre_conmponente', 'comp_config', 'fk_catalogo', 'nombre_catalogo');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' elemento_de_catalogo.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='extras' ) {
					$filtros .= ' elemento_de_catalogo.extras like :extras OR ';
				} 
				if ( $filtro['dataKey']=='campo' ) {
					$filtros .= ' elemento_de_catalogo.campo like :campo OR ';
				} 
				if ( $filtro['dataKey']=='llave' ) {
					$filtros .= ' elemento_de_catalogo.llave like :llave OR ';
				} 
				if ( $filtro['dataKey']=='esNulo' ) {
					$filtros .= ' elemento_de_catalogo.esNulo like :esNulo OR ';
				} 
				if ( $filtro['dataKey']=='fk_componente' ) {
					$filtros .= ' elemento_de_catalogo.fk_componente like :fk_componente OR ';
				} 
				if ( $filtro['dataKey']=='nombre_conmponente' ) {
					$filtros .= ' conmponente0.nombre like :nombre_conmponente OR ';
				} 
				if ( $filtro['dataKey']=='comp_config' ) {
					$filtros .= ' elemento_de_catalogo.comp_config like :comp_config OR ';
				} 
				if ( $filtro['dataKey']=='fk_catalogo' ) {
					$filtros .= ' elemento_de_catalogo.fk_catalogo like :fk_catalogo OR ';
				} 
				if ( $filtro['dataKey']=='nombre_catalogo' ) {
					$filtros .= ' catalogo1.nombre like :nombre_catalogo OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='
 LEFT JOIN constructor_componente AS conmponente0 ON conmponente0.id = elemento_de_catalogo.fk_componente
 LEFT JOIN constructor_catalogos AS catalogo1 ON catalogo1.id = elemento_de_catalogo.fk_catalogo';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' elemento_de_catalogo '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='extras' ) {
				$sth->bindValue(':extras','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='campo' ) {
				$sth->bindValue(':campo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='llave' ) {
				$sth->bindValue(':llave','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='esNulo' ) {
				$sth->bindValue(':esNulo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_componente' ) {
				$sth->bindValue(':fk_componente','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_conmponente' ) {
				$sth->bindValue(':nombre_conmponente', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='comp_config' ) {
				$sth->bindValue(':comp_config','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_catalogo' ) {
				$sth->bindValue(':fk_catalogo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_catalogo' ) {
				$sth->bindValue(':nombre_catalogo', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT elemento_de_catalogo.id, elemento_de_catalogo.extras, elemento_de_catalogo.campo, elemento_de_catalogo.llave, elemento_de_catalogo.esNulo, elemento_de_catalogo.fk_componente, conmponente0.nombre AS nombre_fk_componente, elemento_de_catalogo.comp_config, elemento_de_catalogo.fk_catalogo, catalogo1.nombre AS nombre_fk_catalogo FROM '.$this->tabla.' elemento_de_catalogo '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT elemento_de_catalogo.id, elemento_de_catalogo.extras, elemento_de_catalogo.campo, elemento_de_catalogo.llave, elemento_de_catalogo.esNulo, elemento_de_catalogo.fk_componente, conmponente0.nombre AS nombre_fk_componente, elemento_de_catalogo.comp_config, elemento_de_catalogo.fk_catalogo, catalogo1.nombre AS nombre_fk_catalogo FROM '.$this->tabla.' elemento_de_catalogo '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='extras' ) {
				$sth->bindValue(':extras','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='campo' ) {
				$sth->bindValue(':campo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='llave' ) {
				$sth->bindValue(':llave','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='esNulo' ) {
				$sth->bindValue(':esNulo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_componente' ) {
				$sth->bindValue(':fk_componente','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_conmponente' ) {
				$sth->bindValue(':nombre_conmponente', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='comp_config' ) {
				$sth->bindValue(':comp_config','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_catalogo' ) {
				$sth->bindValue(':fk_catalogo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_catalogo' ) {
				$sth->bindValue(':nombre_catalogo', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['extras']='';
			$obj['campo']='';
			$obj['llave']='';
			$obj['esNulo']='';
			$obj['fk_componente']='';
			$obj['nombre_conmponente']='';
			$obj['comp_config']='';
			$obj['fk_catalogo']='';
			$obj['nombre_catalogo']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT elemento_de_catalogo.id, elemento_de_catalogo.extras, elemento_de_catalogo.campo, elemento_de_catalogo.llave, elemento_de_catalogo.esNulo, elemento_de_catalogo.fk_componente, conmponente0.nombre AS nombre_fk_componente, elemento_de_catalogo.comp_config, elemento_de_catalogo.fk_catalogo, catalogo1.nombre AS nombre_fk_catalogo
 FROM constructor_catalogo_elemento AS elemento_de_catalogo
 LEFT JOIN constructor_componente AS conmponente0 ON conmponente0.id = elemento_de_catalogo.fk_componente
 LEFT JOIN constructor_catalogos AS catalogo1 ON catalogo1.id = elemento_de_catalogo.fk_catalogo
  WHERE elemento_de_catalogo.id=:id';
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
		 
		if ( isset( $datos['extras'] ) ){
			$strCampos .= ' extras=:extras, ';
		} 
		if ( isset( $datos['campo'] ) ){
			$strCampos .= ' campo=:campo, ';
		} 
		if ( isset( $datos['llave'] ) ){
			$strCampos .= ' llave=:llave, ';
		} 
		if ( isset( $datos['esNulo'] ) ){
			$strCampos .= ' esNulo=:esNulo, ';
		} 
		if ( isset( $datos['fk_componente'] ) ){
			$strCampos .= ' fk_componente=:fk_componente, ';
		} 
		if ( isset( $datos['comp_config'] ) ){
			$strCampos .= ' comp_config=:comp_config, ';
		} 
		if ( isset( $datos['fk_catalogo'] ) ){
			$strCampos .= ' fk_catalogo=:fk_catalogo, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Elemento de Catalogo Creado';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Elemento de Catalogo Actualizado';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['extras'] ) ){
			$sth->bindValue(':extras', $datos['extras'] );
		}
		if  ( isset( $datos['campo'] ) ){
			$sth->bindValue(':campo', $datos['campo'] );
		}
		if  ( isset( $datos['llave'] ) ){
			$sth->bindValue(':llave', $datos['llave'] );
		}
		if  ( isset( $datos['esNulo'] ) ){
			$sth->bindValue(':esNulo', $datos['esNulo'] );
		}
		if  ( isset( $datos['fk_componente'] ) ){
			$sth->bindValue(':fk_componente', $datos['fk_componente'] );
		}
		if  ( isset( $datos['comp_config'] ) ){
			$sth->bindValue(':comp_config', $datos['comp_config'] );
		}
		if  ( isset( $datos['fk_catalogo'] ) ){
			$sth->bindValue(':fk_catalogo', $datos['fk_catalogo'] );
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