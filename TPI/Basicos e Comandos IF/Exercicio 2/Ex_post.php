<?php
$saldo = $_POST["saldo"];
$pr = $_POST["pr"];
$taxa = $saldo*($saldo+$pr)/$saldo;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resultado</title>
</head>
<body>
<h1> Resultado da taxa de rendimento no saldo:</h1>
<p>
<?php
echo "Saldo = ".$taxa;
?>
</p>
</body>
</html>