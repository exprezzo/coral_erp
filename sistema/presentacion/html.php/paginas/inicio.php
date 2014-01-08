<script src="<?php echo $_PETICION->url_web; ?>js/catalogos/<?php echo $_PETICION->controlador; ?>/inicio.js"></script>
<?php 		
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;	
	
?>
<script>			
	$( function(){		
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
				nombre:''

			},			
			pk:"id"
			
		};				
		 // var lista=new BusquedaMenus();
		 // lista.init(config);		
	});
</script>

<div class="contenedor_catalogo" id="<?php echo $id; ?>">	
	<div id="titulo">
    	<h1>Inicio</h1>
	</div>		
	<div id="cuerpo" style="">		
		<a href="#" class="btn btn-app btn-primary ">
			<i class="icon-crear bigger-230" style="background-image:url(<?php echo $_PETICION->url_web.'imagenes/hospital.png'; ?>); height:48px; width:48px; display:inline-block;"></i>
			<span style="display:block">Crear Empresa</span>
		
		</a>
		
		<a href="#" class="btn btn-app btn-success">
			<i class="icon-crear bigger-230" style="background-image:url(<?php echo $_PETICION->url_web.'imagenes/keys.png'; ?>); height:48px; width:48px; display:inline-block;"></i>
			<span style="display:block">Solicitar Acceso</span>
		
		</a>
			
	</div>
	
</div>
