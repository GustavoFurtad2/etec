<!DOCTYPE html>

<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GET e POST</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

    <div>
    <form id="form1" name="form1" method="post">
    <br>
    Nome<br> <input name="nome" type="text" id="nome" placeholder = "Digitar
    Nome">
    <br>
    <br>
    Idade<br><input name="idade" type="text" id="idade" placeholder = "Ex.: 18">
    <br>
    <br>
    Profissão<br><input name="profi" type="text" id="profi" placeholder = "Ex:
    Professor">
    <br>
    <br>
    Salário Pretendido<br><input name="sal" type="text" id="sal" placeholder = "Ex: 1000"><br>

    <br>
    Experiencia Anterior<BR><textarea name="antexp" id="antexp" rows="5" cols="40" placeholder="Diga para nós sobre sua experiência anterior"></textarea><BR>
    <input name="Enviar" type="submit" id="enviar" value="enviar">
    </form>

    </div>
    <BR>
        <div>
    <?php

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $nome = $_POST['nome'];
        $idade = $_POST['idade'];
        $profi = $_POST['profi'];
        $sal = $_POST['sal'];
        $antexp = $_POST['antexp'];

        echo "Nome: " . $nome;
        echo "Idade: " . $idade;
        echo "Profissão: " . $profi;
        echo "Salário Pretendido: " . $sal;
        echo "Experiencia Anterior: " . $antexp;
    }

    ?>
    </div>
</body>
</html>