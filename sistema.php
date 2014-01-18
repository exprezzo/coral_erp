<!DOCTYPE html>
<?php
	require_once '../sistema/modelos/aplicacion_empresa.php';
	require_once '../sistema/modelos/menu.php';
	require_once '../sistema/modelos/app.php';
	$user=sessionGet('user');	
	// print_r( $_PETICION ); exit;
	$url_web_presentacion = $_PETICION->url_app.'sistema/presentacion/web/';
	$empresa = sessionGet('empresa');
	
	if ( !empty( $user['fk_ultima_empresa_logeada']) ){
		$apps = getAplicaciones( $user['fk_ultima_empresa_logeada'] );
		sessionSet('aplicaciones', $apps);
	}
	function getAplicaciones($empresaId){
		global $DB_CONFIG;	
		$modelo=new Modelo();
		$con = $modelo->getConexion();
		
		
		$sql='USE '.$DB_CONFIG['DB_NAME'];				
		$sth = $con->prepare($sql);	
		$exito = $sth->execute();
		if ( !$exito ){
			$error = $modelo->getError($sth);			
			return $error;
		}
		//------------------------------------------------------------
		//obtiene las aplicaciones y sus menus
		$params=array('filtros'=>array(
			array(
				'dataKey'=>'fk_empresa',
				'filterValue'=>$empresaId,
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
		return $aplicaciones;
	}
?>

<html lang="en">
	
	<head>
		<meta charset="utf-8" />
		<title><?php echo $empresa['nombre']; ?> - Coral ERP</title>
		<link rel="icon" href="<?php echo $url_web_presentacion ?>favicon.ico" type="image/x-icon"/>
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		
		<link id="linkCss" href="<?php echo $url_web_presentacion; ?>libs/Wijmo.2.3.2/Wijmo-Complete/css/jquery.wijmo-complete.2.3.2.css" rel="stylesheet" type="text/css" />
		<?php
		// $rutaTema='http://cdn.wijmo.com/themes/aristo/jquery-wijmo.css'; 
		 $rutaTema=sessionGet('rutaTema');
		 $user=sessionGet('user');
		 // echo $rutaTema;
		 if (empty($rutaTema)){
			$rutaTema=getUrlTema('midnight');
		 }
		 
		 
		// $rutaTema=getUrlTema('rocket'); 	
		?>
		<link href="<?php echo $rutaTema; ?>" rel="stylesheet" type="text/css" />
		
		<link href="<?php echo $url_web_presentacion; ?>libs/Wijmo.2.3.2/Wijmo-Open/css/jquery.wijmo-open.2.3.2.css" rel="stylesheet" type="text/css" />	
		<!--basic styles-->

		<link href="<?php echo $url_web_presentacion; ?>assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="<?php echo $url_web_presentacion; ?>assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="<?php echo $url_web_presentacion; ?>assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="<?php echo $url_web_presentacion; ?>assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!--page specific plugin styles-->

		<!--fonts-->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!--ace styles-->

		<link rel="stylesheet" href="<?php echo $url_web_presentacion; ?>assets/css/ace.min.css" />
		<link rel="stylesheet" href="<?php echo $url_web_presentacion; ?>assets/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="<?php echo $url_web_presentacion; ?>assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="<?php echo $url_web_presentacion; ?>assets/css/ace-ie.min.css" />
		<![endif]-->

		<!--inline styles related to this page-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
		
		
		<!-- -->
		<link rel="stylesheet" href="<?php echo $url_web_presentacion; ?>assets/css/ace-skins.min.css" />
		<script type="text/javascript" src="<?php echo $url_web_presentacion; ?>js/jquery-1.8.3.js" ></script>	
		<script type="text/javascript" src="<?php echo $url_web_presentacion; ?>js/funciones.js" ></script>	
		<script type="text/javascript" src="<?php echo $url_web_presentacion; ?>js/navegacion_en_tabla.js" ></script>	
		<script src="<?php echo $url_web_presentacion; ?>libs/jquery-ui-1.9.2.custom/jquery-ui-1.9.2.custom.js"></script>  
		<script src="<?php echo $url_web_presentacion; ?>libs/Wijmo.2.3.2/Wijmo-Complete/js/jquery.wijmo-complete.all.2.3.2.min.js" type="text/javascript"></script>
	<script src="<?php echo $url_web_presentacion; ?>libs/Wijmo.2.3.2/Wijmo-Open/js/jquery.wijmo-open.all.2.3.2.min.js" type="text/javascript"></script>	
	
		<script src="<?php echo $url_web_presentacion; ?>libs/blockui.js"></script>  
		<link href="<?php echo $url_web_presentacion; ?>libs/Gritter-master/css/jquery.gritter.css" rel="stylesheet" type="text/css" />
		<script src="<?php echo $url_web_presentacion; ?>libs/Gritter-master/js/jquery.gritter.min.js" type="text/javascript"></script>
		<style type="text/css">
			.ui-page.ui-corner-all.ui-state-active{border:none; }
			.icon-gen{ width: 24px; height: 24px; background-size: 24px; background-repeat: no-repeat; }
			tr.eliminado{display: none; }
		</style>
		<link href="<?php echo $url_web_presentacion; ?>css/estilos.css" rel="stylesheet" type="text/css" />
		<script src="<?php echo $url_web_presentacion; ?>js/kore.js" type="text/javascript"></script>
		<script type="text/javascript">		
			kore={
				modulo:'<?php echo $_PETICION->modulo; ?>',
				controlador:'<?php echo $_PETICION->controlador; ?>',
				accion:'<?php echo $_PETICION->accion; ?>',
				url_base:'<?php echo $_PETICION->url_app; ?>',			
				url_web:'<?php echo $url_web_presentacion; ?>',
				decimalPlacesMoney:2
			};
			$.extend($.gritter.options, {
				position: 'bottom-right',
				fade_in_speed: 'medium', // how fast notifications fade in (string or int)
				fade_out_speed: 2000, // how fast the notices fade out
				time: 6000 // hang on the screen for...
			});
		</script>
	<body>
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a href="#" class="brand">
						<small>
							<i class="icon-leaf"></i>
							<?php echo $empresa['nombre']; ?> - Coral ERP
						</small>
					</a><!--/.brand-->

					<ul class="nav ace-nav pull-right">
						<!--li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-closer">
								<li class="nav-header">
									<i class="icon-ok"></i>
									4 Tasks to complete
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Software Update</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:65%" class="bar"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Hardware Upgrade</span>
											<span class="pull-right">35%</span>
										</div>

										<div class="progress progress-mini progress-danger">
											<div style="width:35%" class="bar"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Unit Testing</span>
											<span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini progress-warning">
											<div style="width:15%" class="bar"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Bug Fixes</span>
											<span class="pull-right">90%</span>
										</div>

										<div class="progress progress-mini progress-success progress-striped active">
											<div style="width:90%" class="bar"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										See tasks with details
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li-->

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-closer">
								<li class="nav-header">
									<i class="icon-warning-sign"></i>
									8 Notificaciones
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-mini no-hover btn-pink icon-comment"></i>
												Nuevos comentarios
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-mini btn-primary icon-user"></i>
										Roberto ha entrado al sistema ...
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-mini no-hover btn-success icon-shopping-cart"></i>
												Nuevos Pedidos
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								

								<li>
									<a href="#">
										Ver todas las notificaciones
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-closer">
								<li class="nav-header">
									<i class="icon-envelope-alt"></i>
									5 Mensajes
								</li>

								<li>
									<a href="#">
										<img src="<?php echo $url_web_presentacion; ?>assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Manuel:</span>
												Oye pasame el logotipo de Boomerang ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>Hace un momento</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										<img src="<?php echo $url_web_presentacion; ?>assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Susana:</span>
												Ya se nos terminó la tinta de la impresora ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>Hace 20 minutes</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										<img src="<?php echo $url_web_presentacion; ?>assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Roberto:</span>
												¿Como le hago para tramitar los certificados?
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>3:15 pm</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="#">
										Ver todos los mensajes
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<?php echo $url_web_presentacion; ?>assets/avatars/zesar.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Bienvenido,</small>
									<?php 
									echo ( $user['nombre'] );
									?>
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/usuarios/perfil">
										<i class="icon-user"></i>
										Perfil
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo; ?>/usuarios/logout">
										<i class="icon-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul><!--/.ace-nav-->
				</div><!--/.container-fluid-->
			</div><!--/.navbar-inner-->
		</div>

		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-small btn-success">
							<i class="icon-signal"></i>
						</button>

						<button class="btn btn-small btn-info">
							<i class="icon-pencil"></i>
						</button>

						<button class="btn btn-small btn-warning">
							<i class="icon-group"></i>
						</button>

						<button class="btn btn-small btn-danger">
							<i class="icon-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!--#sidebar-shortcuts-->
				<?php 
					if ( intval($user['fk_rol']) ===1){
						include 'menu_admin.php';
					}else{
						include 'menu.php';
					}
				?>
				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="icon-home home-icon"></i>
							<a href="#">Home</a>

							<span class="divider">
								<i class="icon-angle-right arrow-icon"></i>
							</span>
						</li>

						<li>
							<a href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/'.$_PETICION->controlador.'/buscar'; ?>"><?php echo ucfirst($_PETICION->controlador); ?></a>

							<span class="divider">
								<i class="icon-angle-right arrow-icon"></i>
							</span>
						</li>
						<li class="active"><?php echo ucfirst($_PETICION->accion); ?></li>
					</ul><!--.breadcrumb-->

					<div class="nav-search" id="nav-search">
						<form class="form-search" action="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/'.$_PETICION->controlador; ?>/buscar" method="get" />
							<span class="input-icon">
								<input value="<?php echo empty($_GET['query'])? '' : $_GET['query']; ?>"  name="query" type="text" placeholder="Buscar ..." class="input-small nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="icon-search nav-search-icon"></i>
							</span>
						</form>
					</div><!--#nav-search-->
				</div>

				<div class="page-content">
					<div class="row-fluid">
						<div class="span12" >
							<!--PAGE CONTENT BEGINS-->
							<div id="tabs">
								
								<?php $this->mostrar() ?>
								
							</div>
							<!--PAGE CONTENT ENDS-->
						</div><!--/.span-->
					</div><!--/.row-fluid-->
				</div><!--/.page-content-->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-mini btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-class="default" value="#438EB9" />#438EB9
									<option data-class="skin-1" value="#222A2D" />#222A2D
									<option data-class="skin-2" value="#C6487E" />#C6487E
									<option data-class="skin-3" value="#D0D0D0" />#D0D0D0
								</select>
							</div>
							<span>&nbsp; Tema</span>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="" />
							<label class="lbl" for="ace-settings-header"> Opcion 1</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="" />
							<label class="lbl" for="ace-settings-sidebar"> Opcion 2</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Opcion 3</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="" />
							<label class="lbl" for="ace-settings-rtl"> Opcion 4</label>
						</div>
					</div>
				</div><!--/#ace-settings-container-->
			</div><!--/.main-content-->
		</div><!--/.main-container-->

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only bigger-110"></i>
		</a>

		<!--basic scripts-->

		<!--[if !IE]>-->

		<!--script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script-->

		<!--<![endif]-->

		<!--[if IE XXX ]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]>-->

		<script type="text/javascript">
			// window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!--<![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 // window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
			$(function(){
				$('#titulo').addClass('page-header');
				$('.botonNuevo').addClass('btn');
				$('.toolbarEdicion').addClass('form-actions');
				
				
				// $('.btn.btnNuevo').html('<i class="icon-ok bigger-110"></i>');
			});
			
		</script>
		<script src="<?php echo $url_web_presentacion; ?>assets/js/bootstrap.min.js"></script>

		<!--page specific plugin scripts-->

		<!--ace scripts-->

		<script src="<?php echo $url_web_presentacion; ?>assets/js/ace-elements.min.js"></script>
		<script src="<?php echo $url_web_presentacion; ?>assets/js/ace.min.js"></script>

		<!--inline scripts related to this page-->
		
	</body>
</html>
<?php
function getUrlTema($tema){
	$_TEMAS=array();
	global $url_web_presentacion;
	global $_PETICION;
	// print_r($_PETICION);
	// $_TEMAS['artic']="http://cdn.wijmo.com/themes/arctic/jquery-wijmo.css";
	$_TEMAS['artic']=$url_web_presentacion. "css/artic/jquery-wijmo.css";
	$_TEMAS['midnight']="http://cdn.wijmo.com/themes/midnight/jquery-wijmo.css";
	$_TEMAS['aristo']="http://cdn.wijmo.com/themes/aristo/jquery-wijmo.css";
	// $_TEMAS['rocket']="http://cdn.wijmo.com/themes/rocket/jquery-wijmo.css";
	$_TEMAS['rocket']=$url_web_presentacion. "css/jquery-wijmo_rocket.css";
	$_TEMAS['cobalt']="http://cdn.wijmo.com/themes/cobalt/jquery-wijmo.css";
	$_TEMAS['sterling']="http://cdn.wijmo.com/themes/sterling/jquery-wijmo.css";
	$_TEMAS['black-tie']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/black-tie/jquery-ui.css";
	$_TEMAS['blitzer']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/blitzer/jquery-ui.css";
	$_TEMAS['cupertino']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/cupertino/jquery-ui.css";
	$_TEMAS['dark-hive']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/dark-hive/jquery-ui.css";
	$_TEMAS['dot-luv']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/dot-luv/jquery-ui.css";
	$_TEMAS['eggplant']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/eggplant/jquery-ui.css";
	$_TEMAS['excite-bike']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/excite-bike/jquery-ui.css";
	$_TEMAS['flick']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/flick/jquery-ui.css";
	$_TEMAS['hot-sneaks']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/hot-sneaks/jquery-ui.css";
	$_TEMAS['humanity']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/humanity/jquery-ui.css";
	$_TEMAS['le-frog']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/le-frog/jquery-ui.css";
	$_TEMAS['mint-choc']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/mint-choc/jquery-ui.css";
	$_TEMAS['vader']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/vader/jquery-ui.css";
	$_TEMAS['ui-lightness']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/ui-lightness/jquery-ui.css";
	$_TEMAS['ui-darkness']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/ui-darkness/jquery-ui.css";
	$_TEMAS['trontastic']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/trontastic/jquery-ui.css";
	$_TEMAS['swanky-purse']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/swanky-purse/jquery-ui.css";
	$_TEMAS['sunny']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/sunny/jquery-ui.css";
	$_TEMAS['start']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/start/jquery-ui.css";
	$_TEMAS['south-street']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/south-street/jquery-ui.css";
	$_TEMAS['smoothness']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/smoothness/jquery-ui.css";
	$_TEMAS['redmond']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/redmond/jquery-ui.css";
	$_TEMAS['pepper-grinder']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/pepper-grinder/jquery-ui.css";
	$_TEMAS['overcast']="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/overcast/jquery-ui.css";
	// return $_TEMAS[$tema];
	// return $_TEMAS['cobalt'];
	return $_TEMAS['artic'];
}
?>