<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	
	//obtener todas las aplicaciones, instaladas y no instaladas
	global $DB_CONFIG;
	$sql='USE '.$DB_CONFIG['DB_NAME'];
	$mod=new Modelo();
	$res = $mod->ejecutarSql( $sql );
	
	$user=sessionGet('user');
	$fk_empresa=$user['fk_ultima_empresa_logeada'];
	// echo $fk_empresa; exit;
	$sql='SELECT app.id, app.nombre, app.favicon, app.descripcion, acceso.id as instalada FROM constructor_app app
LEFT JOIN erp_empresa_app acceso ON  acceso.fk_app = app.id AND acceso.fk_empresa='.$fk_empresa;
	
	$res = $mod->ejecutarSql( $sql );
	// print_r( $res );
	
?>
<script src="<?php echo $_PETICION->url_web; ?>js/catalogos/<?php echo $_PETICION->controlador; ?>/configuracion.js"></script>

<script>			
	$( function(){	
		
		//---------------------
		<?php
		$resAntS = sessionGet('res');
		$resAnt = empty($resAntS) ? array() : $resAntS;		
		sessionUnset('res');
		?>
		var resAnt = <?php echo json_encode($resAnt); ?>;
		
		if (resAnt.success != undefined ){			
			var title='', msg	=resAnt.msg, icon='';
			if(resAnt.success){
				icon=kore.url_web+'imagenes/yes.png';
				title= 'Success';					
			}else{
				icon= kore.url_web+'imagenes/error.png';
				title= 'Error';
			}
			
			$.gritter.add({
				position: 'bottom-left',
				title:title,
				text: msg,
				image: icon,
				class_name: 'my-sticky-class'
			});
		}
		//---------------------
		var config={
			tab:{
				id:'<?php echo $_REQUEST['tabId']; ?>'
			},
			controlador:{
				nombre:'<?php echo $_PETICION->controlador; ?>'
			},
			modulo:{
				nombre:'<?php echo $_PETICION->modulo; ?>'
			},
			catalogo:{
				nombre:'Paginas',
				modelo:'Pagina'
			},			
			pk:"id"
			
		};				
		 var config=new ConfiguracionApps();
		 config.init(config);	
		//-----
		
		
	});
</script>
<style>
	.cajaApp{margin:20px; display:inline-block;}
	.cajaApp img{
		width:64px; height:64px; 
	}
	.cajaApp .contenedorImagen{display:inline-block; vertical-align: top;}
	.cajaApp .contenedorDatos{display:inline-block; vertical-align: top; width: 210px; margin-left: 10px;}
	.cajaApp .titulo{ font-weight: bold; display:block; }
	.cajaApp button{  display:block; margin-top:10px;}
	
</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1>Aplicaciones Disponibles</h1>
	</div>
	<div id="cuerpo">
		<?php 
		for($i=0; $i< sizeof($res['datos']) ; $i++){
		$app=$res['datos'][$i];
		$disabled=!empty( $app['instalada'] )? 'disabled': '' ;
		?>
			<div class="cajaApp">
				<div class="contenedorImagen">
					<img style="" src="<?php echo $_PETICION->url_web.'apps/'.$app['favicon']; ?>" />
				</div>
				<div class="contenedorDatos">
					<span class="titulo"><?php echo $app['nombre']; ?></span>
					<span class="descripcion"><?php echo $app['descripcion']; ?></span>
					<?php 
					if ( empty( $app['instalada'] )){
					?>
					<button appId="<?php echo $app['id'] ?>" class="btn btn-small btn-success"  >Instalar</button>
					<?php
					}else{
					?>
					<button appId="<?php echo $app['id'] ?>" class="btn btn-small btn-danger"  >Desinstalar</button>
					<?php
					}
					?>
				</div>
			</div>
		<?php
		}
		?>
		
	</div>
</div>