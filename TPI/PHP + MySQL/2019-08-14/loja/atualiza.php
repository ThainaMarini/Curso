<?php
// Lê os dados do formulário
$cod_produto = $_POST["cod_produto"];
$descricao = $_POST["descricao"];
$preco_custo = $_POST["preco_custo"];
$preco_venda = $_POST["preco_venda"];
$estoque = $_POST["estoque"];

// conexão com o BD
$sgbd = "localhost";
$usuario = "root";
$senha = "";
$banco = "loja";

$conexao = mysql_connect($sgbd, $usuario, $senha) 
	or die("ERRO: ".mysql_error());

mysql_select_db($banco, $conexao);

// cria o comando UPDATE para gravar os dados na tabela
$sql = "update produto set descricao = '$descricao', preco_custo = $preco_custo, ".
	" preco_venda = $preco_venda, estoque = $estoque ".
	"where cod_produto = $cod_produto";

// Envia comando para o SGBD
$res = mysql_query($sql, $conexao);

mysql_close($conexao);
if ($res){
	// Comando executado com sucesso
	//echo "Dados inseridos com sucesso!! Linhas inseridas: ".mysql_affected_rows();
	
	// Redireciona para a lista
	header("location:lista.php");
} else {
	// Erro na execução do comando
	echo "ERRO: ".mysql_error();
}

?>