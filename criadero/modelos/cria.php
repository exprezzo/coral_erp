<?php
class criaModelo extends Modelo{	
	var $tabla='criadero_registro_de_cria';
	var $pk='id';
	var $campos= array('id', 'foto', 'fecha', 'peso', 'fk_camada', 'codigo_', 'fk_sexo', 'nombre_genero', 'codigo');
	
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' cria.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='foto' ) {
					$filtros .= ' cria.foto like :foto OR ';
				} 
				if ( $filtro['dataKey']=='fecha' ) {
					$filtros .= ' cria.fecha like :fecha OR ';
				} 
				if ( $filtro['dataKey']=='peso' ) {
					$filtros .= ' cria.peso like :peso OR ';
				} 
				if ( $filtro['dataKey']=='fk_camada' ) {
					$filtros .= ' cria.fk_camada like :fk_camada OR ';
				} 
				if ( $filtro['dataKey']=='codigo_' ) {
					$filtros .= ' 0.codigo like :codigo_ OR ';
				} 
				if ( $filtro['dataKey']=='fk_sexo' ) {
					$filtros .= ' cria.fk_sexo like :fk_sexo OR ';
				} 
				if ( $filtro['dataKey']=='nombre_genero' ) {
					$filtros .= ' genero1.nombre like :nombre_genero OR ';
				} 
				if ( $filtro['dataKey']=='codigo' ) {
					$filtros .= ' cria.codigo like :codigo OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='
 LEFT JOIN criadero_nacimiento_de_camada AS 0 ON 0.id = cria.fk_camada
 LEFT JOIN genero AS genero1 ON genero1.id = cria.fk_sexo';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' cria '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='foto' ) {
				$sth->bindValue(':foto','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fecha' ) {
				$sth->bindValue(':fecha','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='peso' ) {
				$sth->bindValue(':peso','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_camada' ) {
				$sth->bindValue(':fk_camada','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='codigo_' ) {
				$sth->bindValue(':codigo_', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_sexo' ) {
				$sth->bindValue(':fk_sexo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_genero' ) {
				$sth->bindValue(':nombre_genero', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='codigo' ) {
				$sth->bindValue(':codigo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT cria.id, cria.foto, cria.fecha, cria.peso, cria.fk_camada, 0.codigo AS codigo_fk_camada, cria.fk_sexo, genero1.nombre AS nombre_fk_sexo, cria.codigo FROM '.$this->tabla.' cria '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT cria.id, cria.foto, cria.fecha, cria.peso, cria.fk_camada, 0.codigo AS codigo_fk_camada, cria.fk_sexo, genero1.nombre AS nombre_fk_sexo, cria.codigo FROM '.$this->tabla.' cria '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='foto' ) {
				$sth->bindValue(':foto','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fecha' ) {
				$sth->bindValue(':fecha','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='peso' ) {
				$sth->bindValue(':peso','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_camada' ) {
				$sth->bindValue(':fk_camada','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='codigo_' ) {
				$sth->bindValue(':codigo_', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_sexo' ) {
				$sth->bindValue(':fk_sexo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_genero' ) {
				$sth->bindValue(':nombre_genero', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='codigo' ) {
				$sth->bindValue(':codigo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['foto']='';
			$obj['fecha']='';
			$obj['peso']='';
			$obj['fk_camada']='';
			$obj['codigo_']='';
			$obj['fk_sexo']='';
			$obj['nombre_genero']='';
			$obj['codigo']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT cria.id, cria.foto, cria.fecha, cria.peso, cria.fk_camada, 0.codigo AS codigo_fk_camada, cria.fk_sexo, genero1.nombre AS nombre_fk_sexo, cria.codigo
 FROM criadero_registro_de_cria AS cria
 LEFT JOIN criadero_nacimiento_de_camada AS 0 ON 0.id = cria.fk_camada
 LEFT JOIN genero AS genero1 ON genero1.id = cria.fk_sexo
  WHERE cria.id=:id';
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
		 
		if ( isset( $datos['foto'] ) ){
			$strCampos .= ' foto=:foto, ';
		} 
		if ( isset( $datos['fecha'] ) ){
			$strCampos .= ' fecha=:fecha, ';
		} 
		if ( isset( $datos['peso'] ) ){
			$strCampos .= ' peso=:peso, ';
		} 
		if ( isset( $datos['fk_camada'] ) ){
			$strCampos .= ' fk_camada=:fk_camada, ';
		} 
		if ( isset( $datos['fk_sexo'] ) ){
			$strCampos .= ' fk_sexo=:fk_sexo, ';
		} 
		if ( isset( $datos['codigo'] ) ){
			$strCampos .= ' codigo=:codigo, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Catalogo Creado';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Catalogo Actualizado';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['foto'] ) ){
			$sth->bindValue(':foto', $datos['foto'] );
		}
		if  ( isset( $datos['fecha'] ) ){
			$sth->bindValue(':fecha', $datos['fecha'] );
		}
		if  ( isset( $datos['peso'] ) ){
			$sth->bindValue(':peso', $datos['peso'] );
		}
		if  ( isset( $datos['fk_camada'] ) ){
			$sth->bindValue(':fk_camada', $datos['fk_camada'] );
		}
		if  ( isset( $datos['fk_sexo'] ) ){
			$sth->bindValue(':fk_sexo', $datos['fk_sexo'] );
		}
		if  ( isset( $datos['codigo'] ) ){
			$sth->bindValue(':codigo', $datos['codigo'] );
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