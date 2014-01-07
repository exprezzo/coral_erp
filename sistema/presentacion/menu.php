<?php 
require_once $_PETICION->basePath.'/modelos/aplicacion_usuario.php';
require_once $_PETICION->basePath.'/modelos/app.php';
require_once $_PETICION->basePath.'/modelos/conexion.php';

$modApps=new aplicacion_usuarioModelo();

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
$apps = $modApps->buscar( $params );
$appMod= new appModelo();

?>
<ul class="nav nav-list">
	<li>
		<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/paginas/buscar" class="dropdown-toggle">
			<i class="icon-dashboard"></i>
			<span class="menu-text">General</span>
			<b class="arrow icon-angle-down"></b>
		</a>
		<ul class="submenu">		
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/apps/buscar">
					<i class="icon-double-angle-right"></i>
					Aplicaciones
				</a>
			</li>
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/menus/buscar">
					<i class="icon-double-angle-right"></i>
					Menus
				</a>
			</li>
			<li>
				<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/aplicaciones_del_usuario/buscar">
					<i class="icon-double-angle-right"></i>
					Aplicaciones De Usuarios
				</a>
			</li>
		</ul>
	</li>
	<?php
		foreach($apps['datos'] as $app){
			$app = $appMod->obtener($app['fk_app']);
			// print_r( $app );
			echo '
			<li>
				<a href="gallery.html">
					<i class="icon-gen" style="background-image:url('.$_PETICION->url_web.'apps/'.$app['favicon'].')" ></i>
					<span class="menu-text">'.$app['nombre'].'</span>
				</a>
			</li>
			';			
		}
	?>
	

	<li class="active open">
		<a href="#" class="dropdown-toggle">
			<i class="icon-file-alt"></i>

			<span class="menu-text">
				Other Pages
				<span class="badge badge-primary ">4</span>
			</span>

			<b class="arrow icon-angle-down"></b>
		</a>

		<ul class="submenu">
			<li>
				<a href="error-404.html">
					<i class="icon-double-angle-right"></i>
					Error 404
				</a>
			</li>

			<li>
				<a href="error-500.html">
					<i class="icon-double-angle-right"></i>
					Error 500
				</a>
			</li>

			<li>
				<a href="grid.html">
					<i class="icon-double-angle-right"></i>
					Grid
				</a>
			</li>

			<li class="active">
				<a href="blank.html">
					<i class="icon-double-angle-right"></i>
					Blank Page
				</a>
			</li>
		</ul>
	</li>
</ul>