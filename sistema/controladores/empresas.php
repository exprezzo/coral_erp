<?php
require_once $_PETICION->basePath.'/modelos/acceso.php';
require_once $_PETICION->basePath.'/modelos/empresa.php';
require_once $_PETICION->basePath.'/presentacion/html.php/empresas/empresa_pdf.php';

require_once $_PETICION->basePath.'/modelos/pais.php';

require_once $_PETICION->basePath.'/modelos/estado.php';

require_once $_PETICION->basePath.'/modelos/municipio.php';

require_once $_PETICION->basePath.'/modelos/conexion.php';

class empresas extends Controlador{
	var $modelo="empresa";	
	
	
		function buscarPais(){
			$paisMod= new paisModelo();
			$res = $paisMod->buscar( array() );
			echo json_encode( $res );
		}
		
		function buscarEstado(){
			$estadoMod= new estadoModelo();
			$res = $estadoMod->buscar( array() );
			echo json_encode( $res );
		}
		
		function buscarMunicipio(){
			$municipioMod= new municipioModelo();
			$res = $municipioMod->buscar( array() );
			echo json_encode( $res );
		}
		
	
	function bajarPdf(){
		//-------
		$mod= $this->getModelo();
		global $_PETICION;
		$id=$_PETICION->params[0];
		$datos= $mod->obtener( $id );
		//-------
		$objPdf = new EmpresaPdf('P','mm','letter');
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
			$id_empresa=$res['datos']['id'];
			$user=sessionGet('user');
			$user['fk_ultima_empresa_logeada'] = $id_empresa;
			sessionSet('user', $user);			
			$res['esNuevo']=true;				
			sessionSet('res', $res);	
			
			//RELACIONA AL USUARIO CON LA EMPRESA
			$params=array(
				'fk_usuario'=>$user['id'],
				'fk_empresa'=>$id_empresa,
				'status'=>1
			);
			
			$modAcceso=new accesoModelo();
			$modAcceso->guardar( $params );
			
			
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
				'msg'=>'Empresa Eliminada'
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