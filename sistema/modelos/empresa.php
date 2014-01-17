<?php
class empresaModelo extends Modelo{	
	var $tabla='erp_empresa';
	var $pk='id';
	var $campos= array('id', 'nombre', 'telefonos', 'logo', 'sitio_web', 'actividad', 'RFC', 'fk_pais', 'nombre_pais', 'fk_estado', 'nombre_estado', 'fk_municipio', 'nombre_municipio', 'localidad', 'referencia', 'calle', 'numero_exterior', 'numero_interior', 'colonia', 'codigo_postal', 'icon');
	
	function string2url($cadena) {
		$cadena = trim($cadena);
		$cadena = strtr($cadena,
	"ְֱֲֳִֵאבגדהוׂ׃װױײ״עףפץצרָֹÊֻטיךכַחּֽ־ֿלםמןÙÚÛÜשתûüÿׁס",
	"aaaaaaaaaaaaooooooooooooeeeeeeeecciiiiiiiiuuuuuuuuynn");
		$cadena = strtr($cadena,"ABCDEFGHIJKLMNOPQRSTUVWXYZ","abcdefghijklmnopqrstuvwxyz");
		$cadena = preg_replace('#([^.a-z0-9]+)#i', '-', $cadena);
			$cadena = preg_replace('#-{2,}#','-',$cadena);
			$cadena = preg_replace('#-$#','',$cadena);
			$cadena = preg_replace('#^-#','',$cadena);
		return $cadena;
	}
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' empresa.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='nombre' ) {
					$filtros .= ' empresa.nombre like :nombre OR ';
				} 
				if ( $filtro['dataKey']=='telefonos' ) {
					$filtros .= ' empresa.telefonos like :telefonos OR ';
				} 
				if ( $filtro['dataKey']=='logo' ) {
					$filtros .= ' empresa.logo like :logo OR ';
				} 
				if ( $filtro['dataKey']=='sitio_web' ) {
					$filtros .= ' empresa.sitio_web like :sitio_web OR ';
				} 
				if ( $filtro['dataKey']=='actividad' ) {
					$filtros .= ' empresa.actividad like :actividad OR ';
				} 
				if ( $filtro['dataKey']=='RFC' ) {
					$filtros .= ' empresa.RFC like :RFC OR ';
				} 
				if ( $filtro['dataKey']=='fk_pais' ) {
					$filtros .= ' empresa.fk_pais like :fk_pais OR ';
				} 
				if ( $filtro['dataKey']=='nombre_pais' ) {
					$filtros .= ' pais0.nombre like :nombre_pais OR ';
				} 
				if ( $filtro['dataKey']=='fk_estado' ) {
					$filtros .= ' empresa.fk_estado like :fk_estado OR ';
				} 
				if ( $filtro['dataKey']=='nombre_estado' ) {
					$filtros .= ' estado1.nombre like :nombre_estado OR ';
				} 
				if ( $filtro['dataKey']=='fk_municipio' ) {
					$filtros .= ' empresa.fk_municipio like :fk_municipio OR ';
				} 
				if ( $filtro['dataKey']=='nombre_municipio' ) {
					$filtros .= ' municipio2.nombre like :nombre_municipio OR ';
				} 
				if ( $filtro['dataKey']=='localidad' ) {
					$filtros .= ' empresa.localidad like :localidad OR ';
				} 
				if ( $filtro['dataKey']=='referencia' ) {
					$filtros .= ' empresa.referencia like :referencia OR ';
				} 
				if ( $filtro['dataKey']=='calle' ) {
					$filtros .= ' empresa.calle like :calle OR ';
				} 
				if ( $filtro['dataKey']=='numero_exterior' ) {
					$filtros .= ' empresa.numero_exterior like :numero_exterior OR ';
				} 
				if ( $filtro['dataKey']=='numero_interior' ) {
					$filtros .= ' empresa.numero_interior like :numero_interior OR ';
				} 
				if ( $filtro['dataKey']=='colonia' ) {
					$filtros .= ' empresa.colonia like :colonia OR ';
				} 
				if ( $filtro['dataKey']=='codigo_postal' ) {
					$filtros .= ' empresa.codigo_postal like :codigo_postal OR ';
				} 
				if ( $filtro['dataKey']=='icon' ) {
					$filtros .= ' empresa.icon like :icon OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='
 LEFT JOIN system_ubicacion_paises AS pais0 ON pais0.id = empresa.fk_pais
 LEFT JOIN system_ubicacion_estados AS estado1 ON estado1.id = empresa.fk_estado
 LEFT JOIN system_ubicacion_municipios AS municipio2 ON municipio2.id = empresa.fk_municipio';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' empresa '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre' ) {
				$sth->bindValue(':nombre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='telefonos' ) {
				$sth->bindValue(':telefonos','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='logo' ) {
				$sth->bindValue(':logo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='sitio_web' ) {
				$sth->bindValue(':sitio_web','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='actividad' ) {
				$sth->bindValue(':actividad','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='RFC' ) {
				$sth->bindValue(':RFC','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_pais' ) {
				$sth->bindValue(':fk_pais','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_pais' ) {
				$sth->bindValue(':nombre_pais', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_estado' ) {
				$sth->bindValue(':fk_estado','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_estado' ) {
				$sth->bindValue(':nombre_estado', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_municipio' ) {
				$sth->bindValue(':fk_municipio','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_municipio' ) {
				$sth->bindValue(':nombre_municipio', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='localidad' ) {
				$sth->bindValue(':localidad','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='referencia' ) {
				$sth->bindValue(':referencia','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='calle' ) {
				$sth->bindValue(':calle','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='numero_exterior' ) {
				$sth->bindValue(':numero_exterior','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='numero_interior' ) {
				$sth->bindValue(':numero_interior','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='colonia' ) {
				$sth->bindValue(':colonia','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='codigo_postal' ) {
				$sth->bindValue(':codigo_postal','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='icon' ) {
				$sth->bindValue(':icon','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT empresa.id, empresa.nombre, empresa.telefonos, empresa.logo, empresa.sitio_web, empresa.actividad, empresa.RFC, empresa.fk_pais, pais0.nombre AS nombre_fk_pais, empresa.fk_estado, estado1.nombre AS nombre_fk_estado, empresa.fk_municipio, municipio2.nombre AS nombre_fk_municipio, empresa.localidad, empresa.referencia, empresa.calle, empresa.numero_exterior, empresa.numero_interior, empresa.colonia, empresa.codigo_postal, empresa.icon FROM '.$this->tabla.' empresa '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT empresa.id, empresa.nombre, empresa.telefonos, empresa.logo, empresa.sitio_web, empresa.actividad, empresa.RFC, empresa.fk_pais, pais0.nombre AS nombre_fk_pais, empresa.fk_estado, estado1.nombre AS nombre_fk_estado, empresa.fk_municipio, municipio2.nombre AS nombre_fk_municipio, empresa.localidad, empresa.referencia, empresa.calle, empresa.numero_exterior, empresa.numero_interior, empresa.colonia, empresa.codigo_postal, empresa.icon FROM '.$this->tabla.' empresa '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='telefonos' ) {
				$sth->bindValue(':telefonos','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='logo' ) {
				$sth->bindValue(':logo','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='sitio_web' ) {
				$sth->bindValue(':sitio_web','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='actividad' ) {
				$sth->bindValue(':actividad','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='RFC' ) {
				$sth->bindValue(':RFC','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_pais' ) {
				$sth->bindValue(':fk_pais','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_pais' ) {
				$sth->bindValue(':nombre_pais', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_estado' ) {
				$sth->bindValue(':fk_estado','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_estado' ) {
				$sth->bindValue(':nombre_estado', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_municipio' ) {
				$sth->bindValue(':fk_municipio','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_municipio' ) {
				$sth->bindValue(':nombre_municipio', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='localidad' ) {
				$sth->bindValue(':localidad','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='referencia' ) {
				$sth->bindValue(':referencia','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='calle' ) {
				$sth->bindValue(':calle','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='numero_exterior' ) {
				$sth->bindValue(':numero_exterior','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='numero_interior' ) {
				$sth->bindValue(':numero_interior','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='colonia' ) {
				$sth->bindValue(':colonia','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='codigo_postal' ) {
				$sth->bindValue(':codigo_postal','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='icon' ) {
				$sth->bindValue(':icon','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['telefonos']='';
			$obj['logo']='';
			$obj['sitio_web']='';
			$obj['actividad']='';
			$obj['RFC']='';
			$obj['fk_pais']='';
			$obj['nombre_pais']='';
			$obj['fk_estado']='';
			$obj['nombre_estado']='';
			$obj['fk_municipio']='';
			$obj['nombre_municipio']='';
			$obj['localidad']='';
			$obj['referencia']='';
			$obj['calle']='';
			$obj['numero_exterior']='';
			$obj['numero_interior']='';
			$obj['colonia']='';
			$obj['codigo_postal']='';
			$obj['conexionDeEmpresas']=array();
			
			$obj['icon']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT empresa.id, empresa.nombre, empresa.telefonos, empresa.logo, empresa.sitio_web, empresa.actividad, empresa.RFC, empresa.fk_pais, pais0.nombre AS nombre_fk_pais, empresa.fk_estado, estado1.nombre AS nombre_fk_estado, empresa.fk_municipio, municipio2.nombre AS nombre_fk_municipio, empresa.localidad, empresa.referencia, empresa.calle, empresa.numero_exterior, empresa.numero_interior, empresa.colonia, empresa.codigo_postal, empresa.icon
 FROM erp_empresa AS empresa
 LEFT JOIN system_ubicacion_paises AS pais0 ON pais0.id = empresa.fk_pais
 LEFT JOIN system_ubicacion_estados AS estado1 ON estado1.id = empresa.fk_estado
 LEFT JOIN system_ubicacion_municipios AS municipio2 ON municipio2.id = empresa.fk_municipio
  WHERE empresa.id=:id';
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
			throw new Exception("El identificador estב duplicado"); //TODO: agregar numero de error, crear una exception MiEscepcion
		}
		
				//----------------------------
				$conceptosMod=new conexionModelo();
				$params=array(
					'filtros'=>array(
						array(
							'filterValue'=>$modelos[0]['id'],
							'filterOperator'=>'equals',
							'dataKey'=>'fk_empresa'
						)
					)
				);
				$conexionDeEmpresas=$conceptosMod->buscar($params);				
				$modelos[0]['conexionDeEmpresas'] =$conexionDeEmpresas['datos'];
				//---------------------------
				
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
		if ( isset( $datos['telefonos'] ) ){
			$strCampos .= ' telefonos=:telefonos, ';
		} 
		if ( isset( $datos['logo'] ) ){
			$strCampos .= ' logo=:logo, ';
		} 
		if ( isset( $datos['sitio_web'] ) ){
			$strCampos .= ' sitio_web=:sitio_web, ';
		} 
		if ( isset( $datos['actividad'] ) ){
			$strCampos .= ' actividad=:actividad, ';
		} 
		if ( isset( $datos['RFC'] ) ){
			$strCampos .= ' RFC=:RFC, ';
		} 
		if ( isset( $datos['fk_pais'] ) ){
			$strCampos .= ' fk_pais=:fk_pais, ';
		} 
		if ( isset( $datos['fk_estado'] ) ){
			$strCampos .= ' fk_estado=:fk_estado, ';
		} 
		if ( isset( $datos['fk_municipio'] ) ){
			$strCampos .= ' fk_municipio=:fk_municipio, ';
		} 
		if ( isset( $datos['localidad'] ) ){
			$strCampos .= ' localidad=:localidad, ';
		} 
		if ( isset( $datos['referencia'] ) ){
			$strCampos .= ' referencia=:referencia, ';
		} 
		if ( isset( $datos['calle'] ) ){
			$strCampos .= ' calle=:calle, ';
		} 
		if ( isset( $datos['numero_exterior'] ) ){
			$strCampos .= ' numero_exterior=:numero_exterior, ';
		} 
		if ( isset( $datos['numero_interior'] ) ){
			$strCampos .= ' numero_interior=:numero_interior, ';
		} 
		if ( isset( $datos['colonia'] ) ){
			$strCampos .= ' colonia=:colonia, ';
		} 
		if ( isset( $datos['codigo_postal'] ) ){
			$strCampos .= ' codigo_postal=:codigo_postal, ';
		} 
		if ( isset( $datos['icon'] ) ){
			$strCampos .= ' icon=:icon, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Empresa Creada';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Empresa Actualizada';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['nombre'] ) ){
			$sth->bindValue(':nombre', $datos['nombre'] );
		}
		if  ( isset( $datos['telefonos'] ) ){
			$sth->bindValue(':telefonos', $datos['telefonos'] );
		}
		if  ( isset( $datos['logo'] ) ){
			$sth->bindValue(':logo', $datos['logo'] );
		}
		if  ( isset( $datos['sitio_web'] ) ){
			$sth->bindValue(':sitio_web', $datos['sitio_web'] );
		}
		if  ( isset( $datos['actividad'] ) ){
			$sth->bindValue(':actividad', $datos['actividad'] );
		}
		if  ( isset( $datos['RFC'] ) ){
			$sth->bindValue(':RFC', $datos['RFC'] );
		}
		if  ( isset( $datos['fk_pais'] ) ){
			$sth->bindValue(':fk_pais', $datos['fk_pais'] );
		}
		if  ( isset( $datos['fk_estado'] ) ){
			$sth->bindValue(':fk_estado', $datos['fk_estado'] );
		}
		if  ( isset( $datos['fk_municipio'] ) ){
			$sth->bindValue(':fk_municipio', $datos['fk_municipio'] );
		}
		if  ( isset( $datos['localidad'] ) ){
			$sth->bindValue(':localidad', $datos['localidad'] );
		}
		if  ( isset( $datos['referencia'] ) ){
			$sth->bindValue(':referencia', $datos['referencia'] );
		}
		if  ( isset( $datos['calle'] ) ){
			$sth->bindValue(':calle', $datos['calle'] );
		}
		if  ( isset( $datos['numero_exterior'] ) ){
			$sth->bindValue(':numero_exterior', $datos['numero_exterior'] );
		}
		if  ( isset( $datos['numero_interior'] ) ){
			$sth->bindValue(':numero_interior', $datos['numero_interior'] );
		}
		if  ( isset( $datos['colonia'] ) ){
			$sth->bindValue(':colonia', $datos['colonia'] );
		}
		if  ( isset( $datos['codigo_postal'] ) ){
			$sth->bindValue(':codigo_postal', $datos['codigo_postal'] );
		}
		if  ( isset( $datos['icon'] ) ){
			$sth->bindValue(':icon', $datos['icon'] );
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

		$conexionMod = new conexionModelo();
		
		if ( $esNuevo ){
			global $DB_CONFIG;
			$conexion=array(
				'db_name'=>$this->string2url('erp_id'.$idObj.'_'.$datos['nombre']),
				'host'=>$DB_CONFIG['DB_SERVER'],
				'user'=>$DB_CONFIG['DB_USER'],
				'pass'=>$DB_CONFIG['DB_SERVER'],
			);
			$datos['conexionDeEmpresas']=array($conexion);
		}
			foreach( $datos['conexionDeEmpresas'] as $el ){
				if ( !empty($el['eliminado']) ){
					if ( !empty($el['id']) ){
						$res = $conexionMod->eliminar( array('id'=>$el['id']) );
						if ($res )$res =array('success'=>true);
					}else{
						$res=array('success'=>true);
					}					
				 }else{
					unset( $el['eliminado'] );
					$el['fk_empresa']=$idObj;
					// if ( empty($concepto['nombre'])  )  continue;
					$res = $conexionMod->guardar($el);
				 }
				//-----
				//
				//$res=$conexionMod->guardar($el);
				//if ( !$res['success'] ){											
				//	return $res;
				//}
				
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