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
// $apps = $modApps->buscar( $params );
// $appMod= new appModelo();

// $menuMod= new menuModelo();
?>
<ul class="nav nav-list">
	<li>
		<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/paginas/inicio" class="dropdown-toggle">
			<i class="icon-dashboard"></i>
			<span class="menu-text">General</span>
			<b class="arrow icon-angle-down"></b>
		</a>
		<ul class="submenu">		
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/empresas/buscar">
					<i class="icon-double-angle-right"></i>
					Empresa
				</a>
			</li>
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/sucursales/buscar">
					<i class="icon-double-angle-right"></i>
					Sucursales
				</a>
			</li>
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/usuarios/buscar">
					<i class="icon-double-angle-right"></i>
					Usuarios
				</a>
			</li>
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/roles/buscar">
					<i class="icon-double-angle-right"></i>
					Roles
				</a>
			</li>
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/paises/buscar">
					<i class="icon-double-angle-right"></i>
					Paises
				</a>
			</li>
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/estados/buscar">
					<i class="icon-double-angle-right"></i>
					Estados
				</a>
			</li>
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/municipios/buscar">
					<i class="icon-double-angle-right"></i>
					Municipios
				</a>
			</li>
		</ul>
	</li>
	<?php
		foreach($apps['datos'] as $app){
			$app = $appMod->obtener($app['fk_app']);
			
			$filtros=array(
				'filtros'=>array(
					array(
						'dataKey'	 	=>'fk_app',
						'filterValue'	=>$app['id'],
						'filterOperator'=>'equals',
					)
				)
			);
			$menus= $menuMod->buscar( $filtros );
			
			$menuStr = '';
			$flechaSubmenus='';
			$claseSubmenus='';
			if ( !empty($menus['datos']) ){
				$menuStr = '<ul class="submenu">';
				$flechaSubmenus='<b class="arrow icon-angle-down"></b>';
				$claseSubmenus='dropdown-toggle';
			}
		    // print_r($menus);
			foreach($menus['datos'] as $menu){
				$menuStr.='<li>
					<a href="'.$_PETICION->url_app.$menu['target'].'">
						<i class="icon-double-angle-right"></i>
						'.$menu['titulo'].'
					</a>
				</li>';
			}
			
			if ( !empty($menus['datos']) ){
				$menuStr .= '</ul>';
			}
			
			
			
			echo '
			<li>
				
				<a href="gallery.html" class="'.$claseSubmenus.'">
					<i class="icon-gen" style="background-image:url('.$_PETICION->url_web.'apps/'.$app['favicon'].')" ></i>
					<span class="menu-text">'.$app['nombre'].'</span>
					'.$flechaSubmenus.'
				</a>
				'.$menuStr.'
			</li>
			';			
		}
	?>	
</ul>