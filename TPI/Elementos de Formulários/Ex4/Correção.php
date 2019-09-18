<?php
// valor inicial das variáveis
$celsius = 0.0;
$farenheit = 0.0;

if (isset($_POST["converter"])) {
	$celsius = $_POST["celsius"];
	$farenheit = $_POST["farenheit"];
	$tipo = $_POST["tipo"];
	
	if ($tipo == "CF"){
		if (trim($celsius) == "") {
			// trim() - remove espaços em branco antes e depois do valor 
			$celsius = 0;
		}
		
		$farenheit = 1.8 * $celsius + 32;
	} elseif ($tipo == "FC"){
		if (trim($farenheit) == "") {
			// trim() - remove espaços em branco antes e depois do valor 
			$farenheit = 0;
		}
		
		$celsius = ($farenheit - 32) / 1.8;
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="#">
  <table width="424" border="1" align="center">
    <tr>
      <td colspan="2" align="center"><strong>CONVERSOR DE TEMPERATURAS</strong></td>
    </tr>
    <tr>
      <td width="164"><strong>Temp. Celsius:</strong></td>
      <td width="244"><input type="text" name="celsius" value="<?php echo $celsius; ?>" /></td>
    </tr>
    <tr>
      <td><strong>Temp. Farenheit:</strong></td>
      <td><input type="text" name="farenheit" value="<?php echo $farenheit; ?>" /></td>
    </tr>
    <tr>
      <td><strong>Tipo de Conversão:</strong></td>
      <td>
      	<select name="tipo">
        	<option value="CF">C -> F</option>
            <option value="FC">F -> C</option>
        </select>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" name="converter" value="Converter Temperatura"  /></td>
    </tr>
  </table>

</form>
</body>
</html>