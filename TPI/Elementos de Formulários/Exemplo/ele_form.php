<?php
// Checkboxes
$checkbox1 = $_POST["check1"];
$checkbox2 = $_POST["check2"];

// Radio Group
$radio = $_POST["grupo"];

// Caixa de Seleção
$selecao = $_POST["sel"];

// Área de Texto
$texto = $_POST["texto"];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>RESULTADOS</title>
</head>

<body>
<h2>RESULTADOS</h2>
<p>
<strong>Checkbox 1:</strong>
<?php
if ($checkbox1 == "check1") {
	echo "Selecionado";
} else {
	echo "Não selecionado";
}
?>
<br />
<strong>Checkbox 2:</strong>
<?php
if ($checkbox2 == "check2") {
	echo "Selecionado";
} else {
	echo "Não selecionado";
}
?>
</p>
<p>
<strong>Botões de Rádio</strong> - selecionado: <?php echo $radio; ?>
</p>
<p>
<strong>Caixa de Seleção</strong> - selecionado: <?php echo $selecao; ?>
</p>
<p>
<strong>Texto:</strong> <?php echo $texto; ?>
</p>
<p>
<a href="ele_form.html">VOLTAR</a>
</p>
</body>
</html>