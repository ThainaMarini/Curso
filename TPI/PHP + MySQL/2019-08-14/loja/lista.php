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
$sql = "select * from produto order by cod_produto";

// Envia comando para o SGBD
$res = mysql_query($sql, $conexao);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PRODUTOS CADASTRADOS</title>
</head>

<body>
<h3 align="center">PRODUTOS CADASTRADOS</h3>
<table width="95%" border="1">
  <tr>
    <th>CÓDIGO</th>
    <th>DESCRIÇÃO</th>
    <th>PREÇO DE CUSTO</th>
    <th>PREÇO DE VENDA</th>
    <th>ESTOQUE</th>
    <th>EDITAR</th>
    <th>EXCLUIR</th>
  </tr>
<?php
//Extrai os dados do conjunto resultado e exibe na tabela
if (mysql_num_rows($res) > 0) {
	// Extrai os dados do resultado da consulta e cria linhas na tabela
	while($linha = mysql_fetch_assoc($res)) {
?>
  <tr>
    <td align="center"><?php echo $linha["cod_produto"]; ?></td>
    <td><?php echo $linha["descricao"]; ?></td>
    <td align="center"><?php echo $linha["preco_custo"]; ?></td>
    <td align="center"><?php echo $linha["preco_venda"]; ?></td>
    <td align="center"><?php echo $linha["estoque"]; ?></td>
    <td align="center"><a href="edita.php?cod=<?php echo $linha["cod_produto"]; ?>">X</a></td>
    <td align="center">X</td>
  </tr>
<?php
	} // Fim WHILE
} else {
	echo "<tr><td colspan=7><b>NÃO EXISTEM PRODUTOS CADASTRADOS</b></td></tr>";
} // Fim ELSE

mysql_close($conexao);
?>
<p><a href="cadastro.html">CADASTRAR PRODUTOS</a></p>
</table>

</body>
</html>