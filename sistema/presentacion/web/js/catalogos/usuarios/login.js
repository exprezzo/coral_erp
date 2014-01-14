var LoginUsuarios = function(){
	var me = this;
	
	this.init=function(){
		
		
		
		// this.configurarFormulario();
		this.configurarToolbar();		
		
	};
	
	this.login=function(){
		var tabId=this.tabId;
		var tab = $('#tabs '+tabId);
		var me=this;
	
		//-----------------------------------
		// http://stackoverflow.com/questions/2403179/how-to-get-form-data-as-a-object-in-jquery
		var paramObj = {};
		$.each($('#frmLogin').serializeArray(), function(_, kv) {
		  if (paramObj.hasOwnProperty(kv.name)) {
			paramObj[kv.name] = $.makeArray(paramObj[kv.name]);
			paramObj[kv.name].push(kv.value);
		  }
		  else {
			paramObj[kv.name] = kv.value;
		  }
		});
		//-----------------------------------
		
		//-----------------------------------
		var datos=paramObj;
		
				console.log(paramObj);
		//Envia los datos al servidor, el servidor responde success true o false.
		$("#login-box").block({ 
			message: '<h1>Identificando</h1>' ,
			css: { 
				width:          '204'
			}
		}); 
		$.ajax({
			type: "POST",
			url: kore.url_base+kore.modulo+'/usuarios/login',
			data: { 
				nick: paramObj.nick, pass: paramObj.pass			
			}
		}).done(function( response ) {
			$("#login-box").unblock(); 
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
				
				window.location = kore.url_base+kore.modulo+'/usuarios/login';				
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
		});
	};	
	
	this.registrar=function(){		
		//-----------------------------------
		// http://stackoverflow.com/questions/2403179/how-to-get-form-data-as-a-object-in-jquery
		var paramObj = {};
		$.each($('#frmRegistro').serializeArray(), function(_, kv) {
		  if (paramObj.hasOwnProperty(kv.name)) {
			paramObj[kv.name] = $.makeArray(paramObj[kv.name]);
			paramObj[kv.name].push(kv.value);
		  }
		  else {
			paramObj[kv.name] = kv.value;
		  }
		});
		//-----------------------------------
		
		//-----------------------------------
		var datos=paramObj;
		
				
		//Envia los datos al servidor, el servidor responde success true o false.
		$("#signup-box").block({ 
			message: '<h1>Registrando</h1>',
			css: { 
				width:          '204'
			}			
		}); 
		$.ajax({
			type: "POST",
			url: kore.url_base+kore.modulo+'/usuarios/registrar',
			data: { datos: datos}
		}).done(function( response ) {
			$("#signup-box").unblock(); 
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
				// window.location = kore.url_base+kore.modulo+'/paginas/inicio';								
				$("#signup-box input[type=text], #signup-box textarea, #signup-box input[type=password], #signup-box input[type=email]").val("");
				show_box('login-box');
				$('#login-box [name="nick"]').focus();
				icon= kore.url_web+'imagenes/yes.png';
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
		});
	};	
	
	this.configurarToolbar=function(){					
		var me=this;			
		$('#btnLogin').click( function(e){
			e.preventDefault();
			me.login();			
		});
		
		$('#btnRegistrar').click( function(e){
			e.preventDefault();
			me.registrar();
		});
		
	};	
}
