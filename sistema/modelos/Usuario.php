<?php
class UsuarioModelo extends Modelo{	
	var $tabla='system_usuarios';
	var $pk='id';
	var $campos= array('id', 'username', 'pass', 'email', 'nombre', 'ultima_conexion', 'creado', 'fk_rol', 'nombre_rol', 'ip');
	
	function ingresarEnEmpresa($fk_usuario, $fk_empresa){
		$res=array(
			'success'=>false,
			'msg'=>'Logear en empresa en proceso',	
		);
		
		//revisar que el usuario este relacionado con la empresa y que su estatus sea activo
		
		
		$sql='SELECT status FROM erp_usuario_empresa WHERE fk_usuario=:fk_usuario AND fk_empresa=:fk_empresa';
		$pdo=$this->getPdo();
		$sth = $pdo->prepare( $sql );
		
		$sth->bindValue(':fk_usuario', $fk_usuario );		
		$sth->bindValue(':fk_empresa', $fk_empresa );		
		
		$exito = $sth->execute();
		
		if ( !$exito ){
			$error = $this->getError($sth);			
			return $error;
		}
		
		$datos = $sth->fetchAll(PDO::FETCH_ASSOC);
		
		if ( empty($datos) || empty($datos[0]['status'] ) ){
			return array('success'=>false,'msg'=>'El usuario no tiene acceso a esta empresa');
		}
		
		//SI LLEGAMOS AQUI SIGNIFICA QUE EL USUARIO SI TIENE ACCESO A ESA EMPRESA
		$params=array(
			'id'=>$fk_usuario,
			'fk_ultima_empresa_logeada'=>$fk_empresa
		);
		$this->guardar( $params );
		
		//ESTABLECE LA CONEXION CON LA BASE DE DATOS DE LA EMPRESA, GUARDA ESA INFO EN LA SESSION
		
		$empMod = new EmpresaModelo();		
		$empresa=$empMod->obtener($fk_empresa);
		
		//la empresa debe existir, debe tener una conexion
		
		if ( empty($empresa) ){
			$res=array(
				'success'=>false,
				'msg'=>'La empresa no existe',	
			);
			return $res;
		}
		
		if ( empty($empresa['conexionDeEmpresas']) ){
			$res=array(
				'success'=>false,
				'msg'=>'La empresa no tiene una conexion a la Base de Datos',	
			);
			return $res;
		}
		
		
		sessionSet('empresa', $empresa);
		//------------------------------------------------------------
		global $DB_CONFIG;
		// $conexion = $empresa['conexionDeEmpresas'][0];
		$conexion=array(
			'host'=>$DB_CONFIG['host'],
			'db_name'=>'erp_temp',
			'db_user'=>$DB_CONFIG['user'],
			'db_pass'=>$DB_CONFIG['pass']
		);	
		sessionAdd('DB_CONFIG', $conexion);
		//------------------------------------------------------------
		//obtiene las aplicaciones y sus menus
		$params=array('filtros'=>array(
			array(
				'dataKey'=>'fk_empresa',
				'filterValue'=>$empresa['id'],
				'filterOperator'=>'equals'
			)
		));
		
		$appMod=new aplicacion_empresaModelo();
		$resApps = $appMod->buscar( $params );
		$aplicaciones = $resApps['datos'];
		
		$menuMod= new menuModelo();		
		$appMod=new AppModelo();
		// print_r( $aplicaciones );
		for($i=0; $i<sizeof($aplicaciones); $i++){
			$params=array(
				'filtros'=>array(
					array(
						'dataKey'=>'fk_app',
						'filterOperator'=>'equals',
						'filterValue'=>$aplicaciones[$i]['fk_app']
					)
				)
			);
			
			$app=$appMod->obtener( $aplicaciones[$i]['fk_app'] );
			$aplicaciones[$i]=$app;
			// print_r( $app );
			$menus = $menuMod->buscar( $params );
			$aplicaciones[$i]['menu'] = $menus['datos'];
		}
		//------------------------------------------------------------
		$res=array(
			'success'=>true,
			'msg'=>'Logeado en empresa',	
			'aplicaciones'=>$aplicaciones
		);
		return $res;

	}
	function mensajeBienvenida($usuario){
		$res =array();
		global $APP_CONFIG;

		//--------------------------------------------
		$subject = 'Bienvenido al ERP';		
		$body='Saludos '.$usuario['nombre'].', se ha registrado un usuario  usando este email. ';
		$body.='<br/><br/><strong> Datos de Acceso:</strong> <br /><br/>';
		$body.='User: '.$usuario['username'].'<br/>';
		$body.='Contrase&ntilde;a: *****'.'<br/>';
		$body.='<a href="www.solucionestriples.com/erp">Coral ERP</a>';
		
		
		
		require_once  '../php_libs/Swift-5.0.3/lib/swift_required.php';

		$userName    = $APP_CONFIG['email_user'];
		$pass        = $APP_CONFIG['email_pass'];
		$email_host  = $APP_CONFIG['email_host'];
		$email_port  = $APP_CONFIG['email_port'];
		
		try{
			$transport = Swift_SmtpTransport::newInstance($email_host, $email_port)
			  ->setUsername($userName)
			  ->setPassword($pass);

			$mailer = Swift_Mailer::newInstance($transport);
			
			// los correos separados por comas se convierten en arreglos
				
			$destinos=array( $usuario['email'] );

			$message = Swift_Message::newInstance($subject)
			  ->setFrom( array($userName => 'Sistema Coral ERP') )
			  ->setTo($destinos)
			  ->setBody( $body ,'text/html');
		 }catch(Exception $e){
			file_put_contents('../error_log.txt', '\n'.'EMAIL DE BIENVENIDA'.'\n'.$body.'\n'.$e.'\n', FILE_APPEND);
			$res['success']=false;
			$res['msg']=$e;
			return $res;
		 }
		

		
		$exito = $mailer->send($message, $failures);
		// if ( !empty($failures) ){
			 // print_r( $failures );
		// }

		if ( !$exito ){
			$msg='Error al enviar correo de bienvenida';
			$exito=false;
			//logear este error
			file_put_contents('../error_log.txt', '\n'.'EMAIL DE BIENVENIDA'.'\n'.$body.'\n' ,FILE_APPEND);
		}else{
			$msg=$subject.'Correo de bienvenida enviado';
			$exito=true;
		}
		$res['success']=$exito;
		$res['msg']=$msg;

		return $res;
	}
	function identificar($usuario, $contra){
				
		$sql = 'SELECT * FROM '.$this->tabla.' WHERE username=:usuario and pass=:pass';				
		$con = $this->getConexion();
		$sth = $con->prepare($sql);		
		$sth->bindValue(':usuario',$usuario);		
		$sth->bindValue(':pass',md5($contra) );		
		$exito = $sth->execute();
		$modelos = $sth->fetchAll(PDO::FETCH_ASSOC);
		
		if ( !$exito ){
			$error = $this->getError($sth);			
			return $error;
		}
		if ( empty($modelos) ){
			//throw new Exception(); //TODO: agregar numero de error, crear una exception MiEscepcion			
			return array('success'=>false,'error'=>'Usuario o contraseña incorrecta','msg'=>'Usuario o contraseña incorrecta');
		}
		
		if ( sizeof($modelos) > 1 ){
			throw new Exception("El identificador está duplicado"); //TODO: agregar numero de error, crear una exception MiEscepcion
		}
		unset ($modelos[0]['pass']);
		
		
		
		$date = new DateTime();
		$user=array(
			'id'			 =>$modelos[0]['id'],
			'ultima_conexion'=>$date->format('Y-m-d H:i:s')			
		);
		
		$res = $this->guardar( $user );
		
		
		return array(
			'success'=>true,
			'usuario'=>$modelos[0]
		);
	}
	function buscar($params){
		
		$pdo = $this->getConexion();
		$filtros='';
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				 
				if ( $filtro['dataKey']=='id' ) {
					$filtros .= ' Usuario.id like :id OR ';
				} 
				if ( $filtro['dataKey']=='username' ) {
					$filtros .= ' Usuario.username like :username OR ';
				} 
				
				if ( $filtro['dataKey']=='email' ) {
					$filtros .= ' Usuario.email like :email OR ';
				} 
				if ( $filtro['dataKey']=='nombre' ) {
					$filtros .= ' Usuario.nombre like :nombre OR ';
				} 
				if ( $filtro['dataKey']=='ultima_conexion' ) {
					$filtros .= ' Usuario.ultima_conexion like :ultima_conexion OR ';
				} 
				if ( $filtro['dataKey']=='creado' ) {
					$filtros .= ' Usuario.creado like :creado OR ';
				} 
				if ( $filtro['dataKey']=='fk_rol' ) {
					$filtros .= ' Usuario.fk_rol like :fk_rol OR ';
				} 
				if ( $filtro['dataKey']=='nombre_rol' ) {
					$filtros .= ' rol0.nombre like :nombre_rol OR ';
				} 
				if ( $filtro['dataKey']=='ip' ) {
					$filtros .= ' Usuario.ip like :ip OR ';
				}			
			}
			$filtros=substr( $filtros,0,  strlen($filtros)-3 );
			if ( !empty($filtros) ){
				$filtros=' WHERE '.$filtros;
			}
		}
		
		
		$joins='
 LEFT JOIN system_rol AS rol0 ON rol0.id = Usuario.fk_rol';
						
		$sql = 'SELECT COUNT(*) as total FROM '.$this->tabla.' Usuario '.$joins.$filtros;				
		$sth = $pdo->prepare($sql);		
		if ( !empty($params['filtros']) ){
			foreach($params['filtros'] as $filtro){
				
			if ( $filtro['dataKey']=='id' ) {
				$sth->bindValue(':id','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='username' ) {
				$sth->bindValue(':username','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			
			if ( $filtro['dataKey']=='email' ) {
				$sth->bindValue(':email','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre' ) {
				$sth->bindValue(':nombre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='ultima_conexion' ) {
				$sth->bindValue(':ultima_conexion','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='creado' ) {
				$sth->bindValue(':creado','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_rol' ) {
				$sth->bindValue(':fk_rol','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_rol' ) {
				$sth->bindValue(':nombre_rol', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='ip' ) {
				$sth->bindValue(':ip','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$sql = 'SELECT Usuario.id, Usuario.username,  Usuario.email, Usuario.nombre, Usuario.ultima_conexion, Usuario.creado, Usuario.fk_rol, rol0.nombre AS nombre_fk_rol, Usuario.ip FROM '.$this->tabla.' Usuario '.$joins.$filtros.' limit :start,:limit';
		}else{
			$sql = 'SELECT Usuario.id, Usuario.username,  Usuario.email, Usuario.nombre, Usuario.ultima_conexion, Usuario.creado, Usuario.fk_rol, rol0.nombre AS nombre_fk_rol, Usuario.ip FROM '.$this->tabla.' Usuario '.$joins.$filtros;
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
			if ( $filtro['dataKey']=='username' ) {
				$sth->bindValue(':username','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			
			if ( $filtro['dataKey']=='email' ) {
				$sth->bindValue(':email','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre' ) {
				$sth->bindValue(':nombre','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='ultima_conexion' ) {
				$sth->bindValue(':ultima_conexion','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='creado' ) {
				$sth->bindValue(':creado','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='fk_rol' ) {
				$sth->bindValue(':fk_rol','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='nombre_rol' ) {
				$sth->bindValue(':nombre_rol', '%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
			}
			if ( $filtro['dataKey']=='ip' ) {
				$sth->bindValue(':ip','%'.$filtro['filterValue'].'%', PDO::PARAM_STR );
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
			$obj['username']='';
			$obj['pass']='';
			$obj['email']='';
			$obj['nombre']='';
			$obj['ultima_conexion']='';
			$obj['creado']='';
			$obj['fk_rol']='2';
			$obj['nombre_rol']='';
			$obj['ip']='';
		return $obj;
	}
	function obtener( $llave ){		
		$sql = 'SELECT Usuario.id, Usuario.fk_ultima_empresa_logeada, Usuario.username, Usuario.email, Usuario.nombre, Usuario.ultima_conexion, Usuario.creado, Usuario.fk_rol, rol0.nombre AS nombre_fk_rol, Usuario.ip
 FROM system_usuarios AS Usuario
 LEFT JOIN system_rol AS rol0 ON rol0.id = Usuario.fk_rol
  WHERE Usuario.id=:id';
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
		
		if ( !empty($datos['pass']) ){
			$datos['pass']=md5( $datos['pass'] );
		} 
		if ( empty($datos['pass']) && empty($datos['id']) ){
			return array(
				'success'=>false,
				'msg'=>utf8_encode('Escriba una contraseña')
			);
		}
		
		if ( !empty($datos['id']) && empty($datos['pass'])){
			unset($datos['pass']);
		}
		//--------------------------------------------
		// CAMPOS A GUARDAR
		 
		if ( isset( $datos['username'] ) ){
			$strCampos .= ' username=:username, ';
		} 
		if ( isset( $datos['pass'] ) ){
			$strCampos .= ' pass=:pass, ';
		} 
		if ( isset( $datos['email'] ) ){
			$strCampos .= ' email=:email, ';
		} 
		if ( isset( $datos['nombre'] ) ){
			$strCampos .= ' nombre=:nombre, ';
		} 
		if ( isset( $datos['ultima_conexion'] ) ){
			$strCampos .= ' ultima_conexion=:ultima_conexion, ';
		} 
		if ( isset( $datos['creado'] ) ){
			$strCampos .= ' creado=:creado, ';
		} 
		if ( isset( $datos['fk_rol'] ) ){
			$strCampos .= ' fk_rol=:fk_rol, ';
		} 
		if ( isset( $datos['ip'] ) ){
			$strCampos .= ' ip=:ip, ';
		}		
		//--------------------------------------------
		
		$strCampos=substr( $strCampos,0,  strlen($strCampos)-2 );
		
		
		if ( $esNuevo ){
			$sql = 'INSERT INTO '.$this->tabla.' SET '.$strCampos;
			$msg='Usuario Creado';
		}else{
			$sql = 'UPDATE '.$this->tabla.' SET '.$strCampos.' WHERE id=:id';
			$msg='Usuario Actualizado';
		}
		
		$pdo = $this->getConexion();
		$sth = $pdo->prepare($sql);
		//--------------------------------------------		
		// BIND VALUES
		
		if  ( isset( $datos['username'] ) ){
			$sth->bindValue(':username', $datos['username'] );
		}
		if  ( isset( $datos['pass'] ) ){
			$sth->bindValue(':pass', $datos['pass'] );
		}
		if  ( isset( $datos['email'] ) ){
			$sth->bindValue(':email', $datos['email'] );
		}
		if  ( isset( $datos['nombre'] ) ){
			$sth->bindValue(':nombre', $datos['nombre'] );
		}
		if  ( isset( $datos['ultima_conexion'] ) ){
			$sth->bindValue(':ultima_conexion', $datos['ultima_conexion'] );
		}
		if  ( isset( $datos['creado'] ) ){
			$sth->bindValue(':creado', $datos['creado'] );
		}
		if  ( isset( $datos['fk_rol'] ) ){
			$sth->bindValue(':fk_rol', $datos['fk_rol'] );
		}
		if  ( isset( $datos['ip'] ) ){
			$sth->bindValue(':ip', $datos['ip'] );
		}		
		if ( !$esNuevo)	{
			$sth->bindValue(':id', $datos['id'] );
		}	
		//--------------------------------------------
		$exito = $sth->execute();
		if ( !$exito ){
			
			$error=$sth->errorInfo();						
			$msg=$error[2];						
			$datos=array();
			$errCode=$error[1];
			
			if ( $errCode==1062 ){
				$aparece = strstr ($msg, 'for key \'email\'');
				if ( strlen($aparece)>0 ){
					$msg = utf8_encode('Ese email ya existe, escoja otro');
				}
				
				$aparece = strstr ($msg, 'for key \'username\'');
				if ( strlen($aparece)>0 ){
					$msg = utf8_encode('Ese usuario ya existe, escoja otro');
				}				
				
			}
			return array(
				'success'=>false,
				'msg'=>$msg
			);
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