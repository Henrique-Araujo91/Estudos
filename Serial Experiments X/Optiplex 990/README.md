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

Machado de assis escreve, em Memórias Póstumas de Brás Cubas, que a versão final do ser humano, a mais completa, é dada aos vermes, porque a evolução constante acaba quando a morte chega. Tirando essa lógica mórbida do contexto humano, e levando ela para o mundo da computação, isso implica que o melhor hardware possível para emular softwares de uma era passada, é um computador que surgiu no final daquela época, sendo, evidentemente, o hardware mais avançado que jamais será criado para tais sistemas.

*Para esse projeto, foi escolhido o Desktop Dell Optiplex 990 DT, pois, lançado em 2011, foi um computador extremamente popular, com amplo suporte, e um dos últimos a ter suporte para Windows XP.*

Lembrando o cronograma de eventos até o momento;
+ Windows XP surgiu em 2001, foi deprecado em 2009, porém recebeu suporte até 2014;
+ Windows 7 surgiu em 2009, foi deprecado em 2015, porém recebeu suporte até 2020;
+ Optiplex 990 surgiu em 2011, numa época de transição, em que o suporte ao Windows xp ainda era necessário, e no apogeu do  Windows 7.

É seguro dizer que o Optiplex é perfeito para essa tarefa, pois representa o melhor hardware feito para aquela época, enquanto oferece suporte total para esses sistemas operacionais. No ano de 2026, o hardware continua sendo bastante robusto até mesmo para sistemas operacionais atuais, porém o ponto de maior interesse não se trata meramente de poder computacional bruto, e sim da relação hardware/software, que foi aprimorada por uma geração inteira de programadores empresariais ao redor do planeta. 

## Anexos

O objetivo e a escolha do hardware base resolvem o núcleo do problema, porém para a aplicação do projeto, outras ferramentas são necessárias, tanto de software, quando de hardware. Tratam-se dos próprios sistemas operacionais, de drivers, programas antigos e esquecidos mantidos por hobbistas, configurações obscuras de 20 anos atrás, e, logicamente, da estrela do projeto; os softwares a serem resgatados do esquecimento. Do lado de hardware, discutirei informações importantes como a configuração escolhida para operar o computador, detalhes de configuração da bios e pequenos entraves e decisões que surgiram no caminho.

No decorrer dos capítulos, irei detalhar o caminho a se percorrer para ter acesso a todos esses recursos.

---

# Capítulo 1 - Abstração Zero
Abstração, no contexto de programação, é um termo empregado para separar uma ideia (nível de abstração máximo), de sua aplicação física dentro dos circuítos integrados de computador (abstração mínima). Porém, em computação, o número zero também é muito usado no contexto de "infinito"; quando um programa pede um valor numérico para repetição de uma determinada tarefa, zero pode vir a tomar o lugar de um valor infinito.

## Uma Supernova vista de [FarFarOut](https://en.wikipedia.org/wiki/2018_AG37)

