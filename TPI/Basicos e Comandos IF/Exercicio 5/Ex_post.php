<?php
$pass_luxo = $_POST["p_1"];
$pass_eco = $_POST["p_eco"];
$p_eco = $_POST["preco_eco"];
$p_luxo = $_POST["preco_1"];
$ass_eco = $_POST["ass_eco"];
$ass_luxo = $_POST["ass_1"];

$capacidade_total = $ass_eco + $ass_luxo * 2;
$total_pass = $p_eco + $p_luxo;
$preco_luxo = $pass_luxo * $p_luxo;
$preco_eco = $pass_eco * $p_eco;
$total = $preco_luxo + $preco_eco;
$total_liquido = $total - ($total * 0.65);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resultado</title>
</head>
<body>
<h1> Preço de venda:</h1>
<br/>
<p>
<?php
echo "total arrecadado: " .$total;
?>
<br />
<?php
echo " lucro liquido: " .$total_liquido;
?>
<br />
<?php
echo " capacidade total: " .$capacidade_total;
?>
<br />
<?php
echo " total de passageiros " .$total_pass;
?>
</p>
</body>
</html>