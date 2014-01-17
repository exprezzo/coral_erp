<?php
require_once $_PETICION->basePath.'/modelos/Usuario.php';
require_once $_PETICION->basePath.'/presentacion/html.php/usuarios/Usuario_pdf.php';

require_once $_PETICION->basePath.'/modelos/rol.php';
require_once $_PETICION->basePath.'/modelos/empresa.php';
require_once $_PETICION->basePath.'/modelos/conexion.php';
require_once $_PETICION->basePath.'/modelos/aplicacion_empresa.php';
require_once $_PETICION->basePath.'/modelos/menu.php';
require_once $_PETICION->basePath.'/modelos/app.php';
require_once $_PETICION->basePath.'/modelos/acceso.php';

class usuarios extends Controlador{
	var $modelo="Usuario";	
	var $accionesPublicas=array('login','registrar');
	
	private function proceso_login(){
		
		$res=array(
			'success'=>false,
			'msg'=>'Logear en empresa en proceso',	
		);		
		$user = sessionGet('user');
		
		 if ( !empty($user['fk_ultima_empresa_logeada']) ){
			// Cuando el usuario ya seha logeado antes a una empresa, se logea automaticamente a esa empresa (se revisan permisos)
			$mod=$this->getModelo();
			$res = $mod->ingresarEnEmpresa($user['id'],$user['fk_ultima_empresa_logeada'] );
			if ( $res['success'] ){
				sessionSet('aplicaciones', $res['aplicaciones'] );
			}
		}else{
			//Cuando el usuario ya tiene una empresa, se logea a esa empresa
			//obtiene todas las empresas a las que el usuario tiene acceso, se logea a la primera
			$accesoMod= new accesoModelo();
			$params=array( 'filtros'=>array(
				
					array(
						'dataKey'=>'fk_usuario',
						'filterOperator'=>'equals',
						'filterValue'=>$user['id']					
					)
				
			) );
			$accesos = $accesoMod->buscar( $params );
			$mod=$this->getModelo();
			if ( !empty($accesos['datos']) ){
				$res = $mod->ingresarEnEmpresa($user['id'],$accesos['datos'][0]['fk_empresa'] );
				if ( $res['success'] ){
					sessionSet('aplicaciones', $res['aplicaciones'] );
				}
			}else{
				// echo 'SADASSAD';
				sessionSet('aplicaciones', array() );
			}
			
			
		}
		
		return $res;
	}
	
