<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	
	
if ( !empty( $this->datos['id'] ) ){
			
			$fk_usuario_listado=array();
			$fk_usuario_listado[]=array('id'=>$this->datos['fk_usuario'],'nombre'=>$this->datos['nombre_fk_usuario'] );
			$this->fk_usuario_listado = $fk_usuario_listado;
		}else{
			$mod=new UsuarioModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_usuario_listado = $objs['datos'];
		}
if ( !empty( $this->datos['id'] ) ){
			
			$fk_empresa_listado=array();
			$fk_empresa_listado[]=array('id'=>$this->datos['fk_empresa'],'nombre'=>$this->datos['nombre_fk_empresa'] );
			$this->fk_empresa_listado = $fk_empresa_listado;
		}else{
			$mod=new empresaModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_empresa_listado = $objs['datos'];
		}
if ( !empty( $this->datos['id'] ) ){
			
			$status_listado=array();
			$status_listado[]=array('id'=>$this->datos['status'],'nombre'=>$this->datos['nombre_status'] );
			$this->status_listado = $status_listado;
		}else{
			$mod=new status_de_accesoModelo();
			$objs=$mod->buscar( array() );		
			$this->status_listado = $objs['datos'];
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
		 var editor=new EdicionAccesos();
		 editor.init(config);	
		//-----
		
	});
</script>
<style>

</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1>Nuevo Acceso</h1>
	</div>
	<div id="cuerpo">
		<div id="contenedorDatos2">
			<form class="frmEdicion" style="">
				
				<div class="inputBox contenedor_id oculto" style=""  >
					<label style="">Id:</label>
					<input title="Id" type="text" name="id" class="entradaDatos" value="<?php echo $this->datos['id']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fk_usuario" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/usuarios/nuevo'; ?>"><label style="">Usuario:</label></a>
					<select name="fk_usuario" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_usuario_listado as $Usuario){
								echo '<option value="'.$Usuario['id'].' " >'.$Usuario['nombre'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_fk_empresa" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/empresas/nuevo'; ?>"><label style="">Empresa:</label></a>
					<select name="fk_empresa" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_empresa_listado as $empresa){
								echo '<option value="'.$empresa['id'].' " >'.$empresa['nombre'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_status" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/status_de_accesos/nuevo'; ?>"><label style="">Status:</label></a>
					<select name="status" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->status_listado as $status_de_acceso){
								echo '<option value="'.$status_de_acceso['id'].' " >'.$status_de_acceso['nombre'].'</option>';
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