<?php

require_once $_PETICION->basePath.'/modelos/pagina.php';
require_once $_PETICION->basePath.'/presentacion/html.php/paginas/pagina_pdf.php';

// require_once $_PETICION->basePath.'/modelos/categoria_de_pagina.php';

class paginas extends Controlador{
	var $modelo="pagina";	
	
	function inicio(){
		$aplicaciones=sessionGet('aplicaciones');
		$user=sessionGet('user');
		global $_PETICION,  $_TEMA_APP;		                  
		if ( empty($user['fk_ultima_empresa_logeada']) ){
			//SI NO TIENE EMPRESA, MUESTRA EL DE CREAR EMPRESA
			
		}else  if ( empty($aplicaciones) ){
			//SI TIENE EMPRESA Y APLICACIONES MUESTRA EL DASHBOARD
			$_PETICION->accion='configuracion';
			$_PETICION->controlador='apps';
		}else{
			$_PETICION->accion='dashboard';
		}
		
		//SI TIENE EMPRESA PERO NO APLICACIONES, MUESTRA EL DE APLICACIONES
		
		$vista=$this->getVista();
		return $vista->mostrarTema($_PETICION, $_TEMA_APP);
	}
	
	
		function buscarCategoria_de_pagina(){
			$categoria_de_paginaMod= new categoria_de_paginaModelo();
			$res = $categoria_de_paginaMod->buscar( array() );
			echo json_encode( $res );
		}
		
	
	function bajarPdf(){
		//-------
		$mod= $this->getModelo();
		global $_PETICION;
		$id=$_PETICION->params[0];
		$datos= $mod->obtener( $id );
		//-------
		$objPdf = new PaginaPdf('P','mm','letter');
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
				'msg'=>'Pagina Eliminada'
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