<?php 
// require_once $_PETICION->basePath.'/modelos/aplicacion_usuario.php';
// require_once $_PETICION->basePath.'/modelos/app.php';
// require_once $_PETICION->basePath.'/modelos/conexion.php';
// require_once $_PETICION->basePath.'/modelos/menu.php';

// $modApps=new aplicacion_usuarioModelo();

$user = sessionGet('user');
$params=array(
	'filtros'=>array(
		array(
			'dataKey'=>'fk_usuario',
			'filterValue'=>$user['id'],
			'filterOperator'=>'equals'
			
		)
	)
);
$apps=array('datos'=>array());

$aplicaciones = sessionGet('aplicaciones');
if ( empty($aplicaciones) ){
	$aplicaciones=array();	
}

// print_r( $_SESSION ); 
 // print_r( $aplicaciones ); 
// $apps = $modApps->buscar( $params );
// $appMod= new appModelo();
// $menuMod= new menuModelo();
// $user=sessionGet('user');print_r($user);
if ( empty($user['fk_ultima_empresa_logeada']) ){	
	$menuEmpresa= $_PETICION->url_app.$_PETICION->modulo.'/empresas/nueva';
}else{
	$menuEmpresa= $_PETICION->url_app.$_PETICION->modulo.'/empresas/editar/'.$user['fk_ultima_empresa_logeada'];
}



?>
<ul class="nav nav-list" >
	<li class="<?php echo ( $_PETICION->modulo==='sistema' )? 'active open' : ''  ;  ?>"> 
		<a href="<?php echo $_PETICION->url_app; ?>/paginas/inicio" class="dropdown-toggle">
			<i class="icon-dashboard"></i>
			<span class="menu-text">General</span>
			<b class="arrow icon-angle-down"></b>
		</a>
		<ul class="submenu">		
			<li>
				<a href="<?php echo $menuEmpresa; ?>" >
					<i class="icon-double-angle-right"></i>
					Empresa
				</a>
			</li>		
			<li>
				<a href="<?php echo $_PETICION->url_app; ?>/sistema/sucursales/buscar">
					<i class="icon-double-angle-right"></i>
					Sucursales
				</a>
			</li>	
			<li>
				<a href="<?php echo $_PETICION->url_app; ?>/sistema/apps/configuracion">
					<i class="icon-double-angle-right"></i>
					Aplicaciones
				</a>
			</li>						
			<li>
				<a href="<?php echo $_PETICION->url_app; ?>/sistema/usuarios/perfil">
					<i class="icon-double-angle-right"></i>
					Perfil
				</a>
			</li>						
		</ul>
	</li>
	<?php
		// echo 'asd';
		// print_r( $aplicaciones );
		
		// print_r($aplicaciones); exit;	
		
		foreach($aplicaciones as $app){
			// $app = $appMod->obtener($app['fk_app']);			
			if ( $app['nombre_interno'] ===$_PETICION->modulo ){
				$clase='active open';
			}else{
				$clase='';
			}
			$filtros=array(
				'filtros'=>array(
					array(
						'dataKey'	 	=>'fk_app',
						'filterValue'	=>$app['id'],
						'filterOperator'=>'equals',
					)
				)
			);
			
			$menus= $app['menu'];
			
			
			$menuStr = '';
			$flechaSubmenus='';
			$claseSubmenus='';
			if ( !empty($menus) ){
				$menuStr = '<ul class="submenu">';
				$flechaSubmenus='<b class="arrow icon-angle-down"></b>';
				$claseSubmenus='dropdown-toggle';
			}
		    // print_r($menus);
			foreach($menus as $menu){
				$menuStr.='<li >
					<a href="'.$_PETICION->url_app.$menu['target'].'">
						<i class="icon-double-angle-right"></i>
						'.$menu['titulo'].'
					</a>
				</li>';
			}
			
			if ( !empty($menus) ){
				$menuStr .= '</ul>';
			}
			
			
			
			echo '
			<li class="'.$clase.'">
				
				<a href="gallery.html" class="'.$claseSubmenus.'">
					<i class="icon-gen" style="background-image:url('.$url_web_presentacion.'apps/'.$app['favicon'].')" ></i>
					<span class="menu-text">'.$app['nombre'].'</span>
					'.$flechaSubmenus.'
				</a>
				'.$menuStr.'
			</li>
			';			
		}
	?>	
</ul>