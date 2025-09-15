-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 01 avr. 2025 à 08:15
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sitecybernews`
--
CREATE DATABASE IF NOT EXISTS `sitecybernews` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `sitecybernews`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `idCategorie` int NOT NULL,
  `NomCategorie` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `NomCategorie`) VALUES
(1, 'Confidentialité des données'),
(2, 'Cyberespionnage'),
(3, 'Cybersécurité'),
(4, 'Réglementation'),
(5, 'Communication');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `ResumeNews` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idNews` int NOT NULL,
  `NomNews` varchar(50) NOT NULL,
  `DateNews` varchar(50) NOT NULL,
  `AuteurNews` varchar(50) NOT NULL,
  `CategorieNews` varchar(50) NOT NULL,
  `idCategorie` int NOT NULL,
  PRIMARY KEY (`idNews`),
  KEY `idCategorie` (`idCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`ResumeNews`, `idNews`, `NomNews`, `DateNews`, `AuteurNews`, `CategorieNews`, `idCategorie`) VALUES
('Meta, la maison-mère de Facebook et WhatsApp, a été condamnée par la Data Protection Commission (DPC) irlandaise à une amende de 91 millions d’euros pour des infractions liées à la protection des données. En 2019, Facebook avait reconnu qu\'il stockait par erreur les mots de passe de certains utilisateurs de Facebook, Facebook Lite et Instagram en clair dans ses systèmes internes, ce qui concernait des millions d\'utilisateurs. Bien que Facebook ait précisé à l\'époque que ces mots de passe n\'avaient été accessibles ni par des employés ni par des tiers extérieurs et qu\'aucun abus n’avait été détecté, la DPC a ouvert une enquête pour vérifier si Meta avait pris des mesures de sécurité appropriées conformément au RGPD. L\'enquête a révélé que Meta n’avait pas notifié cette violation à la DPC, comme l\'exige l\'article 33 du RGPD, et n’avait pas non plus documenté l\'incident. Pire encore, Meta n\'avait pas mis en place les mesures techniques et organisationnelles nécessaires pour garantir la sécurité des mots de passe contre un accès non autorisé. Cette absence de protections suffisantes a conduit la DPC à infliger cette lourde amende à Meta pour manquement aux normes de sécurité imposées par le RGPD.', 1, 'RGPD , Meta sanctionné en Irlande', '27 Septembre 2024', 'Guillaume Perissat', 'Confidentialité des données', 1),
('Boulanger, une enseigne d’électroménager, a été victime d’une cyberattaque dans la nuit du 6 au 7 septembre, selon le site Mac4ever. Cette attaque a compromis les données personnelles de certains clients, notamment celles liées aux livraisons, comme les noms, prénoms et adresses. Heureusement, les données bancaires n’ont pas été affectées. Dans un e-mail adressé aux clients concernés, Boulanger a précisé que l\'incident avait été maîtrisé et que ses sites web et applications fonctionnent normalement, avec des mesures de sécurité renforcées. Cependant, environ 27 millions de données volées auraient été mises en vente sur le dark web. Bien que l’entreprise ait minimisé l’ampleur en affirmant que \"quelques centaines de milliers de clients\" étaient touchés, les consommateurs doivent rester vigilants. En effet, les cybercriminels pourraient utiliser ces informations pour des tentatives de phishing, en envoyant des e-mails ou SMS frauduleux qui semblent provenir d’entreprises légitimes comme Boulanger. Les clients sont donc invités à redoubler de prudence face à toute communication suspecte.', 2, 'Cyberattaque Boulanger', '9 Septembre 2024', 'Solina Prak', 'Confidentialité des données', 1),
('Le 17 octobre, Free a été victime d\'une cyberattaque majeure qui a compromis les données personnelles de 19 millions d’abonnés Free Mobile et Freebox, y compris 5 millions d’IBAN. Cette attaque a été révélée le 22 octobre par l\'expert en cybersécurité Clément Domingo (SaxX_), qui a souligné l\'ampleur de la fuite. Le hacker à l’origine de l’attaque a mis en vente ces données sur un forum spécialisé et a publié 100 000 IBAN pour prouver ses affirmations. Free a d\'abord informé ses abonnés que des données telles que les noms, prénoms, adresses, numéros de téléphone, et identifiants avaient été compromises, tout en précisant qu\'aucun mot de passe ni données de carte bancaire n\'avaient été dérobés. Cependant, un deuxième message de l’opérateur a confirmé que les IBAN faisaient bien partie des données volées. L\'attaque ciblait un outil de gestion interne, bien que Free ait affirmé que cela n\'avait pas eu d\'impact opérationnel. L’incident met en lumière des failles dans la sécurité de Free et la nécessité de renforcer la protection des données.', 3, 'Cyberattaque chez FREE', '28 Octobre 2024 ', 'Guillaume Perissat ', 'Confidentialité des données', 1),
(' Le 27 septembre, une cyberattaque majeure a frappé la police nationale des Pays-Bas, compromettant les données de 65 000 agents. Des identifiants Outlook volés ont permis aux hackers d\'accéder à des informations sensibles, notamment les noms, numéros de téléphone, fonctions et adresses électroniques des policiers. Le ministre de la Justice, David van Weel, a indiqué qu’un « acteur étatique non identifié » pourrait être à l’origine de l’attaque, et un responsable de la police a renforcé l’hypothèse d\'une implication étrangère. Cette fuite de données a semé l’inquiétude au sein des forces de l’ordre, poussant certains agents à envisager leur démission. Pour répondre aux préoccupations, un numéro vert a été mis en place, permettant aux agents de signaler leurs craintes pour leur sécurité et celle de leurs familles. Le gouvernement a assuré qu’il prenait des mesures pour renforcer la sécurité et prévenir d’autres incidents de ce type, tandis que le Syndicat policier néerlandais a dénoncé les failles dans le système de protection des données.', 4, 'Piratage de données de la police Néerlandaise ', '4 Octobre 2024', 'Jean-Pierre Roobants', 'Cyberespionnage', 2),
('Jean-Noël Barrot, ministre de l’Europe et des Affaires\r\nétrangères, a présenté un projet de loi visant à approuver la\r\ncréation du Centre de développement des capacités cyber dans\r\nles Balkans occidentaux (C3BO). Cet accord a été signé le 16\r\noctobre 2023 à Tirana par la France, la Slovénie et le\r\nMonténégro.\r\nLe centre sera basé à Podgorica, au Monténégro, et aura pour\r\nmission de renforcer la cybersécurité dans les Balkans\r\noccidentaux. Ses objectifs incluent le soutien aux pays\r\nbénéficiaires pour prévenir et sensibiliser à la cybercriminalité,\r\nle développement de l’expertise en matière d’investigations\r\nspécialisées et financières, ainsi que le renforcement des\r\ncapacités opérationnelles dans le domaine cyber. Ce projet\r\ns&#39;inscrit dans une dynamique de coopération régionale pour\r\nfaire face aux enjeux croissants liés à la sécurité numérique.', 5, 'Projet de loi – Création du Centre de développemen', '28 Novembre 2024', 'Juliette Paoli', 'Règlementation', 5),
('Le groupe cybercriminel near2tlg, déjà responsable d’attaques contre Le\r\nPoint, SFR et Mediboard, a frappé Direct Assurance, filiale d’Axa.\r\nL’attaque, survenue le 14 novembre, a exploité une faille chez un\r\nprestataire, permettant de compromettre les données de 6000 clients et\r\n9000 prospects. Les informations volées incluent noms, adresses e-mail,\r\nnuméros de téléphone et, pour 5600 d’entre eux, des données\r\nbancaires sensibles comme des RIB et IBAN.\r\nLes hackers affirment avoir utilisé un accès employé pour infiltrer le\r\nsystème. Fait notable, ils déclarent avoir averti les entreprises\r\nconcernées des failles de sécurité dans leurs systèmes avant de passer\r\nà l’action. Direct Assurance, pourtant qualifié de « N°1 de l’Assurance en\r\nligne », n’a pas encore réagi officiellement. Cet incident illustre à\r\nnouveau la montée des cybermenaces et la nécessité pour les\r\nentreprises de renforcer leurs dispositifs de sécurité.', 6, 'Direct Assurance victime d’une fuite de données, R', '22 Novembre 2024', 'Guillaume Perissat', 'Cybersécurité', 2),
('Le Baromètre 2024 d&#39;Infranum sur l&#39;adoption de la fibre en\r\nentreprise révèle que la France atteint près de 80 %\r\nd&#39;entreprises raccordées à la fibre, mais soulève des\r\ninterrogations sur les 20 % restants, à l’approche de la\r\nfermeture du réseau cuivre. L&#39;étude, menée auprès de 800\r\nentreprises, montre un ralentissement dans l&#39;adoption de la\r\nfibre par rapport aux années précédentes. En 2023, 63 % des\r\nentreprises étaient raccordées, une hausse de 15 % par rapport\r\nà 2022, mais avec une croissance plus faible qu&#39;en 2021-2022.\r\nMalgré la fermeture imminente du réseau cuivre, les obstacles\r\nrestent nombreux. En 2023, 41 % des entreprises ne\r\nsouhaitaient pas adopter la fibre, citant des coûts trop élevés,\r\nun manque de confiance en les opérateurs et des problèmes\r\nd’éligibilité. En 2024, bien que la situation soit suivie de près, le\r\ntaux d&#39;adoption n&#39;a pas encore connu de réelle accélération.\r\nParallèlement, Androxgh0st, un malware intégré au botnet\r\nMozi, continue de se propager, exploitant des vulnérabilités sur\r\ndivers systèmes pour attaquer des infrastructures critiques dans\r\nle monde entier. En novembre 2024, il représentait plus de 5 %\r\ndes infections mondiales.', 7, 'Fibre : une entreprise française sur cinq risque d', '11 décembre 2024', 'Guillaume Perissat', 'Communication', 4),
('Le classement des menaces de Check Point Software met en\r\névidence la montée d’Androxgh0st, un malware désormais\r\nintégré au botnet Mozi. Ce malware cible des infrastructures\r\ncritiques à l’échelle mondiale, en exploitant des vulnérabilités\r\nsur des plateformes comme les dispositifs IoT et les serveurs\r\nweb. Grâce à l&#39;intégration du botnet Mozi, Androxgh0st a élargi\r\nson champ d’action, infectant davantage de dispositifs IoT et\r\nprenant le contrôle de nouvelles cibles.\r\nAndroxgh0st utilise des techniques avancées comme\r\nl&#39;exécution de code à distance et le vol d’identifiants, en\r\nexploitant des vulnérabilités non corrigées. Il cible Windows,\r\nMac et Linux, et se propage via des failles dans des\r\nframeworks comme PHPUnit et Laravel, ainsi que dans des\r\nserveurs web comme Apache. Une fois infiltré, il vole des\r\ndonnées sensibles telles que des informations de compte\r\nTwilio, des identifiants SMTP et des clés AWS. En novembre,\r\nAndroxgh0st représentait plus de 5% des infections mondiales,\r\ndevancé par le malware FakeUpdates (5%) et AgentTesla (3%).', 8, 'Top Malware de novembre : Androxgh0st cible les di', '12 décembre 2024', 'Juliette Paoli', 'Cybersécurité', 3),
('La direction interministérielle du numérique (DINUM), responsable de la transformation numérique de l’État, a mis à jour ses programmes de Bug Bounty pour renforcer la sécurité de deux services clés : la messagerie instantanée sécurisée Tchap et les systèmes d’authentification FranceConnect, FranceConnect+ et ProConnect. En collaboration avec YesWeHack, ces programmes encouragent les hackers éthiques à identifier et signaler des failles de sécurité, avec une augmentation significative des primes pour les vulnérabilités critiques : jusqu’à 20 000 € pour Tchap (contre 8 000 € auparavant) et 30 000 € pour FranceConnect et ses dérivés (contre 20 000 €).\r\n\r\nLes vulnérabilités ciblées concernent principalement l’exfiltration de données et l’usurpation d’identité. Pour participer, les hackers doivent respecter des règles strictes : être le premier à signaler une faille, proposer une solution constructive, ne pas endommager les systèmes, garantir la confidentialité des données et agir de manière indépendante. Chaque faille est rémunérée une seule fois, au premier rapporteur.\r\n\r\nLes hackers éthiques intéressés doivent s’inscrire sur la plateforme YesWeHack, via des liens dédiés pour FranceConnect et Tchap. Après validation de leur profil, ils peuvent signaler les failles en suivant les instructions fournies. Ces initiatives visent à améliorer la sécurité des services publics en détectant et corrigeant rapidement les vulnérabilités.\r\n', 9, 'Bug Bounty : l’Etat augmente les primes pour que l', '30 janvier 2025', 'Juliette Paoli', 'Cybersécurité', 3),
('La Commission européenne a annoncé, vendredi, de nouvelles mesures techniques dans le cadre de son enquête contre le réseau social X (anciennement Twitter), soupçonné de propager de fausses informations et de manipuler le débat public en Europe. Ces actions interviennent après des provocations répétées d’Elon Musk, le propriétaire de X, qui a notamment affiché son soutien à l’AfD, parti d’extrême droite allemand, à l’approche des élections en Allemagne fin février.\r\n\r\nLa Commission, sous pression des eurodéputés et des États membres, a demandé à X de fournir, avant le 15 février, une documentation interne détaillée sur ses systèmes de recommandation et les modifications récentes apportées à ses algorithmes. Elle a également émis une \"ordonnance de conservation\" obligeant la plateforme à préserver les documents internes relatifs aux changements dans la conception et le fonctionnement de ses algorithmes jusqu’au 31 décembre 2025, sauf si l’enquête ouverte en décembre 2023 est clôturée avant cette date.\r\n\r\nEnfin, la Commission a demandé l’accès à certaines API commerciales de X, des interfaces techniques permettant d’analyser la modération des contenus et la viralité des comptes. Ces mesures visent à vérifier la conformité de X avec le règlement sur les services numériques (DSA), tout en respectant la liberté d’expression d’Elon Musk, selon l’UE.\r\n', 10, 'L’UE annonce approfondir son enquête contre X aprè', '17 janvier 2025', 'Patrice Remeur', 'Réglementation', 4),
('Orange a confirmé le 24 février à BleepingComputer avoir subi une cyberattaque en Roumanie. Un porte-parole de l\'entreprise a déclaré que des mesures immédiates ont été prises et qu\'il n\'y a eu aucun impact sur les opérations des clients. La faille s\'est produite sur une application back-office non critique. Les données volées, comprenant des milliers de documents, proviendraient principalement de la branche roumaine de l\'entreprise et incluent 380 000 e-mails, du code source, des factures, des contrats, ainsi que des informations sur les clients et les employés. Les pirates auraient exploité des vulnérabilités du logiciel Atlassian Jira.', 11, 'Orange a été touché par une cyberattaque dans ses ', '26 février 2025', 'Juliette Paoli', 'Cybersécurité', 2),
('Apple est accusé d\'avoir collecté, conservé et analysé un grand nombre d\'enregistrements de son assistant vocal Siri sans le consentement des utilisateurs, même lorsque Siri était activé par erreur. La marque fait face à un recours collectif aux États-Unis pour avoir exploité des conversations privées entre 2014 et 2024, et propose un accord amiable de 95 millions de dollars.\r\n\r\nEn France, la Ligue des Droits de l\'Homme a porté plainte contre Apple pour violation de la vie privée et traitement illicite des données personnelles. Un lanceur d\'alerte, Thomas Le Bonniec, affirme avoir traité des milliers d\'enregistrements captés à l\'insu des utilisateurs, souvent contenant des informations sensibles. Apple a suspendu son programme de sous-traitance en 2019 et assure désormais ne conserver les enregistrements que si l\'utilisateur donne son accord explicite.', 12, 'Une plainte déposée en France contre Apple et Siri', '18 février 2025', 'Guillaume Perissat', 'Réglementation', 4),
('François Bayrou, Premier ministre français, a déclaré que la France est, après l\'Ukraine, le pays le plus ciblé en Europe par les tentatives de manipulation de l\'information venant de l\'étranger. Dans le contexte des conflits actuels et des tensions géopolitiques, la France est une cible privilégiée, notamment par des interventions massives de la Russie et des actions détectées en provenance de la Chine.\r\n\r\nSelon un rapport du Service européen pour l\'action extérieure, sur 505 incidents relevés en Europe entre 2023 et 2024, 257 concernaient l\'Ukraine et 152 la France. Bayrou a souligné que cette menace touche chaque Français dans une société dominée par les écrans. Il a également mis en garde contre l\'utilisation de l\'intelligence artificielle, qui amplifie ces manipulations à une échelle sans précédent, menaçant ainsi la démocratie.\r\n\r\nBayrou a salué le rôle de Viginum, l\'organisme français de lutte contre les ingérences numériques étrangères, dans cette \"guerre informationnelle\" qui nécessite une vigilance accrue pour protéger la démocratie et l\'accès à une information fiable.', 13, 'La France “pays le plus visé en Europe” après l’Uk', '28 mars 2025', 'La rédaction avec AFP', 'Cybersécurité', 1),
('Alexis de Goriainoff, CEO de Sewan, analyse les transformations du secteur des télécommunications, marqué par une guerre tarifaire, des innovations technologiques et des enjeux de cybersécurité. Le secteur est en pleine mutation, avec des restructurations et l\'émergence de nouvelles technologies comme l\'IA, rendant la technologie plus accessible et efficace.\r\n\r\nLa téléphonie d\'entreprise évolue vers un écosystème hybride, combinant téléphonie mobile et outils collaboratifs comme Teams ou Zoom. La connectivité par satellite, notamment avec Starlink, offre de nouvelles perspectives pour les zones mal desservies.\r\n\r\nLa cybersécurité devient une priorité face à la multiplication des cyberattaques, particulièrement pour les TPE et PME. Les offres de cybersécurité doivent être accessibles et efficaces, avec un soutien étatique renforcé.\r\n\r\nL\'IA transforme les communications d\'entreprise, introduisant des fonctionnalités comme l\'analyse des émotions et les agents conversationnels, améliorant ainsi la relation client. Cependant, l\'adoption de ces technologies nécessitera du temps et du discernement pour éviter les solutions gadgets.', 14, 'AVIS D’EXPERT – Télécommunications d’entreprise : ', '10 mars 2025', 'Juliette Paoli', 'Communication', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `FK_NewsCAT` FOREIGN KEY (`idCategorie`) REFERENCES `news` (`idCategorie`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
