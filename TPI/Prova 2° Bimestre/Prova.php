
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form name="prova" action="prova.php" method="post">
Origem: <select name="origem">
          <option name="S"> Sul </option>
          <option name="SE"> Sudeste </option>
          <option name="CO"> Centro Oeste </option>
          <option name="N"> Norte </option>
          <option name="NE"> Nordeste </option>
        </select>
        <br />
Destino: <select name="destino">
          <option name="S"> Sul </option>
          <option name="SE"> Sudeste </option>
          <option name="CO"> Centro Oeste </option>
          <option name="N"> Norte </option>
          <option name="NE"> Nordeste </option>
         </select>
         <br />
Distância: <input type="text" name="distancia" />
<br />
Tipo: <input type="checkbox" name="tipo" value ="1a classe" /> 1a classe
      <input type="checkbox" name="tipo" value ="Executiva" /> Executiva
      <input type="checkbox" name="tipo" value ="Economica" /> Economica
      <br />
      
<input type="submit" name="Submit" value="Calcular Passagem" /> 

</form>
<?php
    if(isset ($_POST["Submit"])) {
	$origem = $_POST["origem"];
    $destino = $_POST["destino"];
    $distancia = $_POST["distancia"];
    $tipo = $_POST["tipo"];
	if ($origem == $destino) {
		$valorkm = 0.765;
		$addReg = 0;
	} elseif ($origem != $destino) {
		$valorkm = 1.025;
		$addReg = 50;
	};
	if($tipo == "1a classe") {
		$addTipo = 1.8;
	} elseif($tipo == "Executiva") {
	    $addTipo = 1.5;	
	} elseif($tipo == "Economica") {
	    $addTipo = 1.3;	
	};
	$valorPassagem = $distancia * $valorkm * $addTipo + $addReg;
	
	echo ' Região de Origem: ' .$origem;
	echo ' Região de Destino: ' .$destino;
	echo ' Distância ' .$distancia,'km';
	echo ' Tipo de Passagem ' .$tipo;
	echo ' Valor da passagem R$' .$valorPassagem;
};
?>
</body>
</html>