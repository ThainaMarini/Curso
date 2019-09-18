<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">    
    <title>PE AGA PE</title>
</head>
<body>
    <?php
        $descricao = $_POST['descricao'];
        $preco = $_POST['preco'];
        $formpagt = $_POST['formpagt'];
        $parcelas = $_POST['parc'];

        if ($formpag == 'vista') {
            $adicformpagt = 0;
            $FormPagto = 'À vista';
        } else if ($formpagt == 'boleto') {
            $adicformpagt = 4;
            $FormPagto = 'Boleto';
        } else if ($formpagt == 'debito') {
            $adicformpagt = $preco * 0.04;
            $FormPagto = 'Cartão de Débito';
        } elseif ($formpagt == 'credito') {
            $adicformpagt = $preco * 0.06;
            $FormPagto = 'Cartão de Crédito';
        }

        if ($parcelas > 5) {
            $adicparc = $preco * 0.05;
        }

        $ValorVenda = $preco +  $adicformpagt + $adicparc;

        $parcela = $ValorVenda/$parcelas;

        echo '<p><b>RELATÓRIO DE VENDAS</b></p></ br>';
        echo '<p><b>DESCRIÇÃO DO PRODUTO</b>: ',$descricao,'</p>';
        echo '<p><b>PRECO</b>: R$',$preco,'</p>';
        echo '<p><b>FORMA DE PAGAMENTO</b>: ',$FormPagto,'</p>';
        echo '<p><b>PARCELAS</b>: ',$parcelas,'</p>';
        echo '<p><b>VALOR DA PARCELA</b>: R$',$parcela,'</p>';
        echo '<p><b>VALOR DA VENDA</b>: R$',$ValorVenda,'</p>';
    ?>
</body>
</html>