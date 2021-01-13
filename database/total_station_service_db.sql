-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 23 oct. 2020 à 07:58
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `total_station_service_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `tb_im_carburants`
--

CREATE TABLE `tb_im_carburants` (
  `intrant_id` int(11) NOT NULL,
  `libelle` varchar(75) NOT NULL,
  `qte_stock` int(11) DEFAULT NULL,
  `prix_unitaire` float DEFAULT NULL,
  `date_ajout` datetime NOT NULL,
  `date_modif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tb_im_carburants`
--

INSERT INTO `tb_im_carburants` (`intrant_id`, `libelle`, `qte_stock`, `prix_unitaire`, `date_ajout`, `date_modif`) VALUES
(1, 'Mazout', 175, 1750, '2020-10-18 17:51:23', '2020-10-22 12:39:25'),
(2, 'Essence', 120, 1950, '2020-10-18 17:52:53', '2020-10-22 12:39:42'),
(3, 'Petrole', 1400, 1650, '2020-10-22 12:40:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tb_im_categories`
--

CREATE TABLE `tb_im_categories` (
  `categorie_id` int(11) NOT NULL,
  `designation` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tb_im_categories`
--

INSERT INTO `tb_im_categories` (`categorie_id`, `designation`) VALUES
(1, 'Aliments'),
(2, 'Legumes'),
(3, 'Fruits'),
(4, 'Engrais'),
(5, 'Agriculture'),
(6, 'Elevage');

-- --------------------------------------------------------

--
-- Structure de la table `tb_im_demandes`
--

CREATE TABLE `tb_im_demandes` (
  `demande_id` int(11) NOT NULL,
  `benef_nom` varchar(75) NOT NULL,
  `prix_total` float NOT NULL,
  `benef_prenom` varchar(75) DEFAULT NULL,
  `benef_phone` varchar(25) DEFAULT NULL,
  `qte_demandee` int(11) DEFAULT NULL,
  `date_demandee` date DEFAULT NULL,
  `intrant_sid` int(11) DEFAULT NULL,
  `date_ajout` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `shop_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tb_im_demandes`
--

INSERT INTO `tb_im_demandes` (`demande_id`, `benef_nom`, `prix_total`, `benef_prenom`, `benef_phone`, `qte_demandee`, `date_demandee`, `intrant_sid`, `date_ajout`, `date_modif`, `shop_sid`) VALUES
(1, 'Rubuz', 0, 'elie', '0821733330', 120, '2020-10-18', 2, '2020-10-18 19:16:21', '0000-00-00 00:00:00', 0),
(2, 'Mwila', 0, 'betty', '0976300163', 90, '2020-10-18', 2, '2020-10-18 19:22:20', '0000-00-00 00:00:00', 0),
(3, 'cheche', 41250, 'francois', '', 25, '2020-10-22', 3, '2020-10-22 13:59:01', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tb_im_entrees`
--

CREATE TABLE `tb_im_entrees` (
  `entree_id` int(11) NOT NULL,
  `fss_nom` varchar(75) NOT NULL,
  `fss_postnom` varchar(75) NOT NULL,
  `fss_prenom` varchar(75) DEFAULT NULL,
  `fss_phone` varchar(25) DEFAULT NULL,
  `fss_adresse` varchar(25) DEFAULT NULL,
  `qte_entree` int(11) DEFAULT NULL,
  `date_entree` date DEFAULT NULL,
  `intrant_sid` int(11) DEFAULT NULL,
  `date_ajout` datetime NOT NULL,
  `date_modif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tb_im_entrees`
--

INSERT INTO `tb_im_entrees` (`entree_id`, `fss_nom`, `fss_postnom`, `fss_prenom`, `fss_phone`, `fss_adresse`, `qte_entree`, `date_entree`, `intrant_sid`, `date_ajout`, `date_modif`) VALUES
(1, 'Mwambayi', 'kindu', 'Elie ', '0858533285', 'kilobelobe, kampamba, bel', 25, '2020-10-18', 1, '2020-10-18 18:37:30', '0000-00-00 00:00:00'),
(2, 'Mwambayi', 'kindu', 'Elie ', '0858533285', 'kilobelobe, kampamba, bel', 15, '2020-10-17', 2, '2020-10-18 18:38:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tb_im_shops`
--

CREATE TABLE `tb_im_shops` (
  `shop_id` int(11) NOT NULL,
  `shop_nom` varchar(75) NOT NULL,
  `qte_totale_vendue` int(11) NOT NULL,
  `shop_adresse` varchar(75) NOT NULL,
  `date_ajout` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tb_im_shops`
--

INSERT INTO `tb_im_shops` (`shop_id`, `shop_nom`, `qte_totale_vendue`, `shop_adresse`, `date_ajout`, `date_update`) VALUES
(1, 'Camp Vangu', 1400, '', '2020-10-22 08:15:21', '2020-10-15 07:17:17'),
(2, '24h Filling', 0, 'Centre ville de Lubumbashi', '2020-10-22 13:32:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tb_im_users`
--

CREATE TABLE `tb_im_users` (
  `id_asset` int(11) NOT NULL,
  `asset_fullname` varchar(75) NOT NULL,
  `asset_username` varchar(50) DEFAULT NULL,
  `asset_password` varchar(60) DEFAULT NULL,
  `asset_email` varchar(50) DEFAULT NULL,
  `asset_sexe` varchar(10) DEFAULT NULL,
  `asset_phone` varchar(50) DEFAULT NULL,
  `asset_type` varchar(20) DEFAULT 'logisticien',
  `date_ajout` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_connected` timestamp NULL DEFAULT NULL,
  `account_activated` varchar(25) DEFAULT 'active',
  `asset_avatar` varchar(75) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `asset_fonction` varchar(75) NOT NULL,
  `asset_matricule` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tb_im_users`
--

INSERT INTO `tb_im_users` (`id_asset`, `asset_fullname`, `asset_username`, `asset_password`, `asset_email`, `asset_sexe`, `asset_phone`, `asset_type`, `date_ajout`, `date_connected`, `account_activated`, `asset_avatar`, `date_update`, `asset_fonction`, `asset_matricule`) VALUES
(1, 'Elie Mwez', 'eliemwez', '$2y$12$lgSZ78FDfw7MUBBIrMgsfOB2BEBDapoD4jIJEtr.arj6dSYRoBDZG', 'eliemwez.rubuz@gmail.com', 'Masculin', '+243858533285', 'user', '2020-09-11 08:08:58', '2020-09-21 08:02:11', 'active', 'global/img/avatars/avatar-eliemwez2.jpg', '2020-09-19 14:07:30', 'logisticien', '11220'),
(2, 'Administrateur', 'admin', '$2y$12$bGYGbrhUKpkUVun35wVyq.E3xoHKEsztWso0Hw6xlP4pRPrhNqxpu', 'admin@gmail.com', 'Homme', '+243903774951', 'admin', '2020-09-21 08:01:52', '2020-10-22 12:14:17', 'active', 'global/img/avatars/IMG_20200309_110637_241.jpg', '2020-09-21 12:06:49', 'admin', '2020010'),
(3, 'Paola Nsomp', 'paola', '$2y$12$NdMOM0tNdOyTxWRB1nZ31.Duy/A16/Ltq/BigMF05ANJ74D/Jw7IC', 'paola@gmail.com', 'Femme', '+2430975556941', 'user', '2020-10-18 17:40:01', '2020-10-18 17:51:53', 'active', NULL, '2020-10-18 19:00:00', 'logisticen', '1122001');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tb_im_carburants`
--
ALTER TABLE `tb_im_carburants`
  ADD PRIMARY KEY (`intrant_id`);

--
-- Index pour la table `tb_im_categories`
--
ALTER TABLE `tb_im_categories`
  ADD PRIMARY KEY (`categorie_id`);

--
-- Index pour la table `tb_im_demandes`
--
ALTER TABLE `tb_im_demandes`
  ADD PRIMARY KEY (`demande_id`);

--
-- Index pour la table `tb_im_entrees`
--
ALTER TABLE `tb_im_entrees`
  ADD PRIMARY KEY (`entree_id`);

--
-- Index pour la table `tb_im_shops`
--
ALTER TABLE `tb_im_shops`
  ADD PRIMARY KEY (`shop_id`);

--
-- Index pour la table `tb_im_users`
--
ALTER TABLE `tb_im_users`
  ADD PRIMARY KEY (`id_asset`),
  ADD UNIQUE KEY `asset_username` (`asset_username`,`asset_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tb_im_carburants`
--
ALTER TABLE `tb_im_carburants`
  MODIFY `intrant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tb_im_categories`
--
ALTER TABLE `tb_im_categories`
  MODIFY `categorie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `tb_im_demandes`
--
ALTER TABLE `tb_im_demandes`
  MODIFY `demande_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tb_im_entrees`
--
ALTER TABLE `tb_im_entrees`
  MODIFY `entree_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tb_im_shops`
--
ALTER TABLE `tb_im_shops`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tb_im_users`
--
ALTER TABLE `tb_im_users`
  MODIFY `id_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
