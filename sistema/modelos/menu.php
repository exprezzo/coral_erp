<?php
class menuModelo extends Modelo{	
	var $tabla='system_menu';
	var $pk='id';
	var $campos= array('id', 'titulo', 'target', 'es_menu_externo', 'icon', 'fk_menu', 'titulo_menu', 'fk_app', 'nombre_app');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' menu.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='titulo' ) {
					$filtros .= ' menu.titulo like :titulo OR ';
				} 
				if ( $filtro['dataKey']=='target' ) {
					$filtros .= ' menu.target like :target OR ';
				} 
				if ( $filtro['dataKey']=='es_menu_externo' ) {
					$filtros .= ' menu.es_menu_externo like :es_menu_externo OR ';
				} 
				if ( $filtro['dataKey']=='icon' ) {
					$filtros .= ' menu.icon like :icon OR ';
				} 
				if ( $filtro['dataKey']=='fk_menu' ) {
					$filtros .= ' menu.fk_menu like :fk_menu OR ';
				} 
				if ( $filtro['dataKey']=='titulo_menu' ) {
					$filtros .= ' menu0.titulo like :titulo_menu OR ';
				} 
				if ( $filtro['dataKey']=='fk_app' ) {
					$filtros .= ' menu.fk_app like :fk_app OR ';
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
 LEFT JOIN system_menu AS menu0 ON menu0.id = menu.fk_menu
 LEFT JOIN constructor_app AS app1 ON app1.id = menu.fk_app';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' menu '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='titulo' ) {
				$sth->bindValue(':titulo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='target' ) {
				$sth->bindValue(':target','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='es_menu_externo' ) {
				$sth->bindValue(':es_menu_externo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='icon' ) {
				$sth->bindValue(':icon','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_menu' ) {
				$sth->bindValue(':fk_menu','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='titulo_menu' ) {
				$sth->bindValue(':titulo_menu', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT menu.id, menu.titulo, menu.target, menu.es_menu_externo, menu.icon, menu.fk_menu, menu0.titulo AS titulo_fk_menu, menu.fk_app, app1.nombre AS nombre_fk_app FROM '.$this->tabla.' menu '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT menu.id, menu.titulo, menu.target, menu.es_menu_externo, menu.icon, menu.fk_menu, menu0.titulo AS titulo_fk_menu, menu.fk_app, app1.nombre AS nombre_fk_app FROM '.$this->tabla.' menu '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='titulo' ) {
				$sth->bindValue(':titulo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='target' ) {
				$sth->bindValue(':target','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='es_menu_externo' ) {
				$sth->bindValue(':es_menu_externo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='icon' ) {
				$sth->bindValue(':icon','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_menu' ) {
				$sth->bindValue(':fk_menu','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='titulo_menu' ) {
				$sth->bindValue(':titulo_menu', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['titulo']='';
			$obj['target']='';
			$obj['es_menu_externo']='';
			$obj['icon']='';
			$obj['fk_menu']='';
			$obj['titulo_menu']='';
			$obj['fk_app']='';
			$obj['nombre_app']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT menu.id, menu.titulo, menu.target, menu.es_menu_externo, menu.icon, menu.fk_menu, menu0.titulo AS titulo_fk_menu, menu.fk_app, app1.nombre AS nombre_fk_app
 FROM system_menu AS menu
 LEFT JOIN system_menu AS menu0 ON menu0.id = menu.fk_menu
 LEFT JOIN constructor_app AS app1 ON app1.id = menu.fk_app
  WHERE menu.id=:id';
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
		 
		if ( isset( $datos['titulo'] ) ){
			$strCampos .= ' titulo=:titulo, ';
		} 
		if ( isset( $datos['target'] ) ){
			$strCampos .= ' target=:target, ';
		} 
		if ( isset( $datos['es_menu_externo'] ) ){
			$strCampos .= ' es_menu_externo=:es_menu_externo, ';
		} 
		if ( isset( $datos['icon'] ) ){
			$strCampos .= ' icon=:icon, ';
		} 
		if ( isset( $datos['fk_menu'] ) ){
			$strCampos .= ' fk_menu=:fk_menu, ';
		} 
		if ( isset( $datos['fk_app'] ) ){
			$strCampos .= ' fk_app=:fk_app, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Menu Creado';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Menu Actualizado';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['titulo'] ) ){
			$sth->bindValue(':titulo', $datos['titulo'] );
		}
		if  ( isset( $datos['target'] ) ){
			$sth->bindValue(':target', $datos['target'] );
		}
		if  ( isset( $datos['es_menu_externo'] ) ){
			$sth->bindValue(':es_menu_externo', $datos['es_menu_externo'] );
		}
		if  ( isset( $datos['icon'] ) ){
			$sth->bindValue(':icon', $datos['icon'] );
		}
		if  ( isset( $datos['fk_menu'] ) ){
			$sth->bindValue(':fk_menu', $datos['fk_menu'] );
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