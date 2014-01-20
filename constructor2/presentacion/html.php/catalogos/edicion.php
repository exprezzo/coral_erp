<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	
	
if ( !empty( $this->datos['id'] ) ){
			
			$fk_modulo_listado=array();
			$fk_modulo_listado[]=array('id'=>$this->datos['fk_modulo'],'nombre'=>$this->datos['nombre_fk_modulo'] );
			$this->fk_modulo_listado = $fk_modulo_listado;
		}else{
			$mod=new aplicacionModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_modulo_listado = $objs['datos'];
		}
?>
<script src="<?php echo $_PETICION->url_web; ?>js/catalogos/<?php echo $_PETICION->controlador; ?>/edicion.js"></script>

<script src="<?php echo $_PETICION->url_web; ?>js/catalogos/<?php echo $_PETICION->controlador; ?>/elementos_de_catalogos.js"></script>
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
		 var editor=new EdicionCatalogos();
		 editor.init(config);	
		//-----
		
		var tabId='#'+config.tab.id;
		configDet={
			padre:editor,
			tabId:'#<?php echo $_REQUEST['tabId']; ?>',
			elementos: <?php echo json_encode($this->datos['elementosDeCatalogos']); ?>,
			target:'.tabla_elementos',
			contenedor:'.contenedor_tabla_elementos',
		};

		var elementosDeCatalogos = new ElementosDeCatalogos();		
		elementosDeCatalogos.init(configDet);
				
	});
</script>
<style>

</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1></h1>
	</div>
	<div id="cuerpo">
		<div id="contenedorDatos2">
			<form class="frmEdicion" style="">
				
				<div class="inputBox contenedor_id oculto" style=""  >
					<label style="">Id:</label>
					<input title="Id" type="text" name="id" class="entradaDatos" value="<?php echo $this->datos['id']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fk_modulo" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/aplicaciones/nuevo'; ?>"><label style="">Aplicacion:</label></a>
					<select name="fk_modulo" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_modulo_listado as $aplicacion){
								echo '<option value="'.$aplicacion['id'].' " >'.$aplicacion['nombre'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_nombre" style=""  >
					<label style="">Nombre:</label>
					<input title="Nombre" type="text" name="nombre" class="entradaDatos" value="<?php echo $this->datos['nombre']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_controlador" style=""  >
					<label style="">Controlador:</label>
					<input title="Controlador" type="text" name="controlador" class="entradaDatos" value="<?php echo $this->datos['controlador']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_modelo" style=""  >
					<label style="">Modelo:</label>
					<input title="Modelo" type="text" name="modelo" class="entradaDatos" value="<?php echo $this->datos['modelo']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_tabla" style=""  >
					<label style="">Tabla:</label>
					<input title="Tabla" type="text" name="tabla" class="entradaDatos" value="<?php echo $this->datos['tabla']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_pk_tabla" style=""  >
					<label style="">Pk_tabla:</label>
					<input title="Pk_tabla" type="text" name="pk_tabla" class="entradaDatos" value="<?php echo $this->datos['pk_tabla']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_icono" style=""  >
					<label style="">Icono:</label>
					<input title="Icono" type="text" name="icono" class="entradaDatos" value="<?php echo $this->datos['icono']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_titulo_nuevo" style=""  >
					<label style="">Titulo Nuevo:</label>
					<input title="Titulo del formulario" type="text" name="titulo_nuevo" class="entradaDatos" value="<?php echo $this->datos['titulo_nuevo']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_titulo_edicion" style=""  >
					<label style="">Titulo Edicion:</label>
					<input title="Titulo en Edicion" type="text" name="titulo_edicion" class="entradaDatos" value="<?php echo $this->datos['titulo_edicion']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_titulo_busqueda" style=""  >
					<label style="">Titulo Busqueda:</label>
					<input title="Titulo para la pantalla de busqueda" type="text" name="titulo_busqueda" class="entradaDatos" value="<?php echo $this->datos['titulo_busqueda']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_msg_creado" style=""  >
					<label style="">Msg Creado:</label>
					<input title="Notificacion al crear un nuevo elemento" type="text" name="msg_creado" class="entradaDatos" value="<?php echo $this->datos['msg_creado']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_msg_actualizado" style=""  >
					<label style="">Msg Actualizado:</label>
					<input title="Notificacion del sistema al actualizar un registro" type="text" name="msg_actualizado" class="entradaDatos" value="<?php echo $this->datos['msg_actualizado']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_pregunta_eliminar" style=""  >
					<label style="">Pregunta Eliminar:</label>
					<input title="Pregunta antes de eliminar un elemento" type="text" name="pregunta_eliminar" class="entradaDatos" value="<?php echo $this->datos['pregunta_eliminar']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_msg_eliminado" style=""  >
					<label style="">Msg Eliminado:</label>
					<input title="Notificacion al eliminar un elemento" type="text" name="msg_eliminado" class="entradaDatos" value="<?php echo $this->datos['msg_eliminado']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_msg_cambios" style=""  >
					<label style="">Msg Cambios:</label>
					<input title="Antes de salir de la pantalla, si hay cambios pendientes de guardar, se muestra este mensaje" type="text" name="msg_cambios" class="entradaDatos" value="<?php echo $this->datos['msg_cambios']; ?>" style="width:500px;" />
				</div>
				<div class="tabla contenedor_tabla_elementos" style="position: relative; margin-top: 26px;"  >
					
					<h1 class="tituloTabla" >Elementos</h1>
					<div class="toolbar_detalles" style="">
						<input type="button" value="" class="btnAgregar" id="botonAgregar"/>
						<input type="button" value="" class="btnEliminar" id="botonEliminar" />
					</div>
					<table class="tabla_elementos">
						<thead></thead>
						<tbody></tbody>
					</table>
					<div id="<?php echo $id; ?>-dialog-confirm-eliminar-elemento_de_catalogo" title="&iquest;Eliminar Elemento_de_catalogo?">
						<p><span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>&iquest;Eliminar Elemento_de_catalogo?</p>
					</div> 
				</div>
			</form>
			<div id="contenedorMenu2" class="toolbarEdicion">
				<input type="submit" value="Nuevo" class="botonNuevo btnNuevo">
				<input type="submit" value="Guardar" class="botonNuevo btnGuardar">
				<input type="submit" value="PDF" class="botonNuevo btnPdf">
				<input type="submit" value="Eliminar" class="botonNuevo sinMargeDerecho btnDelete">
			</div>
		</div>
	</div>
</div>