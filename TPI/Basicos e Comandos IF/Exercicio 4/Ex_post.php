<?php
$preco = $_POST["preco"];
$pl= $_POST["pl"];
$nome = $_POST["nome"];

$pl_v = $pl / 100;
$preco_v = $pl_v * $preco ;

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resultado</title>
</head>
<body>
 Calcular o preço de venda(aplica a porcetagem de lucro sobre o preço de custo) e exibe os dados
<h1> Preço de venda:</h1>
<br/>
<p>
<?php
echo "O preço de venda do produto é: " .$preco_v;
?>
</p>
</body>
</html>