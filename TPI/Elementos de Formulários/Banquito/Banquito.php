<?php
if(isset($_POST["enviar"])){
$valor = $_POST["valor"];
$n100 = (int)($valor/100);
$r1 = $valor%100;
$n50 = (int)($r1/50);
$r2 = $r1%50;
$n20 = (int) ($r2/20);
$r3 = $r2%20;
$n10 = (int) ($r3/10);
$r4 = $r3%10;
$n5 = (int) ($r4/5);
$r5 = $r4%5;
$n2 = (int) ($r5/2);
$r6 = $r5%2;
$n1 = (int) ($r6/1);
$r7 = $r6%1;

echo ('<br>notas de 100 = ' .$n100);
echo ('<br>notas de 50 = ' .$n50);
echo ('<br>notas de 20 = ' .$n20);
echo ('<br>notas de 10 = ' .$n10);
echo ('<br>notas de 5 = ' .$n5);
echo ('<br>notas de 2 = ' .$n2);
echo ('<br>moedas de 1 = ' .$n1);	
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>
<form id="Banco" name="banco" action="#" method="Post">
Digite o valor: <input type="Text" name="valor" /> <br />
<input type="submit" value="enviar" name="enviar"  />
</form>

</body>
</html>