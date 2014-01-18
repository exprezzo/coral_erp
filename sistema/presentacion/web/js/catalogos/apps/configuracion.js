var ConfiguracionApps = function(){
	this.editado=false;
	this.tituloNuevo='Nueva App';
	this.saveAndClose=false;
	var me=this;
	this.init=function(params){		
		// this.configurarFormulario(this.tabId);
		this.configurarToolbar(this.tabId);					
	};
	//esta funcion pasara al plugin
	
	this.desinstalar=function(appId){
		
		// var datos=paramObj;
		
				
		//Envia los datos al servidor, el servidor responde success true o false.
		$("#cuerpo").block({ 
			message: '<h1>Desinstalando</h1>'               
		}); 
		$.ajax({
			type: "POST",
			url: kore.url_base+kore.modulo+'/apps/desinstalar',
			data: { appId: appId}
		}).done(function( response ) {
			
			$("#cuerpo").unblock(); 
			
			var msg;
			var title;	
			try{
				var resp = eval('(' + response + ')');
			}catch(err){
				msg='El servidor ha respondido de manera incorrecta. <br />'+response;
				title='Error Al Guardar';
				icon= kore.url_web+'imagenes/error.png';
				$.gritter.add({
					position: 'bottom-left',
					title:title,
					text: msg,
					image: icon,
					class_name: 'my-sticky-class'
				});
				return false;
			}			
			msg= (resp.msg)? resp.msg : '';
			
			
			if ( resp.success == true	){
				if (resp.msgType!=undefined && resp.msgType == 'info'){
					icon=kore.url_web+'imagenes/yes.png';
				}else{
					icon=kore.url_web+'imagenes/info.png';
				}
				
				
				title= 'Success';				
				// tab.find('[name="'+me.configuracion.pk+'"]').val(resp.datos[me.configuracion.pk]);
				
				$.gritter.add({
					position: 'bottom-left',
					title:title,
					text: msg,
					image: icon,
					class_name: 'my-sticky-class'
				});
				
				// $('.cajaApp button[appId="'+appId+'"]').attr('disabled', true);
				window.location.reload();
			}else{
				icon= kore.url_web+'imagenes/error.png';
				title= 'Error';					
				$.gritter.add({
					position: 'bottom-left',
					title:title,
					text: msg,
					image: icon,
					class_name: 'my-sticky-class'
				});
			}
			
			//cuando es true, envia tambien los datos guardados.
			//actualiza los valores del formulario.
			
		});
	};	
	this.instalar=function(appId){
		
		// var datos=paramObj;
		
				
		//Envia los datos al servidor, el servidor responde success true o false.
		$("#cuerpo").block({ 
			message: '<h1>Instalando</h1>'               
		}); 
		$.ajax({
			type: "POST",
			url: kore.url_base+kore.modulo+'/apps/instalar',
			data: { appId: appId}
		}).done(function( response ) {
			
			$("#cuerpo").unblock(); 
			
			var msg;
			var title;	
			try{
				var resp = eval('(' + response + ')');
			}catch(err){
				msg='El servidor ha respondido de manera incorrecta. <br />'+response;
				title='Error Al Guardar';
				icon= kore.url_web+'imagenes/error.png';
				$.gritter.add({
					position: 'bottom-left',
					title:title,
					text: msg,
					image: icon,
					class_name: 'my-sticky-class'
				});
				return false;
			}			
			msg= (resp.msg)? resp.msg : '';
			
			
			if ( resp.success == true	){
				if (resp.msgType!=undefined && resp.msgType == 'info'){
					icon=kore.url_web+'imagenes/yes.png';
				}else{
					icon=kore.url_web+'imagenes/info.png';
				}
				
				
				title= 'Success';				
				// tab.find('[name="'+me.configuracion.pk+'"]').val(resp.datos[me.configuracion.pk]);
				
				$.gritter.add({
					position: 'bottom-left',
					title:title,
					text: msg,
					image: icon,
					class_name: 'my-sticky-class'
				});
				
				// $('.cajaApp button[appId="'+appId+'"]').attr('disabled', true);
				window.location.reload();
			}else{
				icon= kore.url_web+'imagenes/error.png';
				title= 'Error';					
				$.gritter.add({
					position: 'bottom-left',
					title:title,
					text: msg,
					image: icon,
					class_name: 'my-sticky-class'
				});
			}
			
			//cuando es true, envia tambien los datos guardados.
			//actualiza los valores del formulario.
			
		});
	};	
	
	
	this.configurarToolbar=function(tabId){					
		$('.cajaApp button.btn-success').click(function(){			
			var appId = $(this).attr('appId');
			me.instalar(appId);
		});
		
		$('.cajaApp button.btn-danger').click(function(){			
			var appId = $(this).attr('appId');
			me.desinstalar(appId);
		});
	};	
}
