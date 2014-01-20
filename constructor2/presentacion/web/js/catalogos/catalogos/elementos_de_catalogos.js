var ElementosDeCatalogos=function (){	
	
	this.configurarComboFk_componente=function(target){		
		var tabId=this.tabId;
		var me=this;
		var fields=[										
			
			{name:'value',mapping: 'id' }, 
			{name:'label',mapping: 'nombre' }, 
			{name: 'descripcion' }, 
			{name: 'preview' }
		];
		
		var myReader = new wijarrayreader(fields);
		
		var proxy = new wijhttpproxy({
			url: kore.url_base+kore.modulo+'/componentes/buscar',
			dataType:"json",
			type:'POST'
		});
		
		var datasource = new wijdatasource({
			reader:  new wijarrayreader(fields),
			proxy: proxy,
			loaded: function (data) {},
			loading: function (dataSource, userData) {                            								
				dataSource.proxy.options.data=dataSource.proxy.options.data || {};				 
				dataSource.proxy.options.data.nombre = (userData) ?  userData.value : '';				 
            }
		});
		
		datasource.reader.read= function (datasource) {			
			var totalRows=datasource.data.totalRows;			
			datasource.data = datasource.data.rows;
			datasource.data.totalRows = totalRows;
			myReader.read(datasource);
		};			
		
		datasource.load();	
		
		var combo=target.wijcombobox({
			data: datasource,
			showTrigger: true,
			minLength: 1,
			forceSelectionText: false,
			autoFilter: true,			
			search: function (e, obj) {},
			select: function (e, item) 
			{						
				me.conmponente=item;
				
				return true;
			}
		});
		combo.focus().select();			
	};
	this.configurarComboFk_catalogo=function(target){		
		var tabId=this.tabId;
		var me=this;
		var fields=[										
			
			{name:'value',mapping: 'id' }, 
			{name: 'fk_modulo' }, 
			{name:'label',mapping: 'nombre' }, 
			{name: 'controlador' }, 
			{name: 'modelo' }, 
			{name: 'tabla' }, 
			{name: 'pk_tabla' }, 
			{name: 'icono' }, 
			{name: 'titulo_nuevo' }, 
			{name: 'titulo_edicion' }, 
			{name: 'titulo_busqueda' }, 
			{name: 'msg_creado' }, 
			{name: 'msg_actualizado' }, 
			{name: 'pregunta_eliminar' }, 
			{name: 'msg_eliminado' }, 
			{name: 'msg_cambios' }, 
			{name: 'elementos' }
		];
		
		var myReader = new wijarrayreader(fields);
		
		var proxy = new wijhttpproxy({
			url: kore.url_base+kore.modulo+'/catalogos/buscar',
			dataType:"json",
			type:'POST'
		});
		
		var datasource = new wijdatasource({
			reader:  new wijarrayreader(fields),
			proxy: proxy,
			loaded: function (data) {},
			loading: function (dataSource, userData) {                            								
				dataSource.proxy.options.data=dataSource.proxy.options.data || {};				 
				dataSource.proxy.options.data.nombre = (userData) ?  userData.value : '';				 
            }
		});
		
		datasource.reader.read= function (datasource) {			
			var totalRows=datasource.data.totalRows;			
			datasource.data = datasource.data.rows;
			datasource.data.totalRows = totalRows;
			myReader.read(datasource);
		};			
		
		datasource.load();	
		
		var combo=target.wijcombobox({
			data: datasource,
			showTrigger: true,
			minLength: 1,
			forceSelectionText: false,
			autoFilter: true,			
			search: function (e, obj) {},
			select: function (e, item) 
			{						
				me.catalogo=item;
				
				return true;
			}
		});
		combo.focus().select();			
	};
	this.init=function(config){
		var tabId=config.tabId, 
			padre = config.padre, 			
			articulos= config.elementos;		
		var target=config.target;
		
		this.config=config;
		
		this.tmp_id			= 0;
		this.tabId			= tabId;
		this.padre			= padre;
		// this.target = tabId+' .tabla_conceptos';
		this.target=config.target;
		this.targetSelector = this.target;		
				
		var params={
			targetSelector:this.target,
			pageSize: 100,
			padre:this
		 };
		var nav= new NavegacionEnTabla();
		nav.init(params);
		
		this.configurarGrid(this.targetSelector, articulos);		
		this.configurarToolbar(tabId);		
		var me = this;
		$(this.tabId + "-dialog-confirm-eliminar-elemento_de_catalogo").wijdialog({
			autoOpen: false,
            captionButtons: {                  
				pin: { visible: false },
				refresh: { visible: false },
				toggle: { visible: false },
				minimize: { visible: false },
				maximize: { visible: false }
			},
			buttons: [{
				text: "Si",
				click: function() {
					  // $("#dialog").jqprint();
					  me.eliminar();
					  $(this).wijdialog("close");
				   }
				},
				{text: "No",
				click: function() {
					  $(this).wijdialog("close");
				   }
				}
			 ]
          });
		  
		  
		 var id = $(this.tabId + ' [name="id"]').val();
		
		if (id==0){	
		  this.nuevo();
		}
		return true;		
	};
	
	this.configurarGrid=function(targetSelector, articulos){		
		var fields=[
			
				{ name: "id"},
				{ name: "extras"},
				{ name: "campo"},
				{ name: "llave"},
				{ name: "esNulo"},
				{ name: "fk_componente"},
				{ name: "comp_config"},
				{ name: "fk_catalogo"}
		];
		
		this.fields=fields;	
		var gridElementos=$(targetSelector);						

		var me=this;
		
		gridElementos.bind('keydown', function(e) {
			var code = e.keyCode || e.which;
			code=parseInt( code );
			if(e.keyCode==46 && e.shiftKey){
				me.recuperar();
			}else if(e.keyCode==46){
				$(me.tabId + "-dialog-confirm-eliminar-elemento_de_catalogo").wijdialog('open');
			}
		});
		
		
		gridElementos.wijgrid({
			allowColSizing:true,
			 allowPaging: true,
			pageSize:100,
			allowEditing:true,
			// allowColMoving: false,
			allowKeyboardNavigation:true,
			selectionMode:'singleRow',
			data:articulos,
			rowStyleFormatter: function (args) {
				if (args.data && args.data.eliminado){
					$(args.$rows).addClass("eliminado");
				}
			},
			columns: [
				
				{ dataKey: "id", visible:false, headerText: "Id" },
				{ dataKey: "extras", visible:true, headerText: "Extras" },
				{ dataKey: "campo", visible:true, headerText: "Campo" },
				{ dataKey: "llave", visible:true, headerText: "Llave" },
				{ dataKey: "esNulo", visible:true, headerText: "EsNulo" },
				{ dataKey: "nombre_fk_componente", visible:true, headerText: "Componente" },
				{ dataKey: "fk_componente", visible:false, headerText: "Componente" },
				{ dataKey: "comp_config", visible:true, headerText: "Comp_config" },
				{ dataKey: "nombre_fk_catalogo", visible:true, headerText: "Fk_catalogo" },
				{ dataKey: "fk_catalogo", visible:false, headerText: "Fk_catalogo" }
			]
		});
		var me=this;
		
		
		
		

		gridElementos.wijgrid({rendered : function (e) {
			 var w = $(this.target+' .wijmo-wijgrid thead tr th:nth-child(1)').width();
			 $(this.target+' .wijmo-wijgrid tbody tr td:nth-child(1)').width(w);
			 
			 w = $(this.target+' .wijmo-wijgrid thead tr th:nth-child(2)').width();
			 $(this.target+' .wijmo-wijgrid tbody tr td:nth-child(2)').width(w);
			 
			 w = $(this.target+' .wijmo-wijgrid thead tr th:nth-child(3)').width();
			 $(this.target+' .wijmo-wijgrid tbody tr td:nth-child(3)').width(w);
			 
			 w = $(this.target+' .wijmo-wijgrid thead tr th:nth-child(4)').width();
			 $(this.target+' .wijmo-wijgrid tbody tr td:nth-child(4)').width(w);
			 
			 w = $(this.target+' .wijmo-wijgrid thead tr th:nth-child(5)').width();
			 $(this.target+' .wijmo-wijgrid tbody tr td:nth-child(5)').width(w);
        }});
		
		gridElementos.wijgrid({cancelEdit:function(){				
				$(targetSelector).wijgrid('ensureControl',true);
			}
		});
		gridElementos.wijgrid({ selectionChanged: function (e, args) { 								
			var item=args.addedCells.item(0);						
			var row=item.row();
			var data=row.data;			
			me.selected=data;			
			me.selected.dataItemIndex=row.dataItemIndex;			
			me.selected.sectionRowIndex=row.sectionRowIndex;			
		} });
		
		//corregir bug al expandir/colapsar
		gridElementos.click(function(){
			
                if($(this).hasClass("ui-icon-triangle-1-e"))
                {
				   gridElementos.wijgrid('endEdit');
					var selectionObj = gridElementos.wijgrid("selection");
				   selectionObj.clear();
                   gridElementos.wijgrid('doRefresh');
				   
                }
				
                else if($(this).hasClass("ui-icon-triangle-1-se"))
                {
					gridElementos.wijgrid('endEdit');
					var selectionObj = gridElementos.wijgrid("selection");
					selectionObj.clear();
                   gridElementos.wijgrid('doRefresh');                   
                }
            });	
		this.numCols=$(targetSelector+' thead th').length;		
		
		gridElementos.wijgrid({ beforeCellEdit: function(e, args) {
			switch (args.cell.column().dataKey) {
				
			case "nombre_fk_componente":
				var w,h;
				var domCel = args.cell.tableCell();
				w = $(domCel).width() ;
				h = $(domCel).height() ;
				
				var combo=
				$("<input />")
					.val(args.cell.value())
					.appendTo(args.cell.container().empty());
					
				combo.css('width',	w-5 );
				combo.css('height',	h-7 );
				
				args.handled = true;
				
				me.configurarComboFk_componente(combo);						
			break;
			case "nombre_fk_catalogo":
				var w,h;
				var domCel = args.cell.tableCell();
				w = $(domCel).width() ;
				h = $(domCel).height() ;
				
				var combo=
				$("<input />")
					.val(args.cell.value())
					.appendTo(args.cell.container().empty());
					
				combo.css('width',	w-5 );
				combo.css('height',	h-7 );
				
				args.handled = true;
				
				me.configurarComboFk_catalogo(combo);						
			break;
				default:						
					var domCel = args.cell.tableCell();						
					var w,h;
					w = $(domCel).width() -0;
					h = $(domCel).height() -0;
					var input=$("<input />")
						.val(args.cell.value())
						.appendTo(args.cell.container().empty()).focus().select();							
					input.css('width',	w );
					input.css('height',	h );
					
					
						
					args.handled = true;
					return true;
				break;
			};
		}});
		
		gridElementos.wijgrid({beforeCellUpdate:function(e, args) {
				switch (args.cell.column().dataKey) {
					
			case "nombre_fk_componente":
				args.value = args.cell.container().find("input").val();

				if (me.conmponente!=undefined){
					var row=args.cell.row();					
					row.data.fk_componente = me.conmponente.value;					
					gridElementos.wijgrid('ensureControl',true);					
				}
				break;
			case "nombre_fk_catalogo":
				args.value = args.cell.container().find("input").val();

				if (me.catalogo!=undefined){
					var row=args.cell.row();					
					row.data.fk_catalogo = me.catalogo.value;					
					gridElementos.wijgrid('ensureControl',true);					
				}
				break;
					default:						
						args.value = args.cell.container().find("input").val();	
						var row=args.cell.row();						
						gridElementos.wijgrid('ensureControl',true);
				}
		}});
		// $(tabId + " .grid_articulos").on("blur", ".wijmo-wijgrid-innercell input" , function(){				
			// $(tabId + " .grid_articulos").wijgrid("endEdit");			
		// });
		gridElementos.wijgrid({ loaded: function (e) { 
					
			$(gridElementos).removeClass('wijgridth ui-widget wijmo-c1basefield ui-state-default wijmo-c1field');
			$(".wijmo-wijgrid-footer").addClass('dataTables_paginate paging_bootstrap pagination');
			$(".wijmo-wijgrid-footer").removeClass('wijmo-wijsuperpanel-footer ui-state-default ui-corner-bottom ui-widget wijmo-wijpager ui-helper-clearfix');
			
			$(gridElementos).removeClass('wijmo-wijgrid-root wijmo-wijobserver-visibility  wijmo-wijgrid-table');
			$(gridElementos).parent().removeClass('ui-widget wijmo-wijgrid ui-widget-content ui-corner-all');
		} });
		$(gridElementos).addClass('table table-striped table-bordered table-hover');		
		$(gridElementos).removeClass('wijmo-wijgrid-root wijmo-wijobserver-visibility ');
	};
	
	this.recuperar=function(){
		
		var cellInfo= $(this.target).wijgrid("currentCell");
		var row = cellInfo.row();
		var container=cellInfo.container();
		$(this.target+"	tbody tr:eq("+cellInfo.rowIndex()+")").removeClass('eliminado');		
		row.data.eliminado=false;
		$(this.target).wijgrid("ensureControl", true);
		
	}
	this.eliminar=function(){		
		var cellInfo= $(this.target).wijgrid("currentCell");
		
		var row = cellInfo.row();
		var container=cellInfo.container();
		$(this.target + " tbody tr:eq("+cellInfo.rowIndex()+")").addClass('eliminado');		
		row.data.eliminado=true;
		$(this.target).wijgrid("ensureControl", true);
		
	}
	this.navegarEnter=function(){		
		this.seleccionarSiguiente(false, true, true);		
	}
	this.seleccionarSiguiente = function(alreves, saltar, mantenerColumna){
		//dos direcciones, hacia atras y hacia adelante.
		//de la ultima caja editable de la fila, pasa a la siguiente fila.
		//si se esta navegando alreves, del primer registro editable, pasa al registro anterior.
		//si no hay otra fila, agrega un nuevo elemento.
		//si est� ubicado en el ultimo elemento de la pagina, pasar a la pagina siguiente .
		//si est� nvegando alrev�s, y est� ubicado en el primer elemento de la pagina, pasar a la pagina anterior.
		
		//Obtengo la celda seleccionada
		var tabId, cellInfo, cellIndex, rowIndex,  row, nextCell, nextRow; 
		tabId=this.tabId;
		cellInfo= $(this.target).wijgrid("currentCell");
		
		var direccion=	(alreves)? -1 : 1;
		cellIndex=cellInfo.cellIndex();
		rowIndex = cellInfo.rowIndex();
		nextRow=rowIndex;
		nextCell = cellIndex + direccion;
		
		
		if (saltar){
			nextCell=(alreves)? -1 : this.numCols + 1			
		}
		
		if ( nextCell<0 ){
			//ir al registro anterior, cambiar de pagina
			row=cellInfo.row();
			var data = $(this.target).wijgrid('data');
			var pageSize = $(this.target).wijgrid('option','pageSize');
			var pageIndex = $(this.target).wijgrid('option','pageIndex');
			
			dataItemIndex = row.dataItemIndex;
			var fi= (pageSize * pageIndex);
						
			if ( dataItemIndex == fi){
				if (pageIndex==0){
					return false;
				}
				$(this.target).wijgrid('option','pageIndex',pageIndex-1);
				nextCell=0;
				nextRow=pageSize*2;
			}
			
			nextCell=this.numCols-1;
			nextRow	= nextRow - 1;
			
			var cell;

			if (nextCell>-1 && nextRow>-1){
				while (true)
				 {
					cell = $(this.target).wijgrid('currentCell',nextCell, nextRow);
					if (cell.column == undefined ){
						nextRow--;
					}else{					
						break;
					}
				}			
			}else{
				return false;
			}
		} else if ( nextCell>=this.numCols || saltar){
			nextCell=0;
			if (mantenerColumna){
				
				nextCell=cellIndex;
			}
			//ir al registro siguiente, cambiar de pagina o agregar nuevo registro,
			row=cellInfo.row();			
			var data = $(this.target).wijgrid('data');			 
			var pageSize = $(this.target).wijgrid('option','pageSize');
			var pageIndex = $(this.target).wijgrid('option','pageIndex');			 
			//voy a ver si es el ultimo registro de la pagina
			dataItemIndex = row.dataItemIndex;
			var ip= (pageSize * (pageIndex+1) )-1;
			// var index = collection.indexOf(0, 0);
			
			
			if ( (dataItemIndex+1) == data.length ){
				//esta en el ultimo registro de la ultima pagina
				//agregar nuevo, si esta al final de la pagina, despues de agregar registro, mover a la siguiente pagina
				var rec={};
				$.each( this.fields, function(indexInArray, valueOfElement){
					var campo=valueOfElement.name;
					rec[campo]='';				
				} );
				data.push(rec);
				//
				$(this.target).wijgrid("ensureControl", true);
				$(this.target).wijgrid('option','pageIndex',pageIndex+1);
			}else if ( ip==dataItemIndex ){
				//esta al final de la pagina, cambiar de p�gina
				nextCell=0;
				nextRow=-1;
				$(this.target).wijgrid('option','pageIndex',pageIndex+1);				
			}
						
			nextRow	= nextRow + 1;			
			var cell;
			
			while (true)
			 {
				cell = $(this.target).wijgrid('currentCell',nextCell, nextRow);
				if (cell.column == undefined ){
					nextRow++;
				}else{						
					break;
				}
			}
			
		}
		
		
		var nuevo = $(this.target).wijgrid("currentCell",nextCell, nextRow);
		
		if ( nuevo.column().editable===false ){
			this.seleccionarSiguiente(alreves);
		}else{			
			$(this.target).wijgrid("beginEdit");					
		}
		
		
		
	};
	
	
	
	
	
	this.nuevo=function(){	
		this.padre.editado=true;
		$(this.target).wijgrid("endEdit");	
		var rec={};
		$.each( this.fields, function(indexInArray, valueOfElement){
			var campo=valueOfElement.name;
			rec[campo]='';		
		} );
		
		var nuevo=new Array(rec);
		
		var tabId=this.tabId;		
		var data= $(this.target).wijgrid('data');									
		// this.tmp_id++;
		// nuevo[0].tmp_id=this.tmp_id;
		var array3 = data.concat(nuevo); // Merges both arrays
		data.length=0;
		for(var i=0; i<array3.length; i++){
			data.push( array3[i] );
		}

		$(this.target).wijgrid("ensureControl", true);
		$(this.target).wijgrid('option','pageIndex',0);			 
		$(this.target).wijgrid("currentCell", 0, data.length);
		$(this.target).wijgrid("beginEdit");		
	};
	
	
	
	this.configurarToolbar=function(tabId){
		var me=this;				
		
		$( me.config.contenedor +  " .btnAgregar" )		  
		  .click(function( event ) {
				me.nuevo();			
		});
		
		
		$( me.config.contenedor +  " .btnEliminar" )		  
		  .click(function( event ) {
			
				// me.eliminar();	
				$(me.tabId + "-dialog-confirm-eliminar-elemento_de_catalogo").wijdialog('open');
		});
	}
}