	function registrar(){

		$res=array();
		$res['success']=false;
		
		$_POST['datos']['id'] =0;
		$mod=$this->getModelo();
		$pdo=$mod->getPDO();
		$pdo->beginTransaction();
		
		//validar email
		$email_a=$_POST['datos']['email'];
		if ( !filter_var($email_a, FILTER_VALIDATE_EMAIL)) {
			$msg = "Este email ($email_a) NO es considerado válido.";
			$res['msg']=$msg;
			echo json_encode( $res );
			return $res;
		}

		//VALIDAR username
		if ( empty($_POST['datos']['username']) ) {
			$msg = "Debe escribir un nombre de usuario.";
			$res['msg']=$msg;
			echo json_encode( $res );
			return $res;
		}
		
		//VALIDAR username
		if ( empty($_POST['datos']['username']) ) {
			$msg = "Debe escribir un nombre de usuario.";
			$res['msg']=$msg;
			echo json_encode( $res );
			return $res;
		}
		
		//VALIDAR username
		if ( empty($_POST['datos']['pass']) ) {
			$msg = "Debe escribir una contraseña.";
			$res['msg']=$msg;
			echo json_encode( $res );
			return $res;
		}
		
		//VALIDAR username
		if ( empty($_POST['datos']['nombre']) ) {
			$msg = "Debe escribir su nombre.";
			$res['msg']=$msg;
			echo json_encode( $res );
			return $res;
		}
		
		
		ob_start();
		$res =  $this->guardar();
		ob_end_clean();
		if ( $res['success'] ){
			$mod=$this->getModelo();
			$resMsg = $mod->mensajeBienvenida( $res['datos'] );
			
			if ( $resMsg['success'] ){
				$pdo->commit();
				// $pdo->rollBack();
			}else{
				$pdo->rollBack();
				echo json_encode( $resMsg );
			}

		}
		
		echo json_encode( $res );
		return $res;
	}
	function logout(){
		// global $_TEMA_APP, $_PETICION;
		
		
		// session_unset();
		 // session_destroy();
		// session_start();
		// session_regenerate_id(true);
		logout();
		global $_PETICION;		
		header('Location: '.$_PETICION->url_app.$_PETICION->modulo.'/usuarios/login');
	}
	function login(){
		function isAjax(){
		   return !empty($_SERVER['HTTP_X_REQUESTED_WITH']) &&
		   strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest';
		}
		$vista= $this->getVista();
		global $_TEMA_APP, $_PETICION;		
		$layout='login';
		if ( $_SERVER['REQUEST_METHOD']=='POST'  ){
			//Login con ajax o el post del form 
			$usrMod = $this->getModelo();
			$res = $usrMod->identificar($_POST['nick'], $_POST['pass']);			
			
			
			if ($res['success']){
				sessionAdd('isLoged', true);				
				unset($res['usuario']['pass']);					
				sessionAdd('user', $res['usuario']);				
				if ( intval($res['usuario']['fk_rol'])!==1 ){
					$resProcesoLogin=$this->proceso_login();
					if ( !$resProcesoLogin['success'] ){
						//------------------------------------------------------------
						// $conexion = $empresa['conexionDeEmpresas'][0];
						$DB_CONFIG=array(
							'host'=>$conexion['host'],
							'db_name'=>$conexion['db_name'],
							'db_user'=>$conexion['user'],
							'db_pass'=>$conexion['pass']
						);	
						$DB_CONFIG=sessionAdd('DB_CONFIG', $DB_CONFIG);
						//------------------------------------------------------------
					}
				}
				
				if ( isAjax() ){
					$res = array(
						'success'=>true,
						'msg'=>'Usuario identificado'
					);
					echo json_encode( $res );
				}else{
					$url=sessionGet('_PETICION');
					$url=( empty($url) ) ? $_PETICION->url_app.$_PETICION->modulo.'/paginas/inicio' : '/'.$url;
					// echo $url; exit;
					 header('Location:'.$url);
				}
					
			}else{								
				if ( isAjax() ){
					$res = array(
						'success'=>false,
						'msg'=>utf8_encode($res['msg'])
					);
					
					
					echo json_encode( $res );
				}else{
					$vista->error= $res['msg'];//'USUARIO O CONTRASEÑA INCORRECTA';
					$vista->username=$_POST['nick'];
					return $vista->mostrarTema($_PETICION, $_TEMA_APP, $layout);
				}
			}			
		}else{
			//PETICION GET U OTRA DIFERENTE DE POST			
			$vista->username='';
			return $vista->mostrarTema($_PETICION, $_TEMA_APP, $layout);
		}				
	}
		
	function buscarRol(){
		$rolMod= new rolModelo();
		$res = $rolMod->buscar( array() );
		echo json_encode( $res );
	}
		
	
	function bajarPdf(){
		//-------
		$mod= $this->getModelo();
		global $_PETICION;
		$id=$_PETICION->params[0];
		$datos= $mod->obtener( $id );
		//-------
		$objPdf = new UsuarioPdf('P','mm','letter');
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
		global $_PETICION;
		$id=$_POST['datos'][$modelo->pk];
		
		if ( ( !empty($_POST['datos']['pass']) || !empty($_POST['datos']['confirmacion']) ) && ($_POST['datos']['pass'] != $_POST['datos']['confirmacion']) ){
			$respuesta = array(
				'success'	=>false,
				'msg'		=>'Las contraseñas no coinciden'
			);
			echo json_encode( $respuesta );
			return $respuesta;
		}
		
		$user = sessionGet('user');
		if ( $user['fk_rol'] != 1 && $user['id'] != $id && !$esNuevo ){
			$respuesta = array(
				'success'	=>false,
				'msg'		=>'No tiene permiso para editar este usuario',
				'titulo'	=>'Mensaje de la capa de seguridad'
			);
			
			echo json_encode($respuesta);
			return $respuesta;
		}
		ob_start();
		$res = parent::guardar();
		ob_end_clean();
		
		if ( !$res['success'] ){			
			echo json_encode($res);
			return $res;
		}
		
		if ( $esNuevo ){					
			$res['esNuevo']=true;				
			$_SESSION['res']=$res;
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
				'msg'=>''
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