<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Listagem de Alunos Concluintes</title>
</head>
<body>
<a href="index.php" class="w3-display-topleft">
    <i class="fa fa-arrow-circle-left w3-large w3-teal w3-button w3-xxlarge"></i>     
</a> 
        <?php
            $servername = "localhost"; // variavel pra indicar o endereço do servidor, como estamos testando localmente no nosso PC, é localhost
            $username = "root"; // nome do usuário pro banco de dados
            $password = ""; // senha do usuário pro banco de dados
            $dbname = "db"; // nome do banco de dados
            $conexao = new mysqli($servername, $username, $password, $dbname); // nós criamos a conexão aqui com a informação passada anteriormente
            if ($conexao->connect_error) { 
                // caso $conexao->connect_error seja true, quer dizer que deu erro, então usamos die para indicar isso
                die("Connection failed: " . $conexao->connect_error);
            } 
                // escrever o conteudo html do site
                echo '
                <div class="w3-paddingw3-content w3-half w3-display-topmiddle w3-margin">
                <h1 class="w3-center w3-teal w3-round-large w3-margin">Listagem de Alunos Concluintes</h1>
                <table class="w3-table-all w3-centered">
                <thead>   
                    <tr class="w3-center w3-teal">
                        <th>Nome</th>
                        <th>Nota 1</th>
                        <th>Nota 2</th>
                        <th>Nota 3</th>
                        <th>Nota 4</th>
                        <th>Nota média</th>
                    </tr>
                <thead>
                ';                    
                $sql = "SELECT * FROM alunoconcluinte"; // criamos uma variavel chamada sql com um pequeno código sql que vamos usar para pegar a informação dos alunos concluintes 
                $resultado = $conexao->query($sql); // fazemos a query, que então vai retornar o resultado e vamos guardar este resultado no $resultado
                if($resultado != null) // se resultado for diferente de nulo, ou seja, se resultado não for nulo
                foreach($resultado as $linha) { // fazer um for no $linha, assim pegamos cada item da tabela
                    echo '<tr>';
                    echo '<td>'.$linha['nome'].'</td>'; // escrever o nome do aluno
                    echo '<td>'.$linha['nota1'].'</td>'; // escrever nota1 do aluno
                    echo '<td>'.$linha['nota2'].'</td>'; // escrever nota2 do aluno
                    echo '<td>'.$linha['nota3'].'</td>'; // escrever nota3 do aluno
                    echo '<td>'.$linha['nota4'].'</td>'; // escrever nota4 do alunno
                    echo '<td>'.(($linha['nota1'] + $linha['nota2'] + $linha['nota3'] + $linha['nota4']) / 4).'</td>'; // vou escrever a nota média somando todas as notas e dividindo elas
                    echo '</tr>';
                }
                echo '
                    </table>
                </div>'; // terminar a tabela html

            $conexao->close(); // fechar a conexão
        ?>
    </div>
</body>
</html>