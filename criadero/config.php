<?php

$DB_CONFIG=array(
	'DB_SERVER'	=>'localhost',
	'DB_NAME'	=>'coral_erp',
	'DB_USER'	=>'root',
	'DB_PASS'	=>'',
	'PASS_AES'	=>'9as43s'
);

if ( !isset($APP_CONFIG) ) $APP_CONFIG = array();
$_DEFAUL_LAYOUT ='../sistema';
$APP_CONFIG['nombre'] = 'Criadero';

$APP_CONFIG['_LOGIN_REDIRECT_PATH']='sistema/usuarios/login';
$APP_CONFIG['nombre'] = 'Coral ERP';

?>