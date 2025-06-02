Video Mineirinho NES

Introdução:

    1:

    Eu recriei o Mineirinho Ultra Adventures pro Nintendinho!
    Sim o Game Of the Year do Brasil, no nintendinho, e em assembly!

    Pera pera pera ai... você deve ta pensando pq eu fiz isso?
    Se você acompanha os meus videos você sabe que eu gosto muito de mexer com playstation 2,
    mas, eu ainda apenas mexo com engines, oque faz que eu apenas entenda oque eu estou fazendo
    de forma super abstraída,(lembrando que assembly é o codigo mais proxima da maquina, q para mts é dificil e complicado)
    e para aprofundar meus conhecimentos, vai ser necessário, não aprender 1 assembly,
    mas sim vários tipos de assembly, o assembly 6502 que é oque o NES usa é um dos mais simples,
    e eu pensei em fazer um jogo, e pensei em trasformar em conteúdo aqui pro canal, e por isso
    eu escolhi o melhor do jogo do brasil, e voâ-la estamos aqui,

    1.1:

    Maass, você deve se ta se perguntando, como que é possivel criar jogos pra um console antigo,
    ou melhor como as ferramentas oficiais de um kit de desenvolvimento funciona?

    A resposta é bem, simples, não apenas em console, mas em qualquer hardware há um código assembly
    para que você possa manndar o hardware ou o computador fazer alguma coisa, ou seja instruções.

    Os kit de desenvolvimento e linguagens de programação, bem como outras tecnologias são abstrações para
    facilitar nossa vida, ou seja vc apenas precisa criar um codigo que fale a linguagem do hardware q tu quer
    usar,

    se eu aprender os assemblys que o ps2 têm, eu consigo ter um grande controle do hardware e otimizar e criar jogos, 
    bem como meus proprios sistemas,

Ferramentas:

    A primeira ferramenta que vamos precisar é um compilador de assembly, que o caso é o ca65, esse especificamente
    porque ele é o assembly 6502 que o NES utiliza,

    a segunda vai ser o YY-Chr, nele vamos poder desenhar nossos graficos por tiles.

    a terceira ferramenta vai ser o NEXXT, onde vamos poder configurar e montar o nosso mapa

Visão geral do hardware:

    Agora vamos fazer uma visão geral do hardware, aqui eu não vou abordar de forma técnica pq isso é um video de entretenimento,
    o processador(ou cpu tanto faz como vc chama), então o processador do NES é um Ricoh 2A03, é nele que vamos fazer as instruções,
    onde o assembly de fato vai rodar,
    a seguir temos a PPU, que significa, Picture Process Unit, ou Unidade de Processamento de Imagem, é nela que vai sair os nossos gráficos,
    e a ultima que vou citar aqui é a APU, que significa, Audio Process Unit, ou Unidade de Processamento de Audio, o chip da APU do NES tem o nome
    de RP2A03, é nela que obviamente vai sair o nosso som

Observação:

    Uma observação mt interresante é q diferente de outros consoles, o NES trabalha diretamente com sprites, vc n pode desenhar pixel a pixel, vc desenha
    um sprite inteiro,

Limitações:

    O nes tem algumas limitações a ser consideradas, uma das que mais me impactou é as paletas e a quantidade de sprites por scanline,
    se você não sabe oque é scanline, em uma tv de tubo oq ta sendo mostrado é alterado por linhas, a limitação é q vc n pode ter mais de 7 sprites
    por linhas horizontais, senão o sprite ele não aparece, eu sei que tu pode ta se perguntando ent como alguns jogos n some, existem dois tipos de sprites no nes,
    o sprite normal, e o background sprites,
    quanto as paletas, você pode ter 8 paletas ao mesmo tempo, 4 para os sprites comuns, e 4 para os backgrouds sprites, a vantagem de usar sprites comuns
    é q é mais facil de lidar e atualizar eles, cada paleta tem 4 cores, contudo uma cor é usada para transparencia, é eu não vou entrar em detalhes neste video sobre essa parte,
    ent vamos dizer que existe "3" cores numa paleta, contudo, em um sprite vc n pode usar uma cor da paleta 1 e outra cor da paleta 3, vc apenas pode usar cores de uma só paleta,
    ent eu tive q montar as paletas de forma bem distribuida para tentar tirar um proveito bom, uma técnica q eu usei é empilhar vários sprites para assim ent conseguir ter varias cor
    no mineiriinho, obviamete tendo cuidado para os sprites sumirem, (esse tbm foi o motivo dele ficar calvo)


    Você pode ter 64 sprites carregados na memoria, cada um usando 4 bytes na memória, o primeiro byte de um sprite é o Y, ou seja a posição Y dele no jogo, ja o segundo byte indica qual o tile
    do nosso arquivo chr que é o nosso tileset que vai ser utilizadao, o terceiro byte indica várias propriedades, como inverter o sprite na hora de desenhar, e escolher a paleta entre outras propriedades,
    e o ultimo byte de um sprite é a posição X dele no mapa.

Um exemplo de código simples que eu posso demonstrar para você seria um código que adiciona 1 ponto a pontuação do jogador:

    Primeiros carregamos no registrador X a quantidade de pontos que um jogador tem, falando de forma simples, o registrador X é uma caixinha especial que podemos colocar números dentro dele e fazer algumas operações,
    no caso como eu especifiquei que eu quero os pontos atuais do jogador, ele vai aonde está os pontos do jogador na memória e bota dentro dessa caixinha, a seguir no nosso código,
    utilizamos a instrução INX, a instrução INX vai pegar o registrador X e adicionar um número apenas no registradorX, depois disso utilizamos STX onde são guardados os pontos do jogador,
    então a soma que fizermos no registradorX vai para o local da memória onde os pontos do jogador estão guardados, então com isso conseguirmos adicionar 1 ponto ao jogador.

    