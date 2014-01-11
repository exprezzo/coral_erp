<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	
	
if ( !empty( $this->datos['id'] ) ){
			
			$fk_pais_listado=array();
			$fk_pais_listado[]=array('id'=>$this->datos['fk_pais'],'nombre'=>$this->datos['nombre_fk_pais'] );
			$this->fk_pais_listado = $fk_pais_listado;
		}else{
			$mod=new paisModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_pais_listado = $objs['datos'];
		}
if ( !empty( $this->datos['id'] ) ){
			
			$fk_estado_listado=array();
			$fk_estado_listado[]=array('id'=>$this->datos['fk_estado'],'nombre'=>$this->datos['nombre_fk_estado'] );
			$this->fk_estado_listado = $fk_estado_listado;
		}else{
			$mod=new estadoModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_estado_listado = $objs['datos'];
		}
if ( !empty( $this->datos['id'] ) ){
			
			$fk_municipio_listado=array();
			$fk_municipio_listado[]=array('id'=>$this->datos['fk_municipio'],'nombre'=>$this->datos['nombre_fk_municipio'] );
			$this->fk_municipio_listado = $fk_municipio_listado;
		}else{
			$mod=new municipioModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_municipio_listado = $objs['datos'];
		}
?>
<script src="<?php echo $_PETICION->url_web; ?>js/catalogos/<?php echo $_PETICION->controlador; ?>/edicion.js"></script>

<script src="<?php echo $_PETICION->url_web; ?>js/catalogos/<?php echo $_PETICION->controlador; ?>/conexion_de_empresas.js"></script>
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
		 var editor=new EdicionEmpresas();
		 editor.init(config);	
		//-----
		
		var tabId='#'+config.tab.id;
		configDet={
			padre:editor,
			tabId:'#<?php echo $_REQUEST['tabId']; ?>',
			elementos: <?php echo json_encode($this->datos['conexionDeEmpresas']); ?>,
			target:'.tabla_conexion',
			contenedor:'.contenedor_tabla_conexion',
		};

		var conexionDeEmpresas = new ConexionDeEmpresas();		
		conexionDeEmpresas.init(configDet);
				
	});
</script>
<style>

</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1>Nueva Empresa</h1>
	</div>
	<div id="cuerpo">
		<div id="contenedorDatos2">
			<form class="frmEdicion" style="">
				
				<div class="inputBox contenedor_id oculto" style=""  >
					<label style="">Id:</label>
					<input title="Id" type="text" name="id" class="entradaDatos" value="<?php echo $this->datos['id']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_nombre" style=""  >
					<label style="">Nombre:</label>
					<input title="Nombre" type="text" name="nombre" class="entradaDatos" value="<?php echo $this->datos['nombre']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_telefonos" style=""  >
					<label style="">Telefonos:</label>
					<input title="Telefonos" type="text" name="telefonos" class="entradaDatos" value="<?php echo $this->datos['telefonos']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_logo" style=""  >
					<label style="">Logo:</label>
					<input title="Logo" type="text" name="logo" class="entradaDatos" value="<?php echo $this->datos['logo']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_sitios_web" style=""  >
					<label style="">Sitios_web:</label>
					<input title="Sitios_web" type="text" name="sitios_web" class="entradaDatos" value="<?php echo $this->datos['sitios_web']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_actividad" style=""  >
					<label style="">Actividad:</label>
					<input title="Actividad" type="text" name="actividad" class="entradaDatos" value="<?php echo $this->datos['actividad']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_RFC" style=""  >
					<label style="">RFC:</label>
					<input title="RFC" type="text" name="RFC" class="entradaDatos" value="<?php echo $this->datos['RFC']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fk_pais" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/paises/nuevo'; ?>"><label style="">Pais:</label></a>
					<select name="fk_pais" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_pais_listado as $pais){
								echo '<option value="'.$pais['id'].' " >'.$pais['nombre'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_fk_estado" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/estados/nuevo'; ?>"><label style="">Estado:</label></a>
					<select name="fk_estado" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_estado_listado as $estado){
								echo '<option value="'.$estado['id'].' " >'.$estado['nombre'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_fk_municipio" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/municipios/nuevo'; ?>"><label style="">Municipios:</label></a>
					<select name="fk_municipio" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_municipio_listado as $municipio){
								echo '<option value="'.$municipio['id'].' " >'.$municipio['nombre'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_localidad" style=""  >
					<label style="">Localidad:</label>
					<input title="Localidad" type="text" name="localidad" class="entradaDatos" value="<?php echo $this->datos['localidad']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_referencia" style=""  >
					<label style="">Referencia:</label>
					<input title="Referencia" type="text" name="referencia" class="entradaDatos" value="<?php echo $this->datos['referencia']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_calle" style=""  >
					<label style="">Calle:</label>
					<input title="Calle" type="text" name="calle" class="entradaDatos" value="<?php echo $this->datos['calle']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_numero_exterior" style=""  >
					<label style="">Numero_exterior:</label>
					<input title="Numero_exterior" type="text" name="numero_exterior" class="entradaDatos" value="<?php echo $this->datos['numero_exterior']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_numero_interior" style=""  >
					<label style="">Numero_interior:</label>
					<input title="Numero_interior" type="text" name="numero_interior" class="entradaDatos" value="<?php echo $this->datos['numero_interior']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_colonia" style=""  >
					<label style="">Colonia:</label>
					<input title="Colonia" type="text" name="colonia" class="entradaDatos" value="<?php echo $this->datos['colonia']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_codigo_postal" style=""  >
					<label style="">Codigo_postal:</label>
					<input title="Codigo_postal" type="text" name="codigo_postal" class="entradaDatos" value="<?php echo $this->datos['codigo_postal']; ?>" style="width:500px;" />
				</div>
				<div class="tabla contenedor_tabla_conexion" style="position: relative; margin-top: 26px;"  >
					
					<h1 class="tituloTabla" >Conexion</h1>
					<div class="toolbar_detalles" style="">
						<input type="button" value="" class="btnAgregar" id="botonAgregar"/>
						<input type="button" value="" class="btnEliminar" id="botonEliminar" />
					</div>
					<table class="tabla_conexion">
						<thead></thead>
						<tbody></tbody>
					</table>
					<div id="<?php echo $id; ?>-dialog-confirm-eliminar-conexion" title="&iquest;Eliminar Conexion?">
						<p><span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>&iquest;Eliminar Conexion?</p>
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