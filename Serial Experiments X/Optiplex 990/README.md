## Optiplex 990 - Uma geração de softwares

<div align="center">
  <img src="assets/optiplex990.png" alt="Foto do Dell Optiplex 990" width="300">
  <p><em>Não esperem mais imagens, elas consomem muito espaço no github.</em></p>
</div>

---

# Introdução
O objetivo deste projeto é utilizar um antigo computador Dell Optiplex 990 para preservar softwares da era do windows xp e windows 7 que não são mais possíveis de serem utilizados em computadores recentes, mesmo através de emulação.

Talvez seja desnecessário dizer, isso foi feito com um uso pesado de inteligência artificial. Para essa tarefa, a IA é perfeita, pois trata-se de informações que apesar de obscuras para humanos, têm sido extensivamente discutidas ao passar das décadas, em fóruns de internet, que posteriormente foram usados para treinar esses modelos. 

Também foi necessário o uso de outras ferramentas populares, como o [The Internet Archive](https://archive.org), [Torrents](https://deluge-torrent.org/) e outros sites, que armazenavam as ferramentas, softwares e bibliotecas obsoletos, necessários para preservar e operar softwares deprecados.

No decorrer deste *Readme*, irei explicar melhor o contexto ao redor desse trabalho, detalhar minhas metas, o que fiz e como fiz para atingi-las.

---

# Dell Optiplex 990
Neste capítulo, será discutido os motivos que levaram à escolha do Dell Optiplex 990 para esse projeto.

## A brecha
Computadores muito antigos, como modelos populares dos anos 80, são simples o bastante para serem perfeitamente emulados até mesmo em aparelhos muito simples, como o raspberry pi. [Hobbystas](https://retropie.org.uk/) muitas vezes incluem imagens de emuladores com dezenas de milhares de softwares dessa época sem sequer avisar o público, isso porque a despeito do volume de programas, nessa época limitações de recursos implicavam que os softwares eram extremamente leves. Outros softwares mais antigos ainda, usados em universidades, são menores em volume, e caso ainda sejam importante, são mantidos vivos por essas insituições.

Existe, porém, um certo período de tempo, entre 1998 e 2014, em que houve uma explosão gigantesca do número de softwares, ocasionada pela popularização de computadores e da internet. Precisamente, dois sistemas operacionais são capazes de operar perfeitamente softwares feito durante essa época; o Windows XP 32 bits, e o Windows 7 64 bits. É possível que softwares daquele período funcionem em sistemas modernos (seja o windows atual ou mesmo utilizando [emuladores no linux](https://www.winehq.org/)), porém não é garantido. O motivo disso ocorrer, é que posterior a 2011, foram implementados padrões que garantem maior compatibilidade e estabilidade desses softwares. Programas feitos até esse momento (e até alguns anos depois, já que muitos programadores demoraram para se adaptar) não necessariamente seguiam tais regras, e sendo esse o caso, é muito provável que seus programas simplesmente pararam de funcionar. 

Windows XP e Windows 7 foram os sistemas operacionais mais importantes de uma época extremamente importante para o desenvolvimento da computação e da internet. Pode-se dizer sem erro, que a vasta maioria dos softwares mais importantes do planeta foram criados para esse sistema operacionais em específico, e muitos deles não funcionam mais por terem sido abandonados e não seguirem padrões pós 2011. Windows XP em particular, tem um bônus de possuir softwares proprietários que emulavam programas mais antigos, da época do windows 98.

Existe uma situação, então, na qual programas de computadores feitos até 1998 são facilmente emulados até mesmo por brinquedos, e programas feito após 2014 funcionam em qualquer computador atual por seguirem padrões rígidos de abstrações. A *Brecha* se encontra nesse período entre 1998 e 2014, que por coincidência, é onde um número gigantesco de programas criados por pessoas de todos os tipo ao redor do planeta foram criados, vendidos e usados. Uma grande quantidade desses softwares pode ser considerado, para todos os efeitos, <abbr title="Mídia que se acredita existir, mas que não está disponível ao público."><em>Lost Media</em></abbr>.

## Lost Media

A destruição ou perda de obras de arte, textos literários e outros trabalhos artísticos não é novidade na história. Porém, em nossa era, existe uma camada extra nesse tema, que se refere à perda de trabalhos artísticos feitos em formatos digitais, como vídeos, programas de computadores, animes e jogos eletrônicos. 

[Lost Media](https://en.wikipedia.org/wiki/Lost_media) é um termo recente que têm se tornado comum para pessoas que acessam a internet. <abbr title="Para mais detalhes, confira ''Lost Media'' no youtube"><em>Constantemente se vê o público discutindo sobre algum episódio de um programa de TV aberta que aconteceu algumas décadas atrás e que nunca mais se teve registro nenhum.</em> Eventualmente quando alguém encontra uma cópia do programa e traz ela para uma plataforma como o youtube, ela deixa de ser considerada *Lost Media*.

O exemplo mais dramático disso nos últimos anos foi o ataque ao Estúdio [*Kyoto Animation*](https://en.wikipedia.org/wiki/Kyoto_Animation_arson_attack), onde um incêndio criminoso causou 36 mortes, 33 feridos. Na ocasião, a sala de servidores do estúdio não foi afetada, porém isso serviu de alerta para o esforço de preservação. Nos últimos anos, têm havido no Japão um grande movimento, envolvendo inclusive figuras políticas, para preservar a vasta quantidade de produção cultural feita ao longo de décadas. Se trata de uma quantidade gigantesca de shows de tv, filmes, jogos e animes, em vários tipos de formatos, muitos dos quais em formatos obsoletos e condições precárias.

Logicamente, para pessoas comuns, não é possível montar um laboratório de alta tecnologia onde o processo de converter rolos de filmes antigos e fitas magnéticas em dados binários legíveis para sistemas operacionais modernos. Porém Lost Media não se trata apenas de dados que estão fisicamente inacessíveis. Se os programas estão disponíveis, porém não funcionam em sistemas operacionais atuais, eles ainda permanecem inacessíveis, e portanto, *perdidos*.

## O Optiplex 990

Supondo que você queira jogar um vídeo game antigo; o primeiro passo seria tentar instalar ele no seu sistema operacional atual. Se for windows, você irá clicar duas vezes no exe e ver o que acontece. No linux, você irá usar um programa de compatibilidade, como wine. O jogo não funciona em nenhum dos dois; depende de alguma biblioteca ou configuração antiga que não chegou aos nossos tempos. Em outras palavras, trata-se de um software que só estaria funcional em um sistema operacional antigo, como o windows xp. A partir daí, a opção evidente é *emular* o sistema original do programa em seu hardware atual, através de uma *Virtual Machine*. Emulação é algo recorrente no momento atual; existe uma grande comunidade de hobbistas e entusiastas que conseguem criar emuladores extremamente potentes para consoles de vídeo games que não existem mais, a ponto de que realmente não há nenhuma latência, stutter ou bugs quando você tenta rodar o jogo em sua máquina. Esse esforço comunitário em nível global é impressionante, porém não parece funcionar para algo tão complexo como um sistema operacional fechado, como é o caso do windows xp e windows 7. Virtual Machines para esses sistemas operacionais existem, e funcionam, porém elas não são perfeitas; se você quisesse fazer uma tarefa simples, como editar um texto em uma versão particularmente antiga do word, isso seria fácil. Mas no caso hipotético de rodar um jogo antigo, isso se torna inviável, pois haverá delay, screen tearing, o refresh rate da tela é sofrível, e outros bugs poderão surgir. Para todos os efeitos, um jogo que só funciona em uma versão específica do windows são *Lost Media* a menso que você use, fisicamente, um computador exclusivo com o sistema operacional que aquele software necessita.

Fazendo a comparação, novamente, com um emulador de um console antigo; imagine que estamos 10 anos no passado, quando o console PS2 já não estava a venda, porém o emulador mais avançado da época ainda estava engatinhando; tentar jogar um exclusivo PS2 era impossível naquele cenário. Você iria precisar comprar um PS2 usado para tanto. Atualmente, [PCX2](https://pcsx2.net/) trata-se de um emulador extremamente robusto, que funciona até mesmo em dispositivos androids, o que remove essa barreira. 

O leigo talvez seja levado a pensar que, para resolver o embróglio de acessar softwares antigos, bastaria comprar um computador barato de nossa época, instalar o sistema operacional da época e realizar a emulação. Porém isso não é possível quando falamos do Windows XP e do Windows 7; tratam-se de sistemas proprietários, que utilizavam tecnologias antigas que se tornaram obsoletas conforme os anos passaram. Isso significa que, ao tentar instalar qualquer desses sistemas em um computador novo, o usuário sequer conseguirá passar da tela de boot, já que o instalador do sistema operacional não irá reconhecer as tecnologias e modos de booting atuais. 

É necessário, então, utilizar um computador da época em que esses sistemas ainda estavam em uso. Mas qual?