-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 15 Juin 2016 à 23:20
-- Version du serveur :  5.5.49-0ubuntu0.14.04.1
-- Version de PHP :  5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `yoann`
--

-- --------------------------------------------------------

--
-- Structure de la table `actu`
--

CREATE TABLE `actu` (
  `id` int(11) NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL,
  `FR_contenu` text NOT NULL,
  `EN_contenu` text NOT NULL,
  `IT_contenu` text NOT NULL,
  `DE_contenu` text NOT NULL,
  `ES_contenu` text NOT NULL,
  `US_contenu` text NOT NULL,
  `FR_accroche` text NOT NULL,
  `EN_accroche` text NOT NULL,
  `IT_accroche` text NOT NULL,
  `DE_accroche` text NOT NULL,
  `ES_accroche` text NOT NULL,
  `US_accroche` text NOT NULL,
  `FR_cover_img` text NOT NULL,
  `EN_cover_img` text NOT NULL,
  `IT_cover_img` text NOT NULL,
  `DE_cover_img` text NOT NULL,
  `ES_cover_img` text NOT NULL,
  `US_cover_img` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `actu`
--

INSERT INTO `actu` (`id`, `FR_titre`, `EN_titre`, `IT_titre`, `DE_titre`, `ES_titre`, `US_titre`, `FR_contenu`, `EN_contenu`, `IT_contenu`, `DE_contenu`, `ES_contenu`, `US_contenu`, `FR_accroche`, `EN_accroche`, `IT_accroche`, `DE_accroche`, `ES_accroche`, `US_accroche`, `FR_cover_img`, `EN_cover_img`, `IT_cover_img`, `DE_cover_img`, `ES_cover_img`, `US_cover_img`, `date`) VALUES
(3, 'japan touch haru 2', '', '', '', '', '', '<p>japan touch haru</p>\r\n', '', '', '', '', '', 'japan touch haru', '', '', '', '', '', '/acfinder/upload/images/IMG_20160118_154954.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '2016-02-12'),
(4, 'toto a la plage', '', '', '', '', '', '<p>toto a la plage</p>\r\n', '', '', '', '', '', 'toto a la plage', '', '', '', '', '', '/acfinder/upload/images/images%20(13).jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '2002-02-02'),
(5, 'New Background', '', '', '', '', '', '<p>New Background</p>\r\n', '', '', '', '', '', 'New Background', '', '', '', '', '', '/acfinder/upload/images/t%C3%A9l%C3%A9chargement%20(2).jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '2016-02-19');

-- --------------------------------------------------------

--
-- Structure de la table `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL,
  `FR_contenu` text NOT NULL,
  `EN_contenu` text NOT NULL,
  `IT_contenu` text NOT NULL,
  `DE_contenu` text NOT NULL,
  `ES_contenu` text NOT NULL,
  `US_contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `block`
--

INSERT INTO `block` (`id`, `commentaire`, `FR_titre`, `EN_titre`, `IT_titre`, `DE_titre`, `ES_titre`, `US_titre`, `FR_contenu`, `EN_contenu`, `IT_contenu`, `DE_contenu`, `ES_contenu`, `US_contenu`) VALUES
(1, 'titi', 'toto', '', '', '', '', '', '<p>tutu</p>\r\n\r\n<p><img alt="" src="/acfinder/upload/images/no_img.jpg" style="width: 209px; height: 244px;" />&nbsp;lorem ipsum sit amet dolor</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL,
  `FR_contenu` text NOT NULL,
  `EN_contenu` text NOT NULL,
  `IT_contenu` text NOT NULL,
  `DE_contenu` text NOT NULL,
  `ES_contenu` text NOT NULL,
  `US_contenu` text NOT NULL,
  `FR_url` text NOT NULL,
  `EN_url` text NOT NULL,
  `IT_url` text NOT NULL,
  `DE_url` text NOT NULL,
  `ES_url` text NOT NULL,
  `US_url` text NOT NULL,
  `banniere_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cms`
--

INSERT INTO `cms` (`id`, `commentaire`, `FR_titre`, `EN_titre`, `IT_titre`, `DE_titre`, `ES_titre`, `US_titre`, `FR_contenu`, `EN_contenu`, `IT_contenu`, `DE_contenu`, `ES_contenu`, `US_contenu`, `FR_url`, `EN_url`, `IT_url`, `DE_url`, `ES_url`, `US_url`, `banniere_id`, `block_id`) VALUES
(1, 'toto', 'toto', '', '', '', '', '', '<p>lorem ipsum</p>\r\n', '', '', '', '', '', '12', '15', 'titi', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id` int(11) NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL,
  `FR_contenu` text NOT NULL,
  `EN_contenu` text NOT NULL,
  `IT_contenu` text NOT NULL,
  `DE_contenu` text NOT NULL,
  `ES_contenu` text NOT NULL,
  `US_contenu` text NOT NULL,
  `FR_youtube` text NOT NULL,
  `EN_youtube` text NOT NULL,
  `IT_youtube` text NOT NULL,
  `DE_youtube` text NOT NULL,
  `ES_youtube` text NOT NULL,
  `US_youtube` text NOT NULL,
  `FR_cover_img` text NOT NULL,
  `EN_cover_img` text NOT NULL,
  `IT_cover_img` text NOT NULL,
  `DE_cover_img` text NOT NULL,
  `ES_cover_img` text NOT NULL,
  `US_cover_img` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `evenements`
--

INSERT INTO `evenements` (`id`, `FR_titre`, `EN_titre`, `IT_titre`, `DE_titre`, `ES_titre`, `US_titre`, `FR_contenu`, `EN_contenu`, `IT_contenu`, `DE_contenu`, `ES_contenu`, `US_contenu`, `FR_youtube`, `EN_youtube`, `IT_youtube`, `DE_youtube`, `ES_youtube`, `US_youtube`, `FR_cover_img`, `EN_cover_img`, `IT_cover_img`, `DE_cover_img`, `ES_cover_img`, `US_cover_img`, `date`) VALUES
(5, 'MYOCosplay', '', '', '', '', '', '<p>Lancement du site sur le monde du cosplay, En esperant vous rencontrer lors des evenements.</p>\r\n', '', '', '', '', '', ' ', '', '', '', '', '', '/acfinder/upload/images/images%20(7).jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '2016-02-17'),
(6, 'Japan Touch Haru', '', '', '', '', '', '<p>Le festival de la Japan Touch Haru ce passera pour la 1ere fois non pas au Double Mixte mais bien a Eurexpo le 9 et 10 avril 2016.</p>\r\n', '', '', '', '', '', 'festival 100 % pop culture : manga, animation, mode, musique et jeux vidÃ©o', '', '', '', '', '', '/acfinder/upload/images/IMG_20160118_154954.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '2016-04-09'),
(7, 'Japan Touch Haru', '', '', '', '', '', '<p>Le festival de la Japan Touch Haru ce passera pour la 1ere fois non pas au Double Mixte mais bien a Eurexpo le 9 et 10 avril 2016.</p>\r\n', '', '', '', '', '', 'festival 100 % pop culture : manga, animation, mode, musique et jeux vidÃ©o', '', '', '', '', '', '/acfinder/upload/images/IMG_20160118_154954.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '2016-04-10');

-- --------------------------------------------------------

--
-- Structure de la table `lien`
--

CREATE TABLE `lien` (
  `id` int(11) NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL,
  `FR_liens` text NOT NULL,
  `EN_liens` text NOT NULL,
  `IT_liens` text NOT NULL,
  `DE_liens` text NOT NULL,
  `ES_liens` text NOT NULL,
  `US_liens` text NOT NULL,
  `FR_accroche` text NOT NULL,
  `EN_accroche` text NOT NULL,
  `IT_accroche` text NOT NULL,
  `DE_accroche` text NOT NULL,
  `ES_accroche` text NOT NULL,
  `US_accroche` text NOT NULL,
  `FR_cover` text NOT NULL,
  `EN_cover` text NOT NULL,
  `IT_cover` text NOT NULL,
  `DE_cover` text NOT NULL,
  `ES_cover` text NOT NULL,
  `US_cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `loca_cos`
--

CREATE TABLE `loca_cos` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `prix` int(11) NOT NULL,
  `taille` int(11) NOT NULL,
  `date_crea` date NOT NULL,
  `titre_manga` text NOT NULL,
  `nom_perso` text NOT NULL,
  `langue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `loca_cos`
--

INSERT INTO `loca_cos` (`id`, `titre`, `description`, `image`, `prix`, `taille`, `date_crea`, `titre_manga`, `nom_perso`, `langue`) VALUES
(1, 'Mirai nikki', 'la fille folle', '/acfinder/upload/images/Yuno_Gasai.png', 320, 150, '2016-01-27', 'Mirai nikki', 'yuno gasai', '[FR]'),
(2, 'Luffy', 'le rois des pirates', '/acfinder/upload/images/Monkey_D._Luffy_Anime_Post_Timeskip_Infobox.png', 250, 125, '2016-01-26', 'One piece', 'Luffy', '[FR]'),
(3, 'Saitama', 'une catgirl', '/acfinder/upload/images/one_punch_man_saitama_by_jin_of_crimson-d8o8rdb.jpg', 125, 128, '2016-01-25', 'One punch man', 'Saitama', '[FR]'),
(4, 'Haikyuu!!', 'je petit geant', '/acfinder/upload/images/Shoyo_HinataNew.jpg', 256, 143, '2016-01-24', 'Haikyuu!!', 'Hinata', '[FR]'),
(5, 'Namie', 'lorem ipsum sit amet dolor', '/acfinder/upload/images/namie.jpg', 250, 163, '2016-03-05', 'One piece', 'Namie', '[FR]');

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `date_inscrit` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `id_manga` int(11) NOT NULL,
  `nom` text NOT NULL,
  `image` text NOT NULL,
  `sexe` text NOT NULL,
  `tour_de_poitrine` int(11) NOT NULL,
  `tour_des_hanches` int(11) NOT NULL,
  `tour_de_taille` int(11) NOT NULL,
  `jambes_exterieures` int(11) NOT NULL,
  `largeur_depaules` int(11) NOT NULL,
  `longeur_des_manches` int(11) NOT NULL,
  `largeur_du_dos` int(11) NOT NULL,
  `tour_de_bras_superieur` int(11) NOT NULL,
  `longeur_du_dos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `personnages`
--

INSERT INTO `personnages` (`id`, `id_manga`, `nom`, `image`, `sexe`, `tour_de_poitrine`, `tour_des_hanches`, `tour_de_taille`, `jambes_exterieures`, `largeur_depaules`, `longeur_des_manches`, `largeur_du_dos`, `tour_de_bras_superieur`, `longeur_du_dos`) VALUES
(3, 0, 'cat girl', '/acfinder/upload/images/no_img.jpg', 'female', 42, 42, 42, 42, 42, 42, 42, 42, 42),
(5, 8, 'Hinata', '/acfinder/upload/images/Shoyo_HinataNew.jpg', 'masculin', 42, 42, 42, 42, 42, 42, 42, 42, 42),
(6, 10, 'yuno gasai', '/acfinder/upload/images/Yuno_Gasai.png', 'feminin', 42, 42, 42, 42, 42, 42, 42, 42, 42),
(7, 5, 'Luffy', '/acfinder/upload/images/Monkey_D._Luffy_Anime_Post_Timeskip_Infobox.png', 'masculin', 42, 42, 42, 42, 42, 42, 42, 42, 42),
(8, 9, 'Saitama', '/acfinder/upload/images/one_punch_man_saitama_by_jin_of_crimson-d8o8rdb.jpg', 'masculin', 42, 42, 42, 42, 42, 42, 42, 42, 42),
(9, 5, 'Namie', '/acfinder/upload/images/namie.jpg', 'feminin', 42, 42, 42, 42, 42, 42, 42, 42, 42),
(10, 11, 'Kaori', '/acfinder/upload/images/CPYkUfHW8AAYyS4.jpg', 'feminin', 42, 42, 42, 42, 42, 42, 42, 42, 42);

-- --------------------------------------------------------

--
-- Structure de la table `photo_design`
--

CREATE TABLE `photo_design` (
  `id` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL,
  `FR_lien` text NOT NULL,
  `EN_lien` text NOT NULL,
  `IT_lien` text NOT NULL,
  `DE_lien` text NOT NULL,
  `ES_lien` text NOT NULL,
  `US_lien` text NOT NULL,
  `FR_accroche` text NOT NULL,
  `EN_accroche` text NOT NULL,
  `IT_accroche` text NOT NULL,
  `DE_accroche` text NOT NULL,
  `ES_accroche` text NOT NULL,
  `US_accroche` text NOT NULL,
  `FR_cover` text NOT NULL,
  `EN_cover` text NOT NULL,
  `IT_cover` text NOT NULL,
  `DE_cover` text NOT NULL,
  `ES_cover` text NOT NULL,
  `US_cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photo_design`
--

INSERT INTO `photo_design` (`id`, `commentaire`, `FR_titre`, `EN_titre`, `IT_titre`, `DE_titre`, `ES_titre`, `US_titre`, `FR_lien`, `EN_lien`, `IT_lien`, `DE_lien`, `ES_lien`, `US_lien`, `FR_accroche`, `EN_accroche`, `IT_accroche`, `DE_accroche`, `ES_accroche`, `US_accroche`, `FR_cover`, `EN_cover`, `IT_cover`, `DE_cover`, `ES_cover`, `US_cover`) VALUES
(1, 'haikyu', 'kawaii', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', '/acfinder/upload/images/no_img.jpg', 'haikyu', '', '', '', '', '', 'haikyu', '', '', '', '', '', '/acfinder/upload/images/images%20(7).jpg', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `manga` text NOT NULL,
  `titre` text NOT NULL,
  `mensuration` text NOT NULL,
  `image` text NOT NULL,
  `prix` text NOT NULL,
  `type_produit` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `titre` int(11) NOT NULL,
  `FR_value1` text NOT NULL,
  `FR_value2` text NOT NULL,
  `FR_value3` text NOT NULL,
  `FR_value4` text NOT NULL,
  `FR_value5` text NOT NULL,
  `EN_value1` text NOT NULL,
  `EN_value2` text NOT NULL,
  `EN_value3` text NOT NULL,
  `EN_value4` text NOT NULL,
  `EN_value5` text NOT NULL,
  `IT_value1` text NOT NULL,
  `IT_value2` text NOT NULL,
  `IT_value3` text NOT NULL,
  `IT_value4` text NOT NULL,
  `IT_value5` text NOT NULL,
  `DE_value1` text NOT NULL,
  `DE_value2` text NOT NULL,
  `DE_value3` text NOT NULL,
  `DE_value4` text NOT NULL,
  `DE_value5` text NOT NULL,
  `ES_value1` text NOT NULL,
  `ES_value2` text NOT NULL,
  `ES_value3` text NOT NULL,
  `ES_value4` text NOT NULL,
  `ES_value5` text NOT NULL,
  `US_value1` text NOT NULL,
  `US_value2` text NOT NULL,
  `US_value3` text NOT NULL,
  `US_value4` text NOT NULL,
  `US_value5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `serie`
--

INSERT INTO `serie` (`id`, `titre`, `image`, `description`) VALUES
(5, 'One piece', '/acfinder/upload/images/Monkey_D._Luffy_Anime_Post_Timeskip_Infobox.png', 'One piece'),
(8, 'Haikyuu!!', '/acfinder/upload/images/Shoyo_HinataNew.jpg', 'Haikyuu!!'),
(9, 'One punch man', '/acfinder/upload/images/one_punch_man_saitama_by_jin_of_crimson-d8o8rdb.jpg', 'One punch man'),
(10, 'Mirai nikki', '/acfinder/upload/images/Yuno_Gasai.png', 'Mirai nikki'),
(11, 'Shigatsu wa Kimi no Uso', '/acfinder/upload/images/CPYkUfHW8AAYyS4.jpg', 'Shigatsu wa kimi no uso');

-- --------------------------------------------------------

--
-- Structure de la table `telechargement`
--

CREATE TABLE `telechargement` (
  `id` int(11) NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL,
  `FR_filepath` text NOT NULL,
  `EN_filepath` text NOT NULL,
  `IT_filepath` text NOT NULL,
  `DE_filepath` text NOT NULL,
  `ES_filepath` text NOT NULL,
  `US_filepath` text NOT NULL,
  `FR_accroche` text NOT NULL,
  `EN_accroche` text NOT NULL,
  `IT_accroche` text NOT NULL,
  `DE_accroche` text NOT NULL,
  `ES_accroche` text NOT NULL,
  `US_accroche` text NOT NULL,
  `FR_cover` text NOT NULL,
  `EN_cover` text NOT NULL,
  `IT_cover` text NOT NULL,
  `DE_cover` text NOT NULL,
  `ES_cover` text NOT NULL,
  `US_cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `texte`
--

CREATE TABLE `texte` (
  `id` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `FR_txt` text NOT NULL,
  `EN_txt` text NOT NULL,
  `IT_txt` text NOT NULL,
  `DE_txt` text NOT NULL,
  `ES_txt` text NOT NULL,
  `US_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `texte`
--

INSERT INTO `texte` (`id`, `commentaire`, `FR_txt`, `EN_txt`, `IT_txt`, `DE_txt`, `ES_txt`, `US_txt`) VALUES
(1, 'Login :', 'Identifiant :', 'Login :', '', '', '', ''),
(2, 'Password :', 'Mot de passe :', 'Password :', '', '', '', ''),
(3, 'Email', 'Email : ', 'Email :', '', '', '', ''),
(4, 'telephone', 'NumÃ©ro de tÃ©lÃ©phone : ', 'Phone number : ', '', '', '', ''),
(5, 'nom', 'Nom : ', 'Last name : ', '', '', '', ''),
(6, 'prenom', 'PrÃ©nom : ', 'First name : ', '', '', '', ''),
(7, 'index', 'Les derniers tutoriel Ã©crit :', '', '', '', '', ''),
(8, 'index', 'Nos news', '', '', '', '', ''),
(9, 'index', 'Les dernier cosplay mis en vente :', '', '', '', '', ''),
(10, 'index', 'Nos futures evenements :', '', '', '', '', ''),
(11, 'index', 'Les derniers cosplay disponible en location:', '', '', '', '', ''),
(12, 'Crea tuto', 'Titre du tutoriel', 'Title of the tutorial', '', '', '', ''),
(13, 'Crea tuto', 'Nom du manga', 'Name of the manga', '', '', '', ''),
(14, 'Crea tuto', 'Nom du personnage', 'Name of the charactere', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tuto_ecrit`
--

CREATE TABLE `tuto_ecrit` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `titre_manga` text NOT NULL,
  `nom_perso` text NOT NULL,
  `description` text NOT NULL,
  `intro` text NOT NULL,
  `contenu` text NOT NULL,
  `date_crea` date NOT NULL,
  `langue` text NOT NULL,
  `img_pres` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tuto_ecrit`
--

INSERT INTO `tuto_ecrit` (`id`, `titre`, `titre_manga`, `nom_perso`, `description`, `intro`, `contenu`, `date_crea`, `langue`, `img_pres`) VALUES
(2, 'One punch man cosplay', 'One punch man', 'saitama', 'saitama le personnage le plus puissant de tout l univers', 'lorem ipsum sit amet dolor', 'lorem sit amet dolor lorem ipsum sit amet dolor lorem ipsum sit amet dolor lorem ipsum sit amet dolor lorem ipsum sit amet dolor', '2015-10-12', '[FR]', '/acfinder/upload/images/one_punch_man_saitama_by_jin_of_crimson-d8o8rdb.jpg'),
(3, 'One piece', 'One piece', 'luffy', 'le plus grand des pirate', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas convallis vulputate turpis. Donec eget libero dictum, lacinia enim id, elementum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas convallis vulputate turpis. Donec eget libero dictum, lacinia enim id, elementum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean id nisi interdum, sodales diam ut, rhoncus nibh. Ut vel est egestas, tempus dolor nec, dignissim justo. Sed tempus elit mauris, vitae efficitur tellus laoreet vitae. Maecenas vel ipsum condimentum, maximus mauris vel, volutpat augue. Aliquam ac nulla aliquam, ornare orci vitae, cursus diam. Proin fermentum justo ut erat tincidunt, ac accumsan quam suscipit. Vivamus mauris massa, condimentum eget nisi quis, pretium porttitor nisi. Nunc laoreet libero nec vehicula dapibus. Nullam vestibulum eu sapien eget viverra. Vivamus et volutpat nisl, quis gravida leo. Cras varius odio a consectetur aliquam. Cras vitae feugiat erat, imperdiet facilisis purus.  Donec volutpat sapien sem, ac facilisis felis imperdiet eget. Duis sit amet mi ac diam pharetra efficitur in non quam. Nunc dignissim felis velit, vel scelerisque libero ullamcorper nec. Nam pretium nisl eget eros efficitur semper. Aenean ornare id ligula ut rhoncus. Morbi auctor velit id mattis fringilla. Aliquam euismod gravida tellus non placerat. Donec tempus elit turpis, id aliquam sem vehicula molestie. Cras lorem lectus, efficitur a iaculis vel, accumsan sed augue. Nulla facilisi. In lorem odio, consectetur eu sodales non, volutpat vel orci. Integer quis massa at tellus imperdiet euismod vitae eu mi. Fusce non est vel leo commodo tempus sit amet ut nulla. Sed vitae felis mattis felis commodo mollis.  Vestibulum eget tristique felis. Nunc tincidunt blandit ante. Phasellus sodales eros vitae faucibus iaculis. Duis sollicitudin ex at commodo auctor. Aenean accumsan aliquam metus feugiat porta. Nunc id nisi vitae nisl laoreet faucibus vitae eu tellus. Nulla viverra turpis vel facilisis ultricies. Vestibulum imperdiet volutpat congue. Praesent orci felis, pretium sit amet risus quis, tincidunt faucibus erat.  Vivamus tristique lectus at diam gravida varius. Quisque vel lacinia quam. Maecenas viverra efficitur viverra. Aenean elit tortor, ultrices vel cursus quis, fringilla et ligula. Aliquam quis malesuada arcu. Ut vestibulum volutpat euismod. Nullam scelerisque est non metus maximus aliquet. Nullam quam velit, scelerisque nec iaculis in, finibus at turpis. Morbi ligula velit, laoreet nec dui nec, scelerisque viverra leo. Nunc arcu nibh, pretium sit amet sagittis in, auctor sed augue. Donec commodo dolor lectus, in efficitur felis consequat et.  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec dapibus sapien id leo consequat semper. Donec non nunc sapien. Vestibulum sed nulla velit. Nunc aliquet non diam vel varius. In convallis, dolor at hendrerit vestibulum, dui mauris suscipit dolor, in euismod urna erat quis neque. Integer vel fermentum diam. Fusce luctus nisi vel lacus lacinia ullamcorper. Aenean tristique massa sed augue pellentesque volutpat. Vivamus sit amet ligula eget nulla placerat luctus.', '2014-10-12', '[FR]', '/acfinder/upload/images/Monkey_D._Luffy_Anime_Post_Timeskip_Infobox.png'),
(4, 'Haikyuu!!', 'Haikyuu!!', 'Hinata', 'le petit gÃ©ant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas convallis vulputate turpis. Donec eget libero dictum, lacinia enim id, elementum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas convallis vulputate turpis. Donec eget libero dictum, lacinia enim id, elementum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean id nisi interdum, sodales diam ut, rhoncus nibh. Ut vel est egestas, tempus dolor nec, dignissim justo. Sed tempus elit mauris, vitae efficitur tellus laoreet vitae. Maecenas vel ipsum condimentum, maximus mauris vel, volutpat augue. Aliquam ac nulla aliquam, ornare orci vitae, cursus diam. Proin fermentum justo ut erat tincidunt, ac accumsan quam suscipit. Vivamus mauris massa, condimentum eget nisi quis, pretium porttitor nisi. Nunc laoreet libero nec vehicula dapibus. Nullam vestibulum eu sapien eget viverra. Vivamus et volutpat nisl, quis gravida leo. Cras varius odio a consectetur aliquam. Cras vitae feugiat erat, imperdiet facilisis purus.  Donec volutpat sapien sem, ac facilisis felis imperdiet eget. Duis sit amet mi ac diam pharetra efficitur in non quam. Nun', '2015-02-05', '[FR]', '/acfinder/upload/images/Shoyo_HinataNew.jpg'),
(5, 'Mirai nikki', 'Mirai nikki', 'yuno gasai', 'la psychopate', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas convallis vulputate turpis. Donec eget libero dictum, lacinia enim id, elementum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas convallis vulputate turpis. Donec eget libero dictum, lacinia enim id, elementum leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean id nisi interdum, sodales diam ut, rhoncus nibh. Ut vel est egestas, tempus dolor nec, dignissim justo. Sed tempus elit mauris, vitae efficitur tellus laoreet vitae. Maecenas vel ipsum condimentum, maximus mauris vel, volutpat augue. Aliquam ac nulla aliquam, ornare orci vitae, cursus diam. Proin fermentum justo ut erat tincidunt, ac accumsan quam suscipit. Vivamus mauris massa, condimentum eget nisi quis, pretium porttitor nisi. Nunc laoreet libero nec vehicula dapibus. Nullam vestibulum eu sapien eget viverra. Vivamus et volutpat nisl, quis gravida leo. Cras varius odio a consectetur aliquam. Cras vitae feugiat erat, imperdiet facilisis purus.  Donec volutpat sapien sem, ac facilisis felis imperdiet eget. Duis sit amet mi ac diam pharetra efficitur in non quam. Nun', '2015-12-08', '[FR]', '/acfinder/upload/images/Yuno_Gasai.png'),
(6, 'Catgirl', 'Catgirl', 'catgirl', 'lorem ipsum sit amet dolor lorem ipsum sit amet dolor lorem ipsum sit amet dolor', 'lorem ipsum sit amet dolor lorem ipsum sit amet dolor lorem ipsum sit amet dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar, ligula at feugiat sollicitudin, tellus sapien ullamcorper lacus, at suscipit lacus lorem vel elit. Morbi porttitor nibh nec turpis ornare, sed sagittis purus aliquam. Sed molestie vehicula ex eu feugiat. ', '2016-03-05', '[FR]', '/acfinder/upload/images/catgirlKawai.jpg'),
(38, 'Namie cosplay', 'One piece', 'Namie', 'namie la plus belle des pirates', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at convallis libero. Fusce nibh turpis, molestie placerat nulla quis, aliquam rhoncus ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at convallis libero. Fusce nibh turpis, molestie placerat nulla quis, aliquam rhoncus ipsum.', '2016-04-02', '[FR]', '/acfinder/upload/images/namie.jpg'),
(40, 'Shigatsu wa Kimi no Uso', 'Shigatsu wa Kimi no Uso', 'Kaori', 'Shigatsu wa Kimi no Uso', 'lorem ipsum', 'lorem ipsum', '2016-04-07', '[FR]', '/acfinder/upload/images/CPYkUfHW8AAYyS4.jpg'),
(41, 'KawaiiLittleGirl', 'Blade and soul', 'Kawaii', '						Write a short description of your tutorial.\r\n						', 'intro', '&lt;p&gt;Edit here your tutorial.&lt;/p&gt;\r\n', '2016-04-18', '[FR]', '/upload/Portrait_160411_000.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `tuto_video`
--

CREATE TABLE `tuto_video` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `titre_manga` text NOT NULL,
  `video` text NOT NULL,
  `description` text NOT NULL,
  `intro` text NOT NULL,
  `nom_perso` text NOT NULL,
  `date_crea` date NOT NULL,
  `langue` text NOT NULL,
  `img_pres` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tuto_video`
--

INSERT INTO `tuto_video` (`id`, `titre`, `titre_manga`, `video`, `description`, `intro`, `nom_perso`, `date_crea`, `langue`, `img_pres`) VALUES
(1, 'Saitama cosplay', 'One punch man', 'https://www.youtube.com/embed/fy2H72oNLS8', 'lorem ipsum sit amet dolor lorem ipsum sit amet dolor lorem ipsum sit amet dolor', 'lorem ipsum sit amet dolor lorem ipsum sit amet dolor lorem ipsum sit amet dolor', 'Saitama', '2016-02-15', '[FR]', '/acfinder/upload/images/one_punch_man_saitama_by_jin_of_crimson-d8o8rdb.jpg'),
(2, 'Namie cosplay', 'One piece', 'https://www.youtube.com/embed/sdVn-_3O6GU', 'lorem ipsum sit amet dolor', 'lorem ipsum sit amet dolor', 'Namie', '2016-02-05', '[FR]', '/acfinder/upload/images/namie.jpg'),
(3, 'Luffy cosplay', 'One piece', 'https://www.youtube.com/embed/Djfpe08nb0k', 'lorem ipsum sit amet dolor', 'lorem ipsum sit amet dolor', 'Luffy', '2016-05-07', '[FR]', '/acfinder/upload/images/Monkey_D._Luffy_Anime_Post_Timeskip_Infobox.png'),
(7, 'Kaori cosplay', 'Shigatsu wa Kimi no Uso', 'https://www.youtube.com/embed/rAo5tLMnsls', 'lorem ipsum sit amet dolor', 'lorem ipsum sit amet dolor', 'Kaori', '2016-03-17', '[FR]', '/acfinder/upload/images/CPYkUfHW8AAYyS4.jpg'),
(8, 'yuno gasai cosplay', 'Mirai nikki', 'https://www.youtube.com/embed/mu5WxttLJWk', 'lorem ipsum sit amet dolor', 'lorem ipsum sit amet dolor', 'yuno gasai', '2016-04-05', '[FR]', '/acfinder/upload/images/Yuno_Gasai.png'),
(12, 'IA', 'IA', 'https://www.youtube.com/embed/OXHYIlkZLUU', 'description', 'intro', 'ShootingStar', '2016-05-07', '[FR]', '/acfinder/upload/images/Yuno_Gasai.png');

-- --------------------------------------------------------

--
-- Structure de la table `url`
--

CREATE TABLE `url` (
  `id` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `FR_url` text NOT NULL,
  `EN_url` text NOT NULL,
  `IT_url` text NOT NULL,
  `DE_url` text NOT NULL,
  `ES_url` text NOT NULL,
  `US_url` text NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `url`
--

INSERT INTO `url` (`id`, `commentaire`, `FR_url`, `EN_url`, `IT_url`, `DE_url`, `ES_url`, `US_url`, `FR_titre`, `EN_titre`, `IT_titre`, `DE_titre`, `ES_titre`, `US_titre`) VALUES
(1, 'Lien vers les news.', '/news', '', '', '', '', '', 'News', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `mdp` text NOT NULL,
  `echec_cnx` int(11) NOT NULL,
  `last_ip` text NOT NULL,
  `last_co` date NOT NULL,
  `device` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `login`, `mdp`, `echec_cnx`, `last_ip`, `last_co`, `device`) VALUES
(1, 'admin', 'dc94cbb35ea627d7b4c94ba5306f52c6', 0, '199.21.149.181', '2016-05-20', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36 OPR/37.0.2178.43');

-- --------------------------------------------------------

--
-- Structure de la table `usr`
--

CREATE TABLE `usr` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `mdp` text NOT NULL,
  `echec_cnx` int(11) NOT NULL,
  `last_ip` text NOT NULL,
  `last_co` date NOT NULL,
  `device` text NOT NULL,
  `email` text NOT NULL,
  `telephone` text NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tuto_langue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `usr`
--

INSERT INTO `usr` (`id`, `login`, `mdp`, `echec_cnx`, `last_ip`, `last_co`, `device`, `email`, `telephone`, `nom`, `prenom`, `tuto_langue`) VALUES
(20, 'Blackstar', 'yolo', 0, '107.6.122.130', '0000-00-00', 'windows', 'alexandre.lalliard74@gmail.com', '0631444803', 'lalliard', 'alexandre', ''),
(21, 'YoloDany', 'dany-chan', 0, '103.47.209.106', '0000-00-00', 'windows', 'dany.stan@gmail.com', '0632145678', 'Tsan', 'Dany', ''),
(22, 'yoloswag++', 'azerty', 0, '103.47.209.106', '0000-00-00', 'windows', 'azert@test.com', '0631444803', 'yolo', 'yoloswag', ''),
(27, 'blackstaru', 'b30f4169e054ee7b8c243480bcfcef62416f3b08', 0, '119.81.31.9', '0000-00-00', 'windows', 'cetteadressenexistepas@yolo.com', '0631444803', 'lalliard', 'alexandre', ''),
(28, 'toto', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '192.240.125.50', '0000-00-00', 'windows', 'test@test.fr', '0123456789', 'lalliard', 'alexandre', ''),
(29, 'test123', '9cf95dacd226dcf43da376cdb6cbba7035218921', 0, '119.81.135.40', '0000-00-00', 'windows', 'test@test.com', '0631444803', 'lalliard', 'alex', ''),
(30, 'warner', '70dc9e2d5ec95dccd9e644b4a4d0677a83f8ac57', 0, '211.37.12.173', '0000-00-00', 'windows', 'mathieuchampely@sharklasers.com', '', 'Champely', 'Mathieu', ''),
(31, 'blackstar', 'cb7d898def2d417b86b05d7280f93f1023dc28f3', 0, '206.190.157.221', '0000-00-00', 'windows', 'alexandre.lalliard74@gmail.com', '0631444803', 'Lalliard', 'alexandre', ''),
(32, 'yolo', 'cb7d898def2d417b86b05d7280f93f1023dc28f3', 0, '192.240.127.98', '0000-00-00', 'windows', 'alexandre.lalliard741@gmail.com', '0631444803', 'lalliard', 'alexandre', ''),
(33, 'XXXSWAGGLORDXXX', '3965d0e49041e297efea1343a6b40e8f8b318a40', 0, '136.206.129.74', '0000-00-00', 'windows', 'XXXswaggXXX@jaitropdeswag.com', '0612xxxx15', 'houssier', 'sebastien', ''),
(34, 'hgf', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 0, '165.194.33.72', '0000-00-00', 'windows', 'fds@r.f', 'hgf', 'hello', 'world', '');

-- --------------------------------------------------------

--
-- Structure de la table `vente_cos`
--

CREATE TABLE `vente_cos` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `prix` int(11) NOT NULL,
  `taille` int(11) NOT NULL,
  `date_crea` date NOT NULL,
  `titre_manga` text NOT NULL,
  `nom_perso` text NOT NULL,
  `langue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vente_cos`
--

INSERT INTO `vente_cos` (`id`, `titre`, `description`, `image`, `prix`, `taille`, `date_crea`, `titre_manga`, `nom_perso`, `langue`) VALUES
(1, 'Shigatsu wa Kimi no Uso', 'la meilleure violoniste', '/acfinder/upload/images/CPYkUfHW8AAYyS4.jpg', 320, 150, '2016-01-27', 'Shigatsu wa Kimi no Uso', 'Kaori', '[FR]'),
(2, 'Mirai nikki', 'le psychopate', '/acfinder/upload/images/Yuno_Gasai.png', 250, 125, '2015-01-26', 'Mirai nikki', 'yuno gasai', '[FR]'),
(3, 'One piece', 'Luffy', '/acfinder/upload/images/Monkey_D._Luffy_Anime_Post_Timeskip_Infobox.png', 125, 129, '2016-01-25', 'One piece', 'Luffy', '[FR]'),
(4, 'Haikyuu!!', 'je petit geant', '/acfinder/upload/images/Shoyo_HinataNew.jpg', 256, 143, '2016-01-24', 'Haikyuu!!', 'Hinata', '[FR]'),
(5, 'One piece', 'lorem ipsum sit amet dolor', '/acfinder/upload/images/namie.jpg', 125, 170, '2016-03-05', 'One piece', 'Namie', '[FR]');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `FR_titre` text NOT NULL,
  `EN_titre` text NOT NULL,
  `IT_titre` text NOT NULL,
  `DE_titre` text NOT NULL,
  `ES_titre` text NOT NULL,
  `US_titre` text NOT NULL,
  `FR_youtube` text NOT NULL,
  `EN_youtube` text NOT NULL,
  `IT_youtube` text NOT NULL,
  `DE_youtube` text NOT NULL,
  `ES_youtube` text NOT NULL,
  `US_youtube` text NOT NULL,
  `FR_accroche` text NOT NULL,
  `EN_accroche` text NOT NULL,
  `IT_accroche` text NOT NULL,
  `DE_accroche` text NOT NULL,
  `ES_accroche` text NOT NULL,
  `US_accroche` text NOT NULL,
  `FR_cover` text NOT NULL,
  `EN_cover` text NOT NULL,
  `IT_cover` text NOT NULL,
  `DE_cover` text NOT NULL,
  `ES_cover` text NOT NULL,
  `US_cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `actu`
--
ALTER TABLE `actu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lien`
--
ALTER TABLE `lien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `loca_cos`
--
ALTER TABLE `loca_cos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photo_design`
--
ALTER TABLE `photo_design`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `telechargement`
--
ALTER TABLE `telechargement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `texte`
--
ALTER TABLE `texte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tuto_ecrit`
--
ALTER TABLE `tuto_ecrit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tuto_video`
--
ALTER TABLE `tuto_video`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `usr`
--
ALTER TABLE `usr`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vente_cos`
--
ALTER TABLE `vente_cos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `actu`
--
ALTER TABLE `actu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `lien`
--
ALTER TABLE `lien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `loca_cos`
--
ALTER TABLE `loca_cos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `photo_design`
--
ALTER TABLE `photo_design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `serie`
--
ALTER TABLE `serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `telechargement`
--
ALTER TABLE `telechargement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `texte`
--
ALTER TABLE `texte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `tuto_ecrit`
--
ALTER TABLE `tuto_ecrit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `tuto_video`
--
ALTER TABLE `tuto_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `url`
--
ALTER TABLE `url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `usr`
--
ALTER TABLE `usr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `vente_cos`
--
ALTER TABLE `vente_cos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
