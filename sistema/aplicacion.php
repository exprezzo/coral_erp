<?php
class App{
	// Asi deberia ser:
	// revisa que la tabla exista, 
	// revisa cada campo requerido por la aplicacion, si no existe lo agrega
	// si es de un tipo de datos diferente, marca advertencias
	// deberia tener un mecanismo donde todas las aplicaciones verifiquen y generan un reporte concentrado
	
	function instalar($ubicacion, $nombreInterno){		 		
		// ejecuta un archivo llinea por linea		
		$filename = $ubicacion.'/'.$nombreInterno.'.sql';
		//////////////////////////////////////////////////////////////////////////////////////////////
		 
		 
		// Temporary variable, used to store current query
		$templine = '';
		// Read in entire file
		$lines = file($filename);
		// Loop through each line
		$errores=array();
		$mod = new Modelo();
		foreach ($lines as $line)
		{
			// Skip it if it's a comment
			if (substr($line, 0, 2) == '--' || $line == '')
				continue;
		 
			// Add this line to the current segment
			$templine .= $line;
			// If it has a semicolon at the end, it's the end of the query
			if (substr(trim($line), -1, 1) == ';')
			{
				// Perform the query
				
				$resActual = $mod->ejecutarSql($templine);
				if ( !$resActual['success'] ){
					// print_r($resActual);
					//echo $templine; exit;
					$errores[]=$resActual;
				}
				
				// Reset temp variable to empty
				$templine = '';
			}
		}
		
		$success = (sizeof($errores) > 0) ? false : true;
		$msg='';
		return array(
			'success'=>$success,
			'msg'=>$msg,
			'errores'=>$errores
		);
	}
}
?>