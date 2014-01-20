<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	
	
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
		 var editor=new EdicionCamadas();
		 editor.init(config);	
		//-----
		
	});
</script>
<style>

</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1>Nueva Camada</h1>
	</div>
	<div id="cuerpo">
		<div id="contenedorDatos2">
			<form class="frmEdicion" style="">
				
				<div class="inputBox contenedor_id" style=""  >
					<label style="">Id:</label>
					<input title="Id" type="text" name="id" class="entradaDatos" value="<?php echo $this->datos['id']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fecha" style=""  >
					<label style="">Fecha:</label>
					<input title="Fecha" type="text" name="fecha" class="entradaDatos" value="<?php echo $this->datos['fecha']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_foto" style=""  >
					<label style="">Foto:</label>
					<input title="Foto" type="text" name="foto" class="entradaDatos" value="<?php echo $this->datos['foto']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_numero_de_crias" style=""  >
					<label style="">Numero De Crias:</label>
					<input title="Numero De Crias" type="text" name="numero_de_crias" class="entradaDatos" value="<?php echo $this->datos['numero_de_crias']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_peso_total" style=""  >
					<label style="">Peso_total:</label>
					<input title="Peso_total" type="text" name="peso_total" class="entradaDatos" value="<?php echo $this->datos['peso_total']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_madre" style=""  >
					<label style="">Madre:</label>
					<input title="Madre" type="text" name="madre" class="entradaDatos" value="<?php echo $this->datos['madre']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_padre" style=""  >
					<label style="">Padre:</label>
					<input title="Padre" type="text" name="padre" class="entradaDatos" value="<?php echo $this->datos['padre']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_serie" style=""  >
					<label style="">Serie:</label>
					<input title="Serie" type="text" name="serie" class="entradaDatos" value="<?php echo $this->datos['serie']; ?>" style="width:500px;" />
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