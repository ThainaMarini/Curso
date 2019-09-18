<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form action="#" method="post">
<table width="550" border="1" align="center">
  <tr>
    <td colspan="2" align="center"><h3>CÁLCULO DO SEGURO DO AUTOMÓVEL</h3></td>
  </tr>
  <tr>
    <td width="187"><strong>Descrição do automóvel:</strong></td>
    <td width="397"><input type="text" size="40" name="descricao" /></td>
  </tr>
  <tr>
    <td><strong>Valor:</strong></td>
    <td><input type="text" name="valor" /></td>
  </tr>
  <tr>
    <td><strong>Tipo:</strong></td>
    <td>
    	<select name="tipo">
        	<option value="passeio">Passeio</option>
            <option value="carga">Carga</option>
            <option value="motocicleta">Motocicleta</option>
        </select>
    </td>
  </tr>
  <tr>
    <td><strong>Ocorrências / Acréscimos:</strong></td>
    <td>
    	<select name="ocorrencias">
        	<option value="sem">Sem</option>
            <option value="uso">Uso do Seguro</option>
            <option value="leve">Acidente Leve</option>
            <option value="grave">Acidente Grave</option>
        </select>
    </td>
  </tr>
  <tr>
    <td><strong>Descontos:</strong></td>
    <td>
    	<select name="descontos">
        	<option value="sem">Sem Desconto</option>
            <option value="nao_usou">Não Usou o Seguro</option>
            <option value="sem_infracao">Sem Infrações</option>
        </select>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input type="submit" name="calc_seguro" value="Calcular Seguro" />
    <!-- Deve ser definido um nome para o BOTÃO para que seja feita a verificação se ele foi pressionado ou não -->
    
    </td>
  </tr>
</table>
</form>

<?php
// Verifica se o botão do formulário foi pressionado
// isset() - verifica se uma varíavel está ativa e preenchida
if (isset($_POST["calc_seguro"])){
	
	$descricao = $_POST["descricao"];
	$valor = $_POST["valor"];
	$tipo = $_POST["tipo"];
	$ocorrencias = $_POST["ocorrencias"];
	$descontos = $_POST["descontos"];
	
	if ($tipo == "passeio") {
		$valor_tipo = 0.05 * $valor;
	} elseif ($tipo == "carga") {
		$valor_tipo = 0.1 * $valor;
	} elseif ($tipo == "motocicleta") {
		$valor_tipo = 0.08 * $valor;
	}
	
	if ($ocorrencias == "sem") {
		$valor_ocorrencia = 0;
	} elseif ($ocorrencias == "uso") {
		$valor_ocorrencia = 0.05 * $valor_tipo;
	} elseif ($ocorrencias == "leve") {
		$valor_ocorrencia = 0.03 * $valor_tipo;
	} elseif ($ocorrencias == "grave") {
		$valor_ocorrencia = 0.1 * $valor_tipo;
	}
	
	if ($descontos == "sem") {
		$valor_desconto = 0;
	} elseif ($descontos == "nao_usou") {
		$valor_desconto = 0.1 * $valor_tipo;
	} elseif ($descontos == "sem_infracao") {
		$valor_desconto = 0.05 * $valor_tipo;
	}
	
	$valor_seguro = $valor_tipo + $valor_ocorrencia - $valor_desconto;
	$valor_parcela = $valor_seguro / 4;
	
	echo "<hr><p><strong>SEGURO DO AUTO</strong>";
	echo "<br><strong>DESCRIÇÃO DO AUTOMÓVEL: </strong>" . $descricao;
	echo "<br><strong>PREÇO: </strong>" . $valor;
	echo "<br><strong>TIPO: </strong>" . strtoupper($tipo); // Converte para letras maiúsculas
	echo "<br><strong>ADICIONAL DE OCORRÊNCIAS: </strong>" . $valor_ocorrencia;
	echo "<br><strong>DESCONTO: </strong>" . $valor_desconto;
	echo "<br><strong>VALOR DO SEGURO: </strong>" . $valor_seguro;
	echo "<br><strong>VALOR DAS PARCELAS: </strong>" . $valor_parcela;

// FIM de if (isset($_POST["calc_seguro"]))		
} else {
	echo "<h3 align=\"center\">PREENCHA O FORMULÁRIO</h3>";
}
?>
</body>
</html>