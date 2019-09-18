<?php
// Le os dados do formulário
$descricao = $_POST["descricao"];
$preco_custo = $_POST["preco_custo"];
$preco_venda = $_POST["preco_venda"];
$estoque = $_POST["estoque"];

// conexão com o banco de dados
$sgbd = "localhost";
$usuario = "root";
$senha = "";
$banco = "loja";

$conexao = mysql_connect($sbgd, $usuario, $senha) or die("ERRO: ".mysql_error());

mysql_select_db($banco, $conexao);

//cria o comando insert para gravar os dados na tabela
$sql = "insert into produto (descricao, preco_custo, preco_venda, estoque) values ". 
	"('".$descricao."', ".$preco_custo.", ".$preco_venda.", ".$estoque.")";
	
//ou
$sql = "insert into produto (descricao, preco_custo, preco_venda, estoque) values ". 
	"('.$descricao', $preco_custo, $preco_venda, $estoque)";

// envia comando para o sgbd
$res = mysql_query($sql, $conexao);

if ($res){
	// comando executado com sucesso
	echo "Dados iseridos com sucesso! Linhas inseridas: ".mysql_affected_rows();
} else {
	// erro na execucao do comando 
	echo "ERRO: ".mysql_error();
	}
?>