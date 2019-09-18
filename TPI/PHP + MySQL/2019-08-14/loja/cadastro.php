<?php
// Lê os dados do formulário
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

// cria o comando INSERT para gravar os dados na tabela
//$sql = "insert into produto (descricao, preco_custo, preco_venda, estoque) values ".
//	"('".$descricao."', ".$preco_custo.", ".$preco_venda.", ".$estoque.")";
//ou
$sql = "insert into produto (descricao, preco_custo, preco_venda, estoque) values ".
	"('$descricao', $preco_custo, $preco_venda, $estoque)";

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