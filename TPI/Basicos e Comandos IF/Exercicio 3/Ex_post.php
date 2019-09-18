<?php
// Lê os dados dos campos do formulário
$sal_bruto = $_POST["sal_bruto"];
$ir = $_POST["ir"];
$prev = $_POST["prev"];

// Calcular o valor a ser pago do imspoto de renda
$ir_v = $sal_bruto * $ir / 100;

//Calcula o valor a ser pago da previdencia
$prev_v = $sal_bruto * $prev / 100;

$sal_liquido = $sal_bruto - $ir_v - $prev_v
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resultado</title>
</head>
<body>
<h1> Salario Líquido:</h1>
<p>
<?php
echo "O salário líquido do empregado é: " .$sal_liquido;
?>
</p>
</body>
</html>