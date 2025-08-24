<!DOCTYPE html>
<html lang="pt-BR">
<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <title>Atividade Online</title>
</head>
<body>

    <div class="w3-container w3-teal">

        <h2>
            <?php

                $desconto = 0; // criei essa variável para armazenar o desconto

                if ($_POST['cmbPag'] == 'deposito') { // se o método de pagamentoo for deposito

                    $desconto = 10; // desconto de 10 R$

                    echo "PROMOÇÃO DE MÊS DE ANIVERSÁRIO!<br> "; // mensagem que fala que tem promoção
                    echo "" . $_POST['txtNome'] . "!<br>"; // nome da pessoa
                    echo "Valor da compra sem desconto: R$ " . $_POST['txtValorCompra']; // valor da compra sem desconto, apenas pega o valor original
                }
                else if ($_POST['cmbPag'] == 'boleto') { // se o método de pagamento for boleto

                    $desconto = 8; // desconto de 8 R$

                    echo "PROMOÇÃO DE MÊS DE ANIVERSÁRIO!<br>"; // mensagem que fala que tem promoção
                    echo "" . $_POST['txtNome'] . "!<br>"; // nome da pessoa
                    echo "Valor da compra sem desconto: R$ " . $_POST['txtValorCompra']; // valor da compra sem desconto, apenas pega o valor original
                }

                echo "<br>Forma de pagamento escolhida: " . $_POST['cmbPag']; // dizer qual forma de pagamento foi escolhida

                $valorAPagar = (float) $_POST['txtValorCompra']; // guardando o valor a pagar e transformando em float pra fazermos operações nele

                if ($desconto != 0) { // se desconto for diferente de 0 isso quer dizer que um dos métodos de pagamento escolhidos tem desconto

                    $valorAPagarAntigo = $valorAPagar; // guardando o valor a pagar antigo para usarmos no calculo
                    $valorAPagar = $valorAPagarAntigo - (($desconto / 100) * $valorAPagar); // calcula desconto, e pra saber o valor a pagar ele subtrai com o valor original
                    echo "<br>Desconto de: " . $desconto . "%"; // diz quanto desconto tem
                    echo "<br>Você economizou: R$ " . $valorAPagarAntigo - $valorAPagar;  // diz quanto economizou pegando a diferença
                }

                echo "<br>Valor á Pagar: R$ " . $valorAPagar; // diz o valor a pagar



            ?>
        </h2>

    </div>
    
</body>
</html>