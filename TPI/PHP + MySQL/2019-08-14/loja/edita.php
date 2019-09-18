<?php
// Código do produtos que será editado
$cod = $_GET["cod"];

// conexão com o BD
$sgbd = "localhost";
$usuario = "root";
$senha = "";
$banco = "loja";

$conexao = mysql_connect($sgbd, $usuario, $senha) 
	or die("ERRO: ".mysql_error());

mysql_select_db($banco, $conexao);

// cria o comando SELECT
$sql = "select * from produto where cod_produto = $cod";

// Envia comando para o SGBD
$res = mysql_query($sql, $conexao);

$linha = mysql_fetch_assoc($res);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>EDIÇÃO DOS DADOS DO PRODUTO</title>
</head>

<body>
<body>
<form action="atualiza.php" method="post">
  <input type="hidden" name="cod_produto" value="<?php echo $linha["cod_produto"]; ?>" />
  <table width="80%" border="1" align="center">
  <tr>
    <td colspan="2"><h3 align="center">EDIÇÃO DE PRODUTOS</h3></td>
  </tr>
  <tr>
    <td colspan="2">DESCRIÇÃO: <input type="text" size="40" name="descricao" value="<?php echo $linha["descricao"]; ?>" /></td>
  </tr>
  <tr>
    <td>PREÇO DE CUSTO: <input type="text" name="preco_custo" name="descricao" value="<?php echo $linha["preco_custo"]; ?>" /></td>
    <td>PREÇO DE VENDA: <input type="text" name="preco_venda" name="descricao" value="<?php echo $linha["preco_venda"]; ?>" /></td>
  </tr>
  <tr>
    <td colspan="2" align="center">ESTOQUE: <input type="text" name="estoque" name="descricao" value="<?php echo $linha["estoque"]; ?>" /></td>

  </tr>
  <tr align="center">
    <td colspan="2"><input type="submit" value="ATUALIZAR PRODUTO" /></td>
  </tr>
</table>
</form>
<?php mysql_close($conexao); ?>
</body>
</html>