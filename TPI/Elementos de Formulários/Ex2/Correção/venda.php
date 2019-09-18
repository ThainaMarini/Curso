<?php
$desc  = $_POST["descricao"];
$preco = $_POST["preco"];
$pagto = $_POST["pagto"];
$parc  = $_POST["parc"];

if ($pagto == "vista") {
	$adc_pagto = 0;
	$f_pagto = "À Vista";
	$parc = 1;
} elseif ($pagto == "boleto") {
	$adc_pagto = 4.0;
	$f_pagto = "Boleto";
	$parc = 1;
} elseif ($pagto == "debito") {
	$adc_pagto = $preco * 0.04;
	$f_pagto = "Cartão de Débito";
	$parc = 1;
} elseif ($pagto == "credito") {
	$adc_pagto = $preco * 0.06;
	$f_pagto = "Cartão de Crédito";
}

if ($parc < 5) {
	$adc_parc = 0.0;
} else {
	$adc_parc = $preco * 0.05;
}

$valor_venda = $preco + $adc_pagto + $adc_parc;
$v_parc = $valor_venda / $parc;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="500" border="1">
  <tr>
    <td colspan="2"><strong>RELATÓRIO DE VENDAS</strong></td>
  </tr>
  <tr>
    <td width="215"><strong>DESCRIÇÃO DO PRODUTO:</strong></td>
    <td width="269"><?php echo $desc; ?></td>
  </tr>
  <tr>
    <td><strong>PREÇO</strong></td>
    <td><?php echo $preco; ?></td>
  </tr>
  <tr>
    <td><strong>FORMA DE PAGAMENTO:</strong></td>
    <td><?php echo $f_pagto; ?></td>
  </tr>
  <tr>
    <td><strong>PARCELAS:</strong></td>
    <td><?php echo $parc; ?></td>
  </tr>
  <tr>
    <td><strong>VALOR DA PARCELA:</strong></td>
    <td><?php echo $v_parc; ?></td>
  </tr>
  <tr>
    <td><strong>VALOR DA VENDA:</strong></td>
    <td><?php echo $valor_venda; ?></td>
  </tr>
</table>

</body>
</html>