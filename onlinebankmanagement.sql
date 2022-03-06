-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 22 fév. 2022 à 19:01
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `onlinebankmanagement`
--

-- --------------------------------------------------------

--
-- Structure de la table `account_gen`
--

CREATE TABLE `account_gen` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `account_gen`
--

INSERT INTO `account_gen` (`sequence_name`, `next_val`) VALUES
('compte', 90314785);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `numero_compte` bigint(20) NOT NULL,
  `date_creation` date DEFAULT NULL,
  `etat_compte` bit(1) NOT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `solde_compte` decimal(19,2) DEFAULT NULL,
  `type_compte` varchar(255) DEFAULT NULL,
  `id_utilisateur` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`numero_compte`, `date_creation`, `etat_compte`, `mot_de_passe`, `solde_compte`, `type_compte`, `id_utilisateur`) VALUES
(90314487, '2022-02-14', b'1', 'b7d753cddb5f4af4cebef9e7d0b22f14a9458d1f880bc5682aec8d5996d37a', '3003329.70', 'EPARGNE', 95824131),
(90314537, '2022-02-14', b'1', '6062321552bf008490632132f25202cff319a5696c16d360c7ee5604a28b4e', '18000000.00', 'COURANT', 95824132),
(90314538, '2022-02-14', b'1', 'aa0cb353536a209ba9db9a7bbb0c72ee0d8e28c156d91617e99a3794b54d15', '803.32', 'ADMIN', 95824133),
(90314587, '2022-02-14', b'0', 'aa0cb353536a209ba9db9a7bbb0c72ee0d8e28c156d91617e99a3794b54d15', '90000.00', 'COURANT', 95824182),
(90314687, '2022-02-21', b'1', '51c837572ce48c3902ccb5c1a3ef3faabf2d33b4f3b9120ac2b49f373cebaf', '100.00', 'EPARGNE', 95824235),
(90314688, '2022-02-21', b'1', '51c837572ce48c3902ccb5c1a3ef3faabf2d33b4f3b9120ac2b49f373cebaf', '100.00', 'ADMIN', 95824235);

-- --------------------------------------------------------

--
-- Structure de la table `credits`
--

