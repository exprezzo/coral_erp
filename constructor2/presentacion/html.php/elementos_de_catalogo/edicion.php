<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	
	
if ( !empty( $this->datos['id'] ) ){
			
			$fk_componente_listado=array();
			$fk_componente_listado[]=array('id'=>$this->datos['fk_componente'],'nombre'=>$this->datos['nombre_fk_componente'] );
			$this->fk_componente_listado = $fk_componente_listado;
		}else{
			$mod=new conmponenteModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_componente_listado = $objs['datos'];
		}
if ( !empty( $this->datos['id'] ) ){
			
			$fk_catalogo_listado=array();
			$fk_catalogo_listado[]=array('id'=>$this->datos['fk_catalogo'],'nombre'=>$this->datos['nombre_fk_catalogo'] );
			$this->fk_catalogo_listado = $fk_catalogo_listado;
		}else{
			$mod=new catalogoModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_catalogo_listado = $objs['datos'];
		}
?>
<script src="<?php echo $_PETICION->url_web; ?>js/catalogos/<?php echo $_PETICION->controlador; ?>/edicion.js"></script>

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
		 var editor=new EdicionElementos_de_catalogo();
		 editor.init(config);	
		//-----
		
	});
</script>
<style>

</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1>Nuevo Elemento de Catalogo</h1>
	</div>
	<div id="cuerpo">
		<div id="contenedorDatos2">
			<form class="frmEdicion" style="">
				
				<div class="inputBox contenedor_id oculto" style=""  >
					<label style="">Id:</label>
					<input title="Id" type="text" name="id" class="entradaDatos" value="<?php echo $this->datos['id']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_extras" style=""  >
					<label style="">Extras:</label>
					<input title="Extras" type="text" name="extras" class="entradaDatos" value="<?php echo $this->datos['extras']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_campo" style=""  >
					<label style="">Campo:</label>
					<input title="Campo" type="text" name="campo" class="entradaDatos" value="<?php echo $this->datos['campo']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_llave" style=""  >
					<label style="">Llave:</label>
					<input title="Llave" type="text" name="llave" class="entradaDatos" value="<?php echo $this->datos['llave']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_esNulo" style=""  >
					<label style="">EsNulo:</label>
					<input title="EsNulo" type="text" name="esNulo" class="entradaDatos" value="<?php echo $this->datos['esNulo']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fk_componente" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/componentes/nuevo'; ?>"><label style="">Componente:</label></a>
					<select name="fk_componente" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_componente_listado as $conmponente){
								echo '<option value="'.$conmponente['id'].' " >'.$conmponente['nombre'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_comp_config" style=""  >
					<label style="">Comp_config:</label>
					<input title="Comp_config" type="text" name="comp_config" class="entradaDatos" value="<?php echo $this->datos['comp_config']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fk_catalogo" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/catalogos/nuevo'; ?>"><label style="">Fk_catalogo:</label></a>
					<select name="fk_catalogo" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_catalogo_listado as $catalogo){
								echo '<option value="'.$catalogo['id'].' " >'.$catalogo['nombre'].'</option>';
							}
						?>
					</select>
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