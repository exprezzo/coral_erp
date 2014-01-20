<!--RequireJs-->
<script type="text/javascript" src="http://cdn.wijmo.com/external/require.js"></script>
<div class="contenedor_catalogo" id="<?php echo $id; ?>">	
	<div id="titulo">    	
		<h1>
			Estado de la Granja
			<small>
				<i class="icon-double-angle-right"></i>
				overview &amp; stats
			</small>
		</h1>
	</div>		
	<div id="cuerpo" >				
	</div>		
</div>		

<div id="wijbarchart" style="width: 800px; height: 400px">
</div>
<ul>
	<li>En incubacion: 
		<span>
			Se obtiene sumando todas las crias que estan amamantando
		</span>
	</li>
	<li>Listos para procrear:
		<span>
			Se obtiene sumando todas las crias que estan en edad reproductiva
		</span>
	</li>
	<li>En Proceso:
		<span>
			Se obtiene sumando el numero de parejas
		</span>
	</li>
	<li>Desocupados:
		<span>
			Crias en estado reproductivo que no estan en periodo de descanso ni emparejados
		</span>
	</li>
	<li>En desarrollo:
		<span>
			Todabia no estan en etapa reproductiva ni vendible
		</span>
	</li>
	<li>Gestando:
		<span>Hembras embarazadas</span>
	</li>
	<li>Amamantando:
		<span>Hembras Amamantando</span>
	</li>
	<li>Vendibles::
		<span>En optimas condiciones para la venta</span>
	</li>
</ul>

<script type="text/javascript">
    requirejs.config({
        baseUrl: "http://cdn.wijmo.com/amd-js/",
            paths: {
                "jquery": "jquery-1.9.1.min",
                "jquery-ui": "jquery-ui-1.10.1.custom.min",
                "jquery.ui": "jquery-ui",
                "jquery.mousewheel": "jquery.mousewheel.min",
                "globalize": "globalize.min"
            }
    });
</script>

<script id="scriptInit" type="text/javascript">
    require(["wijmo.wijbarchart"], function () {
        $(document).ready(function () {
            $("#wijbarchart").wijbarchart({
				 horizontal: false,
                axis: {
                    y: {text: "Numero de Animales"},
                    x: {text: ""}
                },
                hint: {
                    content: function () {return this.data.label + '\n ' + this.y + '';}
                },
                header: {text: "Estado de la Granja"},
                seriesList: [{
                    // label: "US",
                    legendEntry: false,
                    data: { x: ['En incubacion', 'En desarrollo', 'Etapa Fertil', 'Desocupados', 'Emparejados', 'Gestando', 'Amamantando', 'Vendibles'], 
							y: [12.35, 21.50, 30.56, 15, 20, 30, 10,30] }
                }],
                seriesStyles: [{fill: "#8ede43", stroke: "#7fc73c", opacity: 0.8}],
                seriesHoverStyles: [{ "stroke-width": "1.5", opacity: 1}]
            });
        });
    });
</script>