<?php
	$id=$_PETICION->controlador.'-'.$_PETICION->accion;
	$_REQUEST['tabId'] =$id;
	
	
if ( !empty( $this->datos['id'] ) ){
			
			$fk_menu_listado=array();
			$fk_menu_listado[]=array('id'=>$this->datos['fk_menu'],'titulo'=>$this->datos['titulo_fk_menu'] );
			$this->fk_menu_listado = $fk_menu_listado;
		}else{
			$mod=new menuModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_menu_listado = $objs['datos'];
		}
if ( !empty( $this->datos['id'] ) ){
			
			$fk_app_listado=array();
			$fk_app_listado[]=array('id'=>$this->datos['fk_app'],'nombre'=>$this->datos['nombre_fk_app'] );
			$this->fk_app_listado = $fk_app_listado;
		}else{
			$mod=new appModelo();
			$objs=$mod->buscar( array() );		
			$this->fk_app_listado = $objs['datos'];
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
		 var editor=new EdicionMenus();
		 editor.init(config);	
		//-----
		
	});
</script>
<style>

</style>
<div class="contenedor_formulario" id="<?php echo $id; ?>">
	<div id="titulo">
    	<h1>Nuevo Menu</h1>
	</div>
	<div id="cuerpo">
		<div id="contenedorDatos2">
			<form class="frmEdicion" style="">
				
				<div class="inputBox contenedor_id oculto" style=""  >
					<label style="">Id:</label>
					<input title="Id" type="text" name="id" class="entradaDatos" value="<?php echo $this->datos['id']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_titulo" style=""  >
					<label style="">Titulo:</label>
					<input title="Titulo" type="text" name="titulo" class="entradaDatos" value="<?php echo $this->datos['titulo']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_target" style=""  >
					<label style="">Target:</label>
					<input title="Target" type="text" name="target" class="entradaDatos" value="<?php echo $this->datos['target']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_es_menu_externo" style=""  >
					<label style="">Es_menu_externo:</label>
					<input title="Es_menu_externo" type="text" name="es_menu_externo" class="entradaDatos" value="<?php echo $this->datos['es_menu_externo']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_icon" style=""  >
					<label style="">Icon:</label>
					<input title="Icon" type="text" name="icon" class="entradaDatos" value="<?php echo $this->datos['icon']; ?>" style="width:500px;" />
				</div>
				<div class="inputBox contenedor_fk_menu" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/menus/nuevo'; ?>"><label style="">Padre:</label></a>
					<select name="fk_menu" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_menu_listado as $menu){
								echo '<option value="'.$menu['id'].' " >'.$menu['titulo'].'</option>';
							}
						?>
					</select>
				</div>
				<div class="inputBox contenedor_fk_app" style=""  >
					<a target="_blank" href="<?php echo $_PETICION->url_app.$_PETICION->modulo.'/apps/nuevo'; ?>"><label style="">Aplicacion:</label></a>
					<select name="fk_app" class="entradaDatos" style="width:250px;">
						<?php
							foreach($this->fk_app_listado as $app){
								echo '<option value="'.$app['id'].' " >'.$app['nombre'].'</option>';
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