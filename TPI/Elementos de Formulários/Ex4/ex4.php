<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>
<form method="post" action="#"> 
  Temperatura:
    <textarea name="temp" value="temp" rows="1" cols="20"> </textarea>
<br/>
<Br/>
Tipo Conversão
<select name="tipo">
 <option value="farenheit">Farenheit</option>
 <option value="celsius">celsius</option>
</select>
<br/>
<br/>
Celsius: 
<textarea name="celsius" value="temp" rows="1" cols="20"> </textarea>
<br/>
<br/>
Farenheit:
<textarea name="farenheit" value="temp" rows="1" cols="20"> </textarea>
<br/>
<br/>
<input type="submit" name="converter" value="Converter" />
<input type="reset" name="reset" value="Limpar" />
</form>

<?php
 if (isset($_POST["converter"])){
  $temp = $_POST["temp"];
  $tipo = $_POST["tipo"];
  if ($tipo=="celsius") {
	echo (($temp-32)/1.8)  ;
 }
 if ($tipo=="farenheit") {
	echo (1.8*$temp+32);
 } 
}
?>
</body>
</html>
