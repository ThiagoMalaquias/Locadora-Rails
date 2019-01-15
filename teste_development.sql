-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2019 a las 04:28:14
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `teste_development`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-12-15 01:14:27', '2018-12-15 01:14:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cats`
--

CREATE TABLE `cats` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cats`
--

INSERT INTO `cats` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Ação', '2018-12-11 17:23:17', '2018-12-11 17:23:17'),
(2, 'Suspense', '2018-12-11 17:23:31', '2018-12-11 17:23:31'),
(3, 'Comédia', '2018-12-11 17:27:10', '2018-12-11 17:27:42'),
(4, 'Terror', '2018-12-11 17:27:54', '2018-12-11 17:27:54'),
(5, 'Aventura', '2018-12-11 17:28:13', '2018-12-11 17:28:13'),
(6, 'Ficção Cientifica', '2018-12-11 17:28:35', '2018-12-11 17:28:35'),
(7, 'Drama', '2018-12-11 17:28:49', '2018-12-11 17:28:49'),
(8, 'Musicais', '2018-12-11 17:29:02', '2018-12-11 17:29:02'),
(9, 'Romance', '2018-12-11 17:29:18', '2018-12-11 17:29:18'),
(10, 'Fantasia', '2018-12-11 17:29:29', '2018-12-11 17:29:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classis`
--

CREATE TABLE `classis` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `classis`
--

INSERT INTO `classis` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'L', '2018-12-11 17:42:38', '2018-12-11 17:42:38'),
(2, '12 anos', '2018-12-11 17:43:39', '2018-12-11 17:43:39'),
(3, '14 anos', '2018-12-11 17:44:00', '2018-12-11 17:44:00'),
(4, '16 anos', '2018-12-11 17:44:23', '2018-12-11 17:44:23'),
(5, '18 anos', '2018-12-11 17:44:35', '2018-12-11 17:44:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filmes`
--

CREATE TABLE `filmes` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `duracao` varchar(255) DEFAULT NULL,
  `diretor` varchar(255) DEFAULT NULL,
  `sinopse` varchar(3000) DEFAULT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `classi_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `ano`, `duracao`, `diretor`, `sinopse`, `cat_id`, `classi_id`, `created_at`, `updated_at`) VALUES
(1, 'Vingadores', 2018, '2h36min', 'Joss Whedon', 'Thanos (Josh Brolin) enfim chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.', 1, 2, '2018-12-14 13:04:45', '2019-01-03 01:57:08'),
(2, 'Batman', 2008, '2h 27min', 'Christopher Nolan', 'Após dois anos desde o surgimento do Batman (Christian Bale), os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman) e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado. Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.', 2, 1, '2018-12-14 13:17:05', '2018-12-18 11:33:20'),
(3, 'Velozes & Furiosos 7', 2015, '2h 17min', 'James Wan', 'Após os acontecimentos em Londres, Dom (Vin Diesel), Brian (Paul Walker), Letty (Michelle Rodriguez) e o resto da equipe tiveram a chance de voltar para os Estados Unidos e recomeçarem suas vidas. Mas a tranquilidade do grupo é destruída quando Deckard Shaw (Jason Statham), um assassino profissional, quer vingança pela morte de seu irmão. Agora, a equipe tem que se reunir para impedir este novo vilão. Mas dessa vez, não é só sobre ser veloz. A luta é pela sobrevivência.', 1, 3, '2018-12-14 15:31:36', '2018-12-18 11:34:21'),
(4, 'DIAS DE UM FUTURO ESQUECIDO', 2014, '2h 12min', 'Bryan Singer', 'No futuro, os mutantes são caçados impiedosamente pelos Sentinelas, gigantescos robôs criados por Bolívar Trask (Peter Dinklage). Os poucos sobreviventes precisam viver escondidos, caso contrário serão também mortos. Entre eles estão o professor Charles Xavier (Patrick Stewart), Magneto (Ian McKellen), Tempestade (Halle Berry), Kitty Pryde (Ellen Page) e Wolverine (Hugh Jackman), que buscam um meio de evitar que os mutantes sejam aniquilados. O meio encontrado é enviar a consciência de Wolverine em uma viagem no tempo, rumo aos anos 1970. Lá ela ocupa o corpo do Wolverine da época, que procura os ainda jovens Xavier (James McAvoy) e Magneto (Michael Fassbender) para que, juntos, impeçam que este futuro trágico para os mutantes se torne realidade.', 1, 2, '2018-12-15 22:33:25', '2019-01-12 01:48:34'),
(5, 'Matrix', 1999, '2h 15min', 'Lana Wachowski, Lilly Wachowski', 'Em um futuro próximo, Thomas Anderson (Keanu Reeves), um jovem programador de computador que mora em um cubículo escuro, é atormentado por estranhos pesadelos nos quais encontra-se conectado por cabos e contra sua vontade, em um imenso sistema de computadores do futuro. Em todas essas ocasiões, acorda gritando no exato momento em que os eletrodos estão para penetrar em seu cérebro. À medida que o sonho se repete, Anderson começa a ter dúvidas sobre a realidade. Por meio do encontro com os misteriosos Morpheus (Laurence Fishburne) e Trinity (Carrie-Anne Moss), Thomas descobre que é, assim como outras pessoas, vítima do Matrix, um sistema inteligente e artificial que manipula a mente das pessoas, criando a ilusão de um mundo real enquanto usa os cérebros e corpos dos indivíduos para produzir energia. Morpheus, entretanto, está convencido de que Thomas é Neo, o aguardado messias capaz de enfrentar o Matrix e conduzir as pessoas de volta à realidade e à liberdade.', 1, 1, '2018-12-16 00:13:17', '2018-12-18 11:32:48'),
(6, 'Logan', 2017, '2h 17min', 'James Mangold', 'Em 2029, Logan (Hugh Jackman) ganha a vida como chofer de limousine para cuidar do nonagenário Charles Xavier (Patrick Stewart). Debilitado fisicamente e esgotado emocionalmente, ele é procurado por Gabriela (Elizabeth Rodriguez), uma mexicana que precisa da ajuda do ex-X-Men para defender a pequena Laura Kinney / X-23 (Dafne Keen). Ao mesmo tempo em que se recusa a voltar à ativa, Logan é perseguido pelo mercenário Donald Pierce (Boyd Holbrook), interessado na menina.', 6, 4, '2018-12-19 01:28:07', '2018-12-19 01:28:07'),
(7, 'Scarface', 1984, '2h45min', 'Brian De Palma', 'Um criminoso cubano exilado (Al Pacino) vai para Miami e em pouco tempo está trabalhando para um chefão das drogas. Sua ascensão na quadrilha é meteórica, mas quando ele começa a sentir interesse na amante do chefe (Michelle Pfeiffer) este manda matá-lo. No entanto ele escapa do atentado, mata o mandante do crime, fica com a amante dele - mas simultaneamente sente desejos incestuosos por sua irmã (Mary Elizabeth Mastrantonio) - e assume o controle da quadrilha. Em pouco tempo ele ganha mais dinheiro do que jamais sonhou. No entanto ele está na mira dos agentes federais, que o pegam quando ele está \"trocando\" dinheiro. Mas seu problema pode ser resolvido se ele fizer um \"serviço\" em Nova York para um grande traficante e pessoas influentes, que podem manipular o poder para ajudá-lo. Porém, a missão toma um rumo inesperado quando, para concretizá-la, ele precisa matar crianças.', 7, 5, '2018-12-19 01:29:36', '2018-12-19 01:29:36'),
(8, 'O Exterminador do Futuro 2', 1991, '2h 15min', 'James Cameron', 'Uma criança destinada a ser líder (Edward Furlong) já nasceu, mas infeliz por viver com pais adotivos, pois foi privado da companhia da mãe (Linda Hamilton), que foi considerada louca quando falou de um exterminador vindo do futuro. Neste contexto, um andróide (Arnold Schwarzenegger) vem do futuro, mais exatamente um modelo T-800 igual ao filme original, para proteger o garoto, mas existe um problema: o mais avançado andróide existente no futuro, um modelo T-1000 (Robert Patrick), que feito de \"metal líquido\", não pode ter nenhum dano permanente e pode assumir a forma que desejar, também veio para o passado com a missão de matar o menino.', 6, 2, '2018-12-19 01:32:19', '2018-12-19 01:32:19'),
(9, 'Divinas Divas', 2017, '1h 50min', 'Leandra Leal', 'Rogéria, Valéria, Jane Di Castro, Camille K, Fujika de Holliday, Eloína dos Leopardos, Marquesa e Brigitte de Búzios formaram, na década de 1970, o grupo que testemunhou o auge de uma Cinelândia repleta de cinemas e teatros. O documentário acompanha o reencontro das artistas para a a montagem de um espetáculo, trazendo para a cena as histórias e memórias de uma geração que revolucionou o comportamento sexual e desafiou a moral de uma época.', 8, 3, '2018-12-19 16:28:06', '2018-12-19 16:28:06'),
(10, 'Guardiões da Galáxia', 2014, '2h 01min', 'James Gunn', 'Peter Quill (Chris Pratt) foi abduzido da Terra quando ainda era criança. Adulto, fez carreira como saqueador e ganhou o nome de Senhor das Estrelas. Quando rouba uma esfera, na qual o poderoso vilão Ronan, da raça kree, está interessado, passa a ser procurado por vários caçadores de recompensas. Para escapar do perigo, Quill une forças com quatro personagens fora do sistema: Groot, uma árvore humanóide (Vin Diesel), a sombria e perigosa Gamora (Zoe Saldana), o guaxinim rápido no gatilho Rocket Racoon (Bradley Cooper) e o vingativo Drax, o Destruidor (Dave Bautista). Mas o Senhor das Estrelas descobre que a esfera roubada possui um poder capaz de mudar os rumos do universo, e logo o grupo deverá proteger o objeto para salvar o futuro da galáxia.', 6, 2, '2018-12-19 01:36:53', '2018-12-19 01:36:53'),
(11, 'Whiplash - Em Busca da Perfeição', 2008, '1h 47min', 'Damien Chazelle', 'O solitário Andrew (Miles Teller) é um jovem baterista que sonha em ser o melhor de sua geração e marcar seu nome na música americana como fez Buddy Rich, seu maior ídolo na bateria. Após chamar a atenção do reverenciado e impiedoso mestre do jazz Terence Fletcher (JK Simmons), Andrew entra para a orquestra principal do conservatório de Shaffer, a melhor escola de música dos Estados Unidos. Entretanto, a convivência com o abusivo maestro fará Andrew transformar seu sonho em obsessão, fazendo de tudo para chegar a um novo nível como músico, mesmo que isso coloque em risco seus relacionamentos com sua namorada e sua saúde física e mental.', 7, 2, '2018-12-19 01:40:04', '2018-12-19 01:40:04'),
(12, 'O Som do Coração', 2008, '1h 53min', 'Kirsten Sheridan', 'August Rush (Freddie Highmore) é resultado do encontro casual entre um guitarrista e uma violoncelista. Crescido em orfanato e dotado de um dom musical impressionante, ele se apresenta nas ruas de Nova York ao lado do divertido Wizard (Robin Williams). Contando apenas com seu talento musical, August decide usá-lo para tentar reencontrar seus pais.', 9, 1, '2018-12-19 01:41:39', '2018-12-19 01:41:39'),
(13, 'Ela Dança, Eu Danço 4', 2012, '1h 34min', 'Scott Speer', 'Emily (Kathryn McCormick) é a filha de uma ocupada empresária que chega a Miami com o sonho de se tornar dançarina profissional. Logo ela se apaixona por Sean (Ryan Guzman), o responsável por criar elaboradas danças para a realização de flash mobs, aglomerações instantâneas de pessoas em um lugar público para realizar uma ação previamente combinada. Líder de um grupo chamado MOB, Sean resolve participar de uma disputa que pode render uma oportunidade de patrocínio.', 7, 1, '2018-12-19 01:44:23', '2018-12-19 01:44:23'),
(14, 'O Estranho Mundo de Jack', 1993, '1h 15min', 'Henry Selick', 'Jack Skellington (Chris Sarandon) é um ser fantástico que vive na Cidade do Halloween, um local cercado por criaturas fantásticas. Lá todos passam o ano organizando o Halloween do ano seguinte mas, após mais um Halloween, Jack se mostra cansado de fazer aquilo todos os anos. Assim ele deixa os limites da Cidade do Halloween e vagueia pela floresta. Por acaso acha alguns portais, sendo que cada um leva até um tipo festividade. Jack acaba atravessando o portal do Natal, onde vê demonstrações do espírito natalino. Ao retornar para a Cidade do Halloween, sem ter compreendido o que viu, ele começa a convencer os cidadãos a sequestrarem o Papai Noel (Edward Ivory) e fazerem seu próprio Natal. Apesar de argumentos fortes de sua leal namorada Sally (Catherine O\'Hara) contra o projeto, o Papai Noel é capturado. Mas os fatos mostrarão que Sally estava totalmente certa.', 10, 1, '2018-12-19 01:46:30', '2018-12-19 01:46:30'),
(15, 'Dirty Dancing - Ritmo Quente', 1987, '1h 40min', 'Emile Ardolino', 'Em 1963, Frances Houseman (Jennifer Grey), ou \"Baby\", como é chamada pela família, uma jovem de 17 anos, viajou com seus pais, Marjorie (Kelly Bishop) e Jake Houseman (Jerry Orbach) e sua irmã Lisa (Jane Brucker) para um resort em Catskills. Ao contrário de Lisa, que pensa em roupas, Frances é idealista e quer estar no próximo verão no Corpo da Paz estudando a economia dos países do Terceiro Mundo. Assim, ela espera que este seja o último verão como uma adolescente despreocupada, mas Baby não se dá muito bem com sua irmã mais velha e está entediada em tentar distrair os hospedes mais velhos (foi envolvida nesta situação por seu pai). Até que numa noite Baby ouve algo que parece ser um som de festa no alojamento dos funcionários (que os hospedes não podem ter acesso). Ela consegue entrar na festa graças a um empregado e descobre que ali o pessoal realmente se diverte com danças, que Max Kellerman (Jack Weston), o dono do hotel, não permite. Baby chega a dançar com Johnny Castle (Patrick Swayze), um professor de dança, e logo fica apaixonada por ele. Quando Penny Johnson (Cynthia Rhodes), a parceira de dança de Johnny, fica grávida por ter se envolvido com Robbie Gould (Max Cantor), um dos garçons, Baby se oferece para aprender a dançar e substituir Penny, mas o pai de Baby, quando descobre, não gosta disto, pois considera que Johnny é de outra classe social e Baby é jovem demais para entender seus sentimentos.', 9, 2, '2018-12-19 01:49:55', '2018-12-19 01:49:55'),
(16, 'Tini - Depois de Violetta', 2016, '1h 39min', 'Juan Pablo Buscarini', 'Inspirado na aclamada série do Disney Channel, o filme narra uma nova fase na vida de Violetta (Martina Stoessel). Em crise no relacionamento com León (Jorge Blanco), e cansada da vida atarefada de celebridade, ela decide se aposentar e passar um tempo na Itália, procurando sua verdadeira identidade. Enquanto conhece novos amigos e um novo pretendente, Violetta descobre segredos sobre seu passado, e estabelece novos rumos para o futuro.', 3, 2, '2018-12-19 01:51:59', '2018-12-19 01:51:59'),
(17, 'A Escolha Perfeita 2', 2015, '1h 54min', 'Elizabeth Banks', 'Após conquistarem o sucesso, as Barden Bellas ganham a oportunidade de se apresentar para ninguém menos que o presidente dos Estados Unidos. Só que o show é um grande fiasco, o que as torna uma vergonha nacional. Diante do ocorrido, as Bellas são proibidas de participar de competições no meio acadêmico e até mesmo de aceitar novas integrantes. A única saída de Beca (Anna Kendrick), Fat Amy (Rebel Wilson) & cia é vencer o campeonato mundial a capela, o que apagaria as punições aplicadas ao grupo. Mas há um problema: nunca uma equipe americana venceu o torneio.', 3, 2, '2018-12-19 01:53:29', '2018-12-19 01:53:29'),
(18, 'Mesmo Se Nada Der Certo', 2014, '1h 44min', 'John Carney', 'Uma cantora (Keira Knightley) se muda para Nova Iorque, mas logo após chegar no local, seu namorado americano decide terminar o relacionamento. Em plena crise, ela começa a cantar em bares, até ser descoberta por um produtor de discos (Mark Ruffalo), certo de que ela pode se tornar uma estrela.', 7, 2, '2018-12-19 01:55:09', '2018-12-19 01:55:09'),
(19, 'Cinderela', 1950, '1h 15min', 'Hamilton Luske ', 'Cinderela (Ilene Woods/ Simone de Morais) vive com sua madrasta, Lady Tremaine (Eleanor Audley/ Tina Vita), e as duas filhas dela. Obrigada a trabalhar como empregada da casa, ela tem como amigos apenas os animais que a rodeiam. O local em que vive está agitado devido ao baile que será realizado no castelo, o qual contará com a presença do príncipe (William Phipps/ Jorge Goulart). Como Lady Tremaine pretende que uma das filhas se case com ele, elas se preparam com requinte para o evento. Cinderela, entretanto, não pode ir. Até que surge a Fada-madrinha (Verna Felton/ Maria Helena Pader), que dá a Cinderela um vestido e condições para que possa ir ao baile em alto estilo. Entretanto há uma condição: Cinderela precisa retornar antes da meia-noite, caso contrário o feitiço será desfeito.', 10, 1, '2018-12-19 01:57:08', '2018-12-19 01:57:08'),
(20, 'Mamma Mia', 2008, '1h 50min', 'Phyllida Lloyd', '1999, na ilha grega de Kalokairi. Sophie (Amanda Seyfried) está prestes a se casar e, sem saber quem é seu pai, envia convites para Sam Carmichael (Pierce Brosnan), Harry Bright (Colin Firth) e Bill Anderson (Stellan Skarsgard). Eles vêm de diferentes partes do mundo, dispostos a reencontrar a mulher de suas vidas: Donna (Meryl Streep), mãe de Sophie. Ao chegarem Donna é surpreendida, tendo que inventar desculpas para não revelar quem é o pai de Sophie.', 3, 2, '2018-12-19 02:00:27', '2018-12-19 02:00:27'),
(21, 'Clube da Luta', 1999, '2h 19min', 'David Fincher', 'Jack (Edward Norton) é um executivo jovem, trabalha como investigador de seguros, mora confortavelmente, mas ele está ficando cada vez mais insatisfeito com sua vida medíocre. Para piorar ele está enfrentando uma terrível crise de insônia, até que encontra uma cura inusitada para o sua falta de sono ao frequentar grupos de auto-ajuda. Nesses encontros ele passa a conviver com pessoas problemáticas como a viciada Marla Singer (Helena Bonham Carter) e a conhecer estranhos como Tyler Durden (Brad Pitt). Misterioso e cheio de ideias, Tyler apresenta para Jack um grupo secreto que se encontra para extravasar suas angústias e tensões através de violentos combates corporais.', 7, 5, '2018-12-19 02:04:03', '2018-12-19 02:04:03'),
(22, 'O Silencio dos Inocentes', 1995, '2h 29min', 'Quentin Tarantino', 'Vincent Vega (John Travolta) e Jules Winnfield (Samuel L. Jackson) são dois assassinos profissionais trabalham fazendo cobranças para Marsellus Wallace (Ving Rhames), um poderosos gângster. Vega é forçado a sair com a garota do chefe, temendo passar dos limites; enquanto isso, o pugilista Butch Coolidge (Bruce Willis) se mete em apuros por ganhar luta que deveria perder.', 2, 5, '2018-12-19 02:06:55', '2018-12-19 02:06:55'),
(23, 'A Origem', 2010, '2h 28min', 'Christopher Nolan', 'Em um mundo onde é possível entrar na mente humana, Cobb (Leonardo DiCaprio) está entre os melhores na arte de roubar segredos valiosos do inconsciente, durante o estado de sono. Além disto ele é um fugitivo, pois está impedido de retornar aos Estados Unidos devido à morte de Mal (Marion Cotillard). Desesperado para rever seus filhos, Cobb aceita a ousada missão proposta por Saito (Ken Watanabe), um empresário japonês: entrar na mente de Richard Fischer (Cillian Murphy), o herdeiro de um império econômico, e plantar a ideia de desmembrá-lo. Para realizar este feito ele conta com a ajuda do parceiro Arthur (Joseph Gordon-Levitt), a inexperiente arquiteta de sonhos Ariadne (Ellen Page) e Eames (Tom Hardy), que consegue se disfarçar de forma precisa no mundo dos sonhos.', 6, 3, '2018-12-19 02:14:48', '2018-12-19 02:14:48'),
(24, 'Seven - Os Sete Crimes Capitais', 1995, '2h 10min', 'David Fincher', 'Dois policiais, om jovem e impetuoso David Mills (Brad Pitt) e o outro maduro e prestes a se aposentar, William Somerset (Morgan Freeman), são encarregados de uma periogosa investigação: encontrar um serial killer que mata as pessoas seguindo a ordem dos sete pecados capitais.', 2, 3, '2018-12-19 02:18:20', '2018-12-19 02:18:20'),
(25, 'O Quarto de Jack', 2018, '1h 58min', 'Lenny Abrahamson', 'Joy (Brie Larson) e seu filho Jack (Jacob Tremblay) vivem isolados em um quarto. O único contato que ambos têm com o mundo exterior é a visita periódica do Velho Nick (Sean Bridgers), que os mantém em cativeiro. Joy faz o possível para tornar suportável a vida no local, mas não vê a hora de deixá-lo. Para tanto, elabora um plano em que, com a ajuda do filho, poderá enganar Nick e retornar à realidade.', 2, 3, '2018-12-19 02:22:04', '2018-12-19 02:22:04'),
(26, 'O Sexto Sentido', 1999, '1h 47min', 'M. Night Shyamalan', 'O psicólogo infantil Malcolm Crowe (Bruce Willis) abraça com dedicação o caso de Cole Sear (Haley Joel Osment). O garoto, de 8 anos, tem dificuldades de entrosamento no colégio e vive paralisado de medo. Malcolm, por sua vez, busca se recuperar de um trauma sofrido anos antes, quando um de seus pacientes se suicidou na sua frente.', 2, 2, '2018-12-19 02:24:29', '2018-12-19 02:24:29'),
(27, 'Psicose', 1960, '1h 49min', 'Alfred Hitchcock', 'Marion Crane é uma secretária (Janet Leigh) que rouba 40 mil dólares da imobiliária onde trabalha para se casar e começar uma nova vida. Durante a fuga à carro, ela enfrenta uma forte tempestade, erra o caminho e chega em um velho hotel. O estabelecimento é administrado por um sujeito atencioso chamado Norman Bates (Anthony Perkins), que nutre um forte respeito e temor por sua mãe. Marion decide passar a noite no local, sem saber o perigo que a cerca.', 4, 3, '2018-12-19 02:27:18', '2018-12-19 02:27:18'),
(28, 'Garota Exemplar', 2014, '2h 29min', 'David Fincher', 'Amy Dunne (Rosamund Pike) desaparece no dia do seu aniversário de casamento, deixando o marido Nick (Ben Affleck) em apuros. Ele começa a agir descontroladamente, abusando das mentiras, e se torna o suspeito número um da polícia. Com o apoio da sua irmã gêmea, Margo (Carrie Coon), Nick tenta provar a sua inocência e, ao mesmo tempo, procura descobrir o que aconteceu com Amy.', 2, 4, '2018-12-19 02:33:17', '2018-12-19 02:33:17'),
(29, 'Prenda-me Se For Capaz', 2003, '2h 21min', 'Steven Spielberg', 'Frank Abagnale Jr. (Leonardo DiCaprio) já foi médico, advogado e co-piloto, tudo isso com apenas 18 anos. Mestre na arte do disfarce, ele aproveita suas habilidades para viver a vida como quer e praticar golpes milionários, que fazem com que se torne o ladrão de banco mais bem-sucedido da história dos Estados Unidos com apenas 17 anos. Mas em seu encalço está o agente do FBI Carl Hanratty (Tom Hanks), que usa todos os meios que tem ao seu dispor para encontrá-lo e capturá-lo.', 7, 2, '2018-12-19 02:35:47', '2018-12-19 02:35:47'),
(30, 'Ilha do Medo', 2010, '2h 21min', ' Martin Scorsese', '1954. Teddy Daniels (Leonardo DiCaprio) investiga o desaparecimento de um paciente no Shutter Island Ashecliffe Hospital, em Boston. No local, ele descobre que os médicos realizam experiências radicais com os pacientes, envolvendo métodos ilegais e anti-éticos. Teddy tenta buscar mais informações, mas enfrenta a resistência dos médicos em lhe fornecer os arquivos que possam permitir que o caso seja aberto. Quando um furacão deixa a ilha sem comunicação, diversos prisioneiros conseguem escapar e tornam a situação ainda mais perigosa.', 2, 4, '2018-12-19 02:38:07', '2018-12-19 02:38:07'),
(31, 'Pleassantille - A Vida em Preto e Branco', 1999, '1h 54min', 'Gary Ross', 'Anos 90. David (Tobey Maguire) é um jovem solitário, que não é feliz com sua vida e foge da realidade assistindo \"Pleasantville\", um seriado em preto e branco dos anos 50, onde tudo é agradável. Mas tudo muda quando Jennifer (Reese Whisterpoon), sua irmã, briga com ele pelo controle remoto, que um estranho técnico de televisão (Don Knotts), que chegou repentinamente logo após eles terem quebrado o antigo controle. Durante a briga eles apertam o novo controle e são magicamente transportados para dentro da fictícia \"Pleasantville\" e lá se tornam Bud e Mary-Sue Parker, dois personagens da série.', 3, 1, '2018-12-19 13:59:40', '2018-12-19 13:59:40'),
(32, 'O Espelho', 2014, '1h 40min', 'Mike Flanagan', 'Tim (Brenton Thwaites) e Kaylie (Karen Gillan) são dois irmãos traumatizados pela morte inexplicada dos pais. Quando Tim sai de um hospital psiquiátrico, após anos internado, ele tem certeza de que a causa da tragédia familiar é um grande espelho que acompanha a família há séculos. Cercados por fenômenos paranormais, os dois tentam provar que o objeto é o verdadeiro responsável pela sangrenta história de seus ascendentes.', 4, 4, '2018-12-19 14:34:13', '2018-12-19 14:34:13'),
(33, 'O Massacre', 2013, '1h 32min', 'John Luessenhop', '1974, uma pequena cidade no interior do Texas. Uma garota escapou de um massacre que matou cinco pessoas e é criada sem saber a verdade sobre seu passado. Já adulta, Heather Mills (Alexandra Daddario) é surpreendida ao ser informada que é a beneficiária da herança de uma avó que nem sabia existir. Ao lado dos amigos Nikki (Tania Raymonde), Ryan (Trey Songz) e Kenny (Kerum Milicki-Sanchez), Heather viaja ao Texas para conhecer a mansão que herdou. Entretanto, ela tem duas regras a seguir: não pode vender a mansão e precisa seguir à risca as instruções deixadas pela avó em uma carta. O problema é que, antes mesmo de abrir esta carta, Heather é surpreendida por outro parente que também sobreviveu ao massacre de décadas atrás.', 4, 1, '2018-12-19 14:37:35', '2018-12-19 14:37:35'),
(34, 'Como Nossos Pais', 2017, '1h 42min', 'Laís Bodanzky', 'Rosa (Maria Ribeiro), 38 anos, é uma mulher que se encontra em uma fase peculiar de sua vida, marcada por conflitos pessoais e geracionais: ao mesmo tempo em que precisa desenvolver sua habilidade como mãe de suas filhas, manter seus sonhos, seus objetivos profissionais e enfrentar as dificuldades do casamento, Rosa também continua sendo filha de sua mãe, Clarice (Clarisse Abujamra), com quem possui uma relação cheia de conflitos.', 4, 3, '2018-12-19 14:46:04', '2018-12-19 14:46:04'),
(35, 'Guerra nas Estrelas', 1978, '2h 01min', 'George Lucas', 'Luke Skywalker (Mark Hammil) sonha ir para a Academia como seus amigos, mas se vê envolvido em uma guerra intergalática quando seu tio compra dois robôs e com eles encontra uma mensagem da princesa Leia Organa (Carrie Fisher) para o jedi Obi-Wan Kenobi (Alec Guiness) sobre os planos da construção da Estrela da Morte, uma gigantesca estação espacial com capacidade para destruir um planeta. Luke então se junta aos cavaleiros jedi e a Hans Solo (Harrison Ford), um mercenário, para tentar destruir esta terrível ameaça ao lado dos membros da resistência.', 5, 1, '2018-12-19 15:53:04', '2018-12-19 15:53:04'),
(36, 'Senhor dos Anéis', 2002, '2h 58min', 'Peter Jackson', 'Numa terra fantástica e única, chamada Terra-Média, um hobbit (seres de estatura entre 80 cm e 1,20 m, com pés peludos e bochechas um pouco avermelhadas) recebe de presente de seu tio o Um Anel, um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal. Para isso o hobbit Frodo (Elijah Woods) terá um caminho árduo pela frente, onde encontrará perigo, medo e personagens bizarros. Ao seu lado para o cumprimento desta jornada aos poucos ele poderá contar com outros hobbits, um elfo, um anão, dois humanos e um mago, totalizando 9 pessoas que formarão a Sociedade do Anel.', 5, 1, '2018-12-19 15:55:38', '2018-12-19 15:55:38'),
(37, 'Avatar', 2009, '2h 42min', 'James Cameron', 'Jake Sully (Sam Worthington) ficou paraplégico após um combate na Terra. Ele é selecionado para participar do programa Avatar em substituição ao seu irmão gêmeo, falecido. Jake viaja a Pandora, uma lua extraterrestre, onde encontra diversas e estranhas formas de vida. O local é também o lar dos NaVi, seres humanóides que, apesar de primitivos, possuem maior capacidade física que os humanos. Os NaVi têm três metros de altura, pele azulada e vivem em paz com a natureza de Pandora. Os humanos desejam explorar a lua, de forma a encontrar metais valiosos, o que faz com que os NaVi aperfeiçoem suas habilidades guerreiras. Como são incapazes de respirar o ar de Pandora, os humanos criam seres híbridos chamados de Avatar. Eles são controlados por seres humanos, através de uma tecnologia que permite que seus pensamentos sejam aplicados no corpo do Avatar. Desta forma Jake pode novamente voltar à ativa, com seu Avatar percorrendo as florestas de Pandora e liderando soldados. Até conhecer Neytiri.', 5, 1, '2018-12-19 15:58:27', '2018-12-19 15:58:27'),
(38, 'Na Natureza Selvagem', 2008, '2h 27min', 'Sean Penn', 'Início da década de 90. Christopher McCandless (Emile Hirsch) é um jovem recém-formado, que decide viajar sem rumo pelos Estados Unidos em busca da liberdade. Durante sua jornada pela Dakota do Sul, Arizona e Califórnia ele conhece pessoas que mudam sua vida, assim como sua presença também modifica as delas. Até que, após dois anos na estrada, Christopher decide fazer a maior das viagens e partir rumo ao Alasca.', 5, 1, '2018-12-19 16:00:26', '2018-12-19 16:00:26'),
(39, 'Os Invisiveis', 2018, '1h 50min', 'Claus Räfle', 'Após o Partido Nazista tornar oficial a perseguição ao povo judeu na Alemanha, muitos deles precisam se tornar praticamente invisíveis, entre eles a jovem órfã Hanni Lévy (Alice Dwyer); o habilidoso falsificador Cioma Schönhaus (Max Mauff); o apaixonado adolescente Eugen Friede (Aaron Altaras); e Ruth Arndt (Ruby O. Fee), que perde o contato com a família passando-se por viúva e trabalhando para um oficial alemão.', 7, 3, '2018-12-19 16:24:32', '2018-12-19 16:24:32'),
(41, 'Cadillac Records', 2008, '1h 49min', 'Darnell Martin', '1947. O Chess Records é um pequeno estúdio musical, localizado na parte sul de Chicago. De início trabalha o blues, tendo como principais ícones Muddy Waters (Jeffrey Wright) e Little Walter (Columbus Short). Chuck Berry (Mos Def), um dos precursores do rock, também gravou nele. Leonard Chess (Adrien Brody) é o produtor do estúdio e tem um ouvido refinado para identificar diferentes tipos de música. Ele acredita que pode ganhar dinheiro ao assinar com talentos ascendentes do meio musical, como o compositor Willie Dixon (Cedric the Entertainer) e Howlin Wolf (Eamonn Walker). Leonard os trata como se fosse parte de sua família, o que não é algo simples pela grande quantia gasta para que esta situação aconteça. Quando Chuck Berry é preso, ele decide apostar no talento de outra cantora: Etta James (Beyoncé Knowles).', 8, 1, '2018-12-19 17:18:31', '2018-12-19 17:18:31'),
(42, 'Hounddog', 2007, '1h 42min', 'Deborah Kampmeier', ' Estados Unidos, Alabama, década de 1950. Lewellen (Dakota Fanning) é uma garota órfã de nove anos, que vive com o pai (David Morse) e Grammie (Piper Laurie) em uma fazenda. Suas únicas diversões são ouvir as canções de Elvis Presley e brincar com Buddy (Cody Hanford), seu vizinho. A vida tranquila da família é alterada quando a nova namorada do pai (Robin Wright) chega à casa, trazendo um segredo consigo.', 8, 1, '2018-12-19 17:20:22', '2018-12-19 17:20:22'),
(43, 'Small Foot', 2018, '1h 49min', 'Karey Kirkpatrick', 'Um yeti, criatura conhecida como o \"Abominável Homem das Neves\", está indo na contramão do que todos os seus semelhantes acreditam: ele tem a certeza que os seres humanos, para eles até então um mito, realmente existem, mesmo que todos da sua espécie neguem. Mas ele não desisti tão facilmente de provar sua tese.', 8, 2, '2018-12-19 17:21:52', '2018-12-19 17:21:52'),
(44, 'Os Piratas do Rock', 2016, '2h 15min', 'Richard Curtis', 'Um grupo de amigos fanáticos por música pop decidem criar uma rádio pirata para disseminar a cultura do Rock n Roll. Na época, a BBC, maior emissora do país, não dava crédito suficiente ao gênero que estava nascendo. Logo, a rádio pirata começou a ganhar repercussão e chegou a ser ouvida por 25 milhões de pessoas diariamente.', 8, 1, '2018-12-19 17:24:17', '2018-12-19 17:24:17'),
(46, 'Titanic', 1998, '3h 14min', 'James Cameron', 'Jack Dawson (Leonardo DiCaprio) é um jovem aventureiro que, na mesa de jogo, ganha uma passagem para a primeira viagem do transatlântico Titanic. Trata-se de um luxuoso e imponente navio, anunciado na época como inafundável, que parte para os Estados Unidos. Nele está também Rose DeWitt Bukater (Kate Winslet), a jovem noiva de Caledon Hockley (Billy Zane). Rose está descontente com sua vida, já que sente-se sufocada pelos costumes da elite e não ama Caledon. Entretanto, ela precisa se casar com ele para manter o bom nome da família, que está falida. Um dia, desesperada, Rose ameaça se atirar do Titanic, mas Jack consegue demovê-la da ideia. Pelo ato ele é convidado a jantar na primeira classe, onde começa a se tornar mais próximo de Rose. Logo eles se apaixonam, despertando a fúria de Caledon. A situação fica ainda mais complicada quando o Titanic se choca com um iceberg, provocando algo que ninguém imaginava ser possível: o naufrágio do navio.', 9, 1, '2018-12-19 19:16:33', '2018-12-19 19:16:33'),
(47, 'Estas Me Matando Susana', 2018, '1h 40min', 'Roberto Sneider', 'Eligio (Gael García Bernal) acorda em uma manhã e descobre que sua esposa Susana (Verónica Echegui) o deixou sem dizer uma palavra sobre seus motivos ou paradeiro. Ele decide embarcar em uma viagem da Cidade do México até uma universidade de Iowa, nos Estados Unidos, para lutar pela mulher que ama. Ao chegar, ela parece ter seguido em frente com sua vida, mas Eligio resolve usar seu charme para conquistá-la enquanto enfrenta as dificuldades de um lugar.', 9, 3, '2018-12-19 19:18:32', '2018-12-19 19:18:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `filmes_pedido` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `name`, `cpf`, `endereco`, `bairro`, `cidade`, `cep`, `email`, `telefone`, `filmes_pedido`, `created_at`, `updated_at`) VALUES
(2, 'fsdfsdfasd', 'sadfsdasdfsdc', 'asdfsdferfdfssddasf', 'sadfsdcr', 'sdfsdrqwc', 'dsfewf4fsd', 'teste@teste.com', '43534r43253425342vddsfasdafsdf', '[\"Batman\", \"Ela Dança, Eu Danço 4\", \"Vingadores\", \"Os Piratas do Rock\", \"DIAS DE UM FUTURO ESQUECIDO\", \"Matrix\"]', '2019-01-15 02:23:29', '2019-01-15 02:23:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20181215011402'),
('20181215011947'),
('20181215012009'),
('20181215013042'),
('20181218140349'),
('20190103025958'),
('20190103161258'),
('20190114154134');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`, `role`) VALUES
(1, 'teste@teste.com', '$2a$11$QoUfESqvwSB1B/htGoJhT.Ec0EwPaBFNEBZIfyuxGWO.GkEvBNBwW', 'c3e38d4801d72d77fcd3aa6fb0e097518427c5c7e9ed8450d7d048a7aa239336', '2018-12-26 13:43:28', NULL, '2018-12-18 23:26:02', '2018-12-26 13:43:28', 0),
(2, 'admin@teste.com', '$2a$11$Aq1cwDBeJoLpWZwQ0kP3buJFX6ircaGYpST4fpJujI5mgO8HJNG8K', NULL, NULL, NULL, '2019-01-03 03:12:40', '2019-01-03 03:15:52', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `classis`
--
ALTER TABLE `classis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_filmes_on_cat_id` (`cat_id`),
  ADD KEY `index_filmes_on_classi_id` (`classi_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cats`
--
ALTER TABLE `cats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `classis`
--
ALTER TABLE `classis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `filmes`
--
ALTER TABLE `filmes`
  ADD CONSTRAINT `fk_rails_012df64ba5` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`),
  ADD CONSTRAINT `fk_rails_0f8104c947` FOREIGN KEY (`classi_id`) REFERENCES `classis` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
