<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	
	
if ( !empty( $this->datos['id'] ) ){
			
			$fk_camada_listado=array();
			$fk_camada_listado[]=array('id'=>$this->datos['fk_camada'],'codigo'=>$this->datos['codigo_fk_camada'] );
			$this->fk_camada_listado = $fk_camada_listado;
		}else{
			$mod=new Modelo();
			$objs=$mod->buscar( array() );		
			$this->fk_camada_listado = $objs['datos'];
		}
if ( !empty( $this->datos['id'] ) ){
			
			$fk_sexo_listado=array();
			$fk_sexo_listado[]=array('id'=>$this->datos['fk_sexo'],'nombre'=>$this->datos['nombre_fk_sexo'] );
			$this->fk_sexo_listado = $fk_sexo_listado;
		}else{
			$mod=new generoModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_sexo_listado = $objs['datos'];
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
		 var editor=new EdicionCrias();
		 editor.init(config);	
		//-----
		
	});
</script>
<style>

</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1>Nuevo Catalogo</h1>
	</div>
	<div id="cuerpo">
		<div id="contenedorDatos2">
			<form class="frmEdicion" style="">
				
				<div class="inputBox contenedor_id" style=""  >
					<label style="">Id:</label>
					<input title="Id" type="text" name="id" class="entradaDatos" value="<?php echo $this->datos['id']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_foto" style=""  >
					<label style="">Foto:</label>
					<input title="Foto" type="text" name="foto" class="entradaDatos" value="<?php echo $this->datos['foto']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fecha" style=""  >
					<label style="">Fecha:</label>
					<input title="Fecha" type="text" name="fecha" class="entradaDatos" value="<?php echo $this->datos['fecha']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_peso" style=""  >
					<label style="">Peso:</label>
					<input title="Peso" type="text" name="peso" class="entradaDatos" value="<?php echo $this->datos['peso']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fk_camada" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'//nuevo'; ?>"><label style="">Camada:</label></a>
					<select name="fk_camada" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_camada_listado as $){
								echo '<option value="'.$['id'].' " >'.$['codigo'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_fk_sexo" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/generos/nuevo'; ?>"><label style="">Genero:</label></a>
					<select name="fk_sexo" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_sexo_listado as $genero){
								echo '<option value="'.$genero['id'].' " >'.$genero['nombre'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_codigo" style=""  >
					<label style="">Serie:</label>
					<input title="Serie" type="text" name="codigo" class="entradaDatos" value="<?php echo $this->datos['codigo']; ?>" style="width:500px;" />
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