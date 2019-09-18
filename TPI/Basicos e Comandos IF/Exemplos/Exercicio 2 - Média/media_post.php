<?php
$v1 = $_POST["valor1"];
$v2 = $_POST["valor2"];
$v3 = $_POST["valor3"];
$media = ($v1+$v2+$v3)/3;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Media</title>
</head>
<body>
<h1> Resultado da Média:</h1>
<p>
<?php
echo "Media = ".$media;
?>
</p>
</body>
</html>