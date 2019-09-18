<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php
$temp = $_POST['temp'];
$tipo = $_POST["tipo"];
?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resultado</title>
</head>
<body>
A nova temperatura é:
<?php
if ($tipo=="celsius") {
	echo (($temp-32)/1.8) ;
}else {
	echo (1.8*$temp+32);
}
?>
<br/>
<a href="ex1.html">VOLTAR</a>
</body>
</html>