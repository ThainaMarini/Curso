<?php
$v1 = $_POST["lado1"];
$v2 = $_POST["lado2"];
$v3 = $_POST["lado3"];
$volume = $v1*$v2*$v3;
$atp = 2*($v1*$v2+$v1*$v3+$v2*$v3);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resultado</title>
</head>
<body>
<h1> Resultado do Volume:</h1>
<p>
<?php
echo "Volume = ".$volume;
?>
</p>
<br/>
<h1> Resultado do Área:</h1>
<p>
<?php
echo "Área total da superficie = ".$atp;
?>
</p>
</body>
</html>