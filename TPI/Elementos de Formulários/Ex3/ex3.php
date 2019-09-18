<?php
$desc = $_POST['desc'];
$valor = $_POST['Valor'];
$tipo = $_POST['Tipo'];
$parcelas = $_POST['parcelas'];

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resposta</title>
</head>
<body>
<?php
echo "Seguro do Auto"
?>
<br/>
<?php
echo "Descrição do Automóvel " .$desc;
?>
<br/>
<?php
echo "Preço " .$preco;
?>
<br/>
<?php
echo "Tipo " .$tipo;
?>
<br/>
<?php
if ($acrescimo = 'Sem') {
echo "Adicional Ocorrências: R$0,00";
}
if ($acrescimo = 'Sem') {
echo "Adicional Ocorrências: R$0,00";
}
?>

<br />
<?php
echo "Desconto" .$desconto;
?>
<br />
<?php
echo "Valor do Seguro" .$seguro;
?>
<br />
<?php
echo "Valor da Parcela " .$preco/$parcelas;
?>
<br/>


</body>
</html>