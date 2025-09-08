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

    <div class="w3-container w3-black">

        <h2>8º ano A</h2>

    </div>

    <form class="w3-container" method="post" action="notas8a.php">

        <br>

        <table class="w3-table-all w3-hoverable">

            <thead>

                <tr class="w3-light-black">
                    <th>Nome</th>
                    <th>Primeiro Semestre</th>
                    <th>Segundo Semestre</th>
                    <th>Terceiro Semestre</th>
                    <th>Quarto Semestre</th>
                    <th>Média aluno</th>
                </tr>
            </thead>

            <tbody>

                <?php

                include 'notas8a.php'; // como está em arquivo separado tem que incluir
                
                foreach ($alunos as $aluno) { // eu decidi fazer foreach invés de for comum ok?, então ele está dizendo que $aluno é o $alunos[$i] que está iterando

                    // criamos uma variavel e guardamos nela a media calculada, pra isso somamos todas as notas e por fim dividimos pela quantidade de semestres que é 4
                    $media = ($aluno['sem1'] + $aluno['sem2'] + $aluno['sem3'] + $aluno['sem4']) / 4; 

                    if ($media >= 6.0) { // se maior ou igual a 6 então é aprovada
                        echo "<tr class='w3-light-green'>"; // colocar tr pra criar uma table row verde, ou seja nota aprovada
                    }
                    else { // se menor que 6 então é reprovada
                        echo "<tr class='w3-red'>"; // colocar tr pra criar uma table row vermelha, ou seja nota reprovada
                    }
                    echo "<td>" . $aluno['nome'] . "</td>"; // e colocar td para criar table datas com as informações
                    echo "<td>" . $aluno['sem1'] . "</td>";
                    echo "<td>" . $aluno['sem2'] . "</td>";
                    echo "<td>" . $aluno['sem3'] . "</td>";
                    echo "<td>" . $aluno['sem4'] . "</td>";
                    echo "<td>" . $media . "</td>";
                    echo "</tr>";

                    // tudo isso vai ser repetido para cada aluno porem o valor de $aluno vai mudar de acordo com o $aluno
                    // que esta sendo iterado no loop, ele vai primeiro no aluno 0, depois no 1, e depois no 2, então quando for 2 ele vai acessar $alunos[2]['nome']
                }
                ?>

            </tbody>


        </table>

    </form>
</body>

</html>