<?php
$DB_CONFIG=array(
	'DB_SERVER'	=>'localhost',
	'DB_NAME'	=>'coral_erp',
	'DB_USER'	=>'root',
	'DB_PASS'	=>'',
	'PASS_AES'	=>'9as43s'
);

if ( !isset($APP_CONFIG) ) $APP_CONFIG = array();
if ( !isset($_DEFAUL_LAYOUT) ) $_DEFAUL_LAYOUT ='sistema';


$APP_PATH='/constructor';
$APP_CONFIG['nombre'] = 'Suite Marina';

global $_PETICION;
$APP_CONFIG['_LOGIN_REDIRECT_PATH']=$_PETICION->modulo.'/usuarios/login';
$APP_CONFIG['nombre'] = 'Coral ERP';
$APP_CONFIG['email_user']='facturathon@solucionestriples.mx';
$APP_CONFIG['email_pass']='renatita2012';
$APP_CONFIG['email_host']='mail.solucionestriples.mx';
$APP_CONFIG['email_port']=9025;

// require_once '../plugins/login_plugin.php';
// $_PLUGINS = array(
	// 'Login'
// );


?>