CREATE TABLE `credits` (
  `id_credit` bigint(20) NOT NULL,
  `date_credit` date DEFAULT NULL,
  `mensualite` decimal(19,2) DEFAULT NULL,
  `montant_credit` decimal(19,2) DEFAULT NULL,
  `montant_reglee` decimal(19,2) DEFAULT NULL,
  `montant_reste` decimal(19,2) DEFAULT NULL,
  `type_credit` varchar(255) DEFAULT NULL,
  `numero_compte` bigint(20) DEFAULT NULL,
  `nombre_mensualites_credit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `credits`
--

INSERT INTO `credits` (`id_credit`, `date_credit`, `mensualite`, `montant_credit`, `montant_reglee`, `montant_reste`, `type_credit`, `numero_compte`, `nombre_mensualites_credit`) VALUES
(8602, '2022-02-16', '2150.39', '50000.00', '51609.31', '0.00', 'CONSOMMATION', 90314587, 0),
(8752, '2022-02-16', '843.86', '100000.00', '1687.72', '150206.51', 'IMMOBILIER', 90314587, 178),
(8902, '2022-02-19', '20.30', '100.00', '70.30', '31.20', 'IMMOBILIER', 90314487, 1),
(8903, '2022-02-19', '100.50', '100.00', '0.00', '100.50', 'IMMOBILIER', 90314487, 1),
(8952, '2022-02-19', '20.15', '100.00', '0.00', '100.77', 'CONSOMMATION', 90314487, 5),
(8953, '2022-02-19', '8.47', '100.00', '0.00', '110.14', 'CONSOMMATION', 90314487, 13);

-- --------------------------------------------------------

--
-- Structure de la table `cred_gen`
--

CREATE TABLE `cred_gen` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cred_gen`
--

INSERT INTO `cred_gen` (`sequence_name`, `next_val`) VALUES
('credits', 9050);

-- --------------------------------------------------------

--
-- Structure de la table `retrait`
--

CREATE TABLE `retrait` (
  `id_retrait` bigint(20) NOT NULL,
  `date_retrait` date DEFAULT NULL,
  `montant_retrait` decimal(19,2) DEFAULT NULL,
  `numero_compte` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `retrait`
--

INSERT INTO `retrait` (`id_retrait`, `date_retrait`, `montant_retrait`, `numero_compte`) VALUES
(10151, '2022-02-14', '1500.00', 90314587),
(10201, '2022-02-14', '1500.00', 90314587),
(10251, '2022-02-14', '1500.00', 90314587),
(10301, '2022-02-14', '69999.00', 90314587),
(10351, '2022-02-14', '7000.00', 90314587),
(10401, '2022-02-20', '700.21', 90314538),
(10451, '2022-02-20', '700.21', 90314538),
(10452, '2022-02-20', '700.00', 90314538),
(10501, '2022-02-20', '100.23', 90314538),
(10551, '2022-02-20', '700.00', 90314538);

-- --------------------------------------------------------

--
-- Structure de la table `trans_gen`
--

CREATE TABLE `trans_gen` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `trans_gen`
--

INSERT INTO `trans_gen` (`sequence_name`, `next_val`) VALUES
('virement', 1400);

-- --------------------------------------------------------

--
-- Structure de la table `user_gen`
--

CREATE TABLE `user_gen` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_gen`
--

INSERT INTO `user_gen` (`sequence_name`, `next_val`) VALUES
('utilisateur', 95824380);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` bigint(20) NOT NULL,
  `email_utilisateur` varchar(255) DEFAULT NULL,
  `nom_utilisateur` varchar(255) DEFAULT NULL,
  `prenom_utilisateur` varchar(255) DEFAULT NULL,
  `sexe_utilisateur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `email_utilisateur`, `nom_utilisateur`, `prenom_utilisateur`, `sexe_utilisateur`) VALUES
(95824131, 'larhchim_zakaria@gmail.com', 'LARHCHIM', 'ZAKARIA', 'MALE'),
(95824132, 'jadid_ismail@gmail.com', 'JADID', 'ISMAIL', 'MALE'),
(95824133, 'fihri_fatima@gmail.com', 'FIHRI', 'FATIMA', 'FEMALE'),
(95824182, 'salhi_karima@gmail.com', 'SALHI', 'KARIMA', 'FEMALE'),
(95824235, 'j@gmail.com', 'MOURAD', 'MOURAD', 'MALE');

-- --------------------------------------------------------

--
-- Structure de la table `virement`
--

CREATE TABLE `virement` (
  `id_virement` bigint(20) NOT NULL,
  `date_virement` date DEFAULT NULL,
  `montant` decimal(19,2) DEFAULT NULL,
  `numero_compte_recepteur` bigint(20) DEFAULT NULL,
  `numero_compte_emetteur` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `virement`
--

INSERT INTO `virement` (`id_virement`, `date_virement`, `montant`, `numero_compte_recepteur`, `numero_compte_emetteur`) VALUES
(1201, '2022-02-16', '6703.97', 90314538, 90314587),
(1302, '2022-02-21', '3000.00', 90314487, 90314538);

-- --------------------------------------------------------

--
-- Structure de la table `withdrawal_gen`
--

CREATE TABLE `withdrawal_gen` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `withdrawal_gen`
--

INSERT INTO `withdrawal_gen` (`sequence_name`, `next_val`) VALUES
('retrait', 10649);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account_gen`
--
ALTER TABLE `account_gen`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`numero_compte`),
  ADD KEY `FKd9eqd874serhi00a0ohyxo6x` (`id_utilisateur`);

--
-- Index pour la table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id_credit`),
  ADD KEY `FKj8c9s1dfqapdocukebqbrljie` (`numero_compte`);

--
-- Index pour la table `cred_gen`
--
ALTER TABLE `cred_gen`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Index pour la table `retrait`
--
ALTER TABLE `retrait`
  ADD PRIMARY KEY (`id_retrait`),
  ADD KEY `FK2a1kwp807jpfjakeecg0jg5ij` (`numero_compte`);

--
-- Index pour la table `trans_gen`
--
ALTER TABLE `trans_gen`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Index pour la table `user_gen`
--
ALTER TABLE `user_gen`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- Index pour la table `virement`
--
ALTER TABLE `virement`
  ADD PRIMARY KEY (`id_virement`),
  ADD KEY `FKp8swxs2uteri1ie360fys6aq` (`numero_compte_emetteur`);

--
-- Index pour la table `withdrawal_gen`
--
ALTER TABLE `withdrawal_gen`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `FKd9eqd874serhi00a0ohyxo6x` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `credits`
--
ALTER TABLE `credits`
  ADD CONSTRAINT `FKj8c9s1dfqapdocukebqbrljie` FOREIGN KEY (`numero_compte`) REFERENCES `compte` (`numero_compte`);

--
-- Contraintes pour la table `retrait`
--
ALTER TABLE `retrait`
  ADD CONSTRAINT `FK2a1kwp807jpfjakeecg0jg5ij` FOREIGN KEY (`numero_compte`) REFERENCES `compte` (`numero_compte`);

--
-- Contraintes pour la table `virement`
--
ALTER TABLE `virement`
  ADD CONSTRAINT `FKp8swxs2uteri1ie360fys6aq` FOREIGN KEY (`numero_compte_emetteur`) REFERENCES `compte` (`numero_compte`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
