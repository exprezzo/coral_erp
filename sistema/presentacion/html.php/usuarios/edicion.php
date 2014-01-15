<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	$this->datos['pass']='';
	
if ( !empty( $this->datos['id'] ) ){
			
			$fk_rol_listado=array();
			$fk_rol_listado[]=array('id'=>$this->datos['fk_rol'],'nombre'=>$this->datos['nombre_fk_rol'] );
			$this->fk_rol_listado = $fk_rol_listado;
		}else{
			$mod=new rolModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_rol_listado = $objs['datos'];
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
		 var editor=new EdicionUsuarios();
		 editor.init(config);	
		//-----
		
	});
</script>
<style>

</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1>Nuevo Usuario</h1>
	</div>
	<div id="cuerpo">
		<div id="contenedorDatos2">
			<form class="frmEdicion" style="">
				
				<div class="inputBox contenedor_id oculto" style=""  >
					<label style="">Id:</label>
					<input title="" type="text" name="id" class="entradaDatos" value="<?php echo $this->datos['id']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_username" style=""  >
					<label style="">Username:</label>
					<input title="" type="text" name="username" class="entradaDatos" value="<?php echo $this->datos['username']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_pass" style=""  >
					<label style="">Pass:</label>
					<input title="" type="pass" name="pass" class="entradaDatos" value="" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_pass" style=""  >
					<label style="">Confirmacion:</label>
					<input type="text" name="confirmacion" class="entradaDatos" value="" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_email" style=""  >
					<label style="">Email:</label>
					<input title="" type="email" name="email" class="entradaDatos" value="<?php echo $this->datos['email']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_nombre" style=""  >
					<label style="">Nombre:</label>
					<input title="" type="text" name="nombre" class="entradaDatos" value="<?php echo $this->datos['nombre']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_ultima_conexion" style=""  >
					<label style="">Ultima_conexion:</label>
					<input title="" type="text" name="ultima_conexion" class="entradaDatos" value="<?php echo $this->datos['ultima_conexion']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_creado" style=""  >
					<label style="">Creado:</label>
					<input title="" type="text" name="creado" class="entradaDatos" value="<?php echo $this->datos['creado']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fk_rol" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/roles/nuevo'; ?>"><label style="">Rol:</label></a>
					<select name="fk_rol" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_rol_listado as $rol){
								echo '<option value="'.$rol['id'].' " >'.$rol['nombre'].'</option>';
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