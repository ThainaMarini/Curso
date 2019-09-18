<?php
// conexão com o BD
$sgbd = "localhost";
$usuario = "root";
$senha = "";
$banco = "loja";

$conexao = mysql_connect($sgbd, $usuario, $senha) 
	or die("ERRO: ".mysql_error());

mysql_select_db($banco, $conexao);

// cria o comando SELECT
$sql = "select c.cod_cliente, nome, co.cod_compra from cliente c join compra co on c.cod_cliente = co.cod_cliente order by 1, 3";

// Envia comando para o SGBD
$res = mysql_query($sql, $conexao);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="95%" border="1">
  <tr>
    <th>CÓDIGO CLIENTE</th>
    <th>NOME</th>
    <th>CÓDIGO COMPRA</th>
  </tr>
<?php
//Extrai os dados do conjunto resultado e exibe na tabela
if (mysql_num_rows($res) > 0) {
	// Extrai os dados do resultado da consulta e cria linhas na tabela
	while($linha = mysql_fetch_assoc($res)) {
?>
  <tr>
    <td align="center"><?php echo $linha["cod_cliente"]; ?></td>
    <td align="left"><?php echo $linha["nome"]; ?></td>
    <td align="center"><?php echo $linha["cod_compra"]; ?></td>
  </tr>
<?php
	} // Fim WHILE
} else {
	echo "<tr><td colspan=3><b>NÃO EXISTEM PRODUTOS CADASTRADOS</b></td></tr>";
} // Fim ELSE

mysql_close($conexao);
?>
<p><a href="cadastro.html">CADASTRAR PRODUTOS</a></p>
</table>
</body>
</html>