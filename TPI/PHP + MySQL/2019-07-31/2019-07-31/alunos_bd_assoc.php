<?php
// Conexão com o BD
$sgbd = "localhost";
$usuario = "root";
$senha = "";
$bd = "escola";

// Conecta com o SGB
$conexao = mysql_connect($sgbd, $usuario, $senha);
// Seleciona o BD
mysql_select_db($bd, $conexao);

// Envia consulta
$sql = "select * from aluno";
$resultado = mysql_query($sql, $conexao);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<h3>ALUNOS DE TPI II</h3>
<?php
// Cria um laço para extrair as linhas do resultado
// A cada iteração uma linha é extraída, até que todo o conjunto
// tenha sido percorrido
while($linha = mysql_fetch_assoc($resultado)){
	echo "<p>RM: ".$linha["rm"]."<br />".
	     "NOME: ".$linha["nome"]."<br />".
		 "IDADE: ".$linha["idade"]."</p>";	
}
?>
</body>
</html>