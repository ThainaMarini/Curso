<?php
$v1 = $_POST["valor1"];
$v2 = $_POST["valor2"];

$soma = $v1 + $v2;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SOMA</title>
</head>
<body>
<h1> Resultado da Soma:</h1>
<p>
<?php
echo "Soma = ".$soma;
?>
</p>
</body>
</html>