Computadores são usados por humanos [há bastante tempo](https://en.wikipedia.org/wiki/Abacus), e mesmo computadores da forma como o conhecemos hoje, já tem uma longa [história](https://en.wikipedia.org/wiki/A_Symbolic_Analysis_of_Relay_and_Switching_Circuits), outras infraestruturas relacionadas, como a [internet](https://en.wikipedia.org/wiki/DARPA), estão sendo usadas para fins militares, igualmente por várias gerações, e claramente envolveram uma quantidade gigantesca de trabalho, de um exército de pesquisadores e desenvolvedores ao longo das décadas. Porém até muito recentemente, todo esse trabalho estava inacessível ao público em geral. A população, claro, era afetada pelo desenvolvimento das tecnologias, de uma maneira ou de outra, mas não podia interargir com ela, já que a complexidade, a falta de escalonamento, os altos custos, e, naturalmente, o sigilo militar, colocavam as pessoas comuns como um público espectador que tinha acesso a algumas benesses desses avanços, mas sem ter contato com ele.

Computadores pessoais se tornaram baratos o suficiente a partir da década de 80. Porém ainda eram raros e não possuiam acesso a internet. Já naquela época houve uma explosão na criação de softwares, que hoje podem ser baixados em poucos segundos; devido a limitação de recursos daqueles aparelhos, mesmo dezenas de milhares de jogos e softwares caberiam em um microsd barato com muita folga.

O evento crítico começou em meados dos anos 90; os computadores se tornaram potentes e complexos o suficiente para que programas elaborados pudessem ser criados, a indústria do cinema começou a usar extensivamente [Computer-generated imagery](https://en.wikipedia.org/wiki/Computer-generated_imagery), em filmes que rapidamente cativavam o público, como Toy Story e Titanic, e mais importante; a internet começava a ser disponibilizada para pessoas comuns.

Após várias gerações de desenvolvimento acelerado, a tecnologia computacional explodia em algo que pode ser descrito como uma [Supernova](https://en.wikipedia.org/wiki/Supernova), particularmente em países de primeiro mundo, como Japão e Estados Unidos, onde um grande número de pessoas possuia recursos para estar na vanguarda desse evento.

Registros culturais que cristalizam essa época são raros, mas existem. Em 1998, a obra [Serial Experiments Lain](https://en.wikipedia.org/wiki/Serial_Experiments_Lain) é lançada. Ironicamente, até hoje muitas pessoas reclamam que *parecem* não entender do que se trata, sendo que esse era justamente o núcleo da narrativa; a internet era algo novo, revolucionário, estranho, incompreensível. De certa forma, continua sendo até hoje.

Sobre a internet em si, naquela época, pouquíssimos registros ainda permanecem; apesar da função *printscreen* já existir há muito tempo, no meio de todas aquelas inovações, registrar uma captura de tela faria tanto sentido quanto fotografar uma pedra num evento histórico importante. Um dos poucos registros que se tem notícia foi feito no filme *Deep Impact (1998)*, onde uma jornalista utiliza um buscador primitivo de internet sobre uma garota chamada [ELE](https://en.wikipedia.org/wiki/Extinction_event#In_media) que estaria tendo um caso com um político importante, e acaba caindo em uma página do [Departamento de Paleontolgia de Berkley](https://ucmp.berkeley.edu/); ELE na verdade era uma sigla referente a eventos de extinção em massa, no caso, um meteoro.

<div align="center">
<a href="https://www.youtube.com/watch?v=PcxlySSGtCc" target="_blank">
 <img src="../../assets/w7-video-thumbnail.png" alt="Veja o vídeo" width="480" height="360"/>
</a>
</div>

Houve um período de tempo em que a internet era recheada de páginas longas de instuitições educacionais explicando eventos históricos ou debatendo em detalhes tópicos de todos os tipos. A rolagem de página parecia ser infinita nos pequenos monitores crt, e apesar das limitações técnicas, o conteúdo carregava rapidamente, pois as poucas imagens disponíveis eram extremamente pequenas.

[Mundos virtuais inteiros surgiram para quem estava no lugar e nas condições certas](https://www.youtube.com/watch?v=8naR1EUSduo), e em 1998 seria seguro dizer, foi o momento que essa supernova atingiu praticamente todos os habitantes do primeiro mundo, não se tratando mais de um privilégio, mas de uma tecnologia popularizada que estava chegando ao alcance do público em geral.

Em 1998, eu tinha apenas 6 anos, e morava num dos locais mais isolados do planeta em termos de tecnologia. Mesmo naquela época, porém, eu tinha acesso a computadores; computadores obsoletos dos anos 80 doados a minha escola, ou computadores mais modernos de parentes, que apesar de não ter internet, já possuiam jogos 3d da época. Em 2003, as ondas de choque da Supernova finalmente iriam me atingir; naquele ano, meu pai adquiriu um computador com acesso à internet discada; com alguns anos de atraso, eu sentiria o calor da explosão, mesmo que vista de uma grande distância do centro.

Era difícil para mim, naquela época, entender como algo tão conveniente poderia ser dado de graça. Ainda se vendia enciclopédias enormes, por preços absurdos, e elas não possuiam tanta interatividade e tanto conteúdo quanto a internet, mesmo que naquela época a internet brasileira fosse minúscula. Jogos de computadores já eram vendidos em [*CDRoms*](https://digerati.vinizinho.net/) junto com revistas a preços exorbitantes (em especial para crianças), e foi um grande avanço quando eu finalmente aprendi a descompactar arquivos em formatos zip.

---

# Capítulo 2 - A Missão do Rei - Máscara da Eternidade

*CDRoms* com softwares estavam a venda, mas eram extremamente caros. Rapidamente se criou uma cultura em que se emprestava o cd, era feito uma cópia e ambas as pessoas possuiam o software. As cópias eram feitas por lojas, e mais tarde, conforme as pessoas foram adquirindo hardwares mais capazes, em seus próprios computadores, com leitores capazes de ler e escrever discos. Logicamente as empresas correram atrás de medidas anti pirataria, que eram  contornadas por softwares mais sofisticados, em uma corrida de gato e rato. Creio que [Nero](https://en.wikipedia.org/wiki/Nero_Burning_ROM) foi o ápice dessa época.

Dessa época ainda me restam dúzias, talvez centenas de *CDRoms*, muitos originais e outros meras cópias. Surpreendentemente eles continuam funcionando até hoje, prova da resiliência dessa tecnologia.

