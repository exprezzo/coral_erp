<?php

require_once $_PETICION->basePath.'/modelos/app.php';
require_once $_PETICION->basePath.'/presentacion/html.php/apps/app_pdf.php';
require_once $_PETICION->basePath.'/modelos/aplicacion_empresa.php';
require_once $_PETICION->basePath.'/modelos/menu.php';
require_once $_PETICION->basePath.'/aplicacion.php';

class apps extends Controlador{
	var $modelo="app";	
	
	
	
	function instalar(){
		$res=array(
			'success'=>false,
			'msg'=>'Instalacion en construccion'
		);
		$user=sessionGet('user');
		$empresaId = $user['fk_ultima_empresa_logeada'];
		$appId=$_POST['appId'];
		
		$moduloMod=new aplicacion_empresaModelo();
		
		global $DB_CONFIG;
		$sql='USE '.$DB_CONFIG['DB_NAME'];
		$moduloMod->ejecutarSql( $sql );
		
		$params=array(
			'fk_empresa'=>$empresaId,
			'fk_app'=>$appId
		);
		
		// print_r( $params ); 
		$res = $moduloMod->guardar( $params );
		
		
		
		if ( $res['success'] ){
			// $apps=$this->getAplicaciones($empresaId);
			// sessionSet('aplicaciones', $apps);
			$res['msg']='Aplicacion Instalada';
			sessionSet('res', $res);
			$mod= $this->getModelo();
			$app=$mod->obtener($appId);
			
			$conexion = sessionGet('DB_CONFIG');
			$sql='USE '.$conexion['DB_NAME'];		
			$moduloMod->ejecutarSql( $sql );
			$nombreInterno=$app['nombre_interno'];
			$ubicacion = $app['ubicacion'];
			require_once $ubicacion.'/'.$nombreInterno.'.php';
			$nombreClase=$nombreInterno.'App';
			$app = new $nombreClase();			
			$app->instalar( $ubicacion, $nombreInterno );
			
		}
		
		echo json_encode( $res ); 
	}
	
	function desinstalar(){
		$res=array(
			'success'=>false,
			'msg'=>'Desinstalacion en construccion'
		);
		$user=sessionGet('user');
		$empresaId = $user['fk_ultima_empresa_logeada'];
		$appId=$_POST['appId'];
		
		$moduloMod=new aplicacion_empresaModelo();
		
		global $DB_CONFIG;
		$sql='USE '.$DB_CONFIG['DB_NAME'];
		$moduloMod->ejecutarSql( $sql );
		
		$sql='SELECT id FROM erp_empresa_app WHERE fk_empresa='.intval($empresaId).' AND fk_app='.$appId;
		$res = $moduloMod->ejecutarSql( $sql );
		 
		if ( sizeof( $res['datos'] )!=1 ){
			$res=array(
				'success'=>false,
				'msg'=>'Error desinstalando'
			);
			return $res;
		}
		$idModulo=$res['datos'][0]['id'];
		
		$exito = $moduloMod->eliminar(array('id'=>$idModulo)  );
		if ( $exito ){
			// $apps=$this->getAplicaciones($empresaId);
			// sessionSet('aplicaciones', $apps);
			$res['msg']='Aplicacion Desinstalada';
			$res['success']=true;
			sessionSet('res', $res);
			
		}
		
		echo json_encode( $res ); 
	}
	
	
	function bajarPdf(){
		//-------
		$mod= $this->getModelo();
		global $_PETICION;
		$id=$_PETICION->params[0];
		$datos= $mod->obtener( $id );
		//-------
		$objPdf = new AppPdf('P','mm','letter');
		$objPdf->datos=$datos;
		$objPdf->AddPage();
		$objPdf->imprimir(  );
		//-------
		$path='../';
		$nombreArchivo=$objPdf->titulo.'_'.$datos['id'];			
		//http://stackoverflow.com/questions/2021624/string-sanitizer-for-filename			
		$nombreArchivo = preg_replace('/[^a-zA-Z0-9-_\.]/','_', $nombreArchivo);
		$fullPath=$path.$nombreArchivo.'.pdf';
		$pdfStr=$objPdf->Output($fullPath, 'S');
		//-------
		header ("Content-Length: ".strlen($pdfStr)); 
		header ("Content-Disposition: attachment; filename=".$nombreArchivo.'.pdf');
		header ("Content-Type: application/octet-stream");
		echo $pdfStr;
	}
		
	function mostrarVista( $archivos=""){
		$vista= $this->getVista();
		
		global $_TEMA_APP;
		global $_PETICION;
		return $vista->mostrarTema($_PETICION, $_TEMA_APP);
	}
	
	function nuevo(){		
		$modelo = $this->getModelo();
		$obj=$modelo->nuevo( array() );
		
		$vista=$this->getVista();
		$vista->datos=$obj;		
		
		global $_TEMA_APP;
		global $_PETICION;
		$_PETICION->accion="edicion";
		return $vista->mostrarTema($_PETICION, $_TEMA_APP);
		
	
	}
	
	function guardar(){
		$modelo=$this->getModelo();
		$esNuevo = empty( $_POST['datos'][$modelo->pk] );
		
		ob_start();
		$res = parent::guardar();
		ob_end_clean();
		
		if ( !$res['success'] ){			
			echo json_encode($res);
			return $res;
		}
		
		if ( $esNuevo ){					
			$res['esNuevo']=true;				
			sessionSet('res', $res);			
		}
		echo json_encode($res);
		return $res;
	}
	function eliminar(){
		$modObj= $this->getModelo();
		$params=array();
		
		if ( !isset($_POST[$modObj->pk]) ){
			$id=$_POST['datos'];
		}else{
			$id=$_POST[$modObj->pk];
		}
	
		if (empty($id) ){			
			$response=array(
				'success'=>false,
				'msg'=>'Seleccione un elemento'
			);
		}else{
			$params[$modObj->pk]=$id;
		
			$res=$modObj->borrar($params);
			// print_r($res); exit;
			$response=array(
				'success'=>$res,
				'msg'=>'Aplicacion Eliminada'
			);
			
			
			if ( $res ){				
				$sinGuardar = empty( $_POST['sinGuardar'] )? false : $_POST['sinGuardar'] ;
				if ( !$sinGuardar ) sessionSet('res', $response);
			}
		}
		echo json_encode($response);
		return $response;
	}
	function editar(){
		global $_PETICION;
		// print_r($_PETICION);
		if ( isset($_PETICION->params[0]) )
		$_REQUEST['id'] = $_PETICION->params[0];
		
		// return parent::editar();
		$id=empty( $_REQUEST['id'])? 0 : $_REQUEST['id'];
		$model=$this->getModelo();
		$params=array(
			$model->pk=>$id
		);		
		
		$obj=$model->obtener( $id );			
		$vista=$this->getVista();				
		$vista->datos=$obj;		
		
		global $_PETICION;
		global $_TEMA_APP;
		$_PETICION->accion="edicion";
		$vista->mostrarTema($_PETICION,$_TEMA_APP);
	}
	function buscar(){
		if ( $_SERVER['REQUEST_METHOD']=='POST'  ){
			return parent::buscar();			
		}else{
			global $_PETICION, $_TEMA_APP;
			$vista = $this->getVista();
			$_PETICION->accion='busqueda';
			return $vista->mostrarTema($_PETICION, $_TEMA_APP);
		}
	}
}
?>