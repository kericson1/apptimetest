-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 13 avr. 2022 à 19:40
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `auto_evaluates`
--

CREATE TABLE `auto_evaluates` (
  `id_auto` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_projet` bigint(20) UNSIGNED NOT NULL,
  `sens` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_sens` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `implication` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_implication` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_respect` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_agir` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecoute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_ecoute` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_formation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_travail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_quantite` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autonomie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_autonomie` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `difficulte` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_difficulte` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_sein` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travailler` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_travailler` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pugnacite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_pugnacite` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convaincre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_convaincre` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retranscri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_retranscri` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aptitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_aptitude` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auto_evaluates`
--

INSERT INTO `auto_evaluates` (`id_auto`, `user_id`, `id_projet`, `sens`, `comment_sens`, `implication`, `comment_implication`, `respect`, `comment_respect`, `agir`, `comment_agir`, `ecoute`, `comment_ecoute`, `formation`, `comment_formation`, `travail`, `comment_travail`, `quantite`, `comment_quantite`, `autonomie`, `comment_autonomie`, `difficulte`, `comment_difficulte`, `sein`, `comment_sein`, `travailler`, `comment_travailler`, `pugnacite`, `comment_pugnacite`, `convaincre`, `comment_convaincre`, `retranscri`, `comment_retranscri`, `aptitude`, `comment_aptitude`, `created_at`, `updated_at`) VALUES
(1, 2, 72, 'Amélioration absolument prioritaire', NULL, 'Point d\'amélioration', NULL, 'Excellent', NULL, 'Excellent', NULL, 'Excellent', NULL, 'Excellent', NULL, 'Au-dessus du niveau attendu', NULL, 'Excellent', NULL, 'Au-dessus du niveau attendu', NULL, 'Excellent', NULL, 'Excellent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `biblios`
--

CREATE TABLE `biblios` (
  `id_biblio` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteurs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proprietaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_emprunt` date DEFAULT NULL,
  `date_depot` date DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `biblios`
--

INSERT INTO `biblios` (`id_biblio`, `user_id`, `numero`, `titre`, `auteurs`, `nombre`, `panier`, `collection`, `editions`, `proprietaire`, `date_emprunt`, `date_depot`, `etat`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', 'ASTIN BULLETIN, VOLUME 29 - N°2, NOV 1999', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 11:55:50', '2021-10-27 11:55:50'),
(2, NULL, '2', 'ASTIN BULLETIN, VOLUME 30 - N°2, NOV 2000', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 11:57:19', '2021-10-27 11:57:19'),
(3, NULL, '3', 'ASTIN BULLETIN, VOLUME 33 - N°1, MAI 2003', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 11:58:33', '2021-10-27 11:58:33'),
(4, NULL, '4', 'ASTIN BULLETIN, VOLUME 33 - N°2, NOV 2003', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 11:59:53', '2021-10-27 11:59:53'),
(5, NULL, '5', 'ASTIN BULLETIN, VOLUME 34 - N°1, MAI 2004', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:01:28', '2021-10-27 12:01:28'),
(6, NULL, '6', 'ASTIN BULLETIN, VOLUME 34 - N°2, NOV 2004', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:02:58', '2021-10-27 12:02:58'),
(7, NULL, '7', 'ASTIN BULLETIN, VOLUME 35 - N°1, MAI 2005', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:04:20', '2021-10-27 12:04:20'),
(8, NULL, '8', 'ASTIN BULLETIN, VOLUME 36 - N°1, MAI 2006', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:05:52', '2021-10-27 12:05:52'),
(9, NULL, '9', 'ASTIN BULLETIN, VOLUME 36 - N°2, NOV 2006', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:07:06', '2021-10-27 12:07:06'),
(10, NULL, '10', 'ASTIN BULLETIN, VOLUME 37 - N°1, MAI 2007', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:08:21', '2021-10-27 12:08:21'),
(11, NULL, '11', 'ASTIN BULLETIN, VOLUME 37 - N°2, NOV 2007', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:09:41', '2021-10-27 12:09:41'),
(12, NULL, '12', 'ASTIN BULLETIN, VOLUME 38 - N°1, MAI 2008', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:11:43', '2021-10-27 12:11:43'),
(13, NULL, '13', 'ASTIN BULLETIN, VOLUME 38 - N°2, NOV 2008', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:13:14', '2021-10-27 12:13:14'),
(14, NULL, '14A', 'ASTIN BULLETIN, VOLUME 39 - N°1, MAI 2009', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:15:13', '2021-10-27 12:15:13'),
(15, NULL, '14B', 'ASTIN BULLETIN, VOLUME 39 - N°1, MAI 2009', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:16:38', '2021-10-27 12:16:38'),
(16, NULL, '15A', 'ASTIN BULLETIN, VOLUME 39 - N°2, NOV 2009', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:18:12', '2021-10-27 12:18:12'),
(17, NULL, '15B', 'ASTIN BULLETIN, VOLUME 39 - N°2, NOV 2009', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:20:45', '2021-10-27 12:20:45'),
(18, NULL, '16', 'ASTIN BULLETIN, VOLUME 40 - N°1, MAI 2010', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:21:57', '2021-10-27 12:21:57'),
(19, NULL, '17', 'ASTIN BULLETIN, VOLUME 40 - N°2, NOV 2010', NULL, '1', 'ACTUARIAT', 'ASTIN BULLETIN', 'ASTIN BY PEETERS', 'ASSOCIE HO', NULL, NULL, 'DISPONIBLE', NULL, '2021-10-27 12:23:31', '2021-10-27 12:23:31');

-- --------------------------------------------------------

--
-- Structure de la table `charge_factures`
--

CREATE TABLE `charge_factures` (
  `id_chargetache` bigint(20) UNSIGNED NOT NULL,
  `id_grade` int(10) UNSIGNED DEFAULT NULL,
  `cout_horaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `charge_factures`
--

INSERT INTO `charge_factures` (`id_chargetache`, `id_grade`, `cout_horaire`, `created_at`, `updated_at`) VALUES
(1, 1, '400000', NULL, NULL),
(2, 2, '30000', NULL, NULL),
(3, 3, '300000', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `charge_taches`
--

CREATE TABLE `charge_taches` (
  `id_charge` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_tache` bigint(20) UNSIGNED NOT NULL,
  `id_chargetache` int(10) UNSIGNED DEFAULT NULL,
  `charge_tache` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `charge_taches`
--

INSERT INTO `charge_taches` (`id_charge`, `user_id`, `id_tache`, `id_chargetache`, `charge_tache`, `created_at`, `updated_at`) VALUES
(1, 13, 606, 2, '30000', '2021-09-28 15:20:37', '2021-09-28 15:20:37'),
(2, 13, 607, 2, '30000', '2021-09-29 11:36:48', '2021-09-29 11:36:48'),
(3, 10, 607, 2, '30000', '2021-09-29 11:36:48', '2021-09-29 11:36:48'),
(4, 13, 608, 2, '30000', '2021-09-29 11:39:34', '2021-09-29 11:39:34'),
(5, 13, 609, 2, '30000', '2021-09-29 12:03:27', '2021-09-29 12:03:27'),
(6, 13, 610, 2, '30000', '2021-09-29 12:06:23', '2021-09-29 12:06:23'),
(7, 13, 611, 2, '30000', '2021-09-29 12:08:36', '2021-09-29 12:08:36'),
(8, 10, 611, 2, '30000', '2021-09-29 12:08:36', '2021-09-29 12:08:36'),
(9, 4, 611, 2, '30000', '2021-09-29 12:08:36', '2021-09-29 12:08:36'),
(10, 10, 612, 2, '30000', '2021-09-29 12:10:43', '2021-09-29 12:10:43'),
(11, 4, 613, 2, '30000', '2021-09-29 12:11:46', '2021-09-29 12:11:46'),
(12, 29, 625, 2, '30000', '2021-10-05 16:55:07', '2021-10-05 16:55:07'),
(13, 13, 629, 2, '30000', '2021-10-27 08:02:47', '2021-10-27 08:02:47'),
(14, 10, 629, 2, '30000', '2021-10-27 08:02:47', '2021-10-27 08:02:47'),
(15, 2, 2, 2, '30000', '2021-11-19 10:28:32', '2021-11-19 10:28:32'),
(16, 2, 3, 2, '30000', '2021-11-19 14:01:42', '2021-11-19 14:01:42'),
(17, 2, 4, 2, '30000', '2021-11-19 15:31:04', '2021-11-19 15:31:04'),
(18, 2, 6, 2, '30000', '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(19, 13, 6, 2, '30000', '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(20, 29, 6, 2, '30000', '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(21, 2, 7, 2, '30000', '2022-04-06 15:40:16', '2022-04-06 15:40:16'),
(22, 13, 7, 2, '30000', '2022-04-06 15:40:16', '2022-04-06 15:40:16'),
(23, 2, 8, 2, '30000', '2022-04-06 15:40:58', '2022-04-06 15:40:58'),
(24, 13, 8, 2, '30000', '2022-04-06 15:40:58', '2022-04-06 15:40:58'),
(25, 2, 9, 2, '30000', '2022-04-06 15:42:51', '2022-04-06 15:42:51'),
(26, 13, 9, 2, '30000', '2022-04-06 15:42:51', '2022-04-06 15:42:51'),
(27, 2, 10, 2, '30000', '2022-04-06 15:43:43', '2022-04-06 15:43:43'),
(28, 13, 10, 2, '30000', '2022-04-06 15:43:43', '2022-04-06 15:43:43'),
(29, 2, 11, 2, '30000', '2022-04-06 15:44:45', '2022-04-06 15:44:45'),
(30, 13, 11, 2, '30000', '2022-04-06 15:44:45', '2022-04-06 15:44:45'),
(31, 2, 12, 2, '30000', '2022-04-06 15:48:33', '2022-04-06 15:48:33'),
(32, 13, 12, 2, '30000', '2022-04-06 15:48:33', '2022-04-06 15:48:33');

-- --------------------------------------------------------

--
-- Structure de la table `chats`
--

CREATE TABLE `chats` (
  `id_chat` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_projet` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fichier_chat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `nom_client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `id_secteur` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_commande` bigint(20) UNSIGNED NOT NULL,
  `id_biblio` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `valeur` int(11) NOT NULL,
  `date_demande` date NOT NULL,
  `date_expiration` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conges`
--

CREATE TABLE `conges` (
  `id_conge` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_respo` int(10) UNSIGNED DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `duree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_retour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` int(11) NOT NULL COMMENT '0= en attente, 1 = accepter, 2 = valider, 3= refuser',
  `motif` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `motif_etat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fichier_conge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_conge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conges`
--

INSERT INTO `conges` (`id_conge`, `user_id`, `id_respo`, `date_debut`, `date_fin`, `duree`, `date_retour`, `etat`, `motif`, `motif_etat`, `fichier_conge`, `type_conge`, `created_at`, `updated_at`) VALUES
(2, 10, 1, '2021-05-21', '2021-05-21', '0', '2021-05-22', 1, 'Par la présente, je sollicite votre autorisation pour pouvoir m\'absenter de l\'entreprise le 21/05/2021  à partir de 15h. En effet, je dois m’absenter pour l’élaboration de documents administratifs.', NULL, '[\"\"]', 'PERMISSION', '2021-05-21 07:07:37', '2021-05-21 07:07:37'),
(3, 2, 1, '2021-09-07', '2021-09-16', '9', '2021-09-17', 0, 'ok ok', NULL, '[\"\"]', 'CONGE', '2021-09-06 15:20:56', '2021-09-06 15:20:56'),
(4, 2, 8, '2021-10-19', '2021-10-30', '11', '2021-10-31', 0, 'fdijokdf', NULL, '[\"\"]', 'PERMISSION', '2021-10-29 08:40:46', '2021-10-29 08:40:46'),
(5, 2, 8, '2021-10-30', '2021-11-06', '7', '2021-11-07', 0, 'jknjk', NULL, '[\"\"]', 'PERMISSION', '2021-10-29 08:46:47', '2021-10-29 08:46:47');

-- --------------------------------------------------------

--
-- Structure de la table `cout_factures`
--

CREATE TABLE `cout_factures` (
  `id_couttache` bigint(20) UNSIGNED NOT NULL,
  `id_grade` int(10) UNSIGNED DEFAULT NULL,
  `cout_horaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cout_factures`
--

INSERT INTO `cout_factures` (`id_couttache`, `id_grade`, `cout_horaire`, `created_at`, `updated_at`) VALUES
(1, 1, '183668', NULL, NULL),
(2, 2, '35422', NULL, NULL),
(3, 3, '124632', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cout_taches`
--

CREATE TABLE `cout_taches` (
  `id_cout` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_tache` bigint(20) UNSIGNED NOT NULL,
  `id_couttache` int(10) UNSIGNED DEFAULT NULL,
  `cout_tache` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cout_taches`
--

INSERT INTO `cout_taches` (`id_cout`, `user_id`, `id_tache`, `id_couttache`, `cout_tache`, `created_at`, `updated_at`) VALUES
(4, 13, 606, 2, '35422', '2021-09-28 15:20:37', '2021-09-28 15:20:37'),
(5, 13, 607, 2, '35422', '2021-09-29 11:36:48', '2021-09-29 11:36:48'),
(6, 10, 607, 2, '35422', '2021-09-29 11:36:48', '2021-09-29 11:36:48'),
(7, 13, 608, 2, '35422', '2021-09-29 11:39:34', '2021-09-29 11:39:34'),
(8, 13, 609, 2, '35422', '2021-09-29 12:03:27', '2021-09-29 12:03:27'),
(9, 13, 610, 2, '35422', '2021-09-29 12:06:23', '2021-09-29 12:06:23'),
(10, 13, 611, 2, '35422', '2021-09-29 12:08:36', '2021-09-29 12:08:36'),
(11, 10, 611, 2, '35422', '2021-09-29 12:08:36', '2021-09-29 12:08:36'),
(12, 4, 611, 2, '35422', '2021-09-29 12:08:36', '2021-09-29 12:08:36'),
(13, 10, 612, 2, '35422', '2021-09-29 12:10:43', '2021-09-29 12:10:43'),
(14, 4, 613, 2, '35422', '2021-09-29 12:11:46', '2021-09-29 12:11:46'),
(15, 29, 625, 2, '35422', '2021-10-05 16:55:07', '2021-10-05 16:55:07'),
(16, 13, 629, 2, '35422', '2021-10-27 08:02:47', '2021-10-27 08:02:47'),
(17, 10, 629, 2, '35422', '2021-10-27 08:02:47', '2021-10-27 08:02:47'),
(18, 2, 2, 2, '35422', '2021-11-19 10:28:32', '2021-11-19 10:28:32'),
(19, 2, 3, 2, '35422', '2021-11-19 14:01:42', '2021-11-19 14:01:42'),
(20, 2, 4, 2, '35422', '2021-11-19 15:31:04', '2021-11-19 15:31:04'),
(21, 2, 6, 2, '35422', '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(22, 13, 6, 2, '35422', '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(23, 29, 6, 2, '35422', '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(24, 2, 7, 2, '35422', '2022-04-06 15:40:16', '2022-04-06 15:40:16'),
(25, 13, 7, 2, '35422', '2022-04-06 15:40:16', '2022-04-06 15:40:16'),
(26, 2, 8, 2, '35422', '2022-04-06 15:40:58', '2022-04-06 15:40:58'),
(27, 13, 8, 2, '35422', '2022-04-06 15:40:58', '2022-04-06 15:40:58'),
(28, 2, 9, 2, '35422', '2022-04-06 15:42:51', '2022-04-06 15:42:51'),
(29, 13, 9, 2, '35422', '2022-04-06 15:42:51', '2022-04-06 15:42:51'),
(30, 2, 10, 2, '35422', '2022-04-06 15:43:43', '2022-04-06 15:43:43'),
(31, 13, 10, 2, '35422', '2022-04-06 15:43:43', '2022-04-06 15:43:43'),
(32, 2, 11, 2, '35422', '2022-04-06 15:44:45', '2022-04-06 15:44:45'),
(33, 13, 11, 2, '35422', '2022-04-06 15:44:45', '2022-04-06 15:44:45'),
(34, 2, 12, 2, '35422', '2022-04-06 15:48:33', '2022-04-06 15:48:33'),
(35, 13, 12, 2, '35422', '2022-04-06 15:48:33', '2022-04-06 15:48:33');

-- --------------------------------------------------------

--
-- Structure de la table `demande_comptes`
--

CREATE TABLE `demande_comptes` (
  `id_compte` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_demande` date NOT NULL,
  `statut` int(11) NOT NULL,
  `id_secteur` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `demande_comptes`
--

INSERT INTO `demande_comptes` (`id_compte`, `nom`, `email`, `contact`, `adresse`, `date_demande`, `statut`, `id_secteur`, `created_at`, `updated_at`) VALUES
(1, 'AROA PARTNERS', 'info@aroapartners.com', '0575416957', 'Vallon', '2022-04-04', 1, 2, '2022-04-04 10:23:27', '2022-04-04 10:25:45'),
(2, 'NSIA ASSURANCE', 'nsia@gmail.com', '2720586578', 'Plateau', '2022-04-04', 1, 1, '2022-04-04 10:52:16', '2022-04-04 10:53:53'),
(3, 'NSIA BANQUE', 'nsia1@gmail.com', '2720014006', 'COCODY', '2022-04-04', 1, 4, '2022-04-04 15:56:24', '2022-04-04 15:57:08');

-- --------------------------------------------------------

--
-- Structure de la table `detail_users`
--

CREATE TABLE `detail_users` (
  `id_detail` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date_embauche` date NOT NULL,
  `date_fin_embauche` date DEFAULT NULL,
  `numero_matricule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_cnps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_naissance` date NOT NULL,
  `numero_cni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `detail_users`
--

INSERT INTO `detail_users` (`id_detail`, `user_id`, `date_embauche`, `date_fin_embauche`, `numero_matricule`, `numero_cnps`, `date_naissance`, `numero_cni`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-07-02', NULL, 'dvsvfbf65', 'vddf', '2021-07-16', 'dbbfdbf', '2021-07-29 09:42:43', '2021-07-29 09:42:43');

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE `entreprises` (
  `id_entreprise` bigint(20) UNSIGNED NOT NULL,
  `nom_entre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eamil_entre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_entre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_entre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut_entreprise` int(11) NOT NULL DEFAULT 0 COMMENT '0=actif,1=inactif',
  `id_secteur` bigint(20) UNSIGNED DEFAULT NULL,
  `id_groupe` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id_entreprise`, `nom_entre`, `eamil_entre`, `adresse_entre`, `contact_entre`, `statut_entreprise`, `id_secteur`, `id_groupe`, `created_at`, `updated_at`) VALUES
(1, 'AROA PARTNERS', 'info@aroapartners.com', 'Vallon', '0575416957', 0, 2, NULL, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(2, 'NSIA ASSURANCE', 'nsia@gmail.com', 'Plateau', '2720586578', 0, 1, 1, '2022-04-04 10:53:53', '2022-04-05 10:12:35'),
(3, 'NSIA BANQUE', 'nsia1@gmail.com', 'COCODY', '2720014006', 0, 4, 1, '2022-04-04 15:57:08', '2022-04-05 10:12:35');

-- --------------------------------------------------------

--
-- Structure de la table `equipements`
--

CREATE TABLE `equipements` (
  `id_equipement` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `nom_materiel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifiant_materiel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat_materiel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_envoi` date DEFAULT NULL,
  `date_retour` date DEFAULT NULL,
  `panne_materiel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_entreprise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut_mat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `equipements`
--

INSERT INTO `equipements` (`id_equipement`, `user_id`, `nom_materiel`, `identifiant_materiel`, `etat_materiel`, `date_envoi`, `date_retour`, `panne_materiel`, `nom_entreprise`, `statut_mat`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Souris', 'AZERTY01', 'EN PANNE', '2021-10-26', NULL, 'RAM', 'ISST', 'EN REPARATION', 1, '2021-07-08 14:15:24', '2021-10-26 14:23:09'),
(2, NULL, 'Ordinateur portable HP', 'HP007XC', 'BON ETAT', NULL, NULL, NULL, NULL, 'EN STOCK', 1, '2022-04-06 17:11:23', '2022-04-06 17:11:23'),
(3, 2, 'Ecran 24\" HP', 'EC32X007', 'BON ETAT', NULL, NULL, NULL, NULL, 'ATTRIBUE', 1, '2022-04-06 17:12:03', '2022-04-06 17:12:11');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation_respos`
--

CREATE TABLE `evaluation_respos` (
  `id_evaluate` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_projet` bigint(20) UNSIGNED NOT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsabilisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `federation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestion_equitable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comprehension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prise_decision` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleguation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disponibilite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adhesion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacite_emp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_org` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_respo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_com` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_fed` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_gestequit` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_compr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_prise` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_deleg` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_cap` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_pre` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_disp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_adh` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_capemp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_soumission` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evaluation_respos`
--

INSERT INTO `evaluation_respos` (`id_evaluate`, `user_id`, `id_projet`, `organisation`, `responsabilisation`, `communication`, `federation`, `gestion_equitable`, `comprehension`, `prise_decision`, `deleguation`, `capacite`, `presence`, `disponibilite`, `adhesion`, `capacite_emp`, `comment_org`, `comment_respo`, `comment_com`, `comment_fed`, `comment_gestequit`, `comment_compr`, `comment_prise`, `comment_deleg`, `comment_cap`, `comment_pre`, `comment_disp`, `comment_adh`, `comment_capemp`, `date_soumission`, `created_at`, `updated_at`) VALUES
(1, 2, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jésus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date DEFAULT NULL,
  `recurrence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heure_debut` time DEFAULT NULL,
  `heure_fin` time DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `user_id`, `name`, `start_time`, `end_time`, `recurrence`, `heure_debut`, `heure_fin`, `color`, `type_event`, `created_at`, `updated_at`) VALUES
(1, 4, 'Support IT', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#e528e3', 'Projet', '2021-04-29 10:06:50', '2021-04-29 10:06:50'),
(2, 4, 'tache_Projet1', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-04-29 12:29:48', '2021-04-29 12:29:48'),
(3, 5, 'INSAI', '2021-03-17', '2021-11-30', 'Pas de recurrence', NULL, NULL, '#e45327', 'Projet', '2021-04-29 12:39:10', '2021-04-29 12:39:10'),
(4, 6, 'REPONSE APPEL D\'OFFRE AFRICA RE', '2021-04-26', '2021-05-13', 'Pas de recurrence', '13:30:00', '00:00:00', '#556ee6', 'Reunion', '2021-04-29 14:56:55', '2021-04-29 14:56:55'),
(5, 12, 'Mes tâches quotidiennes', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#b1a19b', 'Projet', '2021-04-29 14:58:22', '2021-04-29 14:58:22'),
(6, 4, 'Outil de SEO', '2021-04-07', '2021-05-06', 'Pas de recurrence', NULL, NULL, '#70aaa6', 'Projet', '2021-04-29 15:21:09', '2021-04-29 15:21:09'),
(7, 10, 'developpement', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-04-29 15:24:07', '2021-04-29 15:24:07'),
(8, 10, 'Installation Django', '2021-04-10', '2021-04-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-04-29 15:25:42', '2021-04-29 15:25:42'),
(9, 14, 'Comptabilité-Déclarations sociales et fiscales', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#1d35ab', 'Projet', '2021-04-29 15:26:40', '2021-04-29 15:26:40'),
(10, 14, 'Comptabilité-Déclarations sociales et fiscales', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#f6971e', 'Projet', '2021-04-29 15:26:55', '2021-04-29 15:26:55'),
(11, 14, 'Comptabilité-Déclarations sociales et fiscales', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#4efc02', 'Projet', '2021-04-29 15:27:10', '2021-04-29 15:27:10'),
(12, 6, 'SHAREPOINT', '2021-04-05', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#864154', 'Projet', '2021-04-29 15:27:34', '2021-04-29 15:27:34'),
(13, 14, 'Suivi des travaux ménage', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-04-29 15:28:22', '2021-04-29 15:28:22'),
(14, 6, 'QUESTIONNAIRE RISK MANAGEMENT', '2021-04-18', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#21e290', 'Projet', '2021-04-29 15:33:10', '2021-04-29 15:33:10'),
(15, 6, 'QUESTIONNAIRE RISK MANAGEMENT', '2021-04-18', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#930c25', 'Projet', '2021-04-29 15:33:29', '2021-04-29 15:33:29'),
(16, 8, 'REPONSE APPEL D\'OFFRE AFRICA RE', '2021-04-26', '2021-05-13', 'Pas de recurrence', NULL, NULL, '#e72230', 'Projet', '2021-04-29 15:42:23', '2021-04-29 15:42:23'),
(17, 5, 'tache1', '2021-05-03', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:26:01', '2021-05-03 13:26:01'),
(18, 6, 'tache1', '2021-05-03', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:26:01', '2021-05-03 13:26:01'),
(19, 9, 'tache1', '2021-05-03', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:26:01', '2021-05-03 13:26:01'),
(20, 6, 'Appel', '2021-03-22', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:35:45', '2021-05-03 13:35:45'),
(21, 6, 'Mailing', '2021-03-22', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:39:08', '2021-05-03 13:39:08'),
(22, 6, 'Mailing', '2021-03-22', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:50:29', '2021-05-03 13:50:29'),
(23, 6, 'RDV Présentiel', '2021-03-22', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:53:48', '2021-05-03 13:53:48'),
(24, 6, 'RDV Présentiel', '2021-03-22', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:53:52', '2021-05-03 13:53:52'),
(25, 6, 'Formation', '2021-04-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 13:56:05', '2021-05-03 13:56:05'),
(26, 14, 'Déclarations sociales de Juillet 2019 à Décembre 2020', '2021-04-07', '2021-04-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 14:37:49', '2021-05-03 14:37:49'),
(27, 14, 'Déclarations travailleurs DIBY et KADE', '2021-04-08', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 14:39:22', '2021-05-03 14:39:22'),
(28, 14, 'Etablissement des DISA 2019 et 2020', '2021-04-07', '2021-04-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 14:40:26', '2021-05-03 14:40:26'),
(29, 14, 'Déclaration travailleur KOUADIO PHINEAS', '2021-04-09', '2021-04-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 14:42:06', '2021-05-03 14:42:06'),
(30, 14, 'Déclarations sociales 1er trimestre 2021 (Jan-Fév-Mar)', '2021-04-13', '2021-04-13', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 14:44:28', '2021-05-03 14:44:28'),
(31, 14, 'Dépôt des appels de cotisation des travailleurs dont les numéros matricules ne sont pas disponibles (KADE, KOUADIO, BAZIE)', '2021-04-14', '2021-04-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 14:47:18', '2021-05-03 14:47:18'),
(32, 14, 'Suivi travaux de plomberie', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 15:01:53', '2021-05-03 15:01:53'),
(33, 12, 'Compte rendu de réunion', '2021-01-04', '2021-12-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 15:03:39', '2021-05-03 15:03:39'),
(34, 12, 'Organisation de Réunion d\'équipe', '2021-02-08', '2021-12-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 15:05:29', '2021-05-03 15:05:29'),
(35, 12, 'Supervision travaux menuiserie, plomberie', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 15:07:35', '2021-05-03 15:07:35'),
(36, 12, 'Suivi des travaux ménage', '2021-05-04', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-03 16:22:40', '2021-05-03 16:22:40'),
(37, 8, 'Rédaction et correction de la feuille de route de rénovation du site web', '2021-04-07', '2021-04-09', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:33:00', '2021-05-04 06:33:00'),
(38, 5, 'Mise à jour et retouche intégrale du planning', '2021-04-07', '2021-04-09', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:35:45', '2021-05-04 06:35:45'),
(39, 15, 'Suivi et validation des publications', '2021-04-07', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:36:55', '2021-05-04 06:36:55'),
(40, 5, 'Recherche de site web d\'inspiration et univers similaire', '2021-04-07', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:38:03', '2021-05-04 06:38:03'),
(41, 15, 'Rédaction du guide d\'utilisation des Réseaux Sociaux', '2021-04-07', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:39:05', '2021-05-04 06:39:05'),
(42, 5, 'Organisation et CR de réunion', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:40:08', '2021-05-04 06:40:08'),
(43, 15, 'Refonte du logo', '2021-04-14', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:43:15', '2021-05-04 06:43:15'),
(44, 5, 'Rapport SEA', '2021-04-14', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:48:44', '2021-05-04 06:48:44'),
(45, 8, 'Conception du tableau de bord Project management', '2021-04-16', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:49:48', '2021-05-04 06:49:48'),
(46, 15, 'Conception de la maquette du site', '2021-04-16', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:51:01', '2021-05-04 06:51:01'),
(47, 5, 'Confection du fichier de suivi du contenu', '2021-04-20', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:53:55', '2021-05-04 06:53:55'),
(48, 15, 'Conception du cahier de procédure et suivi', '2021-04-16', '2021-04-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:55:28', '2021-05-04 06:55:28'),
(49, 15, 'Réunion d\'informations et de formation sur le paramétrage des alertes pour les actus', '2021-04-07', '2021-04-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 06:56:19', '2021-05-04 06:56:19'),
(50, 14, 'Tri des reçus de déclarations (150 mails)', '2021-04-07', '2021-04-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 07:27:28', '2021-05-04 07:27:28'),
(51, 14, 'Déclaration annuelle de l\'impôt professionnel (7% du Chiffre d\'affaires réalisé sur l\'année 2020)', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 08:04:09', '2021-05-04 08:04:09'),
(52, 14, 'Déclarations fiscales Avril 2021 et paiements (its, fdfp, retenues à la source bnc/bic)', '2021-05-02', '2021-05-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 08:08:49', '2021-05-04 08:08:49'),
(53, 14, 'Suivi du transfert de centre d\'impôt', '2021-04-09', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 08:26:51', '2021-05-04 08:26:51'),
(54, 14, 'Suivi du transfert de centre d\'impôt', '2021-04-09', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 08:26:55', '2021-05-04 08:26:55'),
(55, 14, 'Synthèse sur le nouveau régime, régime fiscale des microentreprises', '2021-04-19', '2021-04-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 08:32:13', '2021-05-04 08:32:13'),
(56, 12, 'Enregistrement des pièces comptables', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 08:44:40', '2021-05-04 08:44:40'),
(57, 14, 'Vérification des pièces comptables enregistrer par Mme DEA', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 08:47:32', '2021-05-04 08:47:32'),
(58, 14, 'Assistance au cabinet EBUR-FIDUCIAIRE pour la vérification des pièces comptables', '2021-04-08', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 09:00:09', '2021-05-04 09:00:09'),
(59, 12, 'Inventaire du matériel d\'exploitation et autres', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 09:12:01', '2021-05-04 09:12:01'),
(60, 4, 'Inventaire semestriel du matériel informatique', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 09:20:59', '2021-05-04 09:20:59'),
(61, 4, 'Manuel de procédures administratives, opérationnelles et comptables', '2021-04-07', '2021-06-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 09:37:57', '2021-05-04 09:37:57'),
(62, 5, 'Manuel de procédures administratives, opérationnelles et comptables', '2021-04-07', '2021-06-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 09:37:57', '2021-05-04 09:37:57'),
(63, 12, 'Manuel de procédures administratives, opérationnelles et comptables', '2021-04-07', '2021-06-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 09:37:57', '2021-05-04 09:37:57'),
(64, 14, 'Modifications du contrat de travail type (CDI)', '2021-01-01', '2021-03-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 09:43:52', '2021-05-04 09:43:52'),
(65, 5, 'Livret d\'accueil Aroa Partners', '2021-04-16', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:08:24', '2021-05-04 10:08:24'),
(66, 15, 'Livret d\'accueil Aroa Partners', '2021-04-16', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:08:24', '2021-05-04 10:08:24'),
(67, 14, 'Recherches et synthèse sur les bureaux de placement payant', '2021-04-29', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:14:24', '2021-05-04 10:14:24'),
(68, 14, 'Avenant au contrat de travail GBEHE', '2021-04-15', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:28:08', '2021-05-04 10:28:08'),
(69, 14, 'Avenant au contrat de travail KANGAH', '2021-04-14', '2021-04-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:29:49', '2021-05-04 10:29:49'),
(70, 14, 'Contrat de  travail KOUADIO LESLIE', '2021-05-04', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:31:38', '2021-05-04 10:31:38'),
(71, 6, 'Recherches compréhension SharePoint', '2021-04-07', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:31:53', '2021-05-04 10:31:53'),
(72, 14, 'Contrat de travail KOUADIO PHINEAS', '2021-05-04', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:32:42', '2021-05-04 10:32:42'),
(73, 6, 'Synthèse des recherches sur la compréhension du SharePoint', '2021-04-15', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:33:22', '2021-05-04 10:33:22'),
(74, 6, 'Synthèse des recherches sur la compréhension du SharePoint', '2021-04-15', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:33:26', '2021-05-04 10:33:26'),
(75, 14, 'Contrat de travail AKICHI', '2021-05-04', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:34:02', '2021-05-04 10:34:02'),
(76, 14, 'Contrat pré-emploi COULIBALY JONATHAN', '2021-04-29', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:37:05', '2021-05-04 10:37:05'),
(77, 4, 'Séance de restitution', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:40:08', '2021-05-04 10:40:08'),
(78, 13, 'Séance de restitution', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:40:08', '2021-05-04 10:40:08'),
(79, 4, 'Séance de restitution', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:40:11', '2021-05-04 10:40:11'),
(80, 13, 'Séance de restitution', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:40:11', '2021-05-04 10:40:11'),
(81, 4, 'Conception et programation de l\'algorithme', '2021-03-22', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:40:40', '2021-05-04 10:40:40'),
(82, 13, 'Conception et programation de l\'algorithme', '2021-03-22', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:40:40', '2021-05-04 10:40:40'),
(83, 4, 'Organisation arrivée des stagiaires BABA BA et COULIBALY JONATHAN', '2021-04-16', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:41:06', '2021-05-04 10:41:06'),
(84, 5, 'Organisation arrivée des stagiaires BABA BA et COULIBALY JONATHAN', '2021-04-16', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:41:06', '2021-05-04 10:41:06'),
(85, 12, 'Organisation arrivée des stagiaires BABA BA et COULIBALY JONATHAN', '2021-04-16', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:41:06', '2021-05-04 10:41:06'),
(86, 4, 'Frontend', '2021-03-22', '2021-04-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:42:47', '2021-05-04 10:42:47'),
(87, 4, 'Décharge matériel BABA BA', '2021-05-04', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:43:09', '2021-05-04 10:43:09'),
(88, 4, 'Developpement de la fonction update_data', '2021-04-07', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:43:55', '2021-05-04 10:43:55'),
(89, 4, 'Documentation du code ALM', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:44:45', '2021-05-04 10:44:45'),
(90, 6, 'Recherches note de lancement', '2021-04-16', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:45:00', '2021-05-04 10:45:00'),
(91, 4, 'Frontend  animation loading', '2021-04-12', '2021-05-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:47:23', '2021-05-04 10:47:23'),
(92, 14, 'Avenant au contrat de travail DEA', '2021-05-04', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:57:05', '2021-05-04 10:57:05'),
(93, 14, 'Avenant au contrat de travail DEA', '2021-05-04', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:57:09', '2021-05-04 10:57:09'),
(94, 14, 'Contrat de travail KADE', '2021-02-19', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 10:58:45', '2021-05-04 10:58:45'),
(95, 12, 'Elaboration de planning', '2021-03-17', '2021-03-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:00:31', '2021-05-04 11:00:31'),
(96, 13, 'Elaboration de planning', '2021-03-17', '2021-03-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:00:31', '2021-05-04 11:00:31'),
(97, 4, 'authentification (register & login) front', '2021-04-13', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:02:37', '2021-05-04 11:02:37'),
(98, 4, 'authentification (register & login) front', '2021-04-13', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:05:52', '2021-05-04 11:05:52'),
(99, 4, 'authentification (register & login) front', '2021-04-13', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:05:56', '2021-05-04 11:05:56'),
(100, 4, 'authentification (register & login) back', '2021-04-14', '2021-05-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:08:03', '2021-05-04 11:08:03'),
(101, 14, 'Participation à la formation  Mode Projet', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:10:45', '2021-05-04 11:10:45'),
(102, 4, 'cours sur le criptage des mot de passe', '2021-04-14', '2021-05-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:13:46', '2021-05-04 11:13:46'),
(103, 14, 'Tableau de bord', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:15:08', '2021-05-04 11:15:08'),
(104, 4, 'Cours integration Django forms', '2021-04-15', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:22:08', '2021-05-04 11:22:08'),
(105, 4, 're-configuration de l\'espace de dev python+test', '2021-04-26', '2021-04-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:23:54', '2021-05-04 11:23:54'),
(106, 4, 're-configuration de l\'espace de dev python+test', '2021-04-26', '2021-04-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:23:57', '2021-05-04 11:23:57'),
(107, 13, 'Modélisation de la base données', '2021-03-18', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:24:36', '2021-05-04 11:24:36'),
(108, 13, 'Création de model et de controller', '2021-03-22', '2021-03-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:26:50', '2021-05-04 11:26:50'),
(109, 4, 'Instalation et configuration de l\'ordi Mme Bogui', '2021-04-08', '2021-05-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:26:55', '2021-05-04 11:26:55'),
(110, 13, 'Test des fonctionnalités', '2021-04-08', '2021-05-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:29:28', '2021-05-04 11:29:28'),
(111, 4, 'resolution du pb outlook M. AGBE', '2021-04-08', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:30:45', '2021-05-04 11:30:45'),
(112, 13, 'Correction des bugs', '2021-04-07', '2021-05-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:31:09', '2021-05-04 11:31:09'),
(113, 4, 'Point equipe IT', '2021-04-08', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:32:33', '2021-05-04 11:32:33'),
(114, 13, 'Création d\'interface de gestion des absences', '2021-04-07', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:34:41', '2021-05-04 11:34:41'),
(115, 4, 'Test app CRM', '2021-04-12', '2021-05-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:36:38', '2021-05-04 11:36:38'),
(116, 13, 'Validation de projet', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 11:40:03', '2021-05-04 11:40:03'),
(117, 14, 'Formation: Découvrez les métiers des ressources humaines', '2021-04-14', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:27:19', '2021-05-04 12:27:19'),
(118, 4, 'Resolution du probleme outlook  de contact', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:38:43', '2021-05-04 12:38:43'),
(119, 4, 'Resolution du probleme outlook  de contact', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:38:47', '2021-05-04 12:38:47'),
(120, 4, 'Point InsAI', '2021-04-08', '2021-11-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:40:02', '2021-05-04 12:40:02'),
(121, 4, 'Contact e-monney', '2021-04-14', '2021-04-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:40:59', '2021-05-04 12:40:59'),
(122, 14, 'Formation: Déployez une démarche de GPEC (Gestion Prévisionnelle des Emplois et des Compétences)', '2021-05-17', '2021-05-24', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:41:26', '2021-05-04 12:41:26'),
(123, 4, 'refonte du fichier de suivi des heures', '2021-04-14', '2021-04-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:45:41', '2021-05-04 12:45:41'),
(124, 4, 'Nettoyage de la machine de Kade', '2021-04-14', '2021-04-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:46:37', '2021-05-04 12:46:37'),
(125, 4, 'Recherche de cotation banque mobile', '2021-04-16', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:48:06', '2021-05-04 12:48:06'),
(126, 14, 'Point hebdomadaire', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:48:22', '2021-05-04 12:48:22'),
(127, 4, 'Tri de cv avec Mme Bogui', '2021-04-14', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:49:44', '2021-05-04 12:49:44'),
(128, 4, 'Seance photo', '2021-04-20', '2021-05-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:50:48', '2021-05-04 12:50:48'),
(129, 4, 'Point Hebdo', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:52:31', '2021-05-04 12:52:31'),
(130, 14, 'Mise à jour outil CRM', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:55:26', '2021-05-04 12:55:26'),
(131, 14, 'Shooting photo équipe', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:57:37', '2021-05-04 12:57:37'),
(132, 5, 'Tri photos shooting', '2021-04-23', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 12:59:31', '2021-05-04 12:59:31'),
(133, 4, 'Point avec  le boss + rapport', '2021-04-19', '2021-04-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:01:15', '2021-05-04 13:01:15'),
(134, 6, 'Tests application INS\'AI', '2021-04-23', '2021-04-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:01:41', '2021-05-04 13:01:41'),
(135, 9, 'Tests application INS\'AI', '2021-04-23', '2021-04-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:01:41', '2021-05-04 13:01:41'),
(136, 12, 'Tests application INS\'AI', '2021-04-23', '2021-04-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:01:41', '2021-05-04 13:01:41'),
(137, 4, 'Point equipe IT', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:03:49', '2021-05-04 13:03:49'),
(138, 4, 'Point Hebdo', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:04:42', '2021-05-04 13:04:42'),
(139, 4, 'Point InsAI', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:05:51', '2021-05-04 13:05:51'),
(140, 15, 'Veille informationnelle sur les ressources humaines', '2021-04-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:07:26', '2021-05-04 13:07:26'),
(141, 4, 'Groupe Electrogene', '2021-04-19', '2021-04-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:08:36', '2021-05-04 13:08:36'),
(142, 14, 'Mise à jour suivi des heures hebdomadaires excel', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:08:53', '2021-05-04 13:08:53'),
(143, 4, 'Call pour banque digital+rapport', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:09:58', '2021-05-04 13:09:58'),
(144, 14, 'Plan d\'actions RH', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:10:35', '2021-05-04 13:10:35'),
(145, 4, 'point app analyse SEO', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:10:55', '2021-05-04 13:10:55'),
(146, 14, 'Réponse à toute candidature', '2021-01-01', '2021-12-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:15:04', '2021-05-04 13:15:04'),
(147, 14, 'Tri de candidats potentiels', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:18:19', '2021-05-04 13:18:19'),
(148, 4, 'conversion  doc boss', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:18:48', '2021-05-04 13:18:48'),
(149, 4, 'point reassurance + rapport', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:19:31', '2021-05-04 13:19:31'),
(150, 4, 'Config Teams', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:20:17', '2021-05-04 13:20:17'),
(151, 14, 'Programmation des entretiens et établissement de l\'agenda des entretiens', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:20:21', '2021-05-04 13:20:21'),
(152, 4, 'Resolution pb Teams', '2021-04-23', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:20:55', '2021-05-04 13:20:55'),
(153, 4, 'config nouvelle machine KADE', '2021-04-23', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:21:45', '2021-05-04 13:21:45'),
(154, 4, 'choix photo', '2021-04-23', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:22:36', '2021-05-04 13:22:36'),
(155, 4, 'intervention Microsoft support', '2021-04-23', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:23:15', '2021-05-04 13:23:15'),
(156, 4, 'Analyse des cv et sélection', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:23:59', '2021-05-04 13:23:59'),
(157, 5, 'Analyse des cv et sélection', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:23:59', '2021-05-04 13:23:59'),
(158, 4, 'point avec M. odjo', '2021-04-26', '2021-05-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:24:02', '2021-05-04 13:24:02'),
(159, 4, 'Seance travail avec akichi', '2021-05-26', '2021-05-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:25:42', '2021-05-04 13:25:42'),
(160, 4, 'Achat de caburant et mise en mache du GE', '2021-04-27', '2021-04-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:26:36', '2021-05-04 13:26:36'),
(161, 4, 'Entretien Développeur Web et Développeur Mobile', '2021-04-19', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:26:53', '2021-05-04 13:26:53'),
(162, 4, 'Inventaire', '2021-04-27', '2021-04-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:27:31', '2021-05-04 13:27:31'),
(163, 4, 'Deploiment de serveur ftp', '2021-04-27', '2021-04-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:28:24', '2021-05-04 13:28:24'),
(164, 14, 'Organisation des différents pôles', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:37:13', '2021-05-04 13:37:13'),
(165, 4, 'Accompagnement des managers de pôle dans l\'encadrement des équipes', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:39:22', '2021-05-04 13:39:22'),
(166, 5, 'Accompagnement des managers de pôle dans l\'encadrement des équipes', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:39:22', '2021-05-04 13:39:22'),
(167, 4, 'Revue site web', '2021-05-28', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:41:01', '2021-05-04 13:41:01'),
(168, 4, 'Accompagnement des pôles sur les différents projets', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:42:12', '2021-05-04 13:42:12'),
(169, 5, 'Accompagnement des pôles sur les différents projets', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:42:12', '2021-05-04 13:42:12'),
(170, 8, 'Accompagnement des pôles sur les différents projets', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:42:12', '2021-05-04 13:42:12'),
(171, 4, 'Offre securité info', '2021-05-28', '2021-05-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:43:59', '2021-05-04 13:43:59'),
(172, 4, 'Support au dev de l\'app CRM', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:45:11', '2021-05-04 13:45:11'),
(173, 14, 'Analyse des postes', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:46:47', '2021-05-04 13:46:47'),
(174, 4, 'Seance travail avec akichi', '2021-04-26', '2021-04-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:46:51', '2021-05-04 13:46:51'),
(175, 14, 'Recherche de partenariat avec des établissements', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:47:34', '2021-05-04 13:47:34'),
(176, 4, 'Revue site web', '2021-04-28', '2021-04-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:48:02', '2021-05-04 13:48:02'),
(177, 4, 'Offre securité info', '2021-04-28', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 13:52:00', '2021-05-04 13:52:00'),
(178, 14, 'Evaluation des qualités personnelles et professionnelles des candidats à travers les entretiens', '2021-01-01', '2021-01-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:00:59', '2021-05-04 14:00:59'),
(179, 14, 'Mise à jour de la base de candidatures', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:02:31', '2021-05-04 14:02:31'),
(180, 10, 'installation de pycharm éditeur de code pour python', '2021-04-10', '2021-04-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:08:56', '2021-05-04 14:08:56'),
(181, 10, 'Installation de packages python pour analyse', '2021-04-11', '2021-04-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:09:59', '2021-05-04 14:09:59'),
(182, 10, 'Choix de template et intégration', '2021-04-15', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:11:21', '2021-05-04 14:11:21'),
(183, 10, 'Recherche des API et packages', '2021-04-21', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:12:32', '2021-05-04 14:12:32'),
(184, 12, 'Revue des travaux', '2021-04-07', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:16:07', '2021-05-04 14:16:07'),
(185, 12, 'Règlement de factures ORANGE', '2021-04-09', '2021-04-09', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:18:25', '2021-05-04 14:18:25'),
(186, 12, 'Règlement de factures ORANGE', '2021-04-09', '2021-04-09', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:18:28', '2021-05-04 14:18:28'),
(187, 4, 'Test elementaire', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:19:04', '2021-05-04 14:19:04'),
(188, 10, 'Test elementaire', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:19:04', '2021-05-04 14:19:04'),
(189, 12, 'Suivi des travaux ménage', '2021-04-07', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:19:23', '2021-05-04 14:19:23'),
(190, 12, 'Suivi travaux de plomberie', '2021-04-12', '2021-04-13', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:22:00', '2021-05-04 14:22:00'),
(191, 12, 'Constitution du dossier pour la banque', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:25:24', '2021-05-04 14:25:24'),
(192, 6, 'Réunion de préparation', '2021-04-26', '2021-05-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:25:27', '2021-05-04 14:25:27'),
(193, 6, 'Réunion de préparation', '2021-04-26', '2021-05-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:26:29', '2021-05-04 14:26:29'),
(194, 12, 'Constitution du dossier pour la banque', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:26:32', '2021-05-04 14:26:32'),
(195, 12, 'Constitution du dossier pour la banque', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:26:35', '2021-05-04 14:26:35'),
(196, 6, 'Réunion de préparation', '2021-04-26', '2021-05-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:26:38', '2021-05-04 14:26:38'),
(197, 15, 'Communication digitale : point de l\'existant et solutions', '2021-04-22', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:30:27', '2021-05-04 14:30:27'),
(198, 14, 'Objectifs et plan d\'action', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:31:01', '2021-05-04 14:31:01'),
(199, 15, 'Recherche solution dans le centre d\'aide google my business', '2021-03-08', '2021-03-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:31:38', '2021-05-04 14:31:38'),
(200, 14, 'Administration du personnel', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:31:48', '2021-05-04 14:31:48'),
(201, 4, 'Test et insight', '2021-04-07', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:32:05', '2021-05-04 14:32:05'),
(202, 9, 'Test et insight', '2021-04-07', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:32:05', '2021-05-04 14:32:05'),
(203, 15, 'Test et insight', '2021-04-07', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:32:05', '2021-05-04 14:32:05'),
(204, 12, 'Mise à jour du fichier AROA P-D2A CONSEIL', '2021-04-14', '2021-04-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:33:52', '2021-05-04 14:33:52'),
(205, 15, 'Introduction de la prodédure de protection des données recoltées par l\'appli', '2021-04-08', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:33:56', '2021-05-04 14:33:56'),
(206, 15, 'Introduction de la prodédure de protection des données recoltées par l\'appli', '2021-04-08', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:34:00', '2021-05-04 14:34:00'),
(207, 14, 'Politique de rémunération', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:34:41', '2021-05-04 14:34:41'),
(208, 12, 'Compte rendu de réunion', '2021-04-05', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:35:48', '2021-05-04 14:35:48'),
(209, 14, 'Développement des RH', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:35:52', '2021-05-04 14:35:52'),
(210, 14, 'Gestion de la motivation', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:37:00', '2021-05-04 14:37:00'),
(211, 5, 'Début de rédaction des CGU et impératifs d\'utilisation', '2021-04-15', '2021-04-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:37:05', '2021-05-04 14:37:05'),
(212, 14, 'Communication interne', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:37:52', '2021-05-04 14:37:52'),
(213, 15, 'Debut Elaboration Manuel d\'acceuil', '2021-01-08', '2021-03-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:38:03', '2021-05-04 14:38:03'),
(214, 4, 'Brainstorming Naming et proprositions', '2021-04-15', '2021-05-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:38:15', '2021-05-04 14:38:15'),
(215, 9, 'Brainstorming Naming et proprositions', '2021-04-15', '2021-05-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:38:15', '2021-05-04 14:38:15'),
(216, 15, 'Brainstorming Naming et proprositions', '2021-04-15', '2021-05-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:38:15', '2021-05-04 14:38:15'),
(217, 12, 'Réunion d\'équipe', '2021-04-05', '2021-04-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:38:27', '2021-05-04 14:38:27'),
(218, 15, 'uite Elaboration Manuel d\'acceuil(Recherche d\'image pour le manuel +confection graphique sur Illustrator + Traitement d\'image sur photoshop+ redaction textuelle)', '2021-03-08', '2021-03-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:39:54', '2021-05-04 14:39:54'),
(219, 15, 'uite Elaboration Manuel d\'acceuil(Recherche d\'image pour le manuel +confection graphique sur Illustrator + Traitement d\'image sur photoshop+ redaction textuelle)', '2021-03-08', '2021-03-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:39:58', '2021-05-04 14:39:58'),
(220, 5, 'Correction des fiches de test', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:40:29', '2021-05-04 14:40:29'),
(221, 14, 'Adaptation de l\'effectif et des compétences du personnel aux besoins actuels et futurs de l\'entreprise', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:40:53', '2021-05-04 14:40:53'),
(222, 15, '2 CREATION GRAPHIQUE POUR MANUEL DE BIENVENUE', '2021-03-08', '2021-03-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:41:38', '2021-05-04 14:41:38'),
(223, 15, '2 CREATION GRAPHIQUE POUR MANUEL DE BIENVENUE', '2021-03-08', '2021-03-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:41:42', '2021-05-04 14:41:42'),
(224, 15, 'Veille hebdomadaire', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:42:21', '2021-05-04 14:42:21'),
(225, 15, 'Assistance aux équipes pour l\'ajout des alertes google', '2021-01-01', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:43:27', '2021-05-04 14:43:27'),
(226, 14, 'Réalisation de bilans professionnels', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:43:36', '2021-05-04 14:43:36'),
(227, 14, 'Mise en place de plans et de bilans de formation', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:44:39', '2021-05-04 14:44:39'),
(228, 15, 'Assistance aux équipes pour signature', '2021-01-01', '2021-12-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:44:57', '2021-05-04 14:44:57'),
(229, 5, 'Suivi de l\'intégration dans l\'entreprise', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:45:45', '2021-05-04 14:45:45'),
(230, 14, 'Suivi de l\'intégration dans l\'entreprise', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:45:45', '2021-05-04 14:45:45'),
(231, 15, 'Traitement actualité', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:45:48', '2021-05-04 14:45:48'),
(232, 15, 'Traitement actualité', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:45:51', '2021-05-04 14:45:51'),
(233, 12, 'Travaux de menuiserie', '2021-04-19', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:45:55', '2021-05-04 14:45:55'),
(234, 12, 'Travaux de menuiserie', '2021-04-19', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:45:58', '2021-05-04 14:45:58'),
(235, 15, 'Traitement actualité', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:46:01', '2021-05-04 14:46:01'),
(236, 15, 'Réorganisation de la communication interne', '2021-04-05', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:48:03', '2021-05-04 14:48:03'),
(237, 13, 'Gestion du back office Ressources humaines', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:48:22', '2021-05-04 14:48:22'),
(238, 14, 'Gestion du back office Ressources humaines', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:48:22', '2021-05-04 14:48:22'),
(239, 12, 'Séance de travail KALABOU', '2021-04-27', '2021-04-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:49:36', '2021-05-04 14:49:36'),
(240, 12, 'Vérification mail', '2021-04-07', '2021-04-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:51:07', '2021-05-04 14:51:07'),
(241, 10, 'Traduction du front office', '2021-04-19', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:51:15', '2021-05-04 14:51:15'),
(242, 15, 'Traduction du front office', '2021-04-19', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:51:15', '2021-05-04 14:51:15'),
(243, 15, 'SEANCE PHOTO PLANIFICATION+EXECUTION+TRAITEMENT', '2021-04-06', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:51:27', '2021-05-04 14:51:27'),
(244, 14, 'Obligation légales: immatriculation du travailleur', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:52:01', '2021-05-04 14:52:01'),
(245, 14, 'Obligation légales: immatriculation du travailleur', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:52:04', '2021-05-04 14:52:04'),
(246, 14, 'Obligation légale: Assurance santé', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:53:42', '2021-05-04 14:53:42'),
(247, 12, 'Programmation de cours', '2021-04-07', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:54:56', '2021-05-04 14:54:56'),
(248, 9, 'Correction de l\'orthographe de l\'appli', '2021-04-07', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:55:12', '2021-05-04 14:55:12'),
(249, 15, 'Correction de l\'orthographe de l\'appli', '2021-04-07', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:55:12', '2021-05-04 14:55:12'),
(250, 15, 'COURRIER A L\'ARTCI PROCEDURE HEBERGEMENT', '2021-03-22', '2021-03-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:55:26', '2021-05-04 14:55:26'),
(251, 12, 'Course extérieure', '2021-04-09', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:56:54', '2021-05-04 14:56:54'),
(252, 14, 'Comité de pilotage', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:57:15', '2021-05-04 14:57:15'),
(253, 6, 'Révision cours de réassurances', '2021-04-14', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:57:33', '2021-05-04 14:57:33'),
(254, 10, 'Dynamisation du site', '2021-02-15', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:57:55', '2021-05-04 14:57:55'),
(255, 12, 'Service Direction', '2021-04-07', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:58:19', '2021-05-04 14:58:19'),
(256, 15, 'DEFINITION + ACTUALISATION PLANNING', '2021-03-29', '2021-04-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:58:24', '2021-05-04 14:58:24'),
(257, 6, 'EXAMEN ANNEXES SFCR', '2021-04-12', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:58:36', '2021-05-04 14:58:36'),
(258, 10, 'Revue de la structure visuelle de la section formation (Ajout de bloc de contenu)', '2021-03-24', '2021-03-25', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 14:59:23', '2021-05-04 14:59:23'),
(259, 10, 'Ajout de la localisation géographique des visiteurs pour l’optimisation du ciblage', '2021-03-22', '2021-03-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:00:14', '2021-05-04 15:00:14'),
(260, 6, 'Résumé Mathématiques financières (Evaluation des actifs et analyse du risque)', '2021-05-04', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:00:34', '2021-05-04 15:00:34'),
(261, 5, 'Formations professionnelles: remédier aux pertes d\'efficacités individuelles et collectives', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:00:58', '2021-05-04 15:00:58'),
(262, 10, 'Établissement d’un champ de sélection parallèle au champ d’abonnement a la newsletter pour un meilleur ciblage socioprofessionnel', '2021-03-26', '2021-03-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:01:02', '2021-05-04 15:01:02'),
(263, 5, 'Animation de groupe de travail', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:01:44', '2021-05-04 15:01:44'),
(264, 10, 'Correction des fautes d\'orthographe', '2021-04-06', '2021-04-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:01:49', '2021-05-04 15:01:49'),
(265, 4, 'Conception du cahier de charge du second module', '2021-05-04', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:02:06', '2021-05-04 15:02:06'),
(266, 9, 'Conception du cahier de charge du second module', '2021-05-04', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:02:06', '2021-05-04 15:02:06'),
(267, 15, 'Conception du cahier de charge du second module', '2021-05-04', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:02:06', '2021-05-04 15:02:06'),
(268, 10, 'création d\'une nouvelle page \"notre équipe\"', '2021-04-02', '2021-04-02', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:02:33', '2021-05-04 15:02:33'),
(269, 12, 'Suivi dossier HO', '2021-04-09', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:03:16', '2021-05-04 15:03:16'),
(270, 6, 'Communication digitale', '2021-04-01', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:03:41', '2021-05-04 15:03:41'),
(271, 15, 'Brainstorming naming', '2021-03-19', '2021-03-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:04:12', '2021-05-04 15:04:12'),
(272, 10, 'Ajout des bouton de partage sur les blogs', '2021-03-15', '2021-03-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:04:48', '2021-05-04 15:04:48'),
(273, 10, 'info defilant sur la page nos references', '2021-02-25', '2021-02-25', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:05:56', '2021-05-04 15:05:56'),
(274, 10, 'Envoie de mail automatique contact et newsletter', '2021-03-17', '2021-03-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:06:26', '2021-05-04 15:06:26'),
(275, 12, 'Appel extérieur', '2021-04-07', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:06:59', '2021-05-04 15:06:59'),
(276, 15, 'Préparation+ exécution + test insai', '2021-03-15', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:07:17', '2021-05-04 15:07:17'),
(277, 12, 'Synthèse bureaux de représentation', '2020-08-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:08:38', '2021-05-04 15:08:38'),
(278, 6, 'Illustration Art. Risk Management', '2021-04-08', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:11:16', '2021-05-04 15:11:16'),
(279, 15, 'Illustration Art. Risk Management', '2021-04-08', '2021-04-08', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:11:16', '2021-05-04 15:11:16'),
(280, 5, 'Veille informationnelle', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:12:05', '2021-05-04 15:12:05'),
(281, 12, 'Relecture et correction des traductions en anglais', '2021-04-20', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:14:29', '2021-05-04 15:14:29'),
(282, 15, 'Relecture et correction des traductions en anglais', '2021-04-20', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:14:29', '2021-05-04 15:14:29'),
(283, 5, 'Listing et organisation des rubriques métiers du site web', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:15:37', '2021-05-04 15:15:37');
INSERT INTO `events` (`id`, `user_id`, `name`, `start_time`, `end_time`, `recurrence`, `heure_debut`, `heure_fin`, `color`, `type_event`, `created_at`, `updated_at`) VALUES
(284, 10, 'Rédaction de la documentation backoffice site aroa', '2021-04-05', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:16:32', '2021-05-04 15:16:32'),
(285, 15, 'Formation+ recherche+ conception de design', '2021-03-18', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:17:06', '2021-05-04 15:17:06'),
(286, 8, 'Rédaction des contenus \"métiers\" du site web', '2021-04-07', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:17:20', '2021-05-04 15:17:20'),
(287, 10, 'Rédaction des contenus \"métiers\" du site web', '2021-04-07', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:17:20', '2021-05-04 15:17:20'),
(288, 15, 'Rédaction des contenus \"métiers\" du site web', '2021-04-07', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:17:20', '2021-05-04 15:17:20'),
(289, 10, 'Ajout de formulaire de contact expert aroa', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:18:03', '2021-05-04 15:18:03'),
(290, 14, 'Création d\'Aroa Group Sarl', '2020-08-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:19:42', '2021-05-04 15:19:42'),
(291, 14, 'Changement de forme juridique d\'Aroa Partners (SARL en SAS)', '2020-08-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:21:25', '2021-05-04 15:21:25'),
(292, 4, 'Gestion SEO et trafic', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:25:54', '2021-05-04 15:25:54'),
(293, 5, 'Gestion SEO et trafic', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:25:54', '2021-05-04 15:25:54'),
(294, 10, 'Gestion SEO et trafic', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:25:54', '2021-05-04 15:25:54'),
(295, 13, 'Gestion SEO et trafic', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:25:54', '2021-05-04 15:25:54'),
(296, 15, 'Gestion SEO et trafic', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:25:54', '2021-05-04 15:25:54'),
(297, 4, 'Réunion de bilan des travaux en cours et à effectuer', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:28:48', '2021-05-04 15:28:48'),
(298, 8, 'Réunion de bilan des travaux en cours et à effectuer', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:28:48', '2021-05-04 15:28:48'),
(299, 10, 'Réunion de bilan des travaux en cours et à effectuer', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:28:48', '2021-05-04 15:28:48'),
(300, 15, 'Réunion de bilan des travaux en cours et à effectuer', '2021-04-21', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:28:48', '2021-05-04 15:28:48'),
(301, 15, 'Confection Guide réseaux sociaux', '2021-03-11', '2021-03-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:29:34', '2021-05-04 15:29:34'),
(302, 6, 'Séance de travail avec M. ODJO (call)', '2021-04-19', '2021-04-19', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:29:58', '2021-05-04 15:29:58'),
(303, 15, 'Recherches et squelettes des catalogues', '2021-04-14', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:30:44', '2021-05-04 15:30:44'),
(304, 15, 'Recherche Vidéo+ traitement + Post Réseaux sociaux', '2021-03-19', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:30:52', '2021-05-04 15:30:52'),
(305, 6, 'Corrections', '2021-04-20', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:31:26', '2021-05-04 15:31:26'),
(306, 5, 'Modélisation des modules de formations', '2021-04-16', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:32:22', '2021-05-04 15:32:22'),
(307, 12, 'Site WEB partie 1', '2021-04-08', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:32:35', '2021-05-04 15:32:35'),
(308, 15, 'Design fête + logo + design début de semaine', '2021-03-13', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:33:25', '2021-05-04 15:33:25'),
(309, 5, 'Elaboration des fiches produits', '2021-04-16', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:33:28', '2021-05-04 15:33:28'),
(310, 15, 'Elaboration des fiches produits', '2021-04-16', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:33:28', '2021-05-04 15:33:28'),
(311, 12, 'BELIFE', '2021-04-15', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:33:45', '2021-05-04 15:33:45'),
(312, 6, 'Recherches (solvabilité 2, COSO, Effectifs des différentes compagnies en Côte d\'ivoire)', '2021-04-19', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:34:08', '2021-05-04 15:34:08'),
(313, 5, 'Carte de visites', '2021-04-14', '2021-04-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:34:25', '2021-05-04 15:34:25'),
(314, 12, 'CV M. ODJO', '2021-04-26', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:34:54', '2021-05-04 15:34:54'),
(315, 15, 'contenu ( vidéo +image + carrousel)', '2020-11-19', '2021-11-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:36:47', '2021-05-04 15:36:47'),
(316, 6, 'Note synthétique SOCAPHARM', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:39:44', '2021-05-04 15:39:44'),
(317, 12, 'Appels prospection et relances clients', '2021-03-22', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:53:01', '2021-05-04 15:53:01'),
(318, 10, 'Ecriture de la fonction d\'analyse', '2021-04-23', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:53:46', '2021-05-04 15:53:46'),
(319, 10, 'Récuperation du titre de site', '2021-04-26', '2021-04-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:54:36', '2021-05-04 15:54:36'),
(320, 4, 'Séance de travail PRODUITS AROA avec M. KANGAH', '2021-04-16', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:55:29', '2021-05-04 15:55:29'),
(321, 12, 'Séance de travail PRODUITS AROA avec M. KANGAH', '2021-04-16', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:55:29', '2021-05-04 15:55:29'),
(322, 10, 'Récuperation de la meta description', '2021-04-27', '2021-04-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:55:43', '2021-05-04 15:55:43'),
(323, 10, 'Analyses des elements de liens (\'a\')', '2021-04-28', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:56:43', '2021-05-04 15:56:43'),
(324, 10, 'Récupération du Score', '2021-04-29', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:57:49', '2021-05-04 15:57:49'),
(325, 8, 'Séance de travail avec M. ODJO et M. AGBE', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:58:39', '2021-05-04 15:58:39'),
(326, 12, 'Séance de travail avec M. ODJO et M. AGBE', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 15:58:39', '2021-05-04 15:58:39'),
(327, 12, 'Recherches sociétés de sécurité et de gardiennage en Côte d\'ivoire', '2021-03-22', '2021-04-16', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:01:58', '2021-05-04 16:01:58'),
(328, 12, 'Mises à jour fichier suivi prospection', '2021-03-22', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:02:57', '2021-05-04 16:02:57'),
(329, 8, 'Point technique avec M. AGBE', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:05:09', '2021-05-04 16:05:09'),
(330, 12, 'RDV FRIESLAND CAMPINA', '2021-04-27', '2021-04-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:06:20', '2021-05-04 16:06:20'),
(331, 12, 'RDV AMK SECURITE', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:07:49', '2021-05-04 16:07:49'),
(332, 12, 'Révision présentation PowerPoint IFC', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:10:17', '2021-05-04 16:10:17'),
(333, 6, 'Révision note technique IFC', '2021-04-28', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:12:16', '2021-05-04 16:12:16'),
(334, 4, 'POINT outil d\'analyse', '2021-05-29', '2021-05-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:19:28', '2021-05-04 16:19:28'),
(335, 4, 'Formation mode projet', '2021-05-30', '2021-05-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:20:39', '2021-05-04 16:20:39'),
(336, 12, 'Exploitation annuaire sociétés de gardiennage proposé par M. AGBE', '2021-04-21', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:21:22', '2021-05-04 16:21:22'),
(337, 4, 'Configuration des acess des nouveau', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:21:54', '2021-05-04 16:21:54'),
(338, 12, 'Restitution RDV avec AMK SECURITE', '2021-04-22', '2021-04-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:22:29', '2021-05-04 16:22:29'),
(339, 4, 'configuration des acess des nouveau', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:22:41', '2021-05-04 16:22:41'),
(340, 4, 'Configuration de la machine de M.BA', '2021-05-03', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:23:32', '2021-05-04 16:23:32'),
(341, 4, 'FORMATION CRM', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:23:57', '2021-05-04 16:23:57'),
(342, 5, 'Test INS\'AI', '2021-04-27', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:32:55', '2021-05-04 16:32:55'),
(343, 9, 'Test INS\'AI', '2021-04-27', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:32:55', '2021-05-04 16:32:55'),
(344, 12, 'Test INS\'AI', '2021-04-27', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:32:55', '2021-05-04 16:32:55'),
(345, 14, 'Test INS\'AI', '2021-04-27', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:32:55', '2021-05-04 16:32:55'),
(346, 4, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(347, 5, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(348, 6, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(349, 9, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(350, 10, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(351, 12, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(352, 13, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(353, 14, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(354, 15, 'PHOTOSHOOT', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:36:10', '2021-05-04 16:36:10'),
(355, 4, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:51', '2021-05-04 16:38:51'),
(356, 5, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:51', '2021-05-04 16:38:51'),
(357, 6, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:51', '2021-05-04 16:38:51'),
(358, 9, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:52', '2021-05-04 16:38:52'),
(359, 10, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:52', '2021-05-04 16:38:52'),
(360, 12, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:52', '2021-05-04 16:38:52'),
(361, 13, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:52', '2021-05-04 16:38:52'),
(362, 14, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:52', '2021-05-04 16:38:52'),
(363, 15, 'Test outil de gestion', '2021-04-29', '2021-04-29', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:38:52', '2021-05-04 16:38:52'),
(364, 6, 'Formulaire test élémentaire outil de gestion', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:40:11', '2021-05-04 16:40:11'),
(365, 4, 'FORMATION CRM', '2021-05-03', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:41:03', '2021-05-04 16:41:03'),
(366, 12, 'Service Direction', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:41:10', '2021-05-04 16:41:10'),
(367, 4, 'Formation Project management', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:42:48', '2021-05-04 16:42:48'),
(368, 5, 'Formation Project management', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:42:48', '2021-05-04 16:42:48'),
(369, 6, 'Formation Project management', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:42:48', '2021-05-04 16:42:48'),
(370, 8, 'Formation Project management', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:42:48', '2021-05-04 16:42:48'),
(371, 14, 'Formation Project management', '2021-04-30', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:42:49', '2021-05-04 16:42:49'),
(372, 12, 'Recherche d\'appartement', '2021-04-07', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:45:15', '2021-05-04 16:45:15'),
(373, 4, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(374, 5, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(375, 6, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(376, 9, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(377, 10, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(378, 12, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(379, 13, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(380, 14, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(381, 15, 'Formation outil de gestion', '2021-05-03', '2021-05-03', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:46:58', '2021-05-04 16:46:58'),
(382, 6, 'Cahier de charge', '2021-05-03', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-04 16:55:43', '2021-05-04 16:55:43'),
(383, 4, 'Comité de pilotage', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-05 06:53:09', '2021-05-05 06:53:09'),
(384, 5, 'Comité de pilotage', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-05 06:53:09', '2021-05-05 06:53:09'),
(385, 8, 'Comité de pilotage', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-05 06:53:09', '2021-05-05 06:53:09'),
(386, 12, 'Validation de l\'appartement', '2021-05-03', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-05 15:02:11', '2021-05-05 15:02:11'),
(387, 10, 'Correction des pages', '2021-02-11', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-05 15:10:29', '2021-05-05 15:10:29'),
(388, 10, 'Réunion', '2021-02-11', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-05 15:17:26', '2021-05-05 15:17:26'),
(389, 15, 'Réunion', '2021-02-11', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-05 15:17:26', '2021-05-05 15:17:26'),
(390, 12, 'Recherche d\'informations concernant les modalités et l\'exploitation de l\'appartement', '2021-05-06', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 13:04:13', '2021-05-06 13:04:13'),
(391, 14, 'Recherche d\'informations concernant les modalités et l\'exploitation de l\'appartement', '2021-05-06', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 13:04:13', '2021-05-06 13:04:13'),
(392, 12, 'Signature du contrat de location', '2021-05-07', '2021-05-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 13:05:47', '2021-05-06 13:05:47'),
(393, 12, 'Signature du contrat de location', '2021-05-07', '2021-05-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 13:05:51', '2021-05-06 13:05:51'),
(394, 12, 'Ameublement (achat de meuble, délai de livraison)', '2021-05-06', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 13:13:12', '2021-05-06 13:13:12'),
(395, 12, 'Equipement cuisine (achat cuisinière, réfrigérateur, bouteille de gaz, micro onde)', '2021-05-17', '2021-05-24', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 13:16:04', '2021-05-06 13:16:04'),
(396, 14, 'Equipement cuisine (achat cuisinière, réfrigérateur, bouteille de gaz, micro onde)', '2021-05-17', '2021-05-24', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 13:16:04', '2021-05-06 13:16:04'),
(397, 9, 'Api', '2021-03-20', '2021-12-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 14:07:29', '2021-05-06 14:07:29'),
(398, 9, 'Application patient Module1', '2021-03-20', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 14:10:44', '2021-05-06 14:10:44'),
(399, 9, 'Application Medecin Module 1', '2021-03-20', '2021-04-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 14:12:04', '2021-05-06 14:12:04'),
(400, 12, 'ASSISTANAT', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 14:12:23', '2021-05-06 14:12:23'),
(401, 9, 'Micro Test insai', '2021-03-20', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 14:13:33', '2021-05-06 14:13:33'),
(402, 9, 'Correction de bugs', '2021-03-20', '2021-12-01', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 14:17:15', '2021-05-06 14:17:15'),
(403, 9, 'Correction linguistique insai module 1', '2021-04-29', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 14:18:52', '2021-05-06 14:18:52'),
(404, 9, 'Réflexion Rédaction Cdc insai module 2', '2021-04-30', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 14:20:24', '2021-05-06 14:20:24'),
(405, 4, 'Rédaction du cahier de charges du second module', '2021-05-06', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 15:41:02', '2021-05-06 15:41:02'),
(406, 9, 'Rédaction du cahier de charges du second module', '2021-05-06', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-06 15:41:02', '2021-05-06 15:41:02'),
(407, 10, 'Front end', '2021-04-05', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 15:31:56', '2021-05-07 15:31:56'),
(408, 12, 'Echanges avec agence YAPGI (téléphonique, email)', '2021-05-07', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 15:50:35', '2021-05-07 15:50:35'),
(409, 12, 'Assistanat', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 15:52:35', '2021-05-07 15:52:35'),
(410, 4, 'Réunion - Point', '2021-04-05', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:13:01', '2021-05-07 16:13:01'),
(411, 10, 'Réunion - Point', '2021-04-05', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:13:01', '2021-05-07 16:13:01'),
(412, 10, 'Création de cahier de charges', '2021-04-20', '2021-04-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:16:08', '2021-05-07 16:16:08'),
(413, 6, 'Glossaire', '2021-05-03', '2021-05-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:30:29', '2021-05-07 16:30:29'),
(414, 6, 'Recherches taille moyenne des compagnies d\'assurance et de réassurance', '2021-05-03', '2021-05-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:32:30', '2021-05-07 16:32:30'),
(415, 6, 'Fichier PowerPoint organisation interne', '2021-05-06', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:50:33', '2021-05-07 16:50:33'),
(416, 6, 'Draft', '2021-05-06', '2021-05-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:51:56', '2021-05-07 16:51:56'),
(417, 6, 'Fichier word organaisation des parties', '2021-05-03', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:53:29', '2021-05-07 16:53:29'),
(418, 6, 'Relances des parties', '2021-05-03', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 16:54:17', '2021-05-07 16:54:17'),
(419, 4, 'Séance de travail pour la conception du second module', '2021-05-04', '2021-05-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:03:59', '2021-05-07 17:03:59'),
(420, 9, 'Séance de travail pour la conception du second module', '2021-05-04', '2021-05-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:03:59', '2021-05-07 17:03:59'),
(421, 12, 'Séance de travail pour la conception du second module', '2021-05-04', '2021-05-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:03:59', '2021-05-07 17:03:59'),
(422, 15, 'Séance de travail pour la conception du second module', '2021-05-04', '2021-05-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:03:59', '2021-05-07 17:03:59'),
(423, 12, 'Organisation', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:12:54', '2021-05-07 17:12:54'),
(424, 4, 'REUNION', '2021-05-03', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:34:07', '2021-05-07 17:34:07'),
(425, 5, 'REUNION', '2021-05-03', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:34:07', '2021-05-07 17:34:07'),
(426, 9, 'REUNION', '2021-05-03', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:34:07', '2021-05-07 17:34:07'),
(427, 12, 'REUNION', '2021-05-03', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:34:07', '2021-05-07 17:34:07'),
(428, 15, 'Réunion de préparation', '2021-05-03', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:36:09', '2021-05-07 17:36:09'),
(429, 15, 'CREA', '0000-00-00', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-07 17:49:12', '2021-05-07 17:49:12'),
(430, 12, 'Organisation de voyage', '2021-05-10', '2021-06-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 10:22:25', '2021-05-08 10:22:25'),
(431, 12, 'Gestion de la Bibliothèque (Mise à jour)', '2021-05-10', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 10:28:42', '2021-05-08 10:28:42'),
(432, 12, 'Organisation entretien des locaux (jardinage, ménage)', '2021-05-10', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 10:34:29', '2021-05-08 10:34:29'),
(433, 12, 'Course Mensuelle', '2021-05-10', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 10:36:11', '2021-05-08 10:36:11'),
(434, 12, 'Facture du loyer AROA PARTNERS', '2021-05-10', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 10:48:35', '2021-05-08 10:48:35'),
(435, 15, 'Réunion de préparation et de prise de connaissance des implications', '2021-05-04', '2021-05-04', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 10:52:46', '2021-05-08 10:52:46'),
(436, 12, 'Achat de fourniture de bureau', '2021-05-10', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 10:53:56', '2021-05-08 10:53:56'),
(437, 15, 'Organisation et élaboration de la stratégie de Communication digitale', '2021-05-01', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 13:03:53', '2021-05-08 13:03:53'),
(438, 15, 'Création graphique', '2021-05-06', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 13:15:55', '2021-05-08 13:15:55'),
(439, 15, 'Créations graphiques', '2021-01-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 13:39:24', '2021-05-08 13:39:24'),
(440, 15, 'Conception de signature et de cartes de visite', '2021-05-06', '2021-05-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 13:41:09', '2021-05-08 13:41:09'),
(441, 15, 'Penser et concevoir une offre de communication alliant digital et institutionnel', '2021-05-01', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 13:49:52', '2021-05-08 13:49:52'),
(442, 14, 'Etablissement de la fiche nominative Avril 2021', '2021-05-05', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 13:51:23', '2021-05-08 13:51:23'),
(443, 14, 'Etablissement de la fiche nominative Avril 2021', '2021-05-05', '2021-05-05', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-08 13:53:52', '2021-05-08 13:53:52'),
(444, 13, 'Création de la fonctionnalité agenda', '2021-04-07', '2021-04-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 13:56:27', '2021-05-10 13:56:27'),
(445, 13, 'Fonctionnalité ajoût de client', '2021-04-20', '2021-04-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 13:57:29', '2021-05-10 13:57:29'),
(446, 13, 'Code RAG (Tâche)', '2021-04-08', '2021-04-13', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 13:58:49', '2021-05-10 13:58:49'),
(447, 13, 'Création de rôle et permission', '2021-03-22', '2021-03-22', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 13:59:45', '2021-05-10 13:59:45'),
(448, 13, 'Fonctionnalité feuille de temps', '2021-04-05', '2021-04-30', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:03:14', '2021-05-10 14:03:14'),
(449, 13, 'Email de validation de projet', '2021-05-10', '2021-05-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:04:11', '2021-05-10 14:04:11'),
(450, 13, 'Fonctionnalité pôle', '2021-03-23', '2021-04-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:05:22', '2021-05-10 14:05:22'),
(451, 13, 'Documentation de l\'application', '2021-04-21', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:06:36', '2021-05-10 14:06:36'),
(452, 13, 'Fonctionnalité activité', '2021-04-07', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:08:39', '2021-05-10 14:08:39'),
(453, 13, 'Serveur de messagerie', '2021-04-08', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:10:18', '2021-05-10 14:10:18'),
(454, 13, 'Attribution de materiel', '2021-04-28', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:11:38', '2021-05-10 14:11:38'),
(455, 13, 'Fonctionnalité un click', '2021-05-06', '2021-05-06', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:15:25', '2021-05-10 14:15:25'),
(456, 13, 'Fonctionalité sponsor', '2021-05-07', '2021-05-07', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:16:23', '2021-05-10 14:16:23'),
(457, 13, 'Correction d\'erreur de BDD', '2021-05-17', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:18:23', '2021-05-10 14:18:23'),
(458, 13, 'Fonctionnalité Ticket & Support', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:19:11', '2021-05-10 14:19:11'),
(459, 13, 'Fonctionnalité ouverture et fermeture des bureaux', '2021-05-24', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:20:59', '2021-05-10 14:20:59'),
(460, 13, 'Recherche de template d\'inspiration', '2020-11-17', '2020-11-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:27:51', '2021-05-10 14:27:51'),
(461, 13, 'Proposition de template', '2020-11-23', '2020-11-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:29:31', '2021-05-10 14:29:31'),
(462, 13, 'Création du source des pages', '2021-01-01', '2021-01-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:30:55', '2021-05-10 14:30:55'),
(463, 13, 'Insertion des contenus statiques(textes, images, vidéos, animations)', '2020-12-01', '2021-05-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 14:34:01', '2021-05-10 14:34:01'),
(464, 4, 'Elaboration', '2021-05-07', '2021-05-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 15:40:23', '2021-05-10 15:40:23'),
(465, 9, 'Elaboration', '2021-05-07', '2021-05-10', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 15:40:23', '2021-05-10 15:40:23'),
(466, 5, 'Correction de l\'offre', '2021-05-11', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-10 15:41:03', '2021-05-10 15:41:03'),
(467, 12, 'Traduction', '2021-05-11', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 12:15:52', '2021-05-11 12:15:52'),
(468, 13, 'Déploiement sur le serveur', '2021-04-16', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:19:24', '2021-05-11 14:19:24'),
(469, 9, 'Planning insai module 2', '2021-05-11', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:37:35', '2021-05-11 14:37:35'),
(470, 9, 'Préparation des environnements de dev pour le module 2', '2021-05-11', '2021-05-12', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:38:37', '2021-05-11 14:38:37'),
(471, 13, 'Fonction de vérification de l\'utilisateur', '2021-05-17', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:43:02', '2021-05-11 14:43:02'),
(472, 13, 'Intégration du code (bootstrap, javascript)', '2020-12-01', '2020-12-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:46:18', '2021-05-11 14:46:18'),
(473, 10, 'Test de navigation et d\'affichage', '2020-12-01', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:57:48', '2021-05-11 14:57:48'),
(474, 13, 'Test de navigation et d\'affichage', '2020-12-01', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:57:48', '2021-05-11 14:57:48'),
(475, 5, 'Réorganisation des pages du site', '2020-12-21', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:59:09', '2021-05-11 14:59:09'),
(476, 10, 'Réorganisation des pages du site', '2020-12-21', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:59:09', '2021-05-11 14:59:09'),
(477, 13, 'Réorganisation des pages du site', '2020-12-21', '2021-06-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 14:59:09', '2021-05-11 14:59:09'),
(478, 13, 'Modélisation de la base de données', '2021-04-12', '2021-04-13', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-11 15:17:18', '2021-05-11 15:17:18'),
(479, 13, 'Environnement de travail', '2021-03-17', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 15:01:05', '2021-05-14 15:01:05'),
(480, 15, 'Procédure de publication', '2021-05-14', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 15:36:19', '2021-05-14 15:36:19'),
(481, 15, 'Création du logo AP\'TIME', '2021-05-14', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 15:38:31', '2021-05-14 15:38:31'),
(482, 15, 'APPEL D\'OFFRE DESIGN D\'ILLUSTRATION APPLI', '2021-05-11', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 15:41:31', '2021-05-14 15:41:31'),
(483, 15, 'APPEL D\'OFFRE MISE EN FORME TOUS LES CV', '2021-05-11', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 15:42:17', '2021-05-14 15:42:17'),
(484, 15, 'APPEL D\'OFFRE MISE EN FORME SLIDES', '2021-05-11', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 15:42:55', '2021-05-14 15:42:55'),
(485, 6, 'Préparation de la réponse', '2021-05-10', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 16:28:10', '2021-05-14 16:28:10'),
(486, 10, 'Organisation des différentes rubriques du site web', '2021-05-10', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 16:32:31', '2021-05-14 16:32:31'),
(487, 15, 'Organisation des différentes rubriques du site web', '2021-05-10', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 16:32:31', '2021-05-14 16:32:31'),
(488, 4, 'Mise en forme et relecture de l\'offre', '2021-05-11', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 16:35:38', '2021-05-14 16:35:38'),
(489, 15, 'Mise en forme et relecture de l\'offre', '2021-05-11', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-14 16:35:38', '2021-05-14 16:35:38'),
(490, 14, 'Entretien Diby : recap période de stage', '2021-05-13', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-15 09:47:33', '2021-05-15 09:47:33'),
(491, 14, 'Point hebdomadaire', '2021-02-01', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-15 09:48:43', '2021-05-15 09:48:43'),
(492, 14, 'Renouvellement de stage DIBY', '2021-05-11', '2021-05-15', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-15 09:51:05', '2021-05-15 09:51:05'),
(493, 14, 'Entretien M. BA : fonctionnement planning AROA, AP\'TIME', '2021-05-11', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-15 09:53:15', '2021-05-15 09:53:15'),
(494, 14, 'Mise à jour ap\'time', '2021-04-07', '2021-12-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-15 09:54:41', '2021-05-15 09:54:41'),
(495, 14, 'Revue du site Web dans les moindres détails et commentaires', '2021-05-14', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-15 09:57:07', '2021-05-15 09:57:07'),
(496, 14, 'Déclarations complémentaires en ligne KADE et KOUADIO PHINEAS', '2021-05-11', '2021-05-11', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-15 10:03:22', '2021-05-15 10:03:22'),
(497, 14, 'Inscription sur d\'autres sites d\'offres d\'emploi et publications des offres de développeur web, développeur application, informaticien et juriste', '2021-05-11', '2021-05-14', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-15 10:12:57', '2021-05-15 10:12:57'),
(498, 4, 'Validation de cahier de charges', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:13:45', '2021-05-17 07:13:45'),
(499, 6, 'Rédaction Introduction', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:46:22', '2021-05-17 07:46:22'),
(500, 6, 'Recherches sur les législations (normes comptables et assurancielles) en Afrique', '2021-05-17', '2021-05-31', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:48:35', '2021-05-17 07:48:35'),
(501, 5, 'Création spot publicitaire IFC', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:50:08', '2021-05-17 07:50:08'),
(502, 6, 'Création spot publicitaire IFC', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:50:08', '2021-05-17 07:50:08'),
(503, 12, 'Création spot publicitaire IFC', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:50:08', '2021-05-17 07:50:08'),
(504, 15, 'Création spot publicitaire IFC', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:50:08', '2021-05-17 07:50:08'),
(505, 6, 'Point Technique avec M. ODJO et M. AGBE', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:57:18', '2021-05-17 07:57:18'),
(506, 6, 'Point Technique avec M. ODJO et', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 07:59:18', '2021-05-17 07:59:18'),
(507, 6, 'Point technique création de spot publicitaire IFC', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 08:01:18', '2021-05-17 08:01:18'),
(508, 12, 'Point technique création de spot publicitaire IFC', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-17 08:01:18', '2021-05-17 08:01:18'),
(509, 12, 'Paiement de facture CIE', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-18 07:16:25', '2021-05-18 07:16:25'),
(510, 12, 'Point des factures en attente', '2021-05-18', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-18 15:06:22', '2021-05-18 15:06:22'),
(511, 14, 'Revue générale pour la clôture des comptes 2020 avec EBUR-FIDUCIAIRE', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-20 13:02:21', '2021-05-20 13:02:21'),
(512, 14, 'Elaboration des états financiers et certification par EBUR-FIDUCIAIRE', '2021-05-24', '2021-05-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-20 13:04:54', '2021-05-20 13:04:54'),
(513, 14, 'Production de l\'attestation de visa 2020 par EBUR-FIDUCIAIRE', '2021-05-27', '2021-05-27', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-20 13:07:20', '2021-05-20 13:07:20'),
(514, 10, 'Récupération alt image', '2021-05-18', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 10:44:09', '2021-05-21 10:44:09'),
(515, 12, 'Lecture du contrat de bail', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 13:45:37', '2021-05-21 13:45:37'),
(516, 12, 'Mesure de l\'appartement', '2021-05-20', '2021-05-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 13:49:44', '2021-05-21 13:49:44'),
(517, 6, 'RDV Full Force Security', '2021-05-20', '2021-05-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 13:51:44', '2021-05-21 13:51:44'),
(518, 6, 'Séance de travail FFS', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 13:55:37', '2021-05-21 13:55:37'),
(519, 8, 'Conception du powerpoint', '2021-05-21', '2021-05-26', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 14:53:42', '2021-05-21 14:53:42'),
(520, 4, 'prise de connaissance du cahier des charges', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:10:00', '2021-05-21 15:10:00'),
(521, 13, 'prise de connaissance du cahier des charges', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:10:00', '2021-05-21 15:10:00'),
(522, 4, 'debriefing de l\'offre avec GAA (meeting)', '2021-05-20', '2021-05-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:23:34', '2021-05-21 15:23:34'),
(523, 8, 'debriefing de l\'offre avec GAA (meeting)', '2021-05-20', '2021-05-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:23:34', '2021-05-21 15:23:34'),
(524, 4, 'Mise à jour de l\'offre', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:24:34', '2021-05-21 15:24:34'),
(525, 6, 'Point technique avec M. AGBE', '2021-05-18', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:27:33', '2021-05-21 15:27:33'),
(526, 4, 'Adaptation des données Atlanta au format de base et révision des codes', '2021-05-18', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:51:11', '2021-05-21 15:51:11'),
(527, 6, 'Adaptation des données Atlanta au format de base et révision des codes', '2021-05-18', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:51:11', '2021-05-21 15:51:11'),
(528, 9, 'Adaptation des données Atlanta au format de base et révision des codes', '2021-05-18', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:51:11', '2021-05-21 15:51:11'),
(529, 15, 'Reunion d\'équipe  rapport', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:51:34', '2021-05-21 15:51:34'),
(530, 6, 'Point technique avec M. AGBE', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 15:55:05', '2021-05-21 15:55:05'),
(531, 15, 'Recherche de rush+ montage +ajout de texte+ integration des remarques', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:01:28', '2021-05-21 16:01:28'),
(532, 6, 'Relances AMK, FFS, LMTV, RED TARGET, ARCHANGE SECURITY', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:04:27', '2021-05-21 16:04:27'),
(533, 12, 'Relances AMK, FFS, LMTV, RED TARGET, ARCHANGE SECURITY', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:04:27', '2021-05-21 16:04:27'),
(534, 15, 'Strategie de communication', '2021-05-17', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:06:05', '2021-05-21 16:06:05'),
(535, 15, 'Reunion debrief', '2021-05-18', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:07:11', '2021-05-21 16:07:11'),
(536, 15, 'Stratégie de communication digitale + reunion avec M AGBE', '2021-05-17', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:19:29', '2021-05-21 16:19:29'),
(537, 15, 'Réinitialisation du système Windows', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:39:28', '2021-05-21 16:39:28'),
(538, 4, 'Réponse à toute candidature', '2021-01-01', '2021-12-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:41:28', '2021-05-21 16:41:28'),
(539, 14, 'Réponse à toute candidature', '2021-01-01', '2021-12-23', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:41:28', '2021-05-21 16:41:28'),
(540, 6, 'Corrections et ajouts', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:43:26', '2021-05-21 16:43:26'),
(541, 4, 'call zoom presentation ifc', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:50:54', '2021-05-21 16:50:54'),
(542, 8, 'call zoom presentation ifc', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:50:54', '2021-05-21 16:50:54'),
(543, 4, 'resolution pb PGG', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:51:57', '2021-05-21 16:51:57'),
(544, 4, 'integration api js', '2021-05-18', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:59:28', '2021-05-21 16:59:28'),
(545, 9, 'integration api js', '2021-05-18', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:59:28', '2021-05-21 16:59:28'),
(546, 10, 'integration api js', '2021-05-18', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 16:59:28', '2021-05-21 16:59:28'),
(547, 4, 'Point technique avec M. AGBE', '2021-05-20', '2021-05-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:00:07', '2021-05-21 17:00:07'),
(548, 6, 'Point technique avec M. AGBE', '2021-05-20', '2021-05-20', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:00:07', '2021-05-21 17:00:07'),
(549, 4, 'rapport avec M AGBE', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:03:10', '2021-05-21 17:03:10'),
(550, 8, 'rapport avec M AGBE', '2021-05-17', '2021-05-17', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:03:10', '2021-05-21 17:03:10'),
(551, 4, 'integration des nouvautés', '2021-05-18', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:04:38', '2021-05-21 17:04:38'),
(552, 13, 'integration des nouvautés', '2021-05-18', '2021-05-18', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:04:38', '2021-05-21 17:04:38'),
(553, 6, 'Prospection LinkedIn', '2021-05-17', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:23:27', '2021-05-21 17:23:27'),
(554, 12, 'Prospection LinkedIn', '2021-05-17', '2021-05-28', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:23:27', '2021-05-21 17:23:27'),
(555, 6, 'Rédaction support pour spot publicitaire', '2021-05-17', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:28:33', '2021-05-21 17:28:33'),
(556, 6, 'Point technique avec M. Agbé', '2023-05-21', '2023-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:33:06', '2021-05-21 17:33:06'),
(557, 6, 'Contrôle spot publicitaire, remarques, recherche de mélodies de support', '2021-05-21', '2021-05-21', 'Pas de recurrence', NULL, NULL, '#0E3CE3', 'Tache', '2021-05-21 17:40:58', '2021-05-21 17:40:58'),
(558, 2, 'Merci', '2021-09-17', '2021-09-17', 'Pas de recurrence', '13:37:00', '14:37:00', '#556ee6', 'Reunion', '2021-09-17 10:37:53', '2021-09-17 10:37:53'),
(559, 2, 'test', '2021-09-17', '2021-09-19', 'Pas de recurrence', '08:00:00', '09:00:00', '#3ab6a8', 'Reunion', '2021-09-17 10:45:45', '2021-09-17 10:45:45'),
(560, 2, 'ezhj', '2021-09-18', '2021-09-19', 'Pas de recurrence', '10:00:00', '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(561, 2, 'ezhj', '2021-09-25', '2021-09-26', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(562, 2, 'ezhj', '2021-10-02', '2021-10-03', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(563, 2, 'ezhj', '2021-10-09', '2021-10-10', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(564, 2, 'ezhj', '2021-10-16', '2021-10-17', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(565, 2, 'ezhj', '2021-10-23', '2021-10-24', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(566, 2, 'ezhj', '2021-10-30', '2021-10-31', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(567, 2, 'ezhj', '2021-11-06', '2021-11-07', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(568, 2, 'ezhj', '2021-11-13', '2021-11-14', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(569, 2, 'ezhj', '2021-11-20', '2021-11-21', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(570, 2, 'ezhj', '2021-11-27', '2021-11-28', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(571, 2, 'ezhj', '2021-12-04', '2021-12-05', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(572, 2, 'ezhj', '2021-12-11', '2021-12-12', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(573, 2, 'ezhj', '2021-12-18', '2021-12-19', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(574, 2, 'ezhj', '2021-12-25', '2021-12-26', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(575, 2, 'ezhj', '2022-01-01', '2022-01-02', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(576, 2, 'ezhj', '2022-01-08', '2022-01-09', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19');
INSERT INTO `events` (`id`, `user_id`, `name`, `start_time`, `end_time`, `recurrence`, `heure_debut`, `heure_fin`, `color`, `type_event`, `created_at`, `updated_at`) VALUES
(577, 2, 'ezhj', '2022-01-15', '2022-01-16', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(578, 2, 'ezhj', '2022-01-22', '2022-01-23', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(579, 2, 'ezhj', '2022-01-29', '2022-01-30', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(580, 2, 'ezhj', '2022-02-05', '2022-02-06', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(581, 2, 'ezhj', '2022-02-12', '2022-02-13', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(582, 2, 'ezhj', '2022-02-19', '2022-02-20', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(583, 2, 'ezhj', '2022-02-26', '2022-02-27', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(584, 2, 'ezhj', '2022-03-05', '2022-03-06', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(585, 2, 'ezhj', '2022-03-12', '2022-03-13', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(586, 2, 'ezhj', '2022-03-19', '2022-03-20', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(587, 2, 'ezhj', '2022-03-26', '2022-03-27', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(588, 2, 'ezhj', '2022-04-02', '2022-04-03', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(589, 2, 'ezhj', '2022-04-09', '2022-04-10', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(590, 2, 'ezhj', '2022-04-16', '2022-04-17', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(591, 2, 'ezhj', '2022-04-23', '2022-04-24', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(592, 2, 'ezhj', '2022-04-30', '2022-05-01', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(593, 2, 'ezhj', '2022-05-07', '2022-05-08', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(594, 2, 'ezhj', '2022-05-14', '2022-05-15', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(595, 2, 'ezhj', '2022-05-21', '2022-05-22', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(596, 2, 'ezhj', '2022-05-28', '2022-05-29', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(597, 2, 'ezhj', '2022-06-04', '2022-06-05', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(598, 2, 'ezhj', '2022-06-11', '2022-06-12', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(599, 2, 'ezhj', '2022-06-18', '2022-06-19', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(600, 2, 'ezhj', '2022-06-25', '2022-06-26', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(601, 2, 'ezhj', '2022-07-02', '2022-07-03', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(602, 2, 'ezhj', '2022-07-09', '2022-07-10', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(603, 2, 'ezhj', '2022-07-16', '2022-07-17', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(604, 2, 'ezhj', '2022-07-23', '2022-07-24', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(605, 2, 'ezhj', '2022-07-30', '2022-07-31', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(606, 2, 'ezhj', '2022-08-06', '2022-08-07', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(607, 2, 'ezhj', '2022-08-13', '2022-08-14', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(608, 2, 'ezhj', '2022-08-20', '2022-08-21', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(609, 2, 'ezhj', '2022-08-27', '2022-08-28', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(610, 2, 'ezhj', '2022-09-03', '2022-09-04', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(611, 2, 'ezhj', '2022-09-10', '2022-09-11', 'weekly', NULL, '11:00:00', '#556ee6', 'Reunion', '2021-09-17 10:47:19', '2021-09-17 10:47:19'),
(612, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-09-24', '2021-09-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(613, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-09-25', '2021-09-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(614, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-09-26', '2021-09-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(615, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-09-27', '2021-09-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(616, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-09-28', '2021-09-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(617, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-09-29', '2021-09-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(618, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-09-30', '2021-09-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(619, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-01', '2021-10-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(620, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-02', '2021-10-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(621, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-03', '2021-10-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(622, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-04', '2021-10-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(623, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-05', '2021-10-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(624, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-06', '2021-10-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(625, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-07', '2021-10-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(626, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-08', '2021-10-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(627, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-09', '2021-10-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(628, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-10', '2021-10-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(629, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-11', '2021-10-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(630, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-12', '2021-10-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(631, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-13', '2021-10-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(632, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-14', '2021-10-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(633, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-15', '2021-10-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(634, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-16', '2021-10-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(635, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-17', '2021-10-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(636, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-18', '2021-10-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(637, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-19', '2021-10-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(638, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-20', '2021-10-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(639, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-21', '2021-10-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(640, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-22', '2021-10-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(641, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-23', '2021-10-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(642, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-24', '2021-10-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(643, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-25', '2021-10-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(644, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-26', '2021-10-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(645, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-27', '2021-10-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(646, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-28', '2021-10-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(647, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-29', '2021-10-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(648, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-30', '2021-10-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(649, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-10-31', '2021-10-31', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(650, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-01', '2021-11-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(651, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-02', '2021-11-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(652, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-03', '2021-11-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(653, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-04', '2021-11-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(654, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-05', '2021-11-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(655, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-06', '2021-11-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(656, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-07', '2021-11-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(657, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-08', '2021-11-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(658, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-09', '2021-11-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(659, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-10', '2021-11-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(660, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-11', '2021-11-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(661, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-12', '2021-11-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(662, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-13', '2021-11-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(663, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-14', '2021-11-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(664, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-15', '2021-11-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(665, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-16', '2021-11-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(666, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-17', '2021-11-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(667, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-18', '2021-11-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(668, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-19', '2021-11-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(669, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-20', '2021-11-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(670, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-21', '2021-11-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(671, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-22', '2021-11-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(672, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-23', '2021-11-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(673, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-24', '2021-11-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(674, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-25', '2021-11-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(675, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-26', '2021-11-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(676, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-27', '2021-11-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(677, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-28', '2021-11-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(678, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-29', '2021-11-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(679, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-11-30', '2021-11-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(680, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-01', '2021-12-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(681, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-02', '2021-12-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(682, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-03', '2021-12-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(683, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-04', '2021-12-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(684, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-05', '2021-12-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(685, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-06', '2021-12-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(686, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-07', '2021-12-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(687, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-08', '2021-12-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(688, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-09', '2021-12-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(689, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-10', '2021-12-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(690, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-11', '2021-12-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(691, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-12', '2021-12-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(692, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-13', '2021-12-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(693, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-14', '2021-12-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(694, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-15', '2021-12-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(695, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-16', '2021-12-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(696, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-17', '2021-12-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(697, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-18', '2021-12-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(698, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-19', '2021-12-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(699, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-20', '2021-12-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(700, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-21', '2021-12-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(701, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-22', '2021-12-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(702, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-23', '2021-12-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(703, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-24', '2021-12-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(704, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-25', '2021-12-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(705, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-26', '2021-12-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(706, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-27', '2021-12-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(707, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-28', '2021-12-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(708, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-29', '2021-12-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(709, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-30', '2021-12-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(710, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2021-12-31', '2021-12-31', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(711, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-01', '2022-01-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(712, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-02', '2022-01-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(713, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-03', '2022-01-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(714, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-04', '2022-01-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(715, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-05', '2022-01-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(716, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-06', '2022-01-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(717, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-07', '2022-01-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(718, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-08', '2022-01-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(719, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-09', '2022-01-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(720, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-10', '2022-01-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(721, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-11', '2022-01-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(722, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-12', '2022-01-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(723, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-13', '2022-01-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(724, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-14', '2022-01-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(725, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-15', '2022-01-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(726, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-16', '2022-01-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(727, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-17', '2022-01-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(728, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-18', '2022-01-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(729, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-19', '2022-01-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(730, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-20', '2022-01-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(731, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-21', '2022-01-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(732, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-22', '2022-01-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(733, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-23', '2022-01-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(734, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-24', '2022-01-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(735, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-25', '2022-01-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(736, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-26', '2022-01-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(737, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-27', '2022-01-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(738, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-28', '2022-01-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(739, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-29', '2022-01-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(740, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-30', '2022-01-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(741, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-01-31', '2022-01-31', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(742, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-01', '2022-02-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(743, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-02', '2022-02-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(744, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-03', '2022-02-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(745, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-04', '2022-02-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(746, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-05', '2022-02-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(747, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-06', '2022-02-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(748, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-07', '2022-02-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(749, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-08', '2022-02-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(750, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-09', '2022-02-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(751, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-10', '2022-02-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(752, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-11', '2022-02-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(753, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-12', '2022-02-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(754, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-13', '2022-02-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(755, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-14', '2022-02-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(756, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-15', '2022-02-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(757, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-16', '2022-02-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(758, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-17', '2022-02-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(759, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-18', '2022-02-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(760, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-19', '2022-02-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(761, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-20', '2022-02-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(762, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-21', '2022-02-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(763, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-22', '2022-02-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(764, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-23', '2022-02-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(765, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-24', '2022-02-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(766, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-25', '2022-02-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(767, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-26', '2022-02-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(768, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-27', '2022-02-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(769, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-02-28', '2022-02-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(770, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-01', '2022-03-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(771, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-02', '2022-03-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(772, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-03', '2022-03-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(773, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-04', '2022-03-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(774, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-05', '2022-03-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(775, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-06', '2022-03-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(776, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-07', '2022-03-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(777, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-08', '2022-03-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(778, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-09', '2022-03-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(779, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-10', '2022-03-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(780, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-11', '2022-03-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(781, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-12', '2022-03-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(782, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-13', '2022-03-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(783, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-14', '2022-03-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(784, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-15', '2022-03-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(785, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-16', '2022-03-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(786, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-17', '2022-03-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(787, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-18', '2022-03-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(788, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-19', '2022-03-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(789, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-20', '2022-03-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(790, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-21', '2022-03-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(791, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-22', '2022-03-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(792, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-23', '2022-03-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(793, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-24', '2022-03-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(794, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-25', '2022-03-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(795, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-26', '2022-03-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(796, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-27', '2022-03-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(797, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-28', '2022-03-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(798, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-29', '2022-03-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(799, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-30', '2022-03-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(800, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-03-31', '2022-03-31', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(801, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-01', '2022-04-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(802, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-02', '2022-04-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(803, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-03', '2022-04-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(804, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-04', '2022-04-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(805, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-05', '2022-04-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(806, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-06', '2022-04-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(807, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-07', '2022-04-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(808, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-08', '2022-04-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(809, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-09', '2022-04-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(810, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-10', '2022-04-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(811, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-11', '2022-04-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(812, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-12', '2022-04-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(813, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-13', '2022-04-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(814, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-14', '2022-04-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(815, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-15', '2022-04-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(816, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-16', '2022-04-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(817, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-17', '2022-04-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(818, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-18', '2022-04-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(819, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-19', '2022-04-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(820, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-20', '2022-04-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(821, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-21', '2022-04-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(822, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-22', '2022-04-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(823, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-23', '2022-04-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(824, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-24', '2022-04-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(825, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-25', '2022-04-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(826, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-26', '2022-04-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(827, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-27', '2022-04-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:26', '2021-09-23 13:22:26'),
(828, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-28', '2022-04-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(829, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-29', '2022-04-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(830, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-04-30', '2022-04-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(831, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-01', '2022-05-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(832, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-02', '2022-05-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(833, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-03', '2022-05-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(834, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-04', '2022-05-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(835, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-05', '2022-05-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(836, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-06', '2022-05-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(837, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-07', '2022-05-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(838, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-08', '2022-05-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(839, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-09', '2022-05-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(840, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-10', '2022-05-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(841, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-11', '2022-05-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(842, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-12', '2022-05-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(843, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-13', '2022-05-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(844, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-14', '2022-05-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(845, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-15', '2022-05-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(846, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-16', '2022-05-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(847, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-17', '2022-05-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(848, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-18', '2022-05-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(849, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-19', '2022-05-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(850, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-20', '2022-05-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(851, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-21', '2022-05-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(852, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-22', '2022-05-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(853, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-23', '2022-05-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(854, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-24', '2022-05-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(855, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-25', '2022-05-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(856, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-26', '2022-05-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(857, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-27', '2022-05-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(858, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-28', '2022-05-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(859, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-29', '2022-05-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(860, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-30', '2022-05-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(861, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-05-31', '2022-05-31', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(862, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-01', '2022-06-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(863, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-02', '2022-06-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(864, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-03', '2022-06-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(865, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-04', '2022-06-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(866, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-05', '2022-06-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27');
INSERT INTO `events` (`id`, `user_id`, `name`, `start_time`, `end_time`, `recurrence`, `heure_debut`, `heure_fin`, `color`, `type_event`, `created_at`, `updated_at`) VALUES
(867, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-06', '2022-06-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(868, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-07', '2022-06-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(869, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-08', '2022-06-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(870, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-09', '2022-06-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(871, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-10', '2022-06-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(872, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-11', '2022-06-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(873, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-12', '2022-06-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(874, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-13', '2022-06-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(875, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-14', '2022-06-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(876, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-15', '2022-06-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(877, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-16', '2022-06-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(878, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-17', '2022-06-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(879, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-18', '2022-06-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(880, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-19', '2022-06-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(881, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-20', '2022-06-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(882, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-21', '2022-06-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(883, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-22', '2022-06-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(884, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-23', '2022-06-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(885, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-24', '2022-06-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(886, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-25', '2022-06-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(887, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-26', '2022-06-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(888, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-27', '2022-06-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(889, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-28', '2022-06-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(890, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-29', '2022-06-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(891, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-06-30', '2022-06-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(892, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-01', '2022-07-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(893, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-02', '2022-07-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(894, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-03', '2022-07-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(895, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-04', '2022-07-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(896, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-05', '2022-07-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(897, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-06', '2022-07-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(898, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-07', '2022-07-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(899, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-08', '2022-07-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(900, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-09', '2022-07-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(901, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-10', '2022-07-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(902, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-11', '2022-07-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(903, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-12', '2022-07-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(904, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-13', '2022-07-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(905, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-14', '2022-07-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(906, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-15', '2022-07-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(907, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-16', '2022-07-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(908, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-17', '2022-07-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(909, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-18', '2022-07-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(910, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-19', '2022-07-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(911, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-20', '2022-07-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(912, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-21', '2022-07-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(913, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-22', '2022-07-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(914, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-23', '2022-07-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(915, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-24', '2022-07-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(916, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-25', '2022-07-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(917, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-26', '2022-07-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(918, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-27', '2022-07-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(919, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-28', '2022-07-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(920, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-29', '2022-07-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(921, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-30', '2022-07-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(922, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-07-31', '2022-07-31', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(923, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-01', '2022-08-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(924, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-02', '2022-08-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(925, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-03', '2022-08-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(926, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-04', '2022-08-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(927, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-05', '2022-08-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(928, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-06', '2022-08-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(929, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-07', '2022-08-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(930, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-08', '2022-08-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(931, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-09', '2022-08-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(932, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-10', '2022-08-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(933, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-11', '2022-08-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(934, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-12', '2022-08-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(935, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-13', '2022-08-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(936, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-14', '2022-08-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(937, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-15', '2022-08-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(938, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-16', '2022-08-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(939, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-17', '2022-08-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(940, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-18', '2022-08-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(941, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-19', '2022-08-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(942, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-20', '2022-08-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(943, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-21', '2022-08-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(944, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-22', '2022-08-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(945, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-23', '2022-08-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(946, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-24', '2022-08-24', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(947, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-25', '2022-08-25', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(948, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-26', '2022-08-26', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(949, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-27', '2022-08-27', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(950, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-28', '2022-08-28', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(951, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-29', '2022-08-29', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(952, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-30', '2022-08-30', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(953, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-08-31', '2022-08-31', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(954, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-01', '2022-09-01', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(955, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-02', '2022-09-02', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(956, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-03', '2022-09-03', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(957, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-04', '2022-09-04', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(958, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-05', '2022-09-05', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(959, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-06', '2022-09-06', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(960, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-07', '2022-09-07', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(961, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-08', '2022-09-08', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(962, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-09', '2022-09-09', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(963, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-10', '2022-09-10', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(964, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-11', '2022-09-11', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(965, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-12', '2022-09-12', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(966, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-13', '2022-09-13', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(967, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-14', '2022-09-14', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(968, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-15', '2022-09-15', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(969, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-16', '2022-09-16', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(970, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-17', '2022-09-17', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(971, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-18', '2022-09-18', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(972, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-19', '2022-09-19', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(973, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-20', '2022-09-20', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(974, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-21', '2022-09-21', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(975, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-22', '2022-09-22', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(976, 2, 'ezj,f jaezihriojhoiazeeeeeerrrrrrrrrrrrrrrrrrrazfebfaez', '2022-09-23', '2022-09-23', 'daily', NULL, '16:22:00', '', '', '2021-09-23 13:22:27', '2021-09-23 13:22:27'),
(977, 2, ',k; knklmnml', '2021-09-23', '2021-09-23', 'Pas de recurrence', '13:31:00', '14:31:00', '', '', '2021-09-23 13:31:27', '2021-09-23 13:31:27'),
(978, 2, ',k; knklmnml', '2021-09-23', '2021-09-23', 'Pas de recurrence', '13:31:00', '14:31:00', '', '', '2021-09-23 13:32:31', '2021-09-23 13:32:31'),
(979, 2, '\"ejkenkjezf', '2021-09-22', '2021-09-24', 'Pas de recurrence', '16:33:00', '13:37:00', '', '', '2021-09-23 13:33:23', '2021-09-23 13:33:23'),
(980, 2, '\"ejkenkjezf', '2021-09-22', '2021-09-24', 'Pas de recurrence', '16:33:00', '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(981, 2, '\"ejkenkjezf', '2021-09-29', '2021-10-01', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(982, 2, '\"ejkenkjezf', '2021-10-06', '2021-10-08', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(983, 2, '\"ejkenkjezf', '2021-10-13', '2021-10-15', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(984, 2, '\"ejkenkjezf', '2021-10-20', '2021-10-22', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(985, 2, '\"ejkenkjezf', '2021-10-27', '2021-10-29', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(986, 2, '\"ejkenkjezf', '2021-11-03', '2021-11-05', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(987, 2, '\"ejkenkjezf', '2021-11-10', '2021-11-12', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(988, 2, '\"ejkenkjezf', '2021-11-17', '2021-11-19', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(989, 2, '\"ejkenkjezf', '2021-11-24', '2021-11-26', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(990, 2, '\"ejkenkjezf', '2021-12-01', '2021-12-03', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(991, 2, '\"ejkenkjezf', '2021-12-08', '2021-12-10', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(992, 2, '\"ejkenkjezf', '2021-12-15', '2021-12-17', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(993, 2, '\"ejkenkjezf', '2021-12-22', '2021-12-24', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(994, 2, '\"ejkenkjezf', '2021-12-29', '2021-12-31', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(995, 2, '\"ejkenkjezf', '2022-01-05', '2022-01-07', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(996, 2, '\"ejkenkjezf', '2022-01-12', '2022-01-14', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(997, 2, '\"ejkenkjezf', '2022-01-19', '2022-01-21', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(998, 2, '\"ejkenkjezf', '2022-01-26', '2022-01-28', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(999, 2, '\"ejkenkjezf', '2022-02-02', '2022-02-04', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1000, 2, '\"ejkenkjezf', '2022-02-09', '2022-02-11', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1001, 2, '\"ejkenkjezf', '2022-02-16', '2022-02-18', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1002, 2, '\"ejkenkjezf', '2022-02-23', '2022-02-25', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1003, 2, '\"ejkenkjezf', '2022-03-02', '2022-03-04', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1004, 2, '\"ejkenkjezf', '2022-03-09', '2022-03-11', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1005, 2, '\"ejkenkjezf', '2022-03-16', '2022-03-18', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1006, 2, '\"ejkenkjezf', '2022-03-23', '2022-03-25', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1007, 2, '\"ejkenkjezf', '2022-03-30', '2022-04-01', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1008, 2, '\"ejkenkjezf', '2022-04-06', '2022-04-08', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1009, 2, '\"ejkenkjezf', '2022-04-13', '2022-04-15', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1010, 2, '\"ejkenkjezf', '2022-04-20', '2022-04-22', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1011, 2, '\"ejkenkjezf', '2022-04-27', '2022-04-29', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1012, 2, '\"ejkenkjezf', '2022-05-04', '2022-05-06', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1013, 2, '\"ejkenkjezf', '2022-05-11', '2022-05-13', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1014, 2, '\"ejkenkjezf', '2022-05-18', '2022-05-20', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1015, 2, '\"ejkenkjezf', '2022-05-25', '2022-05-27', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1016, 2, '\"ejkenkjezf', '2022-06-01', '2022-06-03', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1017, 2, '\"ejkenkjezf', '2022-06-08', '2022-06-10', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1018, 2, '\"ejkenkjezf', '2022-06-15', '2022-06-17', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1019, 2, '\"ejkenkjezf', '2022-06-22', '2022-06-24', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1020, 2, '\"ejkenkjezf', '2022-06-29', '2022-07-01', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1021, 2, '\"ejkenkjezf', '2022-07-06', '2022-07-08', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1022, 2, '\"ejkenkjezf', '2022-07-13', '2022-07-15', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1023, 2, '\"ejkenkjezf', '2022-07-20', '2022-07-22', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1024, 2, '\"ejkenkjezf', '2022-07-27', '2022-07-29', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1025, 2, '\"ejkenkjezf', '2022-08-03', '2022-08-05', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1026, 2, '\"ejkenkjezf', '2022-08-10', '2022-08-12', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1027, 2, '\"ejkenkjezf', '2022-08-17', '2022-08-19', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1028, 2, '\"ejkenkjezf', '2022-08-24', '2022-08-26', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1029, 2, '\"ejkenkjezf', '2022-08-31', '2022-09-02', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1030, 2, '\"ejkenkjezf', '2022-09-07', '2022-09-09', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1031, 2, '\"ejkenkjezf', '2022-09-14', '2022-09-16', 'weekly', NULL, '13:37:00', '', '', '2021-09-23 13:33:46', '2021-09-23 13:33:46'),
(1032, 2, 'n nds nd sjnez f ezfj', '2021-09-24', '2021-09-24', 'Pas de recurrence', '17:35:00', '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1033, 2, 'n nds nd sjnez f ezfj', '2021-10-24', '2021-10-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1034, 2, 'n nds nd sjnez f ezfj', '2021-11-24', '2021-11-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1035, 2, 'n nds nd sjnez f ezfj', '2021-12-24', '2021-12-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1036, 2, 'n nds nd sjnez f ezfj', '2022-01-24', '2022-01-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1037, 2, 'n nds nd sjnez f ezfj', '2022-02-24', '2022-02-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1038, 2, 'n nds nd sjnez f ezfj', '2022-03-24', '2022-03-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1039, 2, 'n nds nd sjnez f ezfj', '2022-04-24', '2022-04-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1040, 2, 'n nds nd sjnez f ezfj', '2022-05-24', '2022-05-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1041, 2, 'n nds nd sjnez f ezfj', '2022-06-24', '2022-06-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1042, 2, 'n nds nd sjnez f ezfj', '2022-07-24', '2022-07-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1043, 2, 'n nds nd sjnez f ezfj', '2022-08-24', '2022-08-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1044, 2, 'n nds nd sjnez f ezfj', '2022-09-24', '2022-09-24', 'monthly', NULL, '13:41:00', '', '', '2021-09-23 13:35:33', '2021-09-23 13:35:33'),
(1045, 2, 'ezffr', '2021-09-23', '2021-09-23', 'Pas de recurrence', '10:00:00', '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1046, 2, 'ezffr', '2021-10-23', '2021-10-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1047, 2, 'ezffr', '2021-11-23', '2021-11-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1048, 2, 'ezffr', '2021-12-23', '2021-12-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1049, 2, 'ezffr', '2022-01-23', '2022-01-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1050, 2, 'ezffr', '2022-02-23', '2022-02-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1051, 2, 'ezffr', '2022-03-23', '2022-03-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1052, 2, 'ezffr', '2022-04-23', '2022-04-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1053, 2, 'ezffr', '2022-05-23', '2022-05-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1054, 2, 'ezffr', '2022-06-23', '2022-06-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1055, 2, 'ezffr', '2022-07-23', '2022-07-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1056, 2, 'ezffr', '2022-08-23', '2022-08-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1057, 2, 'ezffr', '2022-09-23', '2022-09-23', 'monthly', NULL, '11:00:00', '', '', '2021-09-23 13:36:12', '2021-09-23 13:36:12'),
(1058, 2, 'nb kjbj', '2021-09-23', '2021-09-30', 'Pas de recurrence', '16:36:00', '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1059, 2, 'nb kjbj', '2021-10-23', '2021-10-30', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1060, 2, 'nb kjbj', '2021-11-23', '2021-11-30', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1061, 2, 'nb kjbj', '2021-12-23', '2021-12-30', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1062, 2, 'nb kjbj', '2022-01-23', '2022-01-30', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1063, 2, 'nb kjbj', '2022-02-23', '2022-03-02', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1064, 2, 'nb kjbj', '2022-03-23', '2022-04-02', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1065, 2, 'nb kjbj', '2022-04-23', '2022-05-02', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1066, 2, 'nb kjbj', '2022-05-23', '2022-06-02', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1067, 2, 'nb kjbj', '2022-06-23', '2022-07-02', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1068, 2, 'nb kjbj', '2022-07-23', '2022-08-02', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1069, 2, 'nb kjbj', '2022-08-23', '2022-09-02', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1070, 2, 'nb kjbj', '2022-09-23', '2022-10-02', 'monthly', NULL, '17:41:00', '', '', '2021-09-23 13:36:54', '2021-09-23 13:36:54'),
(1071, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-09-23', '2021-09-23', 'Pas de recurrence', '14:06:00', '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1072, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-09-24', '2021-09-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1073, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-09-25', '2021-09-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1074, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-09-26', '2021-09-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1075, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-09-27', '2021-09-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1076, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-09-28', '2021-09-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1077, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-09-29', '2021-09-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1078, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-09-30', '2021-09-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1079, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-01', '2021-10-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1080, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-02', '2021-10-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1081, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-03', '2021-10-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1082, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-04', '2021-10-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1083, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-05', '2021-10-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1084, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-06', '2021-10-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1085, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-07', '2021-10-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1086, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-08', '2021-10-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1087, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-09', '2021-10-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1088, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-10', '2021-10-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1089, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-11', '2021-10-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1090, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-12', '2021-10-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1091, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-13', '2021-10-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1092, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-14', '2021-10-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1093, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-15', '2021-10-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1094, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-16', '2021-10-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1095, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-17', '2021-10-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1096, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-18', '2021-10-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1097, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-19', '2021-10-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1098, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-20', '2021-10-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1099, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-21', '2021-10-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1100, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-22', '2021-10-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1101, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-23', '2021-10-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1102, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-24', '2021-10-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1103, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-25', '2021-10-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1104, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-26', '2021-10-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1105, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-27', '2021-10-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1106, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-28', '2021-10-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1107, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-29', '2021-10-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1108, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-30', '2021-10-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1109, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-10-31', '2021-10-31', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1110, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-01', '2021-11-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1111, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-02', '2021-11-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1112, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-03', '2021-11-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1113, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-04', '2021-11-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1114, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-05', '2021-11-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1115, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-06', '2021-11-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1116, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-07', '2021-11-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1117, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-08', '2021-11-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1118, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-09', '2021-11-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1119, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-10', '2021-11-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1120, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-11', '2021-11-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1121, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-12', '2021-11-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1122, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-13', '2021-11-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1123, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-14', '2021-11-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1124, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-15', '2021-11-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1125, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-16', '2021-11-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1126, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-17', '2021-11-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1127, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-18', '2021-11-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1128, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-19', '2021-11-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1129, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-20', '2021-11-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1130, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-21', '2021-11-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1131, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-22', '2021-11-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1132, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-23', '2021-11-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1133, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-24', '2021-11-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1134, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-25', '2021-11-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1135, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-26', '2021-11-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1136, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-27', '2021-11-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1137, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-28', '2021-11-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1138, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-29', '2021-11-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1139, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-11-30', '2021-11-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1140, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-01', '2021-12-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1141, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-02', '2021-12-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1142, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-03', '2021-12-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1143, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-04', '2021-12-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1144, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-05', '2021-12-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1145, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-06', '2021-12-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1146, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-07', '2021-12-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1147, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-08', '2021-12-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1148, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-09', '2021-12-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1149, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-10', '2021-12-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1150, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-11', '2021-12-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1151, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-12', '2021-12-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1152, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-13', '2021-12-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1153, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-14', '2021-12-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1154, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-15', '2021-12-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1155, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-16', '2021-12-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1156, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-17', '2021-12-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1157, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-18', '2021-12-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1158, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-19', '2021-12-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1159, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-20', '2021-12-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1160, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-21', '2021-12-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1161, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-22', '2021-12-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1162, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-23', '2021-12-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51');
INSERT INTO `events` (`id`, `user_id`, `name`, `start_time`, `end_time`, `recurrence`, `heure_debut`, `heure_fin`, `color`, `type_event`, `created_at`, `updated_at`) VALUES
(1163, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-24', '2021-12-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1164, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-25', '2021-12-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1165, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-26', '2021-12-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1166, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-27', '2021-12-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1167, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-28', '2021-12-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1168, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-29', '2021-12-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1169, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-30', '2021-12-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1170, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2021-12-31', '2021-12-31', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1171, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-01', '2022-01-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1172, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-02', '2022-01-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1173, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-03', '2022-01-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1174, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-04', '2022-01-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1175, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-05', '2022-01-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1176, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-06', '2022-01-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1177, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-07', '2022-01-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1178, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-08', '2022-01-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1179, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-09', '2022-01-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1180, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-10', '2022-01-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1181, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-11', '2022-01-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1182, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-12', '2022-01-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1183, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-13', '2022-01-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1184, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-14', '2022-01-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1185, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-15', '2022-01-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1186, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-16', '2022-01-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1187, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-17', '2022-01-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1188, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-18', '2022-01-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1189, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-19', '2022-01-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1190, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-20', '2022-01-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1191, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-21', '2022-01-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1192, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-22', '2022-01-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1193, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-23', '2022-01-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1194, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-24', '2022-01-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1195, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-25', '2022-01-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1196, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-26', '2022-01-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1197, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-27', '2022-01-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1198, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-28', '2022-01-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1199, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-29', '2022-01-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1200, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-30', '2022-01-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1201, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-01-31', '2022-01-31', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1202, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-01', '2022-02-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1203, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-02', '2022-02-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1204, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-03', '2022-02-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1205, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-04', '2022-02-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1206, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-05', '2022-02-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1207, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-06', '2022-02-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1208, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-07', '2022-02-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1209, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-08', '2022-02-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1210, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-09', '2022-02-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1211, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-10', '2022-02-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1212, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-11', '2022-02-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1213, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-12', '2022-02-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1214, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-13', '2022-02-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1215, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-14', '2022-02-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1216, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-15', '2022-02-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1217, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-16', '2022-02-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1218, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-17', '2022-02-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1219, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-18', '2022-02-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1220, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-19', '2022-02-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1221, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-20', '2022-02-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1222, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-21', '2022-02-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1223, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-22', '2022-02-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1224, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-23', '2022-02-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1225, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-24', '2022-02-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1226, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-25', '2022-02-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1227, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-26', '2022-02-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1228, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-27', '2022-02-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1229, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-02-28', '2022-02-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1230, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-01', '2022-03-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1231, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-02', '2022-03-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1232, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-03', '2022-03-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1233, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-04', '2022-03-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1234, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-05', '2022-03-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1235, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-06', '2022-03-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1236, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-07', '2022-03-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1237, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-08', '2022-03-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1238, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-09', '2022-03-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1239, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-10', '2022-03-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1240, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-11', '2022-03-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1241, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-12', '2022-03-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1242, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-13', '2022-03-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1243, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-14', '2022-03-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1244, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-15', '2022-03-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1245, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-16', '2022-03-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1246, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-17', '2022-03-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1247, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-18', '2022-03-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1248, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-19', '2022-03-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1249, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-20', '2022-03-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1250, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-21', '2022-03-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:51', '2021-09-23 14:04:51'),
(1251, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-22', '2022-03-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1252, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-23', '2022-03-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1253, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-24', '2022-03-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1254, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-25', '2022-03-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1255, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-26', '2022-03-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1256, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-27', '2022-03-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1257, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-28', '2022-03-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1258, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-29', '2022-03-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1259, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-30', '2022-03-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1260, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-03-31', '2022-03-31', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1261, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-01', '2022-04-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1262, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-02', '2022-04-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1263, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-03', '2022-04-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1264, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-04', '2022-04-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1265, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-05', '2022-04-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1266, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-06', '2022-04-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1267, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-07', '2022-04-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1268, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-08', '2022-04-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1269, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-09', '2022-04-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1270, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-10', '2022-04-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1271, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-11', '2022-04-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1272, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-12', '2022-04-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1273, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-13', '2022-04-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1274, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-14', '2022-04-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1275, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-15', '2022-04-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1276, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-16', '2022-04-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1277, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-17', '2022-04-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1278, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-18', '2022-04-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1279, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-19', '2022-04-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1280, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-20', '2022-04-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1281, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-21', '2022-04-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1282, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-22', '2022-04-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1283, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-23', '2022-04-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1284, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-24', '2022-04-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1285, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-25', '2022-04-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1286, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-26', '2022-04-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1287, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-27', '2022-04-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1288, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-28', '2022-04-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1289, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-29', '2022-04-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1290, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-04-30', '2022-04-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1291, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-01', '2022-05-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1292, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-02', '2022-05-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1293, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-03', '2022-05-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1294, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-04', '2022-05-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1295, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-05', '2022-05-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1296, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-06', '2022-05-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1297, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-07', '2022-05-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1298, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-08', '2022-05-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1299, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-09', '2022-05-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1300, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-10', '2022-05-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1301, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-11', '2022-05-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1302, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-12', '2022-05-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1303, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-13', '2022-05-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1304, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-14', '2022-05-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1305, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-15', '2022-05-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1306, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-16', '2022-05-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1307, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-17', '2022-05-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1308, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-18', '2022-05-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1309, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-19', '2022-05-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1310, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-20', '2022-05-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1311, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-21', '2022-05-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1312, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-22', '2022-05-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1313, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-23', '2022-05-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1314, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-24', '2022-05-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1315, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-25', '2022-05-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1316, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-26', '2022-05-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1317, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-27', '2022-05-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1318, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-28', '2022-05-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1319, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-29', '2022-05-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1320, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-30', '2022-05-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1321, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-05-31', '2022-05-31', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1322, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-01', '2022-06-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1323, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-02', '2022-06-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1324, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-03', '2022-06-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1325, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-04', '2022-06-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1326, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-05', '2022-06-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1327, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-06', '2022-06-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1328, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-07', '2022-06-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1329, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-08', '2022-06-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1330, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-09', '2022-06-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1331, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-10', '2022-06-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1332, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-11', '2022-06-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1333, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-12', '2022-06-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1334, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-13', '2022-06-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1335, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-14', '2022-06-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1336, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-15', '2022-06-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1337, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-16', '2022-06-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1338, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-17', '2022-06-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1339, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-18', '2022-06-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1340, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-19', '2022-06-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1341, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-20', '2022-06-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1342, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-21', '2022-06-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1343, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-22', '2022-06-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1344, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-23', '2022-06-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1345, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-24', '2022-06-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1346, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-25', '2022-06-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1347, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-26', '2022-06-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1348, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-27', '2022-06-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1349, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-28', '2022-06-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1350, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-29', '2022-06-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1351, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-06-30', '2022-06-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1352, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-01', '2022-07-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1353, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-02', '2022-07-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1354, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-03', '2022-07-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1355, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-04', '2022-07-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1356, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-05', '2022-07-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1357, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-06', '2022-07-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1358, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-07', '2022-07-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1359, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-08', '2022-07-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1360, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-09', '2022-07-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1361, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-10', '2022-07-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1362, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-11', '2022-07-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1363, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-12', '2022-07-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1364, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-13', '2022-07-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1365, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-14', '2022-07-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1366, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-15', '2022-07-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1367, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-16', '2022-07-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1368, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-17', '2022-07-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1369, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-18', '2022-07-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1370, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-19', '2022-07-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1371, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-20', '2022-07-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1372, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-21', '2022-07-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1373, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-22', '2022-07-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1374, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-23', '2022-07-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1375, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-24', '2022-07-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1376, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-25', '2022-07-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1377, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-26', '2022-07-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1378, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-27', '2022-07-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1379, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-28', '2022-07-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1380, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-29', '2022-07-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1381, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-30', '2022-07-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1382, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-07-31', '2022-07-31', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1383, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-01', '2022-08-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1384, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-02', '2022-08-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1385, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-03', '2022-08-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1386, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-04', '2022-08-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1387, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-05', '2022-08-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1388, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-06', '2022-08-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1389, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-07', '2022-08-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1390, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-08', '2022-08-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1391, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-09', '2022-08-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1392, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-10', '2022-08-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1393, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-11', '2022-08-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1394, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-12', '2022-08-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1395, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-13', '2022-08-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1396, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-14', '2022-08-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1397, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-15', '2022-08-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1398, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-16', '2022-08-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1399, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-17', '2022-08-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1400, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-18', '2022-08-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1401, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-19', '2022-08-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1402, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-20', '2022-08-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1403, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-21', '2022-08-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1404, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-22', '2022-08-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1405, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-23', '2022-08-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1406, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-24', '2022-08-24', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1407, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-25', '2022-08-25', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1408, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-26', '2022-08-26', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1409, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-27', '2022-08-27', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1410, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-28', '2022-08-28', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1411, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-29', '2022-08-29', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1412, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-30', '2022-08-30', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1413, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-08-31', '2022-08-31', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1414, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-01', '2022-09-01', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1415, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-02', '2022-09-02', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1416, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-03', '2022-09-03', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1417, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-04', '2022-09-04', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1418, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-05', '2022-09-05', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1419, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-06', '2022-09-06', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1420, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-07', '2022-09-07', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1421, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-08', '2022-09-08', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1422, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-09', '2022-09-09', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1423, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-10', '2022-09-10', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1424, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-11', '2022-09-11', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52');
INSERT INTO `events` (`id`, `user_id`, `name`, `start_time`, `end_time`, `recurrence`, `heure_debut`, `heure_fin`, `color`, `type_event`, `created_at`, `updated_at`) VALUES
(1425, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-12', '2022-09-12', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1426, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-13', '2022-09-13', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1427, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-14', '2022-09-14', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1428, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-15', '2022-09-15', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1429, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-16', '2022-09-16', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1430, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-17', '2022-09-17', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1431, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-18', '2022-09-18', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1432, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-19', '2022-09-19', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1433, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-20', '2022-09-20', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1434, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-21', '2022-09-21', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1435, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-22', '2022-09-22', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1436, 2, 'jbkbkjb iheioerhioef efhioefhioefih efzhiefohief iheziohefz ieziozfe', '2022-09-23', '2022-09-23', 'daily', NULL, '16:03:00', '', '', '2021-09-23 14:04:52', '2021-09-23 14:04:52'),
(1437, 2, ', , nknlk ojpokp', '2021-09-23', '2021-09-23', 'Pas de recurrence', '15:15:00', '16:15:00', '', '', '2021-09-23 14:14:27', '2021-09-23 14:14:27'),
(1438, 2, ', , nknlk ojpokp', '2021-09-23', '2021-09-23', 'Pas de recurrence', '15:15:00', '16:15:00', '', '', '2021-09-23 14:14:45', '2021-09-23 14:14:45'),
(1439, 2, ', , nknlk ojpokp', '2021-09-23', '2021-09-23', 'Pas de recurrence', '15:15:00', '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1440, 2, ', , nknlk ojpokp', '2021-10-23', '2021-10-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1441, 2, ', , nknlk ojpokp', '2021-11-23', '2021-11-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1442, 2, ', , nknlk ojpokp', '2021-12-23', '2021-12-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1443, 2, ', , nknlk ojpokp', '2022-01-23', '2022-01-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1444, 2, ', , nknlk ojpokp', '2022-02-23', '2022-02-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1445, 2, ', , nknlk ojpokp', '2022-03-23', '2022-03-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1446, 2, ', , nknlk ojpokp', '2022-04-23', '2022-04-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1447, 2, ', , nknlk ojpokp', '2022-05-23', '2022-05-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1448, 2, ', , nknlk ojpokp', '2022-06-23', '2022-06-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1449, 2, ', , nknlk ojpokp', '2022-07-23', '2022-07-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1450, 2, ', , nknlk ojpokp', '2022-08-23', '2022-08-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02'),
(1451, 2, ', , nknlk ojpokp', '2022-09-23', '2022-09-23', 'monthly', NULL, '16:15:00', '', '', '2021-09-23 14:15:02', '2021-09-23 14:15:02');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `files`
--

CREATE TABLE `files` (
  `id_file` bigint(20) UNSIGNED NOT NULL,
  `size_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lien_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `files`
--

INSERT INTO `files` (`id_file`, `size_file`, `extension_file`, `nom_file`, `lien_file`, `statut_file`, `created_at`, `updated_at`) VALUES
(1, '11470333', 'mp3', 'Alpha, Pt. 1 CD 1 TRACK 8 (320).mp3', 'CRM J=2iKmwqgN ', '0', '2021-07-30 15:17:57', '2021-07-30 15:17:57'),
(2, '627804', 'png', 'Blog.png', 'CRM fuQjGCATA7 1', '0', '2021-07-30 15:18:10', '2021-07-30 15:18:10');

-- --------------------------------------------------------

--
-- Structure de la table `fonctionnalites`
--

CREATE TABLE `fonctionnalites` (
  `id_fonc` bigint(20) UNSIGNED NOT NULL,
  `nomfonc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokfonc` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fonctionnalites`
--

INSERT INTO `fonctionnalites` (`id_fonc`, `nomfonc`, `tokfonc`, `created_at`, `updated_at`) VALUES
(1, 'Voir tableau de bord', '68db7013', NULL, NULL),
(2, 'Voir statistiques', '9e56fa1d', NULL, NULL),
(3, 'Voir validation de la feuille de temps', '6ef3e70a', NULL, NULL),
(4, 'Valider feuille de temps', '6997b695', NULL, NULL),
(5, 'Voir agenda collaborateur', '2eb101d1', NULL, NULL),
(6, 'Ajouter agenda', 'f09dd88f', NULL, NULL),
(7, 'Voir absence', '08babba8', NULL, NULL),
(8, 'Modifier absence', '45ebd660', NULL, NULL),
(9, 'Supprimer absence', '99e66425', NULL, NULL),
(10, 'Ouverture & fermerture', '3c690c06', NULL, NULL),
(11, 'Voir feuille de temps', '24aadddb', NULL, NULL),
(12, 'Voir feuille de temps globale', 'ff99971b', NULL, NULL),
(13, 'Voir demande', '79ea7cfa', NULL, NULL),
(14, 'Voir validation d\'absence', 'ae2c1465', NULL, NULL),
(15, 'Voir validation de la feuille de temps', '6ef3e70a', NULL, NULL),
(16, 'Voir feuille de temps', '24aadddb', NULL, NULL),
(17, 'Voir feuille de temps globale', 'ff99971b', NULL, NULL),
(18, 'Faire recherche de feuille de temps', '8892f453', NULL, NULL),
(19, 'Voir demande', '79ea7cfab', NULL, NULL),
(20, 'Ajouter demande', 'bf65f4bb', NULL, NULL),
(21, 'Voir pôle', 'ed0f5595', NULL, NULL),
(22, 'Voir matériel', '8a1564fd', NULL, NULL),
(23, 'Ajouter matériel', 'f7dd4dec', NULL, NULL),
(24, 'Attribuer matériel', '11f6ba3f', NULL, NULL),
(25, 'Mettre matériel en stock', 'c1046641', NULL, NULL),
(26, 'Marquer comme en panne', 'f3e1d869', NULL, NULL),
(27, 'Mettre en reparation', '4ae75a55', NULL, NULL),
(28, 'Retour du matériel', '469dca4b', NULL, NULL),
(29, 'Détails du matériel', '201ac392', NULL, NULL),
(30, 'Voir absence rh', '04ce72af', NULL, NULL),
(31, 'Validation absence', '728b77c3', NULL, NULL),
(32, 'Voir tous le personnel', '1052bea1', NULL, NULL),
(33, 'Voir détail du personnel', '9453b44f', NULL, NULL),
(34, 'Voir projets', '6f535814', NULL, NULL),
(35, 'Voir projets archivés', 'c909222a', NULL, NULL),
(36, 'Creer projet', '8d412932', NULL, NULL),
(37, 'Modifier projet', 'f544d678', NULL, NULL),
(38, 'Supprimer projet', '5f6b3cb0', NULL, NULL),
(39, 'Archiver projet', '39103e06', NULL, NULL),
(40, 'Ajouter sponsor', 'fe6975aa', NULL, NULL),
(41, 'Ajouter tâche', '5ca32c6b', NULL, NULL),
(42, 'Voir détails projet', '7208b6f4', NULL, NULL),
(43, 'Marquer le projet comme terminer', '0e771ffd', NULL, NULL),
(44, 'Ajouter fichier de validation', 'b3eec696', NULL, NULL),
(45, 'Voir bibliothèque', '509c5249', NULL, NULL),
(46, 'Ajouter livre', '050ab9ec', NULL, NULL),
(47, 'Prendre livre', '2a8600a3', NULL, NULL),
(48, 'Deposer livre', '7afb2ca5', NULL, NULL),
(49, 'Supprimer projet', '5f6b3cb0', NULL, NULL),
(50, 'Details du livre', 'fadcd1b0', NULL, NULL),
(51, 'Demander livre', 'aea309a1', NULL, NULL),
(52, 'Accepter la demande de livre', '46282097', NULL, NULL),
(53, 'Refuser la demande de livre', '2a496c35', NULL, NULL),
(54, 'Voir utilisateurs', 'd571c49d', NULL, NULL),
(55, 'Ajouter utilisateur', 'eca99273', NULL, NULL),
(56, 'Modifier utilisateur', 'e4e6a489', NULL, NULL),
(57, 'Modifier responsabilité', '2bd9dd0f', NULL, NULL),
(58, 'Supprimer compte', 'f6aeab62', NULL, NULL),
(59, 'Activer compte', 'f0abbe12', NULL, NULL),
(60, 'Désactiver compte', 'dc90fb11', NULL, NULL),
(61, 'Ajouter pôle', 'c9631f3e', NULL, NULL),
(62, 'Modifier pôle', '02a16a29', NULL, NULL),
(63, 'Supprimer pôle', '34ae8ea2', NULL, NULL),
(64, 'Ajouter rôle', 'b2f7b308', NULL, NULL),
(65, 'Modifier rôle', '6ad335b8', NULL, NULL),
(66, 'Supprimer rôle', '78f46731', NULL, NULL),
(67, 'Voir activité', 'f4b2c0bb', NULL, NULL),
(68, 'Voir client', '0fc36fd1', NULL, NULL),
(69, 'Modifier client', '54bfb141', NULL, NULL),
(70, 'Voir validation de projet', 'b6a9a19d', NULL, NULL),
(71, 'Valider projet', 'ef809625', NULL, NULL),
(72, 'Refuser projet', 'c1f36651', NULL, NULL),
(73, 'Voir côut & charge', 'c3642ddb', NULL, NULL),
(74, 'Modifier côut & charge', '878fa10a', NULL, NULL),
(75, 'Voir validation de demande', 'deead11a', NULL, NULL),
(76, 'Valider demande', 'f54fa471', NULL, NULL),
(77, 'Refuser demande', '13959126', NULL, NULL),
(78, 'Voir sponsors', '34a2996a', NULL, NULL),
(79, 'Voir ticket', '7a5667a1', NULL, NULL),
(80, 'Demander ticket', '4648cef5', NULL, NULL),
(81, 'Modifer ticket', 'f2069168', NULL, NULL),
(82, 'Marquer comme résolu', '19f8643c', NULL, NULL),
(83, 'Voir IT', '8f311138', NULL, NULL),
(84, 'Marquer comme fermé', '150b2d01', NULL, NULL),
(85, 'Faire une recherche', 'c1b9d89a', NULL, NULL),
(86, 'Voir details du ticket', '5446e1a1', NULL, NULL),
(87, 'Voir salle de reunion', 'a585094b', NULL, NULL),
(88, 'Demander salle', 'a0b29b96', NULL, NULL),
(89, 'Voir occupation', '794fd49b', NULL, NULL),
(90, 'Voir listes', '50d42eee', NULL, NULL),
(91, 'Valider demande de salle', 'c1f162e8', NULL, NULL),
(92, 'Refuser demande de salle', '521bbf7d', NULL, NULL),
(93, 'Voir agenda responsable', '05f21fe0', NULL, NULL),
(94, 'Ajouter agenda responsable', '67348ba2', NULL, NULL),
(95, 'Voir absence responsable', 'c33bf0f6', NULL, NULL),
(96, 'Ajouter/Modifier/supprimer absence', 'ee59993d', NULL, NULL),
(97, 'Voir feuille de temps responsable', '704e0419', NULL, NULL),
(98, 'Feuilles de temps globale responsable', '768e04b6', NULL, NULL),
(99, 'Deblocage feuille de temps responsable', 'df786e3c', NULL, NULL),
(100, 'Ouverture et fermeture des bureaux responsable', 'e71d1263', NULL, NULL),
(101, 'Ouverture et fermeture des bureaux collaborateurs', 'ed332664', NULL, NULL),
(102, 'Feuilles de temps responsable', '1a4545b4', NULL, NULL),
(103, 'Graphes utilisateurs', '96ec9b6e', NULL, NULL),
(104, 'Demande d\'autorisation de validation de feuilles de temps', '69382ed6', NULL, NULL),
(105, 'Statistiques responsable', '3fd010e1', NULL, NULL),
(106, 'Agenda', '49098c06', NULL, NULL),
(107, 'Voir autorisation', '4cfd204c', NULL, NULL),
(108, 'Valider autorisation', '774fbb8d', NULL, NULL),
(109, 'Refuser autorisation', 'f0a08053', NULL, NULL),
(110, 'Voir groupe', 'ec8fb7b9', NULL, NULL),
(111, 'tableau de bord superadmin', '9698c826', NULL, NULL),
(112, 'Ajouter groupe', 'fa3bac22', NULL, NULL),
(113, 'Modifier groupe', '93c75e08', NULL, NULL),
(114, 'Activer groupe', '17d38d90', NULL, NULL),
(115, 'Desactiver groupe', '8e815350', NULL, NULL),
(116, 'Voir demande de compte', 'edb39545', NULL, NULL),
(117, 'Valider demande de compte', 'd68b758b', NULL, NULL),
(118, 'Voir entreprise', '1498fbb2', NULL, NULL),
(119, 'Desactiver entreprise', 'b33d713a', NULL, NULL),
(120, 'Activer entreprise', '5be0fca6', NULL, NULL),
(121, 'Voir association', 'fd7c7315', NULL, NULL),
(122, 'Associer groupe entreprise', 'f84563b6', NULL, NULL),
(123, 'Voir secteur', 'd96f4a9c', NULL, NULL),
(124, 'Ajouter secteur', '7ffa15e4', NULL, NULL),
(125, 'Modifier secteur', 'dcfb3d7d', NULL, NULL),
(126, 'Voir tableau de bord groupe', '25352d70', NULL, NULL),
(127, 'Tableau de bord direction', '4b4bae38', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `grades`
--

CREATE TABLE `grades` (
  `id_grade` bigint(20) UNSIGNED NOT NULL,
  `nom_grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grades`
--

INSERT INTO `grades` (`id_grade`, `nom_grade`, `created_at`, `updated_at`) VALUES
(1, 'Associés', NULL, NULL),
(2, 'Consultants', NULL, NULL),
(3, 'Directeurs', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE `groupes` (
  `id_groupe` bigint(20) UNSIGNED NOT NULL,
  `nom_groupe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id_groupe`, `nom_groupe`, `created_at`, `updated_at`) VALUES
(1, 'NSIA GROUPE', '2022-04-04 10:59:34', '2022-04-04 10:59:34');

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `id_log` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date_log` date NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`id_log`, `user_id`, `date_log`, `type`, `action`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(1, 9, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', 1, '2021-04-29 12:33:38', '2021-04-29 12:33:38'),
(2, 2, '2021-04-29', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-29 12:34:02', '2021-04-29 12:34:02'),
(3, 9, '2021-04-29', 'Ajouter projet', 'INSAI', NULL, '2021-04-29 12:39:10', '2021-04-29 12:39:10'),
(4, 14, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 12:42:39', '2021-04-29 12:42:39'),
(5, 2, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 12:53:43', '2021-04-29 12:53:43'),
(6, 2, '2021-04-29', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-29 12:54:14', '2021-04-29 12:54:14'),
(7, 13, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 12:54:21', '2021-04-29 12:54:21'),
(8, 12, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 12:57:21', '2021-04-29 12:57:21'),
(9, 13, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 13:46:41', '2021-04-29 13:46:41'),
(10, 13, '2021-04-29', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-29 14:28:32', '2021-04-29 14:28:32'),
(11, 2, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 14:28:48', '2021-04-29 14:28:48'),
(12, 2, '2021-04-29', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-29 14:32:43', '2021-04-29 14:32:43'),
(13, 10, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 14:33:50', '2021-04-29 14:33:50'),
(14, 6, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 14:49:07', '2021-04-29 14:49:07'),
(15, 12, '2021-04-29', 'Ajouter projet', 'Mes tâches quotidiennes', NULL, '2021-04-29 14:58:22', '2021-04-29 14:58:22'),
(16, 10, '2021-04-29', 'Ajouter projet', 'Outil de SEO', NULL, '2021-04-29 15:21:09', '2021-04-29 15:21:09'),
(17, 4, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 15:23:16', '2021-04-29 15:23:16'),
(18, 14, '2021-04-29', 'Ajouter projet', 'Comptabilité-Déclarations sociales et fiscales', NULL, '2021-04-29 15:26:40', '2021-04-29 15:26:40'),
(19, 14, '2021-04-29', 'Ajouter projet', 'Comptabilité-Déclarations sociales et fiscales', NULL, '2021-04-29 15:26:55', '2021-04-29 15:26:55'),
(20, 14, '2021-04-29', 'Ajouter projet', 'Comptabilité-Déclarations sociales et fiscales', NULL, '2021-04-29 15:27:10', '2021-04-29 15:27:10'),
(21, 6, '2021-04-29', 'Ajouter projet', 'SHAREPOINT', NULL, '2021-04-29 15:27:34', '2021-04-29 15:27:34'),
(22, 6, '2021-04-29', 'Ajouter projet', 'QUESTIONNAIRE RISK MANAGEMENT', NULL, '2021-04-29 15:33:10', '2021-04-29 15:33:10'),
(23, 6, '2021-04-29', 'Ajouter projet', 'QUESTIONNAIRE RISK MANAGEMENT', NULL, '2021-04-29 15:33:29', '2021-04-29 15:33:29'),
(24, 12, '2021-04-29', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-29 15:34:19', '2021-04-29 15:34:19'),
(25, 6, '2021-04-29', 'Ajouter projet', 'REPONSE APPEL D\'OFFRE AFRICA RE', NULL, '2021-04-29 15:42:23', '2021-04-29 15:42:23'),
(26, 4, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 16:29:22', '2021-04-29 16:29:22'),
(27, 13, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 16:48:49', '2021-04-29 16:48:49'),
(28, 4, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 16:50:12', '2021-04-29 16:50:12'),
(29, 13, '2021-04-29', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-29 16:58:43', '2021-04-29 16:58:43'),
(30, 8, '2021-04-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-29 17:06:10', '2021-04-29 17:06:10'),
(31, 8, '2021-04-29', 'Modifier projet', 'REPONSE APPEL D\'OFFRE AFRICA RE', NULL, '2021-04-29 17:09:42', '2021-04-29 17:09:42'),
(32, 8, '2021-04-29', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-29 17:16:44', '2021-04-29 17:16:44'),
(33, 10, '2021-04-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-30 07:09:40', '2021-04-30 07:09:40'),
(34, 4, '2021-04-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-30 07:49:54', '2021-04-30 07:49:54'),
(35, 4, '2021-04-30', 'Modifier projet', 'Support IT', NULL, '2021-04-30 08:13:43', '2021-04-30 08:13:43'),
(36, 4, '2021-04-30', 'Modifier projet', 'Support IT', NULL, '2021-04-30 08:14:25', '2021-04-30 08:14:25'),
(37, 5, '2021-04-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-30 12:41:34', '2021-04-30 12:41:34'),
(38, 8, '2021-04-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-30 12:44:12', '2021-04-30 12:44:12'),
(39, 8, '2021-04-30', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-30 12:52:18', '2021-04-30 12:52:18'),
(40, 13, '2021-04-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-30 15:06:31', '2021-04-30 15:06:31'),
(41, 13, '2021-04-30', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-04-30 15:06:47', '2021-04-30 15:06:47'),
(42, 6, '2021-04-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-04-30 16:16:45', '2021-04-30 16:16:45'),
(43, 8, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 08:21:54', '2021-05-03 08:21:54'),
(44, 9, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 09:46:41', '2021-05-03 09:46:41'),
(45, 12, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 10:59:53', '2021-05-03 10:59:53'),
(46, 9, '2021-05-03', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-03 11:39:53', '2021-05-03 11:39:53'),
(47, 4, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 13:08:52', '2021-05-03 13:08:52'),
(48, 5, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 13:10:00', '2021-05-03 13:10:00'),
(49, 6, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 13:13:52', '2021-05-03 13:13:52'),
(50, 14, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 13:15:10', '2021-05-03 13:15:10'),
(51, 15, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 13:15:53', '2021-05-03 13:15:53'),
(52, 12, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 13:18:45', '2021-05-03 13:18:45'),
(53, 4, '2021-05-03', 'Ajouter projet', 'project1', NULL, '2021-05-03 13:23:02', '2021-05-03 13:23:02'),
(54, 4, '2021-05-03', 'Ajouter tâche', 'tache1', NULL, '2021-05-03 13:26:05', '2021-05-03 13:26:05'),
(55, 12, '2021-05-03', 'Ajouter projet', 'PROSPECTION', NULL, '2021-05-03 13:28:27', '2021-05-03 13:28:27'),
(56, 9, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 13:30:24', '2021-05-03 13:30:24'),
(57, 12, '2021-05-03', 'Ajouter tâche', 'Appel', NULL, '2021-05-03 13:35:48', '2021-05-03 13:35:48'),
(58, 12, '2021-05-03', 'Ajouter tâche', 'Mailing', NULL, '2021-05-03 13:39:11', '2021-05-03 13:39:11'),
(59, 10, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 13:44:48', '2021-05-03 13:44:48'),
(60, 4, '2021-05-03', 'Demandé une absence', 'ARRET MALADIE', NULL, '2021-05-03 13:47:32', '2021-05-03 13:47:32'),
(61, 12, '2021-05-03', 'Ajouter tâche', 'Mailing', NULL, '2021-05-03 13:50:32', '2021-05-03 13:50:32'),
(62, 12, '2021-05-03', 'Ajouter tâche', 'RDV Présentiel', NULL, '2021-05-03 13:53:51', '2021-05-03 13:53:51'),
(63, 12, '2021-05-03', 'Ajouter tâche', 'RDV Présentiel', NULL, '2021-05-03 13:53:55', '2021-05-03 13:53:55'),
(64, 12, '2021-05-03', 'Ajouter tâche', 'Formation', NULL, '2021-05-03 13:56:08', '2021-05-03 13:56:08'),
(65, 10, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 14:09:55', '2021-05-03 14:09:55'),
(66, 12, '2021-05-03', 'Modifier projet', 'GESTION ADMINISTRATIVE', NULL, '2021-05-03 14:11:25', '2021-05-03 14:11:25'),
(67, 9, '2021-05-03', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-03 14:19:02', '2021-05-03 14:19:02'),
(68, 4, '2021-05-03', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-03 14:19:03', '2021-05-03 14:19:03'),
(69, 9, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 14:21:28', '2021-05-03 14:21:28'),
(70, 14, '2021-05-03', 'Ajouter projet', 'DECLARATIONS SOCIALES', NULL, '2021-05-03 14:32:33', '2021-05-03 14:32:33'),
(71, 14, '2021-05-03', 'Ajouter tâche', 'Déclarations sociales de Juillet 2019 à Décembre 2020', NULL, '2021-05-03 14:37:53', '2021-05-03 14:37:53'),
(72, 14, '2021-05-03', 'Ajouter tâche', 'Déclarations travailleurs DIBY et KADE', NULL, '2021-05-03 14:39:25', '2021-05-03 14:39:25'),
(73, 14, '2021-05-03', 'Ajouter tâche', 'Etablissement des DISA 2019 et 2020', NULL, '2021-05-03 14:40:29', '2021-05-03 14:40:29'),
(74, 14, '2021-05-03', 'Ajouter tâche', 'Déclaration travailleur KOUADIO PHINEAS', NULL, '2021-05-03 14:42:09', '2021-05-03 14:42:09'),
(75, 14, '2021-05-03', 'Ajouter tâche', 'Déclarations sociales 1er trimestre 2021 (Jan-Fév-Mar)', NULL, '2021-05-03 14:44:31', '2021-05-03 14:44:31'),
(76, 14, '2021-05-03', 'Ajouter tâche', 'Dépôt des appels de cotisation des travailleurs dont les numéros matricules ne sont pas disponibles (KADE, KOUADIO, BAZIE)', NULL, '2021-05-03 14:47:21', '2021-05-03 14:47:21'),
(77, 12, '2021-05-03', 'Ajouter projet', 'ASSISTANAT', NULL, '2021-05-03 14:53:47', '2021-05-03 14:53:47'),
(78, 12, '2021-05-03', 'Ajouter projet', 'TRADUCTION', NULL, '2021-05-03 14:59:29', '2021-05-03 14:59:29'),
(79, 12, '2021-05-03', 'Ajouter tâche', 'Suivi travaux de plomberie', NULL, '2021-05-03 15:01:57', '2021-05-03 15:01:57'),
(80, 12, '2021-05-03', 'Ajouter tâche', 'Compte rendu de réunion', NULL, '2021-05-03 15:03:42', '2021-05-03 15:03:42'),
(81, 12, '2021-05-03', 'Ajouter tâche', 'Organisation de Réunion d\'équipe', NULL, '2021-05-03 15:05:32', '2021-05-03 15:05:32'),
(82, 12, '2021-05-03', 'Ajouter tâche', 'Supervision travaux menuiserie, plomberie', NULL, '2021-05-03 15:07:39', '2021-05-03 15:07:39'),
(83, 8, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 15:23:38', '2021-05-03 15:23:38'),
(84, 5, '2021-05-03', 'Ajouter projet', 'ATLANTA', NULL, '2021-05-03 15:49:20', '2021-05-03 15:49:20'),
(85, 5, '2021-05-03', 'Ajouter projet', 'COMMUNICATION INTERNE', NULL, '2021-05-03 15:54:38', '2021-05-03 15:54:38'),
(86, 4, '2021-05-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-03 16:10:23', '2021-05-03 16:10:23'),
(87, 5, '2021-05-03', 'Ajouter projet', 'CREATION DU CATALOGUE DE FORMATIONS', NULL, '2021-05-03 16:18:33', '2021-05-03 16:18:33'),
(88, 5, '2021-05-03', 'Ajouter projet', 'EDITION GRAPHIQUE', NULL, '2021-05-03 16:20:46', '2021-05-03 16:20:46'),
(89, 4, '2021-05-03', 'Ajouter projet', 'ALM Project', NULL, '2021-05-03 16:21:24', '2021-05-03 16:21:24'),
(90, 12, '2021-05-03', 'Ajouter tâche', 'Suivi des travaux ménage', NULL, '2021-05-03 16:22:44', '2021-05-03 16:22:44'),
(91, 5, '2021-05-03', 'Ajouter projet', 'APPEL D\'OFFRES', NULL, '2021-05-03 16:23:19', '2021-05-03 16:23:19'),
(92, 12, '2021-05-03', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-03 16:23:42', '2021-05-03 16:23:42'),
(93, 5, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 06:24:02', '2021-05-04 06:24:02'),
(94, 5, '2021-05-04', 'Ajouter tâche', 'Rédaction et correction de la feuille de route de rénovation du site web', NULL, '2021-05-04 06:33:05', '2021-05-04 06:33:05'),
(95, 5, '2021-05-04', 'Ajouter tâche', 'Mise à jour et retouche intégrale du planning', NULL, '2021-05-04 06:35:48', '2021-05-04 06:35:48'),
(96, 5, '2021-05-04', 'Ajouter tâche', 'Suivi et validation des publications', NULL, '2021-05-04 06:36:58', '2021-05-04 06:36:58'),
(97, 5, '2021-05-04', 'Ajouter tâche', 'Recherche de site web d\'inspiration et univers similaire', NULL, '2021-05-04 06:38:07', '2021-05-04 06:38:07'),
(98, 5, '2021-05-04', 'Ajouter tâche', 'Rédaction du guide d\'utilisation des Réseaux Sociaux', NULL, '2021-05-04 06:39:08', '2021-05-04 06:39:08'),
(99, 5, '2021-05-04', 'Ajouter tâche', 'Organisation et CR de réunion', NULL, '2021-05-04 06:40:10', '2021-05-04 06:40:10'),
(100, 5, '2021-05-04', 'Ajouter tâche', 'Refonte du logo', NULL, '2021-05-04 06:43:18', '2021-05-04 06:43:18'),
(101, 14, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 06:46:10', '2021-05-04 06:46:10'),
(102, 5, '2021-05-04', 'Ajouter tâche', 'Rapport SEA', NULL, '2021-05-04 06:48:48', '2021-05-04 06:48:48'),
(103, 5, '2021-05-04', 'Ajouter tâche', 'Conception du tableau de bord Project management', NULL, '2021-05-04 06:49:51', '2021-05-04 06:49:51'),
(104, 5, '2021-05-04', 'Ajouter tâche', 'Conception de la maquette du site', NULL, '2021-05-04 06:51:05', '2021-05-04 06:51:05'),
(105, 5, '2021-05-04', 'Ajouter tâche', 'Confection du fichier de suivi du contenu', NULL, '2021-05-04 06:53:58', '2021-05-04 06:53:58'),
(106, 5, '2021-05-04', 'Ajouter tâche', 'Conception du cahier de procédure et suivi', NULL, '2021-05-04 06:55:32', '2021-05-04 06:55:32'),
(107, 5, '2021-05-04', 'Ajouter tâche', 'Réunion d\'informations et de formation sur le paramétrage des alertes pour les actus', NULL, '2021-05-04 06:56:22', '2021-05-04 06:56:22'),
(108, 12, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 06:57:21', '2021-05-04 06:57:21'),
(109, 14, '2021-05-04', 'Ajouter tâche', 'Tri des reçus de déclarations (150 mails)', NULL, '2021-05-04 07:27:32', '2021-05-04 07:27:32'),
(110, 14, '2021-05-04', 'Ajouter projet', 'DECLARATIONS FISCALES', NULL, '2021-05-04 07:44:37', '2021-05-04 07:44:37'),
(111, 14, '2021-05-04', 'Ajouter projet', 'DECLARATIONS FISCALES', NULL, '2021-05-04 07:44:53', '2021-05-04 07:44:53'),
(112, 14, '2021-05-04', 'Ajouter tâche', 'Déclaration annuelle de l\'impôt professionnel (7% du Chiffre d\'affaires réalisé sur l\'année 2020)', NULL, '2021-05-04 08:04:12', '2021-05-04 08:04:12'),
(113, 14, '2021-05-04', 'Ajouter tâche', 'Déclarations fiscales Avril 2021 et paiements (its, fdfp, retenues à la source bnc/bic)', NULL, '2021-05-04 08:08:52', '2021-05-04 08:08:52'),
(114, 14, '2021-05-04', 'Ajouter tâche', 'Suivi du transfert de centre d\'impôt', NULL, '2021-05-04 08:26:55', '2021-05-04 08:26:55'),
(115, 14, '2021-05-04', 'Ajouter tâche', 'Suivi du transfert de centre d\'impôt', NULL, '2021-05-04 08:26:59', '2021-05-04 08:26:59'),
(116, 14, '2021-05-04', 'Ajouter tâche', 'Synthèse sur le nouveau régime, régime fiscale des microentreprises', NULL, '2021-05-04 08:32:16', '2021-05-04 08:32:16'),
(117, 12, '2021-05-04', 'Modifier projet', 'GESTION ADMINISTRATIVE', NULL, '2021-05-04 08:32:42', '2021-05-04 08:32:42'),
(118, 14, '2021-05-04', 'Ajouter projet', 'COMPTABILITE', NULL, '2021-05-04 08:39:43', '2021-05-04 08:39:43'),
(119, 14, '2021-05-04', 'Ajouter tâche', 'Enregistrement des pièces comptables', NULL, '2021-05-04 08:44:43', '2021-05-04 08:44:43'),
(120, 14, '2021-05-04', 'Ajouter tâche', 'Vérification des pièces comptables enregistrer par Mme DEA', NULL, '2021-05-04 08:47:35', '2021-05-04 08:47:35'),
(121, 14, '2021-05-04', 'Ajouter projet', 'ORGANISATION-MANAGEMENT', NULL, '2021-05-04 08:56:45', '2021-05-04 08:56:45'),
(122, 14, '2021-05-04', 'Ajouter tâche', 'Assistance au cabinet EBUR-FIDUCIAIRE pour la vérification des pièces comptables', NULL, '2021-05-04 09:00:13', '2021-05-04 09:00:13'),
(123, 14, '2021-05-04', 'Ajouter tâche', 'Inventaire du matériel d\'exploitation et autres', NULL, '2021-05-04 09:12:05', '2021-05-04 09:12:05'),
(124, 4, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 09:13:30', '2021-05-04 09:13:30'),
(125, 14, '2021-05-04', 'Ajouter projet', 'JURIDIQUE', NULL, '2021-05-04 09:17:20', '2021-05-04 09:17:20'),
(126, 14, '2021-05-04', 'Ajouter tâche', 'Inventaire semestriel du matériel informatique', NULL, '2021-05-04 09:21:02', '2021-05-04 09:21:02'),
(127, 14, '2021-05-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-04 09:31:18', '2021-05-04 09:31:18'),
(128, 14, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 09:32:03', '2021-05-04 09:32:03'),
(129, 6, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 09:35:01', '2021-05-04 09:35:01'),
(130, 14, '2021-05-04', 'Ajouter tâche', 'Manuel de procédures administratives, opérationnelles et comptables', NULL, '2021-05-04 09:38:01', '2021-05-04 09:38:01'),
(131, 14, '2021-05-04', 'Ajouter tâche', 'Modifications du contrat de travail type (CDI)', NULL, '2021-05-04 09:43:55', '2021-05-04 09:43:55'),
(132, 6, '2021-05-04', 'Modifier projet', 'QUESTIONNAIRE RISK MANAGEMENT', NULL, '2021-05-04 10:05:11', '2021-05-04 10:05:11'),
(133, 14, '2021-05-04', 'Ajouter tâche', 'Livret d\'accueil Aroa Partners', NULL, '2021-05-04 10:08:27', '2021-05-04 10:08:27'),
(134, 14, '2021-05-04', 'Ajouter tâche', 'Recherches et synthèse sur les bureaux de placement payant', NULL, '2021-05-04 10:14:26', '2021-05-04 10:14:26'),
(135, 14, '2021-05-04', 'Ajouter projet', 'RECRUTEMENTS', NULL, '2021-05-04 10:18:18', '2021-05-04 10:18:18'),
(136, 14, '2021-05-04', 'Ajouter tâche', 'Avenant au contrat de travail GBEHE', NULL, '2021-05-04 10:28:12', '2021-05-04 10:28:12'),
(137, 14, '2021-05-04', 'Ajouter tâche', 'Avenant au contrat de travail KANGAH', NULL, '2021-05-04 10:29:52', '2021-05-04 10:29:52'),
(138, 14, '2021-05-04', 'Ajouter tâche', 'Contrat de  travail KOUADIO LESLIE', NULL, '2021-05-04 10:31:41', '2021-05-04 10:31:41'),
(139, 6, '2021-05-04', 'Ajouter tâche', 'Recherches compréhension SharePoint', NULL, '2021-05-04 10:31:56', '2021-05-04 10:31:56'),
(140, 14, '2021-05-04', 'Ajouter tâche', 'Contrat de travail KOUADIO PHINEAS', NULL, '2021-05-04 10:32:45', '2021-05-04 10:32:45'),
(141, 6, '2021-05-04', 'Ajouter tâche', 'Synthèse des recherches sur la compréhension du SharePoint', NULL, '2021-05-04 10:33:25', '2021-05-04 10:33:25'),
(142, 6, '2021-05-04', 'Ajouter tâche', 'Synthèse des recherches sur la compréhension du SharePoint', NULL, '2021-05-04 10:33:29', '2021-05-04 10:33:29'),
(143, 14, '2021-05-04', 'Ajouter tâche', 'Contrat de travail AKICHI', NULL, '2021-05-04 10:34:05', '2021-05-04 10:34:05'),
(144, 14, '2021-05-04', 'Ajouter tâche', 'Contrat pré-emploi COULIBALY JONATHAN', NULL, '2021-05-04 10:37:09', '2021-05-04 10:37:09'),
(145, 6, '2021-05-04', 'Ajouter tâche', 'Séance de restitution', NULL, '2021-05-04 10:40:11', '2021-05-04 10:40:11'),
(146, 6, '2021-05-04', 'Ajouter tâche', 'Séance de restitution', NULL, '2021-05-04 10:40:14', '2021-05-04 10:40:14'),
(147, 4, '2021-05-04', 'Ajouter tâche', 'Conception et programation de l\'algorithme', NULL, '2021-05-04 10:40:43', '2021-05-04 10:40:43'),
(148, 14, '2021-05-04', 'Ajouter tâche', 'Organisation arrivée des stagiaires BABA BA et COULIBALY JONATHAN', NULL, '2021-05-04 10:41:09', '2021-05-04 10:41:09'),
(149, 4, '2021-05-04', 'Ajouter tâche', 'Frontend', NULL, '2021-05-04 10:42:51', '2021-05-04 10:42:51'),
(150, 14, '2021-05-04', 'Ajouter tâche', 'Décharge matériel BABA BA', NULL, '2021-05-04 10:43:11', '2021-05-04 10:43:11'),
(151, 4, '2021-05-04', 'Ajouter tâche', 'Developpement de la fonction update_data', NULL, '2021-05-04 10:43:58', '2021-05-04 10:43:58'),
(152, 4, '2021-05-04', 'Ajouter tâche', 'Documentation du code ALM', NULL, '2021-05-04 10:44:49', '2021-05-04 10:44:49'),
(153, 6, '2021-05-04', 'Ajouter tâche', 'Recherches note de lancement', NULL, '2021-05-04 10:45:03', '2021-05-04 10:45:03'),
(154, 4, '2021-05-04', 'Ajouter tâche', 'Frontend  animation loading', NULL, '2021-05-04 10:47:26', '2021-05-04 10:47:26'),
(155, 14, '2021-05-04', 'Ajouter tâche', 'Avenant au contrat de travail DEA', NULL, '2021-05-04 10:57:08', '2021-05-04 10:57:08'),
(156, 14, '2021-05-04', 'Ajouter tâche', 'Avenant au contrat de travail DEA', NULL, '2021-05-04 10:57:12', '2021-05-04 10:57:12'),
(157, 4, '2021-05-04', 'Ajouter projet', 'Developpement Application CRM (AP\'Time)', NULL, '2021-05-04 10:57:34', '2021-05-04 10:57:34'),
(158, 14, '2021-05-04', 'Ajouter tâche', 'Contrat de travail KADE', NULL, '2021-05-04 10:58:48', '2021-05-04 10:58:48'),
(159, 4, '2021-05-04', 'Ajouter tâche', 'Elaboration de planning', NULL, '2021-05-04 11:00:34', '2021-05-04 11:00:34'),
(160, 4, '2021-05-04', 'Ajouter tâche', 'authentification (register & login) front', NULL, '2021-05-04 11:02:40', '2021-05-04 11:02:40'),
(161, 14, '2021-05-04', 'Ajouter projet', 'FORMATIONS', NULL, '2021-05-04 11:03:29', '2021-05-04 11:03:29'),
(162, 4, '2021-05-04', 'Ajouter tâche', 'authentification (register & login) front', NULL, '2021-05-04 11:05:56', '2021-05-04 11:05:56'),
(163, 4, '2021-05-04', 'Ajouter tâche', 'authentification (register & login) front', NULL, '2021-05-04 11:05:59', '2021-05-04 11:05:59'),
(164, 4, '2021-05-04', 'Ajouter tâche', 'authentification (register & login) back', NULL, '2021-05-04 11:08:06', '2021-05-04 11:08:06'),
(165, 14, '2021-05-04', 'Ajouter tâche', 'Participation à la formation  Mode Projet', NULL, '2021-05-04 11:10:49', '2021-05-04 11:10:49'),
(166, 4, '2021-05-04', 'Ajouter tâche', 'cours sur le criptage des mot de passe', NULL, '2021-05-04 11:13:49', '2021-05-04 11:13:49'),
(167, 14, '2021-05-04', 'Ajouter tâche', 'Tableau de bord', NULL, '2021-05-04 11:15:11', '2021-05-04 11:15:11'),
(168, 13, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 11:19:31', '2021-05-04 11:19:31'),
(169, 4, '2021-05-04', 'Ajouter tâche', 'Cours integration Django forms', NULL, '2021-05-04 11:22:12', '2021-05-04 11:22:12'),
(170, 4, '2021-05-04', 'Ajouter tâche', 're-configuration de l\'espace de dev python+test', NULL, '2021-05-04 11:23:57', '2021-05-04 11:23:57'),
(171, 4, '2021-05-04', 'Ajouter tâche', 're-configuration de l\'espace de dev python+test', NULL, '2021-05-04 11:24:00', '2021-05-04 11:24:00'),
(172, 13, '2021-05-04', 'Ajouter tâche', 'Modélisation de la base données', NULL, '2021-05-04 11:24:39', '2021-05-04 11:24:39'),
(173, 13, '2021-05-04', 'Ajouter tâche', 'Création de model et de controller', NULL, '2021-05-04 11:26:52', '2021-05-04 11:26:52'),
(174, 4, '2021-05-04', 'Ajouter tâche', 'Instalation et configuration de l\'ordi Mme Bogui', NULL, '2021-05-04 11:26:58', '2021-05-04 11:26:58'),
(175, 13, '2021-05-04', 'Ajouter tâche', 'Test des fonctionnalités', NULL, '2021-05-04 11:29:31', '2021-05-04 11:29:31'),
(176, 4, '2021-05-04', 'Ajouter tâche', 'resolution du pb outlook M. AGBE', NULL, '2021-05-04 11:30:48', '2021-05-04 11:30:48'),
(177, 13, '2021-05-04', 'Ajouter tâche', 'Correction des bugs', NULL, '2021-05-04 11:31:12', '2021-05-04 11:31:12'),
(178, 4, '2021-05-04', 'Ajouter tâche', 'Point equipe IT', NULL, '2021-05-04 11:32:35', '2021-05-04 11:32:35'),
(179, 13, '2021-05-04', 'Ajouter tâche', 'Création d\'interface de gestion des absences', NULL, '2021-05-04 11:34:44', '2021-05-04 11:34:44'),
(180, 4, '2021-05-04', 'Ajouter tâche', 'Test app CRM', NULL, '2021-05-04 11:36:41', '2021-05-04 11:36:41'),
(181, 13, '2021-05-04', 'Ajouter tâche', 'Validation de projet', NULL, '2021-05-04 11:40:06', '2021-05-04 11:40:06'),
(182, 13, '2021-05-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-04 11:40:58', '2021-05-04 11:40:58'),
(183, 6, '2021-05-04', 'Ajouter projet', 'APPEL D\'OFFRE AFRICA RE', NULL, '2021-05-04 12:04:45', '2021-05-04 12:04:45'),
(184, 6, '2021-05-04', 'Ajouter projet', 'APPEL D\'OFFRE AFRICA RE', NULL, '2021-05-04 12:05:28', '2021-05-04 12:05:28'),
(185, 6, '2021-05-04', 'Ajouter projet', 'APPEL D\'OFFRE AFRICA RE', NULL, '2021-05-04 12:06:20', '2021-05-04 12:06:20'),
(186, 2, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 12:08:53', '2021-05-04 12:08:53'),
(187, 2, '2021-05-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-04 12:10:32', '2021-05-04 12:10:32'),
(188, 14, '2021-05-04', 'Ajouter tâche', 'Formation: Découvrez les métiers des ressources humaines', NULL, '2021-05-04 12:27:23', '2021-05-04 12:27:23'),
(189, 4, '2021-05-04', 'Ajouter tâche', 'Resolution du probleme outlook  de contact', NULL, '2021-05-04 12:38:46', '2021-05-04 12:38:46'),
(190, 4, '2021-05-04', 'Ajouter tâche', 'Resolution du probleme outlook  de contact', NULL, '2021-05-04 12:38:50', '2021-05-04 12:38:50'),
(191, 4, '2021-05-04', 'Ajouter tâche', 'Point InsAI', NULL, '2021-05-04 12:40:06', '2021-05-04 12:40:06'),
(192, 4, '2021-05-04', 'Ajouter tâche', 'Contact e-monney', NULL, '2021-05-04 12:41:02', '2021-05-04 12:41:02'),
(193, 14, '2021-05-04', 'Ajouter tâche', 'Formation: Déployez une démarche de GPEC (Gestion Prévisionnelle des Emplois et des Compétences)', NULL, '2021-05-04 12:41:29', '2021-05-04 12:41:29'),
(194, 4, '2021-05-04', 'Ajouter tâche', 'refonte du fichier de suivi des heures', NULL, '2021-05-04 12:45:45', '2021-05-04 12:45:45'),
(195, 14, '2021-05-04', 'Ajouter projet', 'AUTRES', NULL, '2021-05-04 12:46:21', '2021-05-04 12:46:21'),
(196, 4, '2021-05-04', 'Ajouter tâche', 'Nettoyage de la machine de Kade', NULL, '2021-05-04 12:46:41', '2021-05-04 12:46:41'),
(197, 4, '2021-05-04', 'Ajouter tâche', 'Recherche de cotation banque mobile', NULL, '2021-05-04 12:48:09', '2021-05-04 12:48:09'),
(198, 14, '2021-05-04', 'Ajouter tâche', 'Point hebdomadaire', NULL, '2021-05-04 12:48:25', '2021-05-04 12:48:25'),
(199, 4, '2021-05-04', 'Ajouter tâche', 'Tri de cv avec Mme Bogui', NULL, '2021-05-04 12:49:47', '2021-05-04 12:49:47'),
(200, 4, '2021-05-04', 'Ajouter tâche', 'Seance photo', NULL, '2021-05-04 12:50:51', '2021-05-04 12:50:51'),
(201, 4, '2021-05-04', 'Ajouter tâche', 'Point Hebdo', NULL, '2021-05-04 12:52:34', '2021-05-04 12:52:34'),
(202, 14, '2021-05-04', 'Ajouter tâche', 'Mise à jour outil CRM', NULL, '2021-05-04 12:55:29', '2021-05-04 12:55:29'),
(203, 14, '2021-05-04', 'Ajouter tâche', 'Shooting photo équipe', NULL, '2021-05-04 12:57:40', '2021-05-04 12:57:40'),
(204, 14, '2021-05-04', 'Ajouter tâche', 'Tri photos shooting', NULL, '2021-05-04 12:59:34', '2021-05-04 12:59:34'),
(205, 4, '2021-05-04', 'Ajouter tâche', 'Point avec  le boss + rapport', NULL, '2021-05-04 13:01:19', '2021-05-04 13:01:19'),
(206, 14, '2021-05-04', 'Ajouter tâche', 'Tests application INS\'AI', NULL, '2021-05-04 13:01:44', '2021-05-04 13:01:44'),
(207, 4, '2021-05-04', 'Ajouter tâche', 'Point equipe IT', NULL, '2021-05-04 13:03:52', '2021-05-04 13:03:52'),
(208, 4, '2021-05-04', 'Ajouter tâche', 'Point Hebdo', NULL, '2021-05-04 13:04:45', '2021-05-04 13:04:45'),
(209, 4, '2021-05-04', 'Ajouter tâche', 'Point InsAI', NULL, '2021-05-04 13:05:54', '2021-05-04 13:05:54'),
(210, 14, '2021-05-04', 'Ajouter tâche', 'Veille informationnelle sur les ressources humaines', NULL, '2021-05-04 13:07:29', '2021-05-04 13:07:29'),
(211, 4, '2021-05-04', 'Ajouter tâche', 'Groupe Electrogene', NULL, '2021-05-04 13:08:39', '2021-05-04 13:08:39'),
(212, 14, '2021-05-04', 'Ajouter tâche', 'Mise à jour suivi des heures hebdomadaires excel', NULL, '2021-05-04 13:08:56', '2021-05-04 13:08:56'),
(213, 4, '2021-05-04', 'Ajouter tâche', 'Call pour banque digital+rapport', NULL, '2021-05-04 13:10:01', '2021-05-04 13:10:01'),
(214, 14, '2021-05-04', 'Ajouter tâche', 'Plan d\'actions RH', NULL, '2021-05-04 13:10:38', '2021-05-04 13:10:38'),
(215, 4, '2021-05-04', 'Ajouter tâche', 'point app analyse SEO', NULL, '2021-05-04 13:10:58', '2021-05-04 13:10:58'),
(216, 14, '2021-05-04', 'Ajouter tâche', 'Réponse à toute candidature', NULL, '2021-05-04 13:15:12', '2021-05-04 13:15:12'),
(217, 14, '2021-05-04', 'Ajouter tâche', 'Tri de candidats potentiels', NULL, '2021-05-04 13:18:23', '2021-05-04 13:18:23'),
(218, 4, '2021-05-04', 'Ajouter tâche', 'conversion  doc boss', NULL, '2021-05-04 13:18:51', '2021-05-04 13:18:51'),
(219, 4, '2021-05-04', 'Ajouter tâche', 'point reassurance + rapport', NULL, '2021-05-04 13:19:34', '2021-05-04 13:19:34'),
(220, 4, '2021-05-04', 'Ajouter tâche', 'Config Teams', NULL, '2021-05-04 13:20:20', '2021-05-04 13:20:20'),
(221, 14, '2021-05-04', 'Ajouter tâche', 'Programmation des entretiens et établissement de l\'agenda des entretiens', NULL, '2021-05-04 13:20:23', '2021-05-04 13:20:23'),
(222, 4, '2021-05-04', 'Ajouter tâche', 'Resolution pb Teams', NULL, '2021-05-04 13:20:58', '2021-05-04 13:20:58'),
(223, 4, '2021-05-04', 'Ajouter tâche', 'config nouvelle machine KADE', NULL, '2021-05-04 13:21:48', '2021-05-04 13:21:48'),
(224, 4, '2021-05-04', 'Ajouter tâche', 'choix photo', NULL, '2021-05-04 13:22:38', '2021-05-04 13:22:38'),
(225, 4, '2021-05-04', 'Ajouter tâche', 'intervention Microsoft support', NULL, '2021-05-04 13:23:18', '2021-05-04 13:23:18'),
(226, 14, '2021-05-04', 'Ajouter tâche', 'Analyse des cv et sélection', NULL, '2021-05-04 13:24:02', '2021-05-04 13:24:02'),
(227, 4, '2021-05-04', 'Ajouter tâche', 'point avec M. odjo', NULL, '2021-05-04 13:24:05', '2021-05-04 13:24:05'),
(228, 4, '2021-05-04', 'Ajouter tâche', 'Seance travail avec akichi', NULL, '2021-05-04 13:25:45', '2021-05-04 13:25:45'),
(229, 4, '2021-05-04', 'Ajouter tâche', 'Achat de caburant et mise en mache du GE', NULL, '2021-05-04 13:26:39', '2021-05-04 13:26:39'),
(230, 14, '2021-05-04', 'Ajouter tâche', 'Entretien Développeur Web et Développeur Mobile', NULL, '2021-05-04 13:26:56', '2021-05-04 13:26:56'),
(231, 4, '2021-05-04', 'Ajouter tâche', 'Inventaire', NULL, '2021-05-04 13:27:35', '2021-05-04 13:27:35'),
(232, 4, '2021-05-04', 'Ajouter tâche', 'Deploiment de serveur ftp', NULL, '2021-05-04 13:28:27', '2021-05-04 13:28:27'),
(233, 12, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 13:35:33', '2021-05-04 13:35:33'),
(234, 14, '2021-05-04', 'Ajouter tâche', 'Organisation des différents pôles', NULL, '2021-05-04 13:37:16', '2021-05-04 13:37:16'),
(235, 14, '2021-05-04', 'Ajouter tâche', 'Accompagnement des managers de pôle dans l\'encadrement des équipes', NULL, '2021-05-04 13:39:25', '2021-05-04 13:39:25'),
(236, 4, '2021-05-04', 'Ajouter tâche', 'Revue site web', NULL, '2021-05-04 13:41:04', '2021-05-04 13:41:04'),
(237, 14, '2021-05-04', 'Ajouter tâche', 'Accompagnement des pôles sur les différents projets', NULL, '2021-05-04 13:42:15', '2021-05-04 13:42:15'),
(238, 4, '2021-05-04', 'Ajouter tâche', 'Offre securité info', NULL, '2021-05-04 13:44:02', '2021-05-04 13:44:02'),
(239, 4, '2021-05-04', 'Ajouter tâche', 'Support au dev de l\'app CRM', NULL, '2021-05-04 13:45:18', '2021-05-04 13:45:18'),
(240, 14, '2021-05-04', 'Ajouter tâche', 'Analyse des postes', NULL, '2021-05-04 13:46:50', '2021-05-04 13:46:50'),
(241, 4, '2021-05-04', 'Ajouter tâche', 'Seance travail avec akichi', NULL, '2021-05-04 13:46:55', '2021-05-04 13:46:55'),
(242, 14, '2021-05-04', 'Ajouter tâche', 'Recherche de partenariat avec des établissements', NULL, '2021-05-04 13:47:37', '2021-05-04 13:47:37'),
(243, 4, '2021-05-04', 'Ajouter tâche', 'Revue site web', NULL, '2021-05-04 13:48:09', '2021-05-04 13:48:09'),
(244, 4, '2021-05-04', 'Ajouter tâche', 'Offre securité info', NULL, '2021-05-04 13:52:03', '2021-05-04 13:52:03'),
(245, 15, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 13:59:04', '2021-05-04 13:59:04'),
(246, 14, '2021-05-04', 'Ajouter tâche', 'Evaluation des qualités personnelles et professionnelles des candidats à travers les entretiens', NULL, '2021-05-04 14:01:02', '2021-05-04 14:01:02'),
(247, 14, '2021-05-04', 'Ajouter tâche', 'Mise à jour de la base de candidatures', NULL, '2021-05-04 14:02:34', '2021-05-04 14:02:34'),
(248, 10, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 14:02:43', '2021-05-04 14:02:43'),
(249, 10, '2021-05-04', 'Ajouter tâche', 'installation de pycharm éditeur de code pour python', NULL, '2021-05-04 14:08:59', '2021-05-04 14:08:59'),
(250, 15, '2021-05-04', 'Ajouter projet', 'communication digitale', NULL, '2021-05-04 14:09:43', '2021-05-04 14:09:43'),
(251, 10, '2021-05-04', 'Ajouter tâche', 'Installation de packages python pour analyse', NULL, '2021-05-04 14:10:02', '2021-05-04 14:10:02'),
(252, 10, '2021-05-04', 'Ajouter tâche', 'Choix de template et intégration', NULL, '2021-05-04 14:11:24', '2021-05-04 14:11:24'),
(253, 10, '2021-05-04', 'Ajouter tâche', 'Recherche des API et packages', NULL, '2021-05-04 14:12:45', '2021-05-04 14:12:45'),
(254, 14, '2021-05-04', 'Ajouter projet', 'RESSOURCES HUMAINES', NULL, '2021-05-04 14:12:50', '2021-05-04 14:12:50'),
(255, 5, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 14:14:12', '2021-05-04 14:14:12'),
(256, 12, '2021-05-04', 'Ajouter tâche', 'Revue des travaux', NULL, '2021-05-04 14:16:10', '2021-05-04 14:16:10'),
(257, 12, '2021-05-04', 'Ajouter tâche', 'Règlement de factures ORANGE', NULL, '2021-05-04 14:18:28', '2021-05-04 14:18:28'),
(258, 12, '2021-05-04', 'Ajouter tâche', 'Règlement de factures ORANGE', NULL, '2021-05-04 14:18:31', '2021-05-04 14:18:31'),
(259, 10, '2021-05-04', 'Ajouter tâche', 'Test elementaire', NULL, '2021-05-04 14:19:07', '2021-05-04 14:19:07'),
(260, 12, '2021-05-04', 'Ajouter tâche', 'Suivi des travaux ménage', NULL, '2021-05-04 14:19:26', '2021-05-04 14:19:26'),
(261, 14, '2021-05-04', 'Ajouter projet', 'RESSOURCES HUMAINES', NULL, '2021-05-04 14:21:42', '2021-05-04 14:21:42'),
(262, 12, '2021-05-04', 'Ajouter tâche', 'Suivi travaux de plomberie', NULL, '2021-05-04 14:22:03', '2021-05-04 14:22:03'),
(263, 12, '2021-05-04', 'Ajouter tâche', 'Constitution du dossier pour la banque', NULL, '2021-05-04 14:25:27', '2021-05-04 14:25:27'),
(264, 5, '2021-05-04', 'Ajouter tâche', 'Réunion de préparation', NULL, '2021-05-04 14:26:32', '2021-05-04 14:26:32'),
(265, 12, '2021-05-04', 'Ajouter tâche', 'Constitution du dossier pour la banque', NULL, '2021-05-04 14:26:35', '2021-05-04 14:26:35'),
(266, 12, '2021-05-04', 'Ajouter tâche', 'Constitution du dossier pour la banque', NULL, '2021-05-04 14:26:38', '2021-05-04 14:26:38'),
(267, 5, '2021-05-04', 'Ajouter tâche', 'Réunion de préparation', NULL, '2021-05-04 14:26:41', '2021-05-04 14:26:41'),
(268, 5, '2021-05-04', 'Ajouter tâche', 'Communication digitale : point de l\'existant et solutions', NULL, '2021-05-04 14:30:30', '2021-05-04 14:30:30'),
(269, 14, '2021-05-04', 'Ajouter tâche', 'Objectifs et plan d\'action', NULL, '2021-05-04 14:31:05', '2021-05-04 14:31:05'),
(270, 15, '2021-05-04', 'Ajouter tâche', 'Recherche solution dans le centre d\'aide google my business', NULL, '2021-05-04 14:31:41', '2021-05-04 14:31:41'),
(271, 14, '2021-05-04', 'Ajouter tâche', 'Administration du personnel', NULL, '2021-05-04 14:31:51', '2021-05-04 14:31:51'),
(272, 5, '2021-05-04', 'Ajouter tâche', 'Test et insight', NULL, '2021-05-04 14:32:08', '2021-05-04 14:32:08'),
(273, 12, '2021-05-04', 'Ajouter tâche', 'Mise à jour du fichier AROA P-D2A CONSEIL', NULL, '2021-05-04 14:33:55', '2021-05-04 14:33:55'),
(274, 5, '2021-05-04', 'Ajouter tâche', 'Introduction de la prodédure de protection des données recoltées par l\'appli', NULL, '2021-05-04 14:33:59', '2021-05-04 14:33:59'),
(275, 5, '2021-05-04', 'Ajouter tâche', 'Introduction de la prodédure de protection des données recoltées par l\'appli', NULL, '2021-05-04 14:34:02', '2021-05-04 14:34:02'),
(276, 14, '2021-05-04', 'Ajouter tâche', 'Politique de rémunération', NULL, '2021-05-04 14:34:45', '2021-05-04 14:34:45'),
(277, 12, '2021-05-04', 'Ajouter tâche', 'Compte rendu de réunion', NULL, '2021-05-04 14:35:52', '2021-05-04 14:35:52'),
(278, 14, '2021-05-04', 'Ajouter tâche', 'Développement des RH', NULL, '2021-05-04 14:35:56', '2021-05-04 14:35:56'),
(279, 14, '2021-05-04', 'Ajouter tâche', 'Gestion de la motivation', NULL, '2021-05-04 14:37:03', '2021-05-04 14:37:03'),
(280, 5, '2021-05-04', 'Ajouter tâche', 'Début de rédaction des CGU et impératifs d\'utilisation', NULL, '2021-05-04 14:37:08', '2021-05-04 14:37:08'),
(281, 14, '2021-05-04', 'Ajouter tâche', 'Communication interne', NULL, '2021-05-04 14:37:55', '2021-05-04 14:37:55'),
(282, 15, '2021-05-04', 'Ajouter tâche', 'Debut Elaboration Manuel d\'acceuil', NULL, '2021-05-04 14:38:06', '2021-05-04 14:38:06'),
(283, 5, '2021-05-04', 'Ajouter tâche', 'Brainstorming Naming et proprositions', NULL, '2021-05-04 14:38:18', '2021-05-04 14:38:18'),
(284, 12, '2021-05-04', 'Ajouter tâche', 'Réunion d\'équipe', NULL, '2021-05-04 14:38:30', '2021-05-04 14:38:30'),
(285, 15, '2021-05-04', 'Ajouter tâche', 'uite Elaboration Manuel d\'acceuil(Recherche d\'image pour le manuel +confection graphique sur Illustrator + Traitement d\'image sur photoshop+ redaction textuelle)', NULL, '2021-05-04 14:39:57', '2021-05-04 14:39:57'),
(286, 15, '2021-05-04', 'Ajouter tâche', 'uite Elaboration Manuel d\'acceuil(Recherche d\'image pour le manuel +confection graphique sur Illustrator + Traitement d\'image sur photoshop+ redaction textuelle)', NULL, '2021-05-04 14:40:04', '2021-05-04 14:40:04'),
(287, 5, '2021-05-04', 'Ajouter tâche', 'Correction des fiches de test', NULL, '2021-05-04 14:40:32', '2021-05-04 14:40:32'),
(288, 14, '2021-05-04', 'Ajouter tâche', 'Adaptation de l\'effectif et des compétences du personnel aux besoins actuels et futurs de l\'entreprise', NULL, '2021-05-04 14:40:56', '2021-05-04 14:40:56'),
(289, 15, '2021-05-04', 'Ajouter tâche', '2 CREATION GRAPHIQUE POUR MANUEL DE BIENVENUE', NULL, '2021-05-04 14:41:42', '2021-05-04 14:41:42'),
(290, 15, '2021-05-04', 'Ajouter tâche', '2 CREATION GRAPHIQUE POUR MANUEL DE BIENVENUE', NULL, '2021-05-04 14:41:45', '2021-05-04 14:41:45'),
(291, 5, '2021-05-04', 'Ajouter projet', 'REFONTE DU SITE WEB', NULL, '2021-05-04 14:42:05', '2021-05-04 14:42:05'),
(292, 15, '2021-05-04', 'Ajouter tâche', 'Veille hebdomadaire', NULL, '2021-05-04 14:42:24', '2021-05-04 14:42:24'),
(293, 5, '2021-05-04', 'Modifier projet', 'REFONTE DU SITE WEB', NULL, '2021-05-04 14:43:10', '2021-05-04 14:43:10'),
(294, 15, '2021-05-04', 'Ajouter tâche', 'Assistance aux équipes pour l\'ajout des alertes google', NULL, '2021-05-04 14:43:30', '2021-05-04 14:43:30'),
(295, 6, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 14:43:33', '2021-05-04 14:43:33'),
(296, 14, '2021-05-04', 'Ajouter tâche', 'Réalisation de bilans professionnels', NULL, '2021-05-04 14:43:39', '2021-05-04 14:43:39'),
(297, 14, '2021-05-04', 'Ajouter tâche', 'Mise en place de plans et de bilans de formation', NULL, '2021-05-04 14:44:42', '2021-05-04 14:44:42'),
(298, 15, '2021-05-04', 'Ajouter tâche', 'Assistance aux équipes pour signature', NULL, '2021-05-04 14:45:00', '2021-05-04 14:45:00'),
(299, 14, '2021-05-04', 'Ajouter tâche', 'Suivi de l\'intégration dans l\'entreprise', NULL, '2021-05-04 14:45:48', '2021-05-04 14:45:48'),
(300, 15, '2021-05-04', 'Ajouter tâche', 'Traitement actualité', NULL, '2021-05-04 14:45:51', '2021-05-04 14:45:51'),
(301, 15, '2021-05-04', 'Ajouter tâche', 'Traitement actualité', NULL, '2021-05-04 14:45:54', '2021-05-04 14:45:54'),
(302, 12, '2021-05-04', 'Ajouter tâche', 'Travaux de menuiserie', NULL, '2021-05-04 14:45:58', '2021-05-04 14:45:58'),
(303, 12, '2021-05-04', 'Ajouter tâche', 'Travaux de menuiserie', NULL, '2021-05-04 14:46:01', '2021-05-04 14:46:01'),
(304, 15, '2021-05-04', 'Ajouter tâche', 'Traitement actualité', NULL, '2021-05-04 14:46:04', '2021-05-04 14:46:04'),
(305, 15, '2021-05-04', 'Ajouter tâche', 'Réorganisation de la communication interne', NULL, '2021-05-04 14:48:06', '2021-05-04 14:48:06'),
(306, 5, '2021-05-04', 'Ajouter tâche', 'Gestion du back office Ressources humaines', NULL, '2021-05-04 14:48:25', '2021-05-04 14:48:25'),
(307, 12, '2021-05-04', 'Ajouter tâche', 'Séance de travail KALABOU', NULL, '2021-05-04 14:49:40', '2021-05-04 14:49:40'),
(308, 2, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 14:50:04', '2021-05-04 14:50:04'),
(309, 12, '2021-05-04', 'Ajouter tâche', 'Vérification mail', NULL, '2021-05-04 14:51:13', '2021-05-04 14:51:13'),
(310, 5, '2021-05-04', 'Ajouter tâche', 'Traduction du front office', NULL, '2021-05-04 14:51:17', '2021-05-04 14:51:17'),
(311, 15, '2021-05-04', 'Ajouter tâche', 'SEANCE PHOTO PLANIFICATION+EXECUTION+TRAITEMENT', NULL, '2021-05-04 14:51:30', '2021-05-04 14:51:30'),
(312, 6, '2021-05-04', 'Ajouter projet', 'Support Risk management', NULL, '2021-05-04 14:51:47', '2021-05-04 14:51:47'),
(313, 14, '2021-05-04', 'Ajouter tâche', 'Obligation légales: immatriculation du travailleur', NULL, '2021-05-04 14:52:04', '2021-05-04 14:52:04'),
(314, 14, '2021-05-04', 'Ajouter tâche', 'Obligation légales: immatriculation du travailleur', NULL, '2021-05-04 14:52:07', '2021-05-04 14:52:07'),
(315, 6, '2021-05-04', 'Ajouter projet', 'Support Risk management', NULL, '2021-05-04 14:52:07', '2021-05-04 14:52:07'),
(316, 6, '2021-05-04', 'Ajouter projet', 'Support Risk management', NULL, '2021-05-04 14:52:38', '2021-05-04 14:52:38'),
(317, 14, '2021-05-04', 'Ajouter tâche', 'Obligation légale: Assurance santé', NULL, '2021-05-04 14:53:45', '2021-05-04 14:53:45'),
(318, 12, '2021-05-04', 'Ajouter tâche', 'Programmation de cours', NULL, '2021-05-04 14:55:02', '2021-05-04 14:55:02'),
(319, 5, '2021-05-04', 'Ajouter tâche', 'Correction de l\'orthographe de l\'appli', NULL, '2021-05-04 14:55:15', '2021-05-04 14:55:15'),
(320, 15, '2021-05-04', 'Ajouter tâche', 'COURRIER A L\'ARTCI PROCEDURE HEBERGEMENT', NULL, '2021-05-04 14:55:29', '2021-05-04 14:55:29'),
(321, 12, '2021-05-04', 'Ajouter tâche', 'Course extérieure', NULL, '2021-05-04 14:56:57', '2021-05-04 14:56:57'),
(322, 14, '2021-05-04', 'Ajouter tâche', 'Comité de pilotage', NULL, '2021-05-04 14:57:18', '2021-05-04 14:57:18'),
(323, 6, '2021-05-04', 'Ajouter tâche', 'Révision cours de réassurances', NULL, '2021-05-04 14:57:36', '2021-05-04 14:57:36'),
(324, 10, '2021-05-04', 'Ajouter tâche', 'Dynamisation du site', NULL, '2021-05-04 14:57:58', '2021-05-04 14:57:58'),
(325, 12, '2021-05-04', 'Ajouter tâche', 'Service Direction', NULL, '2021-05-04 14:58:22', '2021-05-04 14:58:22'),
(326, 15, '2021-05-04', 'Ajouter tâche', 'DEFINITION + ACTUALISATION PLANNING', NULL, '2021-05-04 14:58:27', '2021-05-04 14:58:27'),
(327, 6, '2021-05-04', 'Ajouter tâche', 'EXAMEN ANNEXES SFCR', NULL, '2021-05-04 14:58:39', '2021-05-04 14:58:39'),
(328, 10, '2021-05-04', 'Ajouter tâche', 'Revue de la structure visuelle de la section formation (Ajout de bloc de contenu)', NULL, '2021-05-04 14:59:26', '2021-05-04 14:59:26'),
(329, 10, '2021-05-04', 'Ajouter tâche', 'Ajout de la localisation géographique des visiteurs pour l’optimisation du ciblage', NULL, '2021-05-04 15:00:17', '2021-05-04 15:00:17'),
(330, 6, '2021-05-04', 'Ajouter tâche', 'Résumé Mathématiques financières (Evaluation des actifs et analyse du risque)', NULL, '2021-05-04 15:00:37', '2021-05-04 15:00:37'),
(331, 14, '2021-05-04', 'Ajouter tâche', 'Formations professionnelles: remédier aux pertes d\'efficacités individuelles et collectives', NULL, '2021-05-04 15:01:01', '2021-05-04 15:01:01'),
(332, 10, '2021-05-04', 'Ajouter tâche', 'Établissement d’un champ de sélection parallèle au champ d’abonnement a la newsletter pour un meilleur ciblage socioprofessionnel', NULL, '2021-05-04 15:01:04', '2021-05-04 15:01:04'),
(333, 14, '2021-05-04', 'Ajouter tâche', 'Animation de groupe de travail', NULL, '2021-05-04 15:01:47', '2021-05-04 15:01:47'),
(334, 10, '2021-05-04', 'Ajouter tâche', 'Correction des fautes d\'orthographe', NULL, '2021-05-04 15:01:52', '2021-05-04 15:01:52'),
(335, 5, '2021-05-04', 'Ajouter tâche', 'Conception du cahier de charge du second module', NULL, '2021-05-04 15:02:09', '2021-05-04 15:02:09'),
(336, 10, '2021-05-04', 'Ajouter tâche', 'création d\'une nouvelle page \"notre équipe\"', NULL, '2021-05-04 15:02:38', '2021-05-04 15:02:38'),
(337, 12, '2021-05-04', 'Ajouter tâche', 'Suivi dossier HO', NULL, '2021-05-04 15:03:19', '2021-05-04 15:03:19'),
(338, 6, '2021-05-04', 'Ajouter tâche', 'Communication digitale', NULL, '2021-05-04 15:03:43', '2021-05-04 15:03:43'),
(339, 15, '2021-05-04', 'Ajouter tâche', 'Brainstorming naming', NULL, '2021-05-04 15:04:15', '2021-05-04 15:04:15'),
(340, 10, '2021-05-04', 'Ajouter tâche', 'Ajout des bouton de partage sur les blogs', NULL, '2021-05-04 15:04:51', '2021-05-04 15:04:51'),
(341, 10, '2021-05-04', 'Ajouter tâche', 'info defilant sur la page nos references', NULL, '2021-05-04 15:06:00', '2021-05-04 15:06:00'),
(342, 10, '2021-05-04', 'Ajouter tâche', 'Envoie de mail automatique contact et newsletter', NULL, '2021-05-04 15:06:29', '2021-05-04 15:06:29'),
(343, 12, '2021-05-04', 'Ajouter tâche', 'Appel extérieur', NULL, '2021-05-04 15:07:02', '2021-05-04 15:07:02'),
(344, 15, '2021-05-04', 'Ajouter tâche', 'Préparation+ exécution + test insai', NULL, '2021-05-04 15:07:20', '2021-05-04 15:07:20'),
(345, 14, '2021-05-04', 'Ajouter tâche', 'Synthèse bureaux de représentation', NULL, '2021-05-04 15:08:41', '2021-05-04 15:08:41'),
(346, 5, '2021-05-04', 'Ajouter projet', 'PRODUCTION DE CONTENU', NULL, '2021-05-04 15:10:03', '2021-05-04 15:10:03'),
(347, 5, '2021-05-04', 'Ajouter tâche', 'Illustration Art. Risk Management', NULL, '2021-05-04 15:11:19', '2021-05-04 15:11:19'),
(348, 5, '2021-05-04', 'Ajouter tâche', 'Veille informationnelle', NULL, '2021-05-04 15:12:08', '2021-05-04 15:12:08'),
(349, 5, '2021-05-04', 'Ajouter tâche', 'Relecture et correction des traductions en anglais', NULL, '2021-05-04 15:14:32', '2021-05-04 15:14:32'),
(350, 5, '2021-05-04', 'Ajouter tâche', 'Listing et organisation des rubriques métiers du site web', NULL, '2021-05-04 15:15:41', '2021-05-04 15:15:41'),
(351, 10, '2021-05-04', 'Ajouter tâche', 'Rédaction de la documentation backoffice site aroa', NULL, '2021-05-04 15:16:35', '2021-05-04 15:16:35'),
(352, 15, '2021-05-04', 'Ajouter tâche', 'Formation+ recherche+ conception de design', NULL, '2021-05-04 15:17:09', '2021-05-04 15:17:09'),
(353, 5, '2021-05-04', 'Ajouter tâche', 'Rédaction des contenus \"métiers\" du site web', NULL, '2021-05-04 15:17:23', '2021-05-04 15:17:23'),
(354, 10, '2021-05-04', 'Ajouter tâche', 'Ajout de formulaire de contact expert aroa', NULL, '2021-05-04 15:18:06', '2021-05-04 15:18:06'),
(355, 14, '2021-05-04', 'Ajouter tâche', 'Création d\'Aroa Group Sarl', NULL, '2021-05-04 15:19:45', '2021-05-04 15:19:45'),
(356, 14, '2021-05-04', 'Ajouter tâche', 'Changement de forme juridique d\'Aroa Partners (SARL en SAS)', NULL, '2021-05-04 15:21:28', '2021-05-04 15:21:28'),
(357, 6, '2021-05-04', 'Modifier projet', 'QUESTIONNAIRE RISK MANAGEMENT', NULL, '2021-05-04 15:25:25', '2021-05-04 15:25:25'),
(358, 5, '2021-05-04', 'Ajouter tâche', 'Gestion SEO et trafic', NULL, '2021-05-04 15:25:57', '2021-05-04 15:25:57'),
(359, 5, '2021-05-04', 'Ajouter tâche', 'Réunion de bilan des travaux en cours et à effectuer', NULL, '2021-05-04 15:28:52', '2021-05-04 15:28:52'),
(360, 15, '2021-05-04', 'Ajouter tâche', 'Confection Guide réseaux sociaux', NULL, '2021-05-04 15:29:38', '2021-05-04 15:29:38'),
(361, 6, '2021-05-04', 'Ajouter tâche', 'Séance de travail avec M. ODJO (call)', NULL, '2021-05-04 15:30:01', '2021-05-04 15:30:01'),
(362, 5, '2021-05-04', 'Ajouter tâche', 'Recherches et squelettes des catalogues', NULL, '2021-05-04 15:30:47', '2021-05-04 15:30:47'),
(363, 15, '2021-05-04', 'Ajouter tâche', 'Recherche Vidéo+ traitement + Post Réseaux sociaux', NULL, '2021-05-04 15:30:55', '2021-05-04 15:30:55'),
(364, 6, '2021-05-04', 'Ajouter tâche', 'Corrections', NULL, '2021-05-04 15:31:29', '2021-05-04 15:31:29'),
(365, 5, '2021-05-04', 'Ajouter tâche', 'Modélisation des modules de formations', NULL, '2021-05-04 15:32:25', '2021-05-04 15:32:25'),
(366, 12, '2021-05-04', 'Ajouter tâche', 'Site WEB partie 1', NULL, '2021-05-04 15:32:38', '2021-05-04 15:32:38'),
(367, 15, '2021-05-04', 'Ajouter tâche', 'Design fête + logo + design début de semaine', NULL, '2021-05-04 15:33:28', '2021-05-04 15:33:28'),
(368, 5, '2021-05-04', 'Ajouter tâche', 'Elaboration des fiches produits', NULL, '2021-05-04 15:33:31', '2021-05-04 15:33:31'),
(369, 12, '2021-05-04', 'Ajouter tâche', 'BELIFE', NULL, '2021-05-04 15:33:48', '2021-05-04 15:33:48'),
(370, 6, '2021-05-04', 'Ajouter tâche', 'Recherches (solvabilité 2, COSO, Effectifs des différentes compagnies en Côte d\'ivoire)', NULL, '2021-05-04 15:34:11', '2021-05-04 15:34:11'),
(371, 5, '2021-05-04', 'Ajouter tâche', 'Carte de visites', NULL, '2021-05-04 15:34:28', '2021-05-04 15:34:28'),
(372, 12, '2021-05-04', 'Ajouter tâche', 'CV M. ODJO', NULL, '2021-05-04 15:34:57', '2021-05-04 15:34:57'),
(373, 15, '2021-05-04', 'Ajouter tâche', 'contenu ( vidéo +image + carrousel)', NULL, '2021-05-04 15:36:50', '2021-05-04 15:36:50'),
(374, 6, '2021-05-04', 'Ajouter tâche', 'Note synthétique SOCAPHARM', NULL, '2021-05-04 15:39:50', '2021-05-04 15:39:50'),
(375, 6, '2021-05-04', 'Ajouter projet', 'PROSPECTION IFC', NULL, '2021-05-04 15:50:08', '2021-05-04 15:50:08'),
(376, 6, '2021-05-04', 'Ajouter tâche', 'Appels prospection et relances clients', NULL, '2021-05-04 15:53:04', '2021-05-04 15:53:04'),
(377, 10, '2021-05-04', 'Ajouter tâche', 'Ecriture de la fonction d\'analyse', NULL, '2021-05-04 15:53:49', '2021-05-04 15:53:49'),
(378, 10, '2021-05-04', 'Ajouter tâche', 'Récuperation du titre de site', NULL, '2021-05-04 15:54:39', '2021-05-04 15:54:39'),
(379, 6, '2021-05-04', 'Ajouter tâche', 'Séance de travail PRODUITS AROA avec M. KANGAH', NULL, '2021-05-04 15:55:31', '2021-05-04 15:55:31'),
(380, 10, '2021-05-04', 'Ajouter tâche', 'Récuperation de la meta description', NULL, '2021-05-04 15:55:46', '2021-05-04 15:55:46'),
(381, 10, '2021-05-04', 'Ajouter tâche', 'Analyses des elements de liens (\'a\')', NULL, '2021-05-04 15:56:46', '2021-05-04 15:56:46'),
(382, 10, '2021-05-04', 'Ajouter tâche', 'Récupération du Score', NULL, '2021-05-04 15:57:52', '2021-05-04 15:57:52');
INSERT INTO `logs` (`id_log`, `user_id`, `date_log`, `type`, `action`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(383, 10, '2021-05-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-04 15:58:09', '2021-05-04 15:58:09'),
(384, 6, '2021-05-04', 'Ajouter tâche', 'Séance de travail avec M. ODJO et M. AGBE', NULL, '2021-05-04 15:58:42', '2021-05-04 15:58:42'),
(385, 6, '2021-05-04', 'Ajouter tâche', 'Recherches sociétés de sécurité et de gardiennage en Côte d\'ivoire', NULL, '2021-05-04 16:02:02', '2021-05-04 16:02:02'),
(386, 6, '2021-05-04', 'Ajouter tâche', 'Mises à jour fichier suivi prospection', NULL, '2021-05-04 16:03:00', '2021-05-04 16:03:00'),
(387, 6, '2021-05-04', 'Ajouter tâche', 'Point technique avec M. AGBE', NULL, '2021-05-04 16:05:12', '2021-05-04 16:05:12'),
(388, 6, '2021-05-04', 'Ajouter tâche', 'RDV FRIESLAND CAMPINA', NULL, '2021-05-04 16:06:23', '2021-05-04 16:06:23'),
(389, 6, '2021-05-04', 'Ajouter tâche', 'RDV AMK SECURITE', NULL, '2021-05-04 16:07:52', '2021-05-04 16:07:52'),
(390, 6, '2021-05-04', 'Ajouter tâche', 'Révision présentation PowerPoint IFC', NULL, '2021-05-04 16:10:21', '2021-05-04 16:10:21'),
(391, 6, '2021-05-04', 'Ajouter tâche', 'Révision note technique IFC', NULL, '2021-05-04 16:12:19', '2021-05-04 16:12:19'),
(392, 4, '2021-05-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-04 16:16:59', '2021-05-04 16:16:59'),
(393, 4, '2021-05-04', 'Ajouter tâche', 'POINT outil d\'analyse', NULL, '2021-05-04 16:19:32', '2021-05-04 16:19:32'),
(394, 4, '2021-05-04', 'Ajouter tâche', 'Formation mode projet', NULL, '2021-05-04 16:20:43', '2021-05-04 16:20:43'),
(395, 6, '2021-05-04', 'Ajouter tâche', 'Exploitation annuaire sociétés de gardiennage proposé par M. AGBE', NULL, '2021-05-04 16:21:25', '2021-05-04 16:21:25'),
(396, 4, '2021-05-04', 'Ajouter tâche', 'Configuration des acess des nouveau', NULL, '2021-05-04 16:21:58', '2021-05-04 16:21:58'),
(397, 6, '2021-05-04', 'Ajouter tâche', 'Restitution RDV avec AMK SECURITE', NULL, '2021-05-04 16:22:32', '2021-05-04 16:22:32'),
(398, 4, '2021-05-04', 'Ajouter tâche', 'configuration des acess des nouveau', NULL, '2021-05-04 16:22:43', '2021-05-04 16:22:43'),
(399, 4, '2021-05-04', 'Ajouter tâche', 'Configuration de la machine de M.BA', NULL, '2021-05-04 16:23:35', '2021-05-04 16:23:35'),
(400, 4, '2021-05-04', 'Ajouter tâche', 'FORMATION CRM', NULL, '2021-05-04 16:24:00', '2021-05-04 16:24:00'),
(401, 6, '2021-05-04', 'Ajouter tâche', 'Test INS\'AI', NULL, '2021-05-04 16:33:00', '2021-05-04 16:33:00'),
(402, 6, '2021-05-04', 'Ajouter tâche', 'PHOTOSHOOT', NULL, '2021-05-04 16:36:13', '2021-05-04 16:36:13'),
(403, 6, '2021-05-04', 'Ajouter tâche', 'Test outil de gestion', NULL, '2021-05-04 16:38:55', '2021-05-04 16:38:55'),
(404, 6, '2021-05-04', 'Ajouter tâche', 'Formulaire test élémentaire outil de gestion', NULL, '2021-05-04 16:40:14', '2021-05-04 16:40:14'),
(405, 4, '2021-05-04', 'Ajouter tâche', 'FORMATION CRM', NULL, '2021-05-04 16:41:06', '2021-05-04 16:41:06'),
(406, 12, '2021-05-04', 'Ajouter tâche', 'Service Direction', NULL, '2021-05-04 16:41:13', '2021-05-04 16:41:13'),
(407, 6, '2021-05-04', 'Ajouter tâche', 'Formation Project management', NULL, '2021-05-04 16:42:52', '2021-05-04 16:42:52'),
(408, 12, '2021-05-04', 'Ajouter tâche', 'Recherche d\'appartement', NULL, '2021-05-04 16:45:19', '2021-05-04 16:45:19'),
(409, 6, '2021-05-04', 'Ajouter tâche', 'Formation outil de gestion', NULL, '2021-05-04 16:47:01', '2021-05-04 16:47:01'),
(410, 6, '2021-05-04', 'Ajouter tâche', 'Cahier de charge', NULL, '2021-05-04 16:55:50', '2021-05-04 16:55:50'),
(411, 12, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 06:37:02', '2021-05-05 06:37:02'),
(412, 5, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 06:40:31', '2021-05-05 06:40:31'),
(413, 5, '2021-05-05', 'Modifier projet', 'Communication Digitale', NULL, '2021-05-05 06:45:27', '2021-05-05 06:45:27'),
(414, 14, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 06:46:12', '2021-05-05 06:46:12'),
(415, 14, '2021-05-05', 'Ajouter tâche', 'Comité de pilotage', NULL, '2021-05-05 06:53:13', '2021-05-05 06:53:13'),
(416, 8, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 07:00:18', '2021-05-05 07:00:18'),
(417, 8, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 12:11:55', '2021-05-05 12:11:55'),
(418, 12, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 13:00:04', '2021-05-05 13:00:04'),
(419, 12, '2021-05-05', 'Ajouter projet', 'PROJET NOUVEL APPARTEMENT', NULL, '2021-05-05 15:00:57', '2021-05-05 15:00:57'),
(420, 4, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 15:01:45', '2021-05-05 15:01:45'),
(421, 12, '2021-05-05', 'Ajouter tâche', 'Validation de l\'appartement', NULL, '2021-05-05 15:02:14', '2021-05-05 15:02:14'),
(422, 10, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 15:03:59', '2021-05-05 15:03:59'),
(423, 10, '2021-05-05', 'Ajouter tâche', 'Correction des pages', NULL, '2021-05-05 15:10:32', '2021-05-05 15:10:32'),
(424, 10, '2021-05-05', 'Ajouter tâche', 'Réunion', NULL, '2021-05-05 15:17:30', '2021-05-05 15:17:30'),
(425, 5, '2021-05-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-05 15:37:03', '2021-05-05 15:37:03'),
(426, 5, '2021-05-05', 'Modifier projet', 'APPEL D\'OFFRES', NULL, '2021-05-05 15:51:28', '2021-05-05 15:51:28'),
(427, 5, '2021-05-05', 'Modifier projet', 'APPEL D\'OFFRES AFRICA-RE', NULL, '2021-05-05 15:56:40', '2021-05-05 15:56:40'),
(428, 5, '2021-05-05', 'Ajouter projet', 'OFFRE DE COMMUNICATION', NULL, '2021-05-05 16:09:06', '2021-05-05 16:09:06'),
(429, 12, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 06:07:29', '2021-05-06 06:07:29'),
(430, 4, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 07:32:30', '2021-05-06 07:32:30'),
(431, 9, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 07:36:30', '2021-05-06 07:36:30'),
(432, 9, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 10:42:49', '2021-05-06 10:42:49'),
(433, 5, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 12:22:55', '2021-05-06 12:22:55'),
(434, 12, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 13:00:46', '2021-05-06 13:00:46'),
(435, 12, '2021-05-06', 'Ajouter tâche', 'Recherche d\'informations concernant les modalités et l\'exploitation de l\'appartement', NULL, '2021-05-06 13:04:17', '2021-05-06 13:04:17'),
(436, 12, '2021-05-06', 'Ajouter tâche', 'Signature du contrat de location', NULL, '2021-05-06 13:05:51', '2021-05-06 13:05:51'),
(437, 12, '2021-05-06', 'Ajouter tâche', 'Signature du contrat de location', NULL, '2021-05-06 13:05:54', '2021-05-06 13:05:54'),
(438, 12, '2021-05-06', 'Ajouter tâche', 'Ameublement (achat de meuble, délai de livraison)', NULL, '2021-05-06 13:13:15', '2021-05-06 13:13:15'),
(439, 12, '2021-05-06', 'Ajouter tâche', 'Equipement cuisine (achat cuisinière, réfrigérateur, bouteille de gaz, micro onde)', NULL, '2021-05-06 13:16:07', '2021-05-06 13:16:07'),
(440, 9, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 14:05:01', '2021-05-06 14:05:01'),
(441, 9, '2021-05-06', 'Ajouter tâche', 'Api', NULL, '2021-05-06 14:07:33', '2021-05-06 14:07:33'),
(442, 9, '2021-05-06', 'Ajouter tâche', 'Application patient Module1', NULL, '2021-05-06 14:10:48', '2021-05-06 14:10:48'),
(443, 9, '2021-05-06', 'Ajouter tâche', 'Application Medecin Module 1', NULL, '2021-05-06 14:12:07', '2021-05-06 14:12:07'),
(444, 12, '2021-05-06', 'Ajouter tâche', 'ASSISTANAT', NULL, '2021-05-06 14:12:26', '2021-05-06 14:12:26'),
(445, 9, '2021-05-06', 'Ajouter tâche', 'Micro Test insai', NULL, '2021-05-06 14:13:35', '2021-05-06 14:13:35'),
(446, 14, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 14:16:37', '2021-05-06 14:16:37'),
(447, 9, '2021-05-06', 'Ajouter tâche', 'Correction de bugs', NULL, '2021-05-06 14:17:18', '2021-05-06 14:17:18'),
(448, 9, '2021-05-06', 'Ajouter tâche', 'Correction linguistique insai module 1', NULL, '2021-05-06 14:18:55', '2021-05-06 14:18:55'),
(449, 9, '2021-05-06', 'Ajouter tâche', 'Réflexion Rédaction Cdc insai module 2', NULL, '2021-05-06 14:20:27', '2021-05-06 14:20:27'),
(450, 5, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 15:37:41', '2021-05-06 15:37:41'),
(451, 5, '2021-05-06', 'Ajouter tâche', 'Rédaction du cahier de charges du second module', NULL, '2021-05-06 15:41:07', '2021-05-06 15:41:07'),
(452, 4, '2021-05-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-06 16:36:11', '2021-05-06 16:36:11'),
(453, 12, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 06:44:24', '2021-05-07 06:44:24'),
(454, 8, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 12:19:48', '2021-05-07 12:19:48'),
(455, 8, '2021-05-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-07 12:50:01', '2021-05-07 12:50:01'),
(456, 14, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 13:17:33', '2021-05-07 13:17:33'),
(457, 13, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 14:09:57', '2021-05-07 14:09:57'),
(458, 13, '2021-05-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-07 14:10:49', '2021-05-07 14:10:49'),
(459, 13, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 14:11:15', '2021-05-07 14:11:15'),
(460, 14, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 14:31:18', '2021-05-07 14:31:18'),
(461, 6, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 15:07:10', '2021-05-07 15:07:10'),
(462, 9, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 15:13:57', '2021-05-07 15:13:57'),
(463, 12, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 15:16:05', '2021-05-07 15:16:05'),
(464, 10, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 15:28:25', '2021-05-07 15:28:25'),
(465, 10, '2021-05-07', 'Ajouter tâche', 'Front end', NULL, '2021-05-07 15:32:01', '2021-05-07 15:32:01'),
(466, 4, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 15:33:05', '2021-05-07 15:33:05'),
(467, 5, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 15:48:25', '2021-05-07 15:48:25'),
(468, 12, '2021-05-07', 'Ajouter tâche', 'Echanges avec agence YAPGI (téléphonique, email)', NULL, '2021-05-07 15:50:39', '2021-05-07 15:50:39'),
(469, 12, '2021-05-07', 'Ajouter tâche', 'Assistanat', NULL, '2021-05-07 15:52:38', '2021-05-07 15:52:38'),
(470, 10, '2021-05-07', 'Ajouter tâche', 'Réunion - Point', NULL, '2021-05-07 16:13:04', '2021-05-07 16:13:04'),
(471, 10, '2021-05-07', 'Ajouter tâche', 'Création de cahier de charges', NULL, '2021-05-07 16:16:11', '2021-05-07 16:16:11'),
(472, 10, '2021-05-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-07 16:25:58', '2021-05-07 16:25:58'),
(473, 6, '2021-05-07', 'Ajouter tâche', 'Glossaire', NULL, '2021-05-07 16:30:32', '2021-05-07 16:30:32'),
(474, 6, '2021-05-07', 'Ajouter tâche', 'Recherches taille moyenne des compagnies d\'assurance et de réassurance', NULL, '2021-05-07 16:32:33', '2021-05-07 16:32:33'),
(475, 10, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 16:35:22', '2021-05-07 16:35:22'),
(476, 6, '2021-05-07', 'Ajouter projet', 'COURS DE REASSURANCE ET ANNEXE REGLEMENTAIRE', NULL, '2021-05-07 16:43:08', '2021-05-07 16:43:08'),
(477, 6, '2021-05-07', 'Ajouter tâche', 'Fichier PowerPoint organisation interne', NULL, '2021-05-07 16:50:36', '2021-05-07 16:50:36'),
(478, 6, '2021-05-07', 'Ajouter tâche', 'Draft', NULL, '2021-05-07 16:51:59', '2021-05-07 16:51:59'),
(479, 6, '2021-05-07', 'Ajouter tâche', 'Fichier word organaisation des parties', NULL, '2021-05-07 16:53:32', '2021-05-07 16:53:32'),
(480, 6, '2021-05-07', 'Ajouter tâche', 'Relances des parties', NULL, '2021-05-07 16:54:20', '2021-05-07 16:54:20'),
(481, 5, '2021-05-07', 'Ajouter tâche', 'Séance de travail pour la conception du second module', NULL, '2021-05-07 17:04:02', '2021-05-07 17:04:02'),
(482, 5, '2021-05-07', 'Ajouter projet', 'Conception du site web ODJO CONSEIL', NULL, '2021-05-07 17:07:41', '2021-05-07 17:07:41'),
(483, 12, '2021-05-07', 'Ajouter tâche', 'Organisation', NULL, '2021-05-07 17:12:56', '2021-05-07 17:12:56'),
(484, 15, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 17:31:43', '2021-05-07 17:31:43'),
(485, 15, '2021-05-07', 'Ajouter tâche', 'REUNION', NULL, '2021-05-07 17:34:10', '2021-05-07 17:34:10'),
(486, 15, '2021-05-07', 'Ajouter tâche', 'Réunion de préparation', NULL, '2021-05-07 17:36:12', '2021-05-07 17:36:12'),
(487, 15, '2021-05-07', 'Ajouter tâche', 'CREA', NULL, '2021-05-07 17:49:15', '2021-05-07 17:49:15'),
(488, 8, '2021-05-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-07 19:37:34', '2021-05-07 19:37:34'),
(489, 8, '2021-05-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-07 19:41:02', '2021-05-07 19:41:02'),
(490, 12, '2021-05-08', 'Ajouter tâche', 'Organisation de voyage', NULL, '2021-05-08 10:22:30', '2021-05-08 10:22:30'),
(491, 12, '2021-05-08', 'Ajouter tâche', 'Gestion de la Bibliothèque (Mise à jour)', NULL, '2021-05-08 10:28:45', '2021-05-08 10:28:45'),
(492, 12, '2021-05-08', 'Ajouter tâche', 'Organisation entretien des locaux (jardinage, ménage)', NULL, '2021-05-08 10:34:32', '2021-05-08 10:34:32'),
(493, 12, '2021-05-08', 'Ajouter tâche', 'Course Mensuelle', NULL, '2021-05-08 10:36:15', '2021-05-08 10:36:15'),
(494, 12, '2021-05-08', 'Ajouter tâche', 'Facture du loyer AROA PARTNERS', NULL, '2021-05-08 10:48:37', '2021-05-08 10:48:37'),
(495, 5, '2021-05-08', 'Ajouter tâche', 'Réunion de préparation et de prise de connaissance des implications', NULL, '2021-05-08 10:52:50', '2021-05-08 10:52:50'),
(496, 12, '2021-05-08', 'Ajouter tâche', 'Achat de fourniture de bureau', NULL, '2021-05-08 10:53:59', '2021-05-08 10:53:59'),
(497, 12, '2021-05-08', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-08 12:14:01', '2021-05-08 12:14:01'),
(498, 12, '2021-05-08', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-08 12:24:32', '2021-05-08 12:24:32'),
(499, 5, '2021-05-08', 'Ajouter tâche', 'Organisation et élaboration de la stratégie de Communication digitale', NULL, '2021-05-08 13:03:56', '2021-05-08 13:03:56'),
(500, 15, '2021-05-08', 'Ajouter tâche', 'Création graphique', NULL, '2021-05-08 13:15:58', '2021-05-08 13:15:58'),
(501, 5, '2021-05-08', 'Ajouter tâche', 'Créations graphiques', NULL, '2021-05-08 13:39:27', '2021-05-08 13:39:27'),
(502, 5, '2021-05-08', 'Ajouter tâche', 'Conception de signature et de cartes de visite', NULL, '2021-05-08 13:41:12', '2021-05-08 13:41:12'),
(503, 5, '2021-05-08', 'Ajouter projet', 'VEILLE INFORMATIONNELLE', NULL, '2021-05-08 13:44:29', '2021-05-08 13:44:29'),
(504, 5, '2021-05-08', 'Ajouter tâche', 'Penser et concevoir une offre de communication alliant digital et institutionnel', NULL, '2021-05-08 13:49:54', '2021-05-08 13:49:54'),
(505, 14, '2021-05-08', 'Ajouter tâche', 'Etablissement de la fiche nominative Avril 2021', NULL, '2021-05-08 13:51:26', '2021-05-08 13:51:26'),
(506, 14, '2021-05-08', 'Ajouter tâche', 'Etablissement de la fiche nominative Avril 2021', NULL, '2021-05-08 13:53:55', '2021-05-08 13:53:55'),
(507, 10, '2021-05-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-10 05:55:46', '2021-05-10 05:55:46'),
(508, 12, '2021-05-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-10 06:20:15', '2021-05-10 06:20:15'),
(509, 9, '2021-05-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-10 06:45:21', '2021-05-10 06:45:21'),
(510, 4, '2021-05-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-10 07:22:21', '2021-05-10 07:22:21'),
(511, 4, '2021-05-10', 'Ajouter projet', 'RECRUTEMENT IT 2021', NULL, '2021-05-10 07:24:45', '2021-05-10 07:24:45'),
(512, 2, '2021-05-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-10 07:41:36', '2021-05-10 07:41:36'),
(513, 2, '2021-05-10', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-10 07:47:39', '2021-05-10 07:47:39'),
(514, 13, '2021-05-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-10 13:23:45', '2021-05-10 13:23:45'),
(515, 13, '2021-05-10', 'Ajouter tâche', 'Création de la fonctionnalité agenda', NULL, '2021-05-10 13:56:30', '2021-05-10 13:56:30'),
(516, 13, '2021-05-10', 'Ajouter tâche', 'Fonctionnalité ajoût de client', NULL, '2021-05-10 13:57:33', '2021-05-10 13:57:33'),
(517, 13, '2021-05-10', 'Ajouter tâche', 'Code RAG (Tâche)', NULL, '2021-05-10 13:58:51', '2021-05-10 13:58:51'),
(518, 13, '2021-05-10', 'Ajouter tâche', 'Création de rôle et permission', NULL, '2021-05-10 13:59:48', '2021-05-10 13:59:48'),
(519, 13, '2021-05-10', 'Ajouter tâche', 'Fonctionnalité feuille de temps', NULL, '2021-05-10 14:03:17', '2021-05-10 14:03:17'),
(520, 13, '2021-05-10', 'Ajouter tâche', 'Email de validation de projet', NULL, '2021-05-10 14:04:14', '2021-05-10 14:04:14'),
(521, 13, '2021-05-10', 'Ajouter tâche', 'Fonctionnalité pôle', NULL, '2021-05-10 14:05:26', '2021-05-10 14:05:26'),
(522, 13, '2021-05-10', 'Ajouter tâche', 'Documentation de l\'application', NULL, '2021-05-10 14:06:40', '2021-05-10 14:06:40'),
(523, 13, '2021-05-10', 'Ajouter tâche', 'Fonctionnalité activité', NULL, '2021-05-10 14:08:43', '2021-05-10 14:08:43'),
(524, 13, '2021-05-10', 'Ajouter tâche', 'Serveur de messagerie', NULL, '2021-05-10 14:10:21', '2021-05-10 14:10:21'),
(525, 13, '2021-05-10', 'Ajouter tâche', 'Attribution de materiel', NULL, '2021-05-10 14:11:41', '2021-05-10 14:11:41'),
(526, 13, '2021-05-10', 'Ajouter tâche', 'Fonctionnalité un click', NULL, '2021-05-10 14:15:28', '2021-05-10 14:15:28'),
(527, 13, '2021-05-10', 'Ajouter tâche', 'Fonctionalité sponsor', NULL, '2021-05-10 14:16:26', '2021-05-10 14:16:26'),
(528, 13, '2021-05-10', 'Ajouter tâche', 'Correction d\'erreur de BDD', NULL, '2021-05-10 14:18:26', '2021-05-10 14:18:26'),
(529, 13, '2021-05-10', 'Ajouter tâche', 'Fonctionnalité Ticket & Support', NULL, '2021-05-10 14:19:14', '2021-05-10 14:19:14'),
(530, 13, '2021-05-10', 'Ajouter tâche', 'Fonctionnalité ouverture et fermeture des bureaux', NULL, '2021-05-10 14:21:02', '2021-05-10 14:21:02'),
(531, 13, '2021-05-10', 'Ajouter tâche', 'Recherche de template d\'inspiration', NULL, '2021-05-10 14:27:54', '2021-05-10 14:27:54'),
(532, 13, '2021-05-10', 'Ajouter tâche', 'Proposition de template', NULL, '2021-05-10 14:29:36', '2021-05-10 14:29:36'),
(533, 13, '2021-05-10', 'Ajouter tâche', 'Création du source des pages', NULL, '2021-05-10 14:30:58', '2021-05-10 14:30:58'),
(534, 13, '2021-05-10', 'Ajouter tâche', 'Insertion des contenus statiques(textes, images, vidéos, animations)', NULL, '2021-05-10 14:34:04', '2021-05-10 14:34:04'),
(535, 13, '2021-05-10', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-10 15:04:43', '2021-05-10 15:04:43'),
(536, 4, '2021-05-10', 'Ajouter projet', 'OFFRE DE GAA', NULL, '2021-05-10 15:38:41', '2021-05-10 15:38:41'),
(537, 4, '2021-05-10', 'Ajouter tâche', 'Elaboration', NULL, '2021-05-10 15:40:27', '2021-05-10 15:40:27'),
(538, 4, '2021-05-10', 'Ajouter tâche', 'Correction de l\'offre', NULL, '2021-05-10 15:41:06', '2021-05-10 15:41:06'),
(539, 8, '2021-05-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-10 17:24:11', '2021-05-10 17:24:11'),
(540, 4, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 07:29:49', '2021-05-11 07:29:49'),
(541, 12, '2021-05-11', 'Ajouter tâche', 'Traduction', NULL, '2021-05-11 12:15:57', '2021-05-11 12:15:57'),
(542, 12, '2021-05-11', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-11 12:46:59', '2021-05-11 12:46:59'),
(543, 13, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 13:35:42', '2021-05-11 13:35:42'),
(544, 13, '2021-05-11', 'Ajouter tâche', 'Déploiement sur le serveur', NULL, '2021-05-11 14:19:28', '2021-05-11 14:19:28'),
(545, 9, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 14:35:36', '2021-05-11 14:35:36'),
(546, 9, '2021-05-11', 'Ajouter tâche', 'Planning insai module 2', NULL, '2021-05-11 14:37:39', '2021-05-11 14:37:39'),
(547, 9, '2021-05-11', 'Ajouter tâche', 'Préparation des environnements de dev pour le module 2', NULL, '2021-05-11 14:38:41', '2021-05-11 14:38:41'),
(548, 10, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 14:40:10', '2021-05-11 14:40:10'),
(549, 13, '2021-05-11', 'Ajouter tâche', 'Fonction de vérification de l\'utilisateur', NULL, '2021-05-11 14:43:06', '2021-05-11 14:43:06'),
(550, 13, '2021-05-11', 'Ajouter tâche', 'Intégration du code (bootstrap, javascript)', NULL, '2021-05-11 14:46:21', '2021-05-11 14:46:21'),
(551, 13, '2021-05-11', 'Ajouter tâche', 'Test de navigation et d\'affichage', NULL, '2021-05-11 14:57:52', '2021-05-11 14:57:52'),
(552, 13, '2021-05-11', 'Ajouter tâche', 'Réorganisation des pages du site', NULL, '2021-05-11 14:59:12', '2021-05-11 14:59:12'),
(553, 13, '2021-05-11', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-11 15:00:38', '2021-05-11 15:00:38'),
(554, 2, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 15:00:54', '2021-05-11 15:00:54'),
(555, 2, '2021-05-11', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-11 15:05:08', '2021-05-11 15:05:08'),
(556, 13, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 15:05:35', '2021-05-11 15:05:35'),
(557, 13, '2021-05-11', 'Ajouter tâche', 'Modélisation de la base de données', NULL, '2021-05-11 15:17:21', '2021-05-11 15:17:21'),
(558, 13, '2021-05-11', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-11 15:20:57', '2021-05-11 15:20:57'),
(559, 15, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 15:28:19', '2021-05-11 15:28:19'),
(560, 13, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 15:31:14', '2021-05-11 15:31:14'),
(561, 12, '2021-05-11', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-11 16:02:32', '2021-05-11 16:02:32'),
(562, 12, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 06:10:18', '2021-05-14 06:10:18'),
(563, 10, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 06:12:29', '2021-05-14 06:12:29'),
(564, 4, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 07:13:31', '2021-05-14 07:13:31'),
(565, 8, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 10:47:53', '2021-05-14 10:47:53'),
(566, 14, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 11:58:25', '2021-05-14 11:58:25'),
(567, 10, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 13:38:44', '2021-05-14 13:38:44'),
(568, 13, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 14:26:46', '2021-05-14 14:26:46'),
(569, 6, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 14:47:22', '2021-05-14 14:47:22'),
(570, 13, '2021-05-14', 'Ajouter tâche', 'Environnement de travail', NULL, '2021-05-14 15:01:10', '2021-05-14 15:01:10'),
(571, 15, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 15:24:29', '2021-05-14 15:24:29'),
(572, 15, '2021-05-14', 'Ajouter tâche', 'Procédure de publication', NULL, '2021-05-14 15:36:22', '2021-05-14 15:36:22'),
(573, 15, '2021-05-14', 'Ajouter tâche', 'Création du logo AP\'TIME', NULL, '2021-05-14 15:38:34', '2021-05-14 15:38:34'),
(574, 15, '2021-05-14', 'Ajouter tâche', 'APPEL D\'OFFRE DESIGN D\'ILLUSTRATION APPLI', NULL, '2021-05-14 15:41:34', '2021-05-14 15:41:34'),
(575, 15, '2021-05-14', 'Ajouter tâche', 'APPEL D\'OFFRE MISE EN FORME TOUS LES CV', NULL, '2021-05-14 15:42:19', '2021-05-14 15:42:19'),
(576, 15, '2021-05-14', 'Ajouter tâche', 'APPEL D\'OFFRE MISE EN FORME SLIDES', NULL, '2021-05-14 15:42:58', '2021-05-14 15:42:58'),
(577, 4, '2021-05-14', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-14 16:17:31', '2021-05-14 16:17:31'),
(578, 10, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 16:18:18', '2021-05-14 16:18:18'),
(579, 5, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 16:23:07', '2021-05-14 16:23:07'),
(580, 5, '2021-05-14', 'Ajouter tâche', 'Préparation de la réponse', NULL, '2021-05-14 16:28:13', '2021-05-14 16:28:13'),
(581, 5, '2021-05-14', 'Ajouter tâche', 'Organisation des différentes rubriques du site web', NULL, '2021-05-14 16:32:34', '2021-05-14 16:32:34'),
(582, 10, '2021-05-14', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-14 16:34:26', '2021-05-14 16:34:26'),
(583, 4, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 16:34:33', '2021-05-14 16:34:33'),
(584, 5, '2021-05-14', 'Ajouter tâche', 'Mise en forme et relecture de l\'offre', NULL, '2021-05-14 16:35:40', '2021-05-14 16:35:40'),
(585, 10, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 16:36:57', '2021-05-14 16:36:57'),
(586, 4, '2021-05-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-14 16:48:50', '2021-05-14 16:48:50'),
(587, 14, '2021-05-15', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-15 09:39:09', '2021-05-15 09:39:09'),
(588, 14, '2021-05-15', 'Ajouter tâche', 'Entretien Diby : recap période de stage', NULL, '2021-05-15 09:47:38', '2021-05-15 09:47:38'),
(589, 14, '2021-05-15', 'Ajouter tâche', 'Point hebdomadaire', NULL, '2021-05-15 09:48:47', '2021-05-15 09:48:47'),
(590, 14, '2021-05-15', 'Ajouter tâche', 'Renouvellement de stage DIBY', NULL, '2021-05-15 09:51:09', '2021-05-15 09:51:09'),
(591, 14, '2021-05-15', 'Ajouter tâche', 'Entretien M. BA : fonctionnement planning AROA, AP\'TIME', NULL, '2021-05-15 09:53:18', '2021-05-15 09:53:18'),
(592, 14, '2021-05-15', 'Ajouter tâche', 'Mise à jour ap\'time', NULL, '2021-05-15 09:54:45', '2021-05-15 09:54:45'),
(593, 14, '2021-05-15', 'Ajouter tâche', 'Revue du site Web dans les moindres détails et commentaires', NULL, '2021-05-15 09:57:10', '2021-05-15 09:57:10'),
(594, 14, '2021-05-15', 'Ajouter tâche', 'Déclarations complémentaires en ligne KADE et KOUADIO PHINEAS', NULL, '2021-05-15 10:03:25', '2021-05-15 10:03:25'),
(595, 14, '2021-05-15', 'Ajouter tâche', 'Inscription sur d\'autres sites d\'offres d\'emploi et publications des offres de développeur web, développeur application, informaticien et juriste', NULL, '2021-05-15 10:13:01', '2021-05-15 10:13:01'),
(596, 6, '2021-05-17', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-17 06:41:48', '2021-05-17 06:41:48'),
(597, 6, '2021-05-17', 'Ajouter tâche', 'Validation de cahier de charges', NULL, '2021-05-17 07:13:49', '2021-05-17 07:13:49'),
(598, 6, '2021-05-17', 'Ajouter projet', 'Article IFRS 17', NULL, '2021-05-17 07:45:07', '2021-05-17 07:45:07'),
(599, 6, '2021-05-17', 'Ajouter tâche', 'Rédaction Introduction', NULL, '2021-05-17 07:46:25', '2021-05-17 07:46:25'),
(600, 6, '2021-05-17', 'Ajouter tâche', 'Recherches sur les législations (normes comptables et assurancielles) en Afrique', NULL, '2021-05-17 07:48:38', '2021-05-17 07:48:38'),
(601, 6, '2021-05-17', 'Ajouter tâche', 'Création spot publicitaire IFC', NULL, '2021-05-17 07:50:11', '2021-05-17 07:50:11'),
(602, 6, '2021-05-17', 'Ajouter projet', 'Article RM finalisation', NULL, '2021-05-17 07:55:57', '2021-05-17 07:55:57'),
(603, 6, '2021-05-17', 'Ajouter tâche', 'Point Technique avec M. ODJO et M. AGBE', NULL, '2021-05-17 07:57:21', '2021-05-17 07:57:21'),
(604, 6, '2021-05-17', 'Ajouter tâche', 'Point Technique avec M. ODJO et', NULL, '2021-05-17 07:59:22', '2021-05-17 07:59:22'),
(605, 6, '2021-05-17', 'Ajouter tâche', 'Point technique création de spot publicitaire IFC', NULL, '2021-05-17 08:01:20', '2021-05-17 08:01:20'),
(606, 8, '2021-05-17', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-17 08:43:05', '2021-05-17 08:43:05'),
(607, 5, '2021-05-17', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-17 09:17:07', '2021-05-17 09:17:07'),
(608, 12, '2021-05-17', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-17 11:12:53', '2021-05-17 11:12:53'),
(609, 4, '2021-05-17', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-17 12:01:11', '2021-05-17 12:01:11'),
(610, 4, '2021-05-17', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-17 15:28:14', '2021-05-17 15:28:14'),
(611, 12, '2021-05-18', 'Ajouter tâche', 'Paiement de facture CIE', NULL, '2021-05-18 07:16:30', '2021-05-18 07:16:30'),
(612, 12, '2021-05-18', 'Ajouter tâche', 'Point des factures en attente', NULL, '2021-05-18 15:06:26', '2021-05-18 15:06:26'),
(613, 10, '2021-05-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-20 12:54:03', '2021-05-20 12:54:03'),
(614, 14, '2021-05-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-20 12:54:14', '2021-05-20 12:54:14'),
(615, 14, '2021-05-20', 'Ajouter tâche', 'Revue générale pour la clôture des comptes 2020 avec EBUR-FIDUCIAIRE', NULL, '2021-05-20 13:02:26', '2021-05-20 13:02:26'),
(616, 14, '2021-05-20', 'Ajouter tâche', 'Elaboration des états financiers et certification par EBUR-FIDUCIAIRE', NULL, '2021-05-20 13:04:58', '2021-05-20 13:04:58'),
(617, 14, '2021-05-20', 'Ajouter tâche', 'Production de l\'attestation de visa 2020 par EBUR-FIDUCIAIRE', NULL, '2021-05-20 13:07:24', '2021-05-20 13:07:24'),
(618, 5, '2021-05-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-20 14:06:53', '2021-05-20 14:06:53'),
(619, 13, '2021-05-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-20 14:21:42', '2021-05-20 14:21:42'),
(620, 13, '2021-05-20', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-20 14:29:45', '2021-05-20 14:29:45'),
(621, 13, '2021-05-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-20 14:35:22', '2021-05-20 14:35:22'),
(622, 9, '2021-05-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-20 14:47:00', '2021-05-20 14:47:00'),
(623, 4, '2021-05-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-21 07:05:35', '2021-05-21 07:05:35'),
(624, 10, '2021-05-21', 'Demande d\'absence', 'PERMISSION', NULL, '2021-05-21 07:07:37', '2021-05-21 07:07:37'),
(625, 5, '2021-05-21', 'Ajouter projet', 'Copie Benin (teaser)', NULL, '2021-05-21 08:02:41', '2021-05-21 08:02:41'),
(626, 10, '2021-05-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-21 10:41:20', '2021-05-21 10:41:20'),
(627, 10, '2021-05-21', 'Ajouter tâche', 'Récupération alt image', NULL, '2021-05-21 10:44:12', '2021-05-21 10:44:12'),
(628, 12, '2021-05-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-21 13:34:51', '2021-05-21 13:34:51'),
(629, 12, '2021-05-21', 'Ajouter tâche', 'Lecture du contrat de bail', NULL, '2021-05-21 13:45:40', '2021-05-21 13:45:40'),
(630, 12, '2021-05-21', 'Ajouter tâche', 'Mesure de l\'appartement', NULL, '2021-05-21 13:49:47', '2021-05-21 13:49:47'),
(631, 12, '2021-05-21', 'Ajouter tâche', 'RDV Full Force Security', NULL, '2021-05-21 13:51:47', '2021-05-21 13:51:47'),
(632, 12, '2021-05-21', 'Ajouter tâche', 'Séance de travail FFS', NULL, '2021-05-21 13:55:40', '2021-05-21 13:55:40'),
(633, 5, '2021-05-21', 'Ajouter tâche', 'Conception du powerpoint', NULL, '2021-05-21 14:53:46', '2021-05-21 14:53:46'),
(634, 4, '2021-05-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-21 14:57:39', '2021-05-21 14:57:39'),
(635, 4, '2021-05-21', 'Ajouter projet', 'RECRUTEMENTS IT', NULL, '2021-05-21 15:05:31', '2021-05-21 15:05:31'),
(636, 4, '2021-05-21', 'Ajouter tâche', 'prise de connaissance du cahier des charges', NULL, '2021-05-21 15:10:03', '2021-05-21 15:10:03'),
(637, 6, '2021-05-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-21 15:10:06', '2021-05-21 15:10:06'),
(638, 15, '2021-05-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-21 15:12:47', '2021-05-21 15:12:47'),
(639, 4, '2021-05-21', 'Ajouter tâche', 'debriefing de l\'offre avec GAA (meeting)', NULL, '2021-05-21 15:23:38', '2021-05-21 15:23:38'),
(640, 4, '2021-05-21', 'Ajouter tâche', 'Mise à jour de l\'offre', NULL, '2021-05-21 15:24:38', '2021-05-21 15:24:38'),
(641, 6, '2021-05-21', 'Ajouter tâche', 'Point technique avec M. AGBE', NULL, '2021-05-21 15:27:36', '2021-05-21 15:27:36'),
(642, 4, '2021-05-21', 'Valider projet', 'Copie Benin (teaser)', NULL, '2021-05-21 15:30:35', '2021-05-21 15:30:35'),
(643, 4, '2021-05-21', 'Valider projet', 'Copie Benin (teaser)', NULL, '2021-05-21 15:30:38', '2021-05-21 15:30:38'),
(644, 6, '2021-05-21', 'Ajouter projet', 'Passage de R sur Python (APPLICATION MAXIMA IFC)', NULL, '2021-05-21 15:48:11', '2021-05-21 15:48:11'),
(645, 6, '2021-05-21', 'Ajouter tâche', 'Adaptation des données Atlanta au format de base et révision des codes', NULL, '2021-05-21 15:51:15', '2021-05-21 15:51:15'),
(646, 15, '2021-05-21', 'Ajouter tâche', 'Reunion d\'équipe  rapport', NULL, '2021-05-21 15:51:37', '2021-05-21 15:51:37'),
(647, 6, '2021-05-21', 'Ajouter tâche', 'Point technique avec M. AGBE', NULL, '2021-05-21 15:55:08', '2021-05-21 15:55:08'),
(648, 15, '2021-05-21', 'Ajouter tâche', 'Recherche de rush+ montage +ajout de texte+ integration des remarques', NULL, '2021-05-21 16:01:33', '2021-05-21 16:01:33'),
(649, 6, '2021-05-21', 'Ajouter tâche', 'Relances AMK, FFS, LMTV, RED TARGET, ARCHANGE SECURITY', NULL, '2021-05-21 16:04:30', '2021-05-21 16:04:30'),
(650, 15, '2021-05-21', 'Ajouter tâche', 'Strategie de communication', NULL, '2021-05-21 16:06:08', '2021-05-21 16:06:08'),
(651, 15, '2021-05-21', 'Ajouter tâche', 'Reunion debrief', NULL, '2021-05-21 16:07:14', '2021-05-21 16:07:14'),
(652, 15, '2021-05-21', 'Ajouter tâche', 'Stratégie de communication digitale + reunion avec M AGBE', NULL, '2021-05-21 16:19:32', '2021-05-21 16:19:32'),
(653, 4, '2021-05-21', 'Valider projet', 'RECRUTEMENTS IT', NULL, '2021-05-21 16:24:55', '2021-05-21 16:24:55'),
(654, 4, '2021-05-21', 'Valider projet', 'Passage de R sur Python (APPLICATION MAXIMA IFC)', NULL, '2021-05-21 16:26:56', '2021-05-21 16:26:56'),
(655, 4, '2021-05-21', 'Valider projet', 'OFFRE DE GAA', NULL, '2021-05-21 16:27:17', '2021-05-21 16:27:17'),
(656, 15, '2021-05-21', 'Ajouter tâche', 'Réinitialisation du système Windows', NULL, '2021-05-21 16:39:31', '2021-05-21 16:39:31'),
(657, 4, '2021-05-21', 'Ajouter tâche', 'Réponse à toute candidature', NULL, '2021-05-21 16:41:31', '2021-05-21 16:41:31'),
(658, 6, '2021-05-21', 'Modifier projet', 'Article IFRS 17', NULL, '2021-05-21 16:41:42', '2021-05-21 16:41:42'),
(659, 6, '2021-05-21', 'Ajouter tâche', 'Corrections et ajouts', NULL, '2021-05-21 16:43:30', '2021-05-21 16:43:30'),
(660, 4, '2021-05-21', 'Valider projet', 'Article IFRS 17', NULL, '2021-05-21 16:46:44', '2021-05-21 16:46:44'),
(661, 4, '2021-05-21', 'Ajouter tâche', 'call zoom presentation ifc', NULL, '2021-05-21 16:50:57', '2021-05-21 16:50:57'),
(662, 4, '2021-05-21', 'Ajouter tâche', 'resolution pb PGG', NULL, '2021-05-21 16:52:00', '2021-05-21 16:52:00'),
(663, 4, '2021-05-21', 'Ajouter tâche', 'integration api js', NULL, '2021-05-21 16:59:32', '2021-05-21 16:59:32'),
(664, 6, '2021-05-21', 'Ajouter tâche', 'Point technique avec M. AGBE', NULL, '2021-05-21 17:00:10', '2021-05-21 17:00:10'),
(665, 4, '2021-05-21', 'Ajouter tâche', 'rapport avec M AGBE', NULL, '2021-05-21 17:03:13', '2021-05-21 17:03:13'),
(666, 4, '2021-05-21', 'Ajouter tâche', 'integration des nouvautés', NULL, '2021-05-21 17:04:42', '2021-05-21 17:04:42'),
(667, 6, '2021-05-21', 'Ajouter tâche', 'Prospection LinkedIn', NULL, '2021-05-21 17:23:31', '2021-05-21 17:23:31'),
(668, 6, '2021-05-21', 'Ajouter tâche', 'Rédaction support pour spot publicitaire', NULL, '2021-05-21 17:28:36', '2021-05-21 17:28:36'),
(669, 6, '2021-05-21', 'Ajouter tâche', 'Point technique avec M. Agbé', NULL, '2021-05-21 17:33:09', '2021-05-21 17:33:09'),
(670, 6, '2021-05-21', 'Ajouter tâche', 'Contrôle spot publicitaire, remarques, recherche de mélodies de support', NULL, '2021-05-21 17:41:02', '2021-05-21 17:41:02'),
(671, 2, '2021-05-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-25 12:53:23', '2021-05-25 12:53:23'),
(672, 2, '2021-05-25', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-25 12:54:58', '2021-05-25 12:54:58'),
(673, 13, '2021-05-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-25 13:00:17', '2021-05-25 13:00:17'),
(674, 13, '2021-05-25', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-25 13:08:13', '2021-05-25 13:08:13'),
(675, 2, '2021-05-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-25 13:10:41', '2021-05-25 13:10:41'),
(676, 2, '2021-05-25', 'Ajouter projet', 'New project', NULL, '2021-05-25 13:20:20', '2021-05-25 13:20:20'),
(677, 2, '2021-05-25', 'Ajouter tâche', 'XD', NULL, '2021-05-25 13:21:54', '2021-05-25 13:21:54'),
(678, 2, '2021-05-25', 'Ajouter tâche', 'Frontend', NULL, '2021-05-25 13:22:28', '2021-05-25 13:22:28'),
(679, 2, '2021-05-25', 'Ajouter tâche', 'Backend', NULL, '2021-05-25 13:22:53', '2021-05-25 13:22:53'),
(680, 2, '2021-05-25', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-25 13:36:45', '2021-05-25 13:36:45'),
(681, 2, '2021-05-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-25 13:36:58', '2021-05-25 13:36:58'),
(682, 2, '2021-05-25', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-25 13:37:35', '2021-05-25 13:37:35'),
(683, 2, '2021-05-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-25 13:38:29', '2021-05-25 13:38:29'),
(684, 2, '2021-05-25', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-25 13:38:42', '2021-05-25 13:38:42'),
(685, 9, '2021-05-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-25 14:56:08', '2021-05-25 14:56:08'),
(686, 6, '2021-05-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-25 15:28:30', '2021-05-25 15:28:30'),
(687, 4, '2021-05-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-25 15:30:44', '2021-05-25 15:30:44'),
(688, 4, '2021-05-25', 'Ajouter tâche', 'Conception de la base emprunt', NULL, '2021-05-25 15:34:21', '2021-05-25 15:34:21'),
(689, 6, '2021-05-25', 'Ajouter tâche', 'Point SharePoint validation cahier de charges', NULL, '2021-05-25 15:41:16', '2021-05-25 15:41:16'),
(690, 12, '2021-05-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-26 06:16:35', '2021-05-26 06:16:35'),
(691, 12, '2021-05-26', 'Ajouter tâche', 'Mise à jour du fichier comptable', NULL, '2021-05-26 06:32:21', '2021-05-26 06:32:21'),
(692, 13, '2021-05-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-26 09:09:00', '2021-05-26 09:09:00'),
(693, 13, '2021-05-26', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-26 09:20:28', '2021-05-26 09:20:28'),
(694, 13, '2021-05-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-26 09:26:22', '2021-05-26 09:26:22'),
(695, 13, '2021-05-26', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-26 09:26:54', '2021-05-26 09:26:54'),
(696, 9, '2021-05-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-26 13:57:12', '2021-05-26 13:57:12'),
(697, 9, '2021-05-26', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-26 14:01:04', '2021-05-26 14:01:04'),
(698, 6, '2021-05-26', 'Modifier projet', 'Article RM finalisation', NULL, '2021-05-26 16:20:44', '2021-05-26 16:20:44'),
(699, 8, '2021-05-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-26 18:03:24', '2021-05-26 18:03:24'),
(700, 2, '2021-05-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-27 06:22:27', '2021-05-27 06:22:27'),
(701, 2, '2021-05-27', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-27 06:23:30', '2021-05-27 06:23:30'),
(702, 4, '2021-05-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-27 08:44:28', '2021-05-27 08:44:28'),
(703, 4, '2021-05-27', 'Ajouter tâche', 'Conception de la base clients', NULL, '2021-05-27 08:46:08', '2021-05-27 08:46:08'),
(704, 4, '2021-05-27', 'Ajouter tâche', 'Conception de la base clients', NULL, '2021-05-27 08:47:29', '2021-05-27 08:47:29'),
(705, 4, '2021-05-27', 'Ajouter tâche', 'Resolution du probleme d\'acces au server de Mme BOQUI', NULL, '2021-05-27 08:53:22', '2021-05-27 08:53:22'),
(706, 10, '2021-05-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-27 13:06:06', '2021-05-27 13:06:06'),
(707, 12, '2021-05-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-27 13:10:24', '2021-05-27 13:10:24'),
(708, 12, '2021-05-27', 'Ajouter tâche', 'Visite à la boîte aux lettres', NULL, '2021-05-27 13:12:33', '2021-05-27 13:12:33'),
(709, 12, '2021-05-27', 'Ajouter tâche', 'Dépôt de courrier à M. ACADIER (ECOBANK)', NULL, '2021-05-27 13:39:42', '2021-05-27 13:39:42'),
(710, 6, '2021-05-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-27 14:16:46', '2021-05-27 14:16:46'),
(711, 9, '2021-05-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-27 15:21:02', '2021-05-27 15:21:02'),
(712, 10, '2021-05-27', 'Ajouter tâche', 'Ajout de commentaires pour conseil', NULL, '2021-05-27 15:28:42', '2021-05-27 15:28:42'),
(713, 13, '2021-05-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-28 13:17:13', '2021-05-28 13:17:13'),
(714, 6, '2021-05-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-28 13:18:35', '2021-05-28 13:18:35'),
(715, 6, '2021-05-28', 'Modifier projet', 'SHAREPOINT', NULL, '2021-05-28 13:21:27', '2021-05-28 13:21:27'),
(716, 13, '2021-05-28', 'Ajouter tâche', 'Création du projet et environnement de travail', NULL, '2021-05-28 14:36:16', '2021-05-28 14:36:16'),
(717, 13, '2021-05-28', 'Ajouter tâche', 'Modélisation de la base de donnée', NULL, '2021-05-28 14:37:36', '2021-05-28 14:37:36'),
(718, 13, '2021-05-28', 'Ajouter tâche', 'Création de l\'interface de login', NULL, '2021-05-28 14:42:18', '2021-05-28 14:42:18'),
(719, 10, '2021-05-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-28 16:02:54', '2021-05-28 16:02:54'),
(720, 10, '2021-05-28', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-05-28 16:17:41', '2021-05-28 16:17:41'),
(721, 12, '2021-05-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-28 16:38:04', '2021-05-28 16:38:04'),
(722, 4, '2021-05-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-28 16:40:28', '2021-05-28 16:40:28'),
(723, 4, '2021-05-28', 'Ajouter tâche', 'Realisation de plateforme de verification Des base', NULL, '2021-05-28 16:46:35', '2021-05-28 16:46:35'),
(724, 4, '2021-05-31', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-31 07:45:08', '2021-05-31 07:45:08'),
(725, 4, '2021-05-31', 'Ajouter tâche', 'Mise à jour du cahier des charges Insai M2', NULL, '2021-05-31 07:46:27', '2021-05-31 07:46:27'),
(726, 6, '2021-05-31', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-05-31 16:01:50', '2021-05-31 16:01:50'),
(727, 4, '2021-05-31', 'Ajouter tâche', 'Point avec le Boss', NULL, '2021-05-31 16:03:14', '2021-05-31 16:03:14'),
(728, 5, '2021-06-01', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-01 08:51:55', '2021-06-01 08:51:55'),
(729, 5, '2021-06-01', 'Ajouter tâche', 'Séance de travail à propos de la restructuration du module 2', NULL, '2021-06-01 08:58:25', '2021-06-01 08:58:25'),
(730, 12, '2021-06-01', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-01 11:54:08', '2021-06-01 11:54:08'),
(731, 12, '2021-06-01', 'Ajouter tâche', 'Organisation accueil COULIBALY Jonathan', NULL, '2021-06-01 12:05:25', '2021-06-01 12:05:25'),
(732, 4, '2021-06-01', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-01 16:34:03', '2021-06-01 16:34:03'),
(733, 4, '2021-06-01', 'Ajouter tâche', 'Configuration PC COULIBALY', NULL, '2021-06-01 16:36:34', '2021-06-01 16:36:34'),
(734, 5, '2021-06-01', 'Ajouter projet', 'Best Places to work for (procédures d\'adhésion et introduction du concept en CI)', NULL, '2021-06-01 18:02:34', '2021-06-01 18:02:34'),
(735, 13, '2021-06-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-02 06:14:58', '2021-06-02 06:14:58'),
(736, 13, '2021-06-02', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-02 06:51:15', '2021-06-02 06:51:15'),
(737, 2, '2021-06-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-04 08:07:43', '2021-06-04 08:07:43'),
(738, 2, '2021-06-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-04 08:43:13', '2021-06-04 08:43:13'),
(739, 10, '2021-06-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-07 06:06:17', '2021-06-07 06:06:17'),
(740, 2, '2021-06-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-07 06:09:01', '2021-06-07 06:09:01'),
(741, 10, '2021-06-07', 'Ajouter tâche', 'Exportation des résultats en PDF', NULL, '2021-06-07 06:47:52', '2021-06-07 06:47:52'),
(742, 17, '2021-06-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-07 07:01:11', '2021-06-07 07:01:11'),
(743, 6, '2021-06-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-07 07:14:48', '2021-06-07 07:14:48'),
(744, 2, '2021-06-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-07 07:26:06', '2021-06-07 07:26:06'),
(745, 4, '2021-06-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-07 07:38:49', '2021-06-07 07:38:49'),
(746, 2, '2021-06-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-07 07:48:19', '2021-06-07 07:48:19'),
(747, 2, '2021-06-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-07 07:54:50', '2021-06-07 07:54:50'),
(748, 12, '2021-06-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-07 08:27:26', '2021-06-07 08:27:26'),
(749, 13, '2021-06-09', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-09 08:19:50', '2021-06-09 08:19:50'),
(750, 5, '2021-06-09', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-09 08:21:51', '2021-06-09 08:21:51'),
(751, 4, '2021-06-09', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-09 08:24:56', '2021-06-09 08:24:56'),
(752, 10, '2021-06-09', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-09 08:25:04', '2021-06-09 08:25:04'),
(753, 14, '2021-06-09', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-09 08:31:50', '2021-06-09 08:31:50'),
(754, 6, '2021-06-09', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-09 08:36:53', '2021-06-09 08:36:53'),
(755, 13, '2021-06-09', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-09 08:51:00', '2021-06-09 08:51:00'),
(756, 10, '2021-06-09', 'Ajouter tâche', 'Mise à jour Template mail automatique', NULL, '2021-06-09 15:02:13', '2021-06-09 15:02:13'),
(757, 12, '2021-06-09', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-09 16:46:20', '2021-06-09 16:46:20'),
(758, 13, '2021-06-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-10 07:22:59', '2021-06-10 07:22:59'),
(759, 13, '2021-06-10', 'Ajouter tâche', 'Création de l\'interface utilisateur', NULL, '2021-06-10 07:25:44', '2021-06-10 07:25:44'),
(760, 10, '2021-06-10', 'Ajouter tâche', 'Teste', NULL, '2021-06-10 07:26:44', '2021-06-10 07:26:44'),
(761, 5, '2021-06-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-10 07:29:28', '2021-06-10 07:29:28'),
(762, 12, '2021-06-10', 'Ajouter tâche', 'Signature du contrat de bail physique', NULL, '2021-06-10 07:31:00', '2021-06-10 07:31:00');
INSERT INTO `logs` (`id_log`, `user_id`, `date_log`, `type`, `action`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(763, 13, '2021-06-10', 'Ajouter tâche', 'Création de l\'interface pôle', NULL, '2021-06-10 07:34:43', '2021-06-10 07:34:43'),
(764, 13, '2021-06-10', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-10 07:38:11', '2021-06-10 07:38:11'),
(765, 4, '2021-06-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-10 07:47:28', '2021-06-10 07:47:28'),
(766, 4, '2021-06-10', 'Ajouter tâche', 'plateform*', NULL, '2021-06-10 07:49:56', '2021-06-10 07:49:56'),
(767, 9, '2021-06-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-10 07:50:11', '2021-06-10 07:50:11'),
(768, 9, '2021-06-10', 'Ajouter tâche', 't', NULL, '2021-06-10 07:51:03', '2021-06-10 07:51:03'),
(769, 4, '2021-06-10', 'Ajouter tâche', 'Formation sur l\'utilisation du fichier d\'évaluation', NULL, '2021-06-10 07:55:23', '2021-06-10 07:55:23'),
(770, 4, '2021-06-10', 'Ajouter tâche', 'Rapport des projets terminés entre le 01/01/21 et 31/05/21', NULL, '2021-06-10 07:57:42', '2021-06-10 07:57:42'),
(771, 4, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 10:48:28', '2021-06-25 10:48:28'),
(772, 10, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 12:16:26', '2021-06-25 12:16:26'),
(773, 10, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 12:27:45', '2021-06-25 12:27:45'),
(774, 10, '2021-06-25', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-25 12:39:24', '2021-06-25 12:39:24'),
(775, 6, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 13:52:04', '2021-06-25 13:52:04'),
(776, 12, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 13:52:51', '2021-06-25 13:52:51'),
(777, 6, '2021-06-25', 'Ajouter projet', 'Appel d\'offres SOUTH BRIDGE', NULL, '2021-06-25 13:59:24', '2021-06-25 13:59:24'),
(778, 6, '2021-06-25', 'Ajouter tâche', 'Contenu CV', NULL, '2021-06-25 14:18:13', '2021-06-25 14:18:13'),
(779, 6, '2021-06-25', 'Ajouter tâche', 'Mises en forme appel d\'offre', NULL, '2021-06-25 14:27:31', '2021-06-25 14:27:31'),
(780, 5, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 14:30:51', '2021-06-25 14:30:51'),
(781, 9, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 14:39:53', '2021-06-25 14:39:53'),
(782, 9, '2021-06-25', 'Ajouter tâche', 'Réunion avec le boss', NULL, '2021-06-25 14:41:45', '2021-06-25 14:41:45'),
(783, 9, '2021-06-25', 'Ajouter tâche', 'Recherche nouveau design home insai', NULL, '2021-06-25 14:42:30', '2021-06-25 14:42:30'),
(784, 9, '2021-06-25', 'Ajouter tâche', 'Maintenance de mon pc', NULL, '2021-06-25 14:43:07', '2021-06-25 14:43:07'),
(785, 9, '2021-06-25', 'Ajouter tâche', 'Intégration du nouveau design insai home patient', NULL, '2021-06-25 14:44:08', '2021-06-25 14:44:08'),
(786, 6, '2021-06-25', 'Ajouter tâche', 'APPEL D\'OFFRE SOUTBGROUP', NULL, '2021-06-25 15:00:55', '2021-06-25 15:00:55'),
(787, 6, '2021-06-25', 'Ajouter tâche', 'IFRS ET SYSTEME COMPTABLE ALGERIEN', NULL, '2021-06-25 15:08:35', '2021-06-25 15:08:35'),
(788, 17, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 15:32:45', '2021-06-25 15:32:45'),
(789, 14, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 15:39:59', '2021-06-25 15:39:59'),
(790, 4, '2021-06-25', 'Ajouter tâche', 'Seance de travail', NULL, '2021-06-25 15:44:51', '2021-06-25 15:44:51'),
(791, 10, '2021-06-25', 'Ajouter tâche', 'Création de projet avec django', NULL, '2021-06-25 15:52:33', '2021-06-25 15:52:33'),
(792, 10, '2021-06-25', 'Ajouter tâche', 'Gestion d\'authentification IFC', NULL, '2021-06-25 15:55:22', '2021-06-25 15:55:22'),
(793, 4, '2021-06-25', 'Ajouter tâche', 'Resolution du probleme du server d\'application', NULL, '2021-06-25 15:56:16', '2021-06-25 15:56:16'),
(794, 10, '2021-06-25', 'Ajouter tâche', 'Modélisation de base de données', NULL, '2021-06-25 15:56:16', '2021-06-25 15:56:16'),
(795, 10, '2021-06-25', 'Ajouter tâche', 'Intégration de Template', NULL, '2021-06-25 15:57:02', '2021-06-25 15:57:02'),
(796, 10, '2021-06-25', 'Ajouter tâche', 'Création des modèles de bases de données', NULL, '2021-06-25 15:58:21', '2021-06-25 15:58:21'),
(797, 5, '2021-06-25', 'Ajouter tâche', 'Recherche et choix de templates', NULL, '2021-06-25 16:09:28', '2021-06-25 16:09:28'),
(798, 13, '2021-06-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-25 16:12:52', '2021-06-25 16:12:52'),
(799, 5, '2021-06-25', 'Ajouter tâche', 'Relecture er mise en forme de l\'article IFRS 17', NULL, '2021-06-25 16:13:26', '2021-06-25 16:13:26'),
(800, 13, '2021-06-25', 'Ajouter tâche', 'Resolution du probleme du server d\'application', NULL, '2021-06-25 16:34:08', '2021-06-25 16:34:08'),
(801, 13, '2021-06-25', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-25 16:38:34', '2021-06-25 16:38:34'),
(802, 6, '2021-06-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-28 05:28:56', '2021-06-28 05:28:56'),
(803, 2, '2021-06-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-28 09:07:53', '2021-06-28 09:07:53'),
(804, 2, '2021-06-28', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-06-28 09:08:20', '2021-06-28 09:08:20'),
(805, 17, '2021-06-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-28 14:39:31', '2021-06-28 14:39:31'),
(806, 17, '2021-06-28', 'Ajouter projet', 'Provisionnement Non Vie', NULL, '2021-06-28 14:48:33', '2021-06-28 14:48:33'),
(807, 17, '2021-06-28', 'Ajouter tâche', 'Description du Planning', NULL, '2021-06-28 15:02:38', '2021-06-28 15:02:38'),
(808, 10, '2021-06-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-28 16:34:10', '2021-06-28 16:34:10'),
(809, 4, '2021-06-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-29 13:15:45', '2021-06-29 13:15:45'),
(810, 4, '2021-06-29', 'Valider projet', 'Appel d\'offres SOUTH BRIDGE', NULL, '2021-06-29 13:17:56', '2021-06-29 13:17:56'),
(811, 4, '2021-06-29', 'Valider projet', 'Provisionnement Non Vie', NULL, '2021-06-29 13:20:11', '2021-06-29 13:20:11'),
(812, 17, '2021-06-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-29 14:53:48', '2021-06-29 14:53:48'),
(813, 17, '2021-06-29', 'Ajouter tâche', 'Recherche et rédaction Mémoire', NULL, '2021-06-29 14:57:18', '2021-06-29 14:57:18'),
(814, 10, '2021-06-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-29 15:08:19', '2021-06-29 15:08:19'),
(815, 6, '2021-06-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-29 15:17:34', '2021-06-29 15:17:34'),
(816, 12, '2021-06-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-29 16:00:45', '2021-06-29 16:00:45'),
(817, 17, '2021-06-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-06-30 15:34:10', '2021-06-30 15:34:10'),
(818, 17, '2021-07-01', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-01 13:27:43', '2021-07-01 13:27:43'),
(819, 9, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 13:43:55', '2021-07-02 13:43:55'),
(820, 6, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 13:44:21', '2021-07-02 13:44:21'),
(821, 14, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 14:02:44', '2021-07-02 14:02:44'),
(822, 9, '2021-07-02', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-02 14:13:25', '2021-07-02 14:13:25'),
(823, 13, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 14:50:04', '2021-07-02 14:50:04'),
(824, 9, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 14:55:37', '2021-07-02 14:55:37'),
(825, 13, '2021-07-02', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-02 15:00:36', '2021-07-02 15:00:36'),
(826, 10, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 15:04:08', '2021-07-02 15:04:08'),
(827, 13, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 15:09:29', '2021-07-02 15:09:29'),
(828, 13, '2021-07-02', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-02 15:12:54', '2021-07-02 15:12:54'),
(829, 10, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 15:18:03', '2021-07-02 15:18:03'),
(830, 10, '2021-07-02', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-02 15:23:07', '2021-07-02 15:23:07'),
(831, 17, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 15:32:59', '2021-07-02 15:32:59'),
(832, 4, '2021-07-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-02 15:34:28', '2021-07-02 15:34:28'),
(833, 2, '2021-07-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-05 14:28:22', '2021-07-05 14:28:22'),
(834, 2, '2021-07-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-05 14:30:45', '2021-07-05 14:30:45'),
(835, 13, '2021-07-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-05 14:34:20', '2021-07-05 14:34:20'),
(836, 10, '2021-07-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-05 14:39:37', '2021-07-05 14:39:37'),
(837, 9, '2021-07-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-05 14:52:19', '2021-07-05 14:52:19'),
(838, 13, '2021-07-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-05 15:20:30', '2021-07-05 15:20:30'),
(839, 9, '2021-07-05', 'Ajouter tâche', 'harmonisation  du design patient et médecin', NULL, '2021-07-05 15:52:32', '2021-07-05 15:52:32'),
(840, 9, '2021-07-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-05 17:04:06', '2021-07-05 17:04:06'),
(841, 10, '2021-07-05', 'Ajouter tâche', 'Préparation et insertion des tables', NULL, '2021-07-05 17:38:27', '2021-07-05 17:38:27'),
(842, 17, '2021-07-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-05 17:42:05', '2021-07-05 17:42:05'),
(843, 4, '2021-07-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-05 17:50:11', '2021-07-05 17:50:11'),
(844, 10, '2021-07-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-05 17:54:10', '2021-07-05 17:54:10'),
(845, 10, '2021-07-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-06 08:21:40', '2021-07-06 08:21:40'),
(846, 13, '2021-07-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-06 08:33:53', '2021-07-06 08:33:53'),
(847, 13, '2021-07-06', 'Ajouter tâche', 'Détail responsable de pôle', NULL, '2021-07-06 08:35:29', '2021-07-06 08:35:29'),
(848, 13, '2021-07-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-06 09:05:43', '2021-07-06 09:05:43'),
(849, 10, '2021-07-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-06 09:30:30', '2021-07-06 09:30:30'),
(850, 10, '2021-07-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-06 10:30:12', '2021-07-06 10:30:12'),
(851, 2, '2021-07-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-06 10:33:05', '2021-07-06 10:33:05'),
(852, 2, '2021-07-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-06 13:41:15', '2021-07-06 13:41:15'),
(853, 13, '2021-07-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-06 13:42:13', '2021-07-06 13:42:13'),
(854, 13, '2021-07-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-06 13:42:52', '2021-07-06 13:42:52'),
(855, 2, '2021-07-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-06 13:43:14', '2021-07-06 13:43:14'),
(856, 2, '2021-07-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-06 13:43:34', '2021-07-06 13:43:34'),
(857, 13, '2021-07-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-06 13:43:52', '2021-07-06 13:43:52'),
(858, 2, '2021-07-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-06 15:20:32', '2021-07-06 15:20:32'),
(859, 2, '2021-07-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-07 09:21:16', '2021-07-07 09:21:16'),
(860, 2, '2021-07-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-07 09:29:08', '2021-07-07 09:29:08'),
(861, 2, '2021-07-08', 'Ajouter projet', 'Test du jeudi 08 juillet 2021', NULL, '2021-07-08 09:56:44', '2021-07-08 09:56:44'),
(862, 2, '2021-07-08', 'Ajouter tâche', 'Deuxieme tâche', NULL, '2021-07-08 10:00:22', '2021-07-08 10:00:22'),
(863, 2, '2021-07-08', 'Ajouter tâche', 'troisième tâche', NULL, '2021-07-08 10:02:17', '2021-07-08 10:02:17'),
(864, 2, '2021-07-08', 'Ajouter tâche', 'Ah bon???', NULL, '2021-07-08 10:02:50', '2021-07-08 10:02:50'),
(865, 2, '2021-07-08', 'Valider projet', 'Test du jeudi 08 juillet 2021', NULL, '2021-07-08 10:05:20', '2021-07-08 10:05:20'),
(866, 2, '2021-07-08', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-08 14:37:28', '2021-07-08 14:37:28'),
(867, 2, '2021-07-08', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-08 15:13:07', '2021-07-08 15:13:07'),
(868, 2, '2021-07-08', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-08 15:57:20', '2021-07-08 15:57:20'),
(869, 2, '2021-07-12', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-12 08:19:38', '2021-07-12 08:19:38'),
(870, 2, '2021-07-14', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-14 11:18:48', '2021-07-14 11:18:48'),
(871, 2, '2021-07-14', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-14 17:02:40', '2021-07-14 17:02:40'),
(872, 2, '2021-07-22', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-22 07:54:07', '2021-07-22 07:54:07'),
(873, 2, '2021-07-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-27 10:41:11', '2021-07-27 10:41:11'),
(874, 2, '2021-07-27', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-27 11:36:56', '2021-07-27 11:36:56'),
(875, 2, '2021-07-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-27 11:53:51', '2021-07-27 11:53:51'),
(876, 2, '2021-07-27', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-27 11:54:02', '2021-07-27 11:54:02'),
(877, 2, '2021-07-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-27 11:56:28', '2021-07-27 11:56:28'),
(878, 2, '2021-07-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-27 19:12:46', '2021-07-27 19:12:46'),
(879, 2, '2021-07-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-27 19:37:29', '2021-07-27 19:37:29'),
(880, 2, '2021-07-28', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-28 15:42:52', '2021-07-28 15:42:52'),
(881, 2, '2021-07-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-28 15:49:58', '2021-07-28 15:49:58'),
(882, 2, '2021-07-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-28 16:00:17', '2021-07-28 16:00:17'),
(883, 2, '2021-07-29', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-07-29 10:31:10', '2021-07-29 10:31:10'),
(884, 2, '2021-07-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-07-30 15:17:37', '2021-07-30 15:17:37'),
(885, 2, '2021-08-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-03 16:10:01', '2021-08-03 16:10:01'),
(886, 2, '2021-08-09', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-09 15:26:27', '2021-08-09 15:26:27'),
(887, 2, '2021-08-09', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-08-09 16:43:11', '2021-08-09 16:43:11'),
(888, 2, '2021-08-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-10 07:58:40', '2021-08-10 07:58:40'),
(889, 2, '2021-08-16', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-16 10:02:38', '2021-08-16 10:02:38'),
(890, 2, '2021-08-19', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-19 10:57:45', '2021-08-19 10:57:45'),
(891, 2, '2021-08-19', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-08-19 18:20:07', '2021-08-19 18:20:07'),
(892, 2, '2021-08-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-20 08:28:29', '2021-08-20 08:28:29'),
(893, 2, '2021-08-23', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-23 08:10:39', '2021-08-23 08:10:39'),
(894, 2, '2021-08-23', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-23 09:24:07', '2021-08-23 09:24:07'),
(895, 2, '2021-08-25', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-25 08:57:01', '2021-08-25 08:57:01'),
(896, 2, '2021-08-25', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-08-25 11:12:02', '2021-08-25 11:12:02'),
(897, 10, '2021-08-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-26 15:58:51', '2021-08-26 15:58:51'),
(898, 10, '2021-08-26', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-08-26 15:59:21', '2021-08-26 15:59:21'),
(899, 2, '2021-08-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-26 16:00:32', '2021-08-26 16:00:32'),
(900, 2, '2021-08-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-26 16:28:20', '2021-08-26 16:28:20'),
(901, 2, '2021-08-26', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-08-26 16:41:49', '2021-08-26 16:41:49'),
(902, 2, '2021-08-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-27 09:05:30', '2021-08-27 09:05:30'),
(903, 2, '2021-08-27', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-08-27 17:29:16', '2021-08-27 17:29:16'),
(904, 2, '2021-08-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-30 08:06:35', '2021-08-30 08:06:35'),
(905, 2, '2021-08-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-30 10:39:14', '2021-08-30 10:39:14'),
(906, 2, '2021-08-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-30 16:23:41', '2021-08-30 16:23:41'),
(907, 10, '2021-08-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-30 16:24:46', '2021-08-30 16:24:46'),
(908, 2, '2021-08-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-30 16:45:58', '2021-08-30 16:45:58'),
(909, 2, '2021-08-31', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-31 07:44:29', '2021-08-31 07:44:29'),
(910, 2, '2021-08-31', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-31 08:23:11', '2021-08-31 08:23:11'),
(911, 2, '2021-08-31', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-08-31 12:14:47', '2021-08-31 12:14:47'),
(912, 2, '2021-09-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-02 09:32:54', '2021-09-02 09:32:54'),
(913, 10, '2021-09-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-02 14:34:35', '2021-09-02 14:34:35'),
(914, 10, '2021-09-02', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-09-02 14:45:59', '2021-09-02 14:45:59'),
(915, 2, '2021-09-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-02 14:46:12', '2021-09-02 14:46:12'),
(916, 2, '2021-09-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-02 14:52:42', '2021-09-02 14:52:42'),
(917, 2, '2021-09-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-02 15:18:08', '2021-09-02 15:18:08'),
(918, 2, '2021-09-03', 'Ajouter projet', 'Bonjour', NULL, '2021-09-03 15:08:18', '2021-09-03 15:08:18'),
(919, 2, '2021-09-03', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-09-03 17:03:22', '2021-09-03 17:03:22'),
(920, 2, '2021-09-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-03 17:25:44', '2021-09-03 17:25:44'),
(921, 2, '2021-09-03', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-09-03 17:39:38', '2021-09-03 17:39:38'),
(922, 2, '2021-09-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-06 13:38:02', '2021-09-06 13:38:02'),
(923, 2, '2021-09-06', 'Demande d\'absence', 'CONGE', NULL, '2021-09-06 15:20:56', '2021-09-06 15:20:56'),
(924, 2, '2021-09-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-07 12:01:41', '2021-09-07 12:01:41'),
(925, 2, '2021-09-08', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-09-08 17:01:20', '2021-09-08 17:01:20'),
(926, 2, '2021-09-10', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-10 09:56:11', '2021-09-10 09:56:11'),
(927, 2, '2021-09-13', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-13 07:41:37', '2021-09-13 07:41:37'),
(928, 2, '2021-09-16', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-16 07:51:58', '2021-09-16 07:51:58'),
(929, 2, '2021-09-17', 'Ajouter projet', 'Test du vendredi 17 septembre 2021', NULL, '2021-09-17 14:13:55', '2021-09-17 14:13:55'),
(930, 2, '2021-09-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-20 07:37:12', '2021-09-20 07:37:12'),
(931, 2, '2021-09-20', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-09-20 10:01:15', '2021-09-20 10:01:15'),
(932, 2, '2021-09-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-20 10:01:31', '2021-09-20 10:01:31'),
(933, 2, '2021-09-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-20 14:07:30', '2021-09-20 14:07:30'),
(934, 10, '2021-09-20', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-20 14:17:20', '2021-09-20 14:17:20'),
(935, 2, '2021-09-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-21 09:41:23', '2021-09-21 09:41:23'),
(936, 2, '2021-09-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-21 13:51:59', '2021-09-21 13:51:59'),
(937, 10, '2021-09-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-21 13:52:57', '2021-09-21 13:52:57'),
(938, 2, '2021-09-23', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-23 09:22:04', '2021-09-23 09:22:04'),
(939, 2, '2021-09-23', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-09-23 17:38:27', '2021-09-23 17:38:27'),
(940, 2, '2021-09-24', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-09-24 09:09:53', '2021-09-24 09:09:53'),
(941, 2, '2021-09-24', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-24 09:10:11', '2021-09-24 09:10:11'),
(942, 2, '2021-09-24', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-09-24 11:27:53', '2021-09-24 11:27:53'),
(943, 2, '2021-09-24', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-24 14:36:58', '2021-09-24 14:36:58'),
(944, 2, '2021-09-27', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-09-27 07:51:01', '2021-09-27 07:51:01'),
(945, 2, '2021-09-28', 'Ajouter tâche', 'Nouveau', NULL, '2021-09-28 15:20:42', '2021-09-28 15:20:42'),
(946, 2, '2021-09-29', 'Ajouter tâche', 'Ah bon 2', NULL, '2021-09-29 12:06:29', '2021-09-29 12:06:29'),
(947, 2, '2021-09-29', 'Ajouter tâche', 'Les citizens perdent 2-0 face aux parisiens', NULL, '2021-09-29 12:08:42', '2021-09-29 12:08:42'),
(948, 2, '2021-09-29', 'Ajouter tâche', 'fjkenjkzef', NULL, '2021-09-29 12:10:50', '2021-09-29 12:10:50'),
(949, 2, '2021-09-29', 'Ajouter tâche', '2-0 pour PSG', NULL, '2021-09-29 12:11:54', '2021-09-29 12:11:54'),
(950, 2, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 09:32:59', '2021-10-05 09:32:59'),
(951, 2, '2021-10-05', 'Ajouter projet', 'Azaefefe', NULL, '2021-10-05 10:00:54', '2021-10-05 10:00:54'),
(952, 2, '2021-10-05', 'Ajouter projet', 'ezbuiefzbuiefz', NULL, '2021-10-05 10:02:42', '2021-10-05 10:02:42'),
(953, 2, '2021-10-05', 'Ajouter projet', 'ENJNBKJLEZ', NULL, '2021-10-05 10:06:01', '2021-10-05 10:06:01'),
(954, 2, '2021-10-05', 'Ajouter projet', 'Test du mardi email', NULL, '2021-10-05 10:09:22', '2021-10-05 10:09:22'),
(955, 2, '2021-10-05', 'Ajouter projet', 'ezfef', NULL, '2021-10-05 11:01:11', '2021-10-05 11:01:11'),
(956, 2, '2021-10-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-05 11:05:13', '2021-10-05 11:05:13'),
(957, 2, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 11:05:36', '2021-10-05 11:05:36'),
(958, 2, '2021-10-05', 'Ajouter projet', 'zfeezefefz', NULL, '2021-10-05 11:07:10', '2021-10-05 11:07:10'),
(959, 2, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 11:20:10', '2021-10-05 11:20:10'),
(960, 2, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 11:34:28', '2021-10-05 11:34:28'),
(961, 2, '2021-10-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-05 11:34:43', '2021-10-05 11:34:43'),
(962, 2, '2021-10-05', 'Ajouter projet', 'Email passe mainteant en version beta', NULL, '2021-10-05 11:58:42', '2021-10-05 11:58:42'),
(963, 2, '2021-10-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-05 16:23:59', '2021-10-05 16:23:59'),
(964, 2, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 16:25:02', '2021-10-05 16:25:02'),
(965, 2, '2021-10-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-05 16:27:35', '2021-10-05 16:27:35'),
(966, 29, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 16:27:52', '2021-10-05 16:27:52'),
(967, 2, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 16:37:26', '2021-10-05 16:37:26'),
(968, 2, '2021-10-05', 'Valider projet', 'ENJNBKJLEZ', NULL, '2021-10-05 16:42:47', '2021-10-05 16:42:47'),
(969, 2, '2021-10-05', 'Valider projet', 'Test du vendredi 17 septembre 2021', NULL, '2021-10-05 16:43:12', '2021-10-05 16:43:12'),
(970, 29, '2021-10-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-05 16:44:48', '2021-10-05 16:44:48'),
(971, 2, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 16:45:20', '2021-10-05 16:45:20'),
(972, 2, '2021-10-05', 'Ajouter tâche', 'test', NULL, '2021-10-05 16:55:10', '2021-10-05 16:55:10'),
(973, 2, '2021-10-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-05 17:12:12', '2021-10-05 17:12:12'),
(974, 29, '2021-10-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-05 17:12:33', '2021-10-05 17:12:33'),
(975, 29, '2021-10-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-05 17:20:41', '2021-10-05 17:20:41'),
(976, 2, '2021-10-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-06 08:05:17', '2021-10-06 08:05:17'),
(977, 2, '2021-10-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-06 08:24:46', '2021-10-06 08:24:46'),
(978, 2, '2021-10-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-06 08:39:07', '2021-10-06 08:39:07'),
(979, 2, '2021-10-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-06 08:42:26', '2021-10-06 08:42:26'),
(980, 29, '2021-10-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-06 08:43:00', '2021-10-06 08:43:00'),
(981, 29, '2021-10-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-06 09:35:38', '2021-10-06 09:35:38'),
(982, 2, '2021-10-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-06 09:35:55', '2021-10-06 09:35:55'),
(983, 2, '2021-10-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-06 09:37:01', '2021-10-06 09:37:01'),
(984, 2, '2021-10-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-06 09:37:19', '2021-10-06 09:37:19'),
(985, 2, '2021-10-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-06 09:37:26', '2021-10-06 09:37:26'),
(986, 29, '2021-10-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-06 09:37:49', '2021-10-06 09:37:49'),
(987, 29, '2021-10-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-06 09:49:17', '2021-10-06 09:49:17'),
(988, 2, '2021-10-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-06 09:49:33', '2021-10-06 09:49:33'),
(989, 2, '2021-10-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-06 10:05:21', '2021-10-06 10:05:21'),
(990, 2, '2021-10-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-06 10:06:38', '2021-10-06 10:06:38'),
(991, 2, '2021-10-06', 'Ajouter projet', 'ok ok test du jour', NULL, '2021-10-06 10:21:39', '2021-10-06 10:21:39'),
(992, 2, '2021-10-06', 'Ajouter projet', 'ezf', NULL, '2021-10-06 15:07:09', '2021-10-06 15:07:09'),
(993, 2, '2021-10-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-06 17:00:04', '2021-10-06 17:00:04'),
(994, 2, '2021-10-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-07 09:25:39', '2021-10-07 09:25:39'),
(995, 2, '2021-10-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-07 10:45:24', '2021-10-07 10:45:24'),
(996, 2, '2021-10-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-07 11:05:32', '2021-10-07 11:05:32'),
(997, 2, '2021-10-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-07 11:07:24', '2021-10-07 11:07:24'),
(998, 2, '2021-10-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-07 11:07:30', '2021-10-07 11:07:30'),
(999, 2, '2021-10-07', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-07 11:08:21', '2021-10-07 11:08:21'),
(1000, 2, '2021-10-07', 'Ajouter projet', 'Test avec Mmes DEA et GBEHE', NULL, '2021-10-07 15:33:34', '2021-10-07 15:33:34'),
(1001, 2, '2021-10-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-10-07 16:55:08', '2021-10-07 16:55:08'),
(1002, 2, '2021-10-12', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-12 10:25:45', '2021-10-12 10:25:45'),
(1003, 2, '2021-10-26', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-26 08:01:06', '2021-10-26 08:01:06'),
(1004, 2, '2021-10-27', 'Ajouter tâche', 'ok ok', NULL, '2021-10-27 08:02:54', '2021-10-27 08:02:54'),
(1005, 2, '2021-10-28', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-10-28 10:23:17', '2021-10-28 10:23:17'),
(1006, 2, '2021-10-29', 'Demande d\'absence', 'PERMISSION', NULL, '2021-10-29 08:40:46', '2021-10-29 08:40:46'),
(1007, 2, '2021-10-29', 'Demande d\'absence', 'PERMISSION', NULL, '2021-10-29 08:46:47', '2021-10-29 08:46:47'),
(1008, 2, '2021-11-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-02 08:24:22', '2021-11-02 08:24:22'),
(1009, 2, '2021-11-02', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-02 08:25:24', '2021-11-02 08:25:24'),
(1010, 2, '2021-11-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-04 09:00:07', '2021-11-04 09:00:07'),
(1011, 2, '2021-11-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-05 16:10:37', '2021-11-05 16:10:37'),
(1012, 2, '2021-11-08', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-08 09:41:33', '2021-11-08 09:41:33'),
(1013, 2, '2021-11-08', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-08 11:37:46', '2021-11-08 11:37:46'),
(1014, 2, '2021-11-08', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-08 11:42:23', '2021-11-08 11:42:23'),
(1015, 2, '2021-11-08', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-08 15:09:53', '2021-11-08 15:09:53'),
(1016, 2, '2021-11-08', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-08 15:10:27', '2021-11-08 15:10:27'),
(1017, 2, '2021-11-12', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-12 10:19:26', '2021-11-12 10:19:26'),
(1018, 2, '2021-11-12', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-12 10:26:40', '2021-11-12 10:26:40'),
(1019, 2, '2021-11-12', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-12 10:27:30', '2021-11-12 10:27:30'),
(1020, 2, '2021-11-12', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-12 11:28:55', '2021-11-12 11:28:55'),
(1021, 2, '2021-11-16', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-16 08:37:32', '2021-11-16 08:37:32'),
(1022, 2, '2021-11-16', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-16 09:10:08', '2021-11-16 09:10:08'),
(1023, 13, '2021-11-16', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-16 09:15:14', '2021-11-16 09:15:14'),
(1024, 13, '2021-11-16', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-16 11:53:24', '2021-11-16 11:53:24'),
(1025, 2, '2021-11-16', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-16 11:54:06', '2021-11-16 11:54:06'),
(1026, 2, '2021-11-18', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-18 14:03:34', '2021-11-18 14:03:34'),
(1027, 2, '2021-11-19', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-19 09:22:50', '2021-11-19 09:22:50'),
(1028, 2, '2021-11-19', 'Ajouter projet', 'ezdez', NULL, '2021-11-19 09:27:21', '2021-11-19 09:27:21'),
(1029, 2, '2021-11-19', 'Ajouter tâche', 'fsdsf', NULL, '2021-11-19 10:28:37', '2021-11-19 10:28:37'),
(1030, 2, '2021-11-19', 'Ajouter tâche', 'ok', NULL, '2021-11-19 14:01:47', '2021-11-19 14:01:47'),
(1031, 2, '2021-11-19', 'Ajouter tâche', 'dcds', NULL, '2021-11-19 15:31:11', '2021-11-19 15:31:11'),
(1032, 2, '2021-11-19', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-19 15:53:41', '2021-11-19 15:53:41'),
(1033, 2, '2021-11-19', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-19 15:55:59', '2021-11-19 15:55:59'),
(1034, 2, '2021-11-22', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-22 10:56:37', '2021-11-22 10:56:37'),
(1035, 2, '2021-11-30', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-11-30 15:53:03', '2021-11-30 15:53:03'),
(1036, 13, '2021-11-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-30 15:54:00', '2021-11-30 15:54:00'),
(1037, 2, '2021-11-30', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-11-30 15:56:26', '2021-11-30 15:56:26'),
(1038, 13, '2021-12-01', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2021-12-01 12:02:22', '2021-12-01 12:02:22'),
(1039, 2, '2021-12-01', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-12-01 12:02:40', '2021-12-01 12:02:40'),
(1040, 2, '2021-12-03', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-12-03 16:14:57', '2021-12-03 16:14:57'),
(1041, 2, '2021-12-13', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-12-13 11:13:15', '2021-12-13 11:13:15'),
(1042, 2, '2021-12-21', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-12-21 16:25:10', '2021-12-21 16:25:10'),
(1043, 2, '2021-12-29', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2021-12-29 11:01:50', '2021-12-29 11:01:50'),
(1044, 2, '2021-12-29', 'Ajouter projet', 'Test', NULL, '2021-12-29 16:56:06', '2021-12-29 16:56:06'),
(1045, 2, '2022-04-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-04 10:18:27', '2022-04-04 10:18:27'),
(1046, 2, '2022-04-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-04 10:19:30', '2022-04-04 10:19:30'),
(1047, 2, '2022-04-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-04 10:23:52', '2022-04-04 10:23:52'),
(1048, 2, '2022-04-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-04 10:35:25', '2022-04-04 10:35:25'),
(1049, 2, '2022-04-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-04 10:35:40', '2022-04-04 10:35:40'),
(1050, 2, '2022-04-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-04 10:50:17', '2022-04-04 10:50:17'),
(1051, 2, '2022-04-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-04 10:53:10', '2022-04-04 10:53:10'),
(1052, 2, '2022-04-04', 'Modifier projet', 'Test', NULL, '2022-04-04 12:47:30', '2022-04-04 12:47:30'),
(1053, 2, '2022-04-04', 'Modifier projet', 'ezdez', NULL, '2022-04-04 12:47:46', '2022-04-04 12:47:46'),
(1054, 2, '2022-04-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-04 15:54:25', '2022-04-04 15:54:25'),
(1055, 2, '2022-04-04', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-04 15:56:55', '2022-04-04 15:56:55'),
(1056, 2, '2022-04-04', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-04 18:11:07', '2022-04-04 18:11:07'),
(1057, 2, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 08:44:57', '2022-04-05 08:44:57'),
(1058, 2, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 08:45:37', '2022-04-05 08:45:37'),
(1059, 2, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 08:45:54', '2022-04-05 08:45:54'),
(1060, 2, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 08:46:55', '2022-04-05 08:46:55'),
(1061, 2, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 08:47:10', '2022-04-05 08:47:10'),
(1062, 2, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 10:26:31', '2022-04-05 10:26:31'),
(1063, 38, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 10:51:57', '2022-04-05 10:51:57'),
(1064, 38, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 10:52:04', '2022-04-05 10:52:04'),
(1065, 38, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 10:52:34', '2022-04-05 10:52:34'),
(1066, 38, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 12:02:43', '2022-04-05 12:02:43'),
(1067, 2, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 12:02:56', '2022-04-05 12:02:56'),
(1068, 2, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 12:04:13', '2022-04-05 12:04:13'),
(1069, 2, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 12:04:49', '2022-04-05 12:04:49'),
(1070, 2, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 14:54:43', '2022-04-05 14:54:43'),
(1071, 2, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 15:17:01', '2022-04-05 15:17:01'),
(1072, 2, '2022-04-05', 'Modifier projet', 'Testing', NULL, '2022-04-05 17:01:36', '2022-04-05 17:01:36'),
(1073, 2, '2022-04-05', 'Modifier projet', 'ezdez', NULL, '2022-04-05 17:04:12', '2022-04-05 17:04:12'),
(1074, 2, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 17:22:05', '2022-04-05 17:22:05'),
(1075, 38, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 17:23:12', '2022-04-05 17:23:12'),
(1076, 38, '2022-04-05', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-05 17:24:01', '2022-04-05 17:24:01'),
(1077, 2, '2022-04-05', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-05 17:24:45', '2022-04-05 17:24:45'),
(1078, 2, '2022-04-06', 'Ajouter tâche', 'd,nsn,dss,nd', NULL, '2022-04-06 15:48:39', '2022-04-06 15:48:39'),
(1079, 2, '2022-04-06', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-06 16:15:40', '2022-04-06 16:15:40'),
(1080, 2, '2022-04-06', 'Demarrer une session', 'en se connectant a l\'application', NULL, '2022-04-06 16:19:07', '2022-04-06 16:19:07'),
(1081, 2, '2022-04-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-07 12:01:58', '2022-04-07 12:01:58'),
(1082, 2, '2022-04-07', 'Demarrer une session', 'en se connectant a l\'application', 1, '2022-04-07 12:02:55', '2022-04-07 12:02:55'),
(1083, 2, '2022-04-07', 'Ajouter projet', 'klqsd', NULL, '2022-04-07 14:35:41', '2022-04-07 14:35:41'),
(1084, 2, '2022-04-07', 'Ajouter projet', 'Test du jeudi', NULL, '2022-04-07 14:38:20', '2022-04-07 14:38:20'),
(1085, 2, '2022-04-07', 'Ajouter projet', 'test du vendredi', NULL, '2022-04-07 14:40:00', '2022-04-07 14:40:00'),
(1086, 2, '2022-04-07', 'Ajouter projet', 'cxhbjxhc', NULL, '2022-04-07 14:49:25', '2022-04-07 14:49:25'),
(1087, 2, '2022-04-07', 'Ajouter projet', 'sdkjbds', NULL, '2022-04-07 14:50:20', '2022-04-07 14:50:20'),
(1088, 2, '2022-04-07', 'Ajouter projet', 'Ski', NULL, '2022-04-07 14:52:50', '2022-04-07 14:52:50'),
(1089, 2, '2022-04-07', 'Ajouter projet', 'zejkez', NULL, '2022-04-07 14:55:54', '2022-04-07 14:55:54'),
(1090, 2, '2022-04-07', 'Ajouter projet', ',n bkjlklkllklk', NULL, '2022-04-07 14:58:18', '2022-04-07 14:58:18'),
(1091, 2, '2022-04-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-07 15:14:25', '2022-04-07 15:14:25'),
(1092, 2, '2022-04-07', 'Demarrer une session', 'en se connectant a l\'application', 1, '2022-04-07 15:14:41', '2022-04-07 15:14:41'),
(1093, 2, '2022-04-07', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-07 15:17:54', '2022-04-07 15:17:54'),
(1094, 2, '2022-04-08', 'Demarrer une session', 'en se connectant a l\'application', 1, '2022-04-08 12:03:09', '2022-04-08 12:03:09'),
(1095, 2, '2022-04-08', 'Detruit la session', 'en se deconnectant a l\'application', NULL, '2022-04-08 12:03:54', '2022-04-08 12:03:54'),
(1096, 2, '2022-04-08', 'Demarrer une session', 'en se connectant a l\'application', 1, '2022-04-08 12:08:08', '2022-04-08 12:08:08'),
(1097, 2, '2022-04-11', 'Demarrer une session', 'en se connectant a l\'application', 1, '2022-04-11 10:34:28', '2022-04-11 10:34:28'),
(1098, 2, '2022-04-13', 'Demarrer une session', 'en se connectant a l\'application', 1, '2022-04-13 11:52:52', '2022-04-13 11:52:52');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_23_084841_create_projets_table', 1),
(5, '2021_03_23_085155_create_taches_table', 1),
(6, '2021_03_23_121519_create_users_taches_table', 1),
(7, '2021_03_24_142329_create_services_table', 1),
(8, '2021_03_24_152833_create_respos_table', 1),
(9, '2021_03_25_144419_create_conges_table', 1),
(10, '2021_03_29_130104_create_chats_table', 1),
(11, '2021_03_31_085750_create_roles_table', 1),
(12, '2021_03_31_085831_create_permissions_table', 1),
(13, '2021_03_31_090501_create_users_roles_table', 1),
(14, '2021_03_31_090821_create_users_permissions_table', 1),
(15, '2021_03_31_091030_create_roles_permissions_table', 1),
(16, '2021_04_02_122010_create_plannings_table', 1),
(17, '2021_04_05_154832_create_timesheets_table', 1),
(18, '2021_04_06_133654_create_logs_table', 1),
(19, '2021_04_07_154823_create_equipements_table', 1),
(20, '2021_04_09_141915_create_events_table', 1),
(21, '2021_04_12_143226_create_progression_taches_table', 1),
(22, '2021_04_14_141304_create_files_table', 1),
(23, '2021_04_15_100513_create_partage_files_table', 1),
(24, '2021_04_19_084656_create_password_securities_table', 1),
(25, '2021_04_20_120306_create_clients_table', 1),
(26, '2021_05_03_092218_create_cout_taches_table', 2),
(27, '2021_05_04_102436_create_charge_taches_table', 3),
(28, '2021_05_04_105853_create_charge_factures_table', 4),
(29, '2021_05_05_082230_create_cout_factures_table', 4),
(30, '2021_05_06_114918_create_sponsors_table', 5),
(31, '2021_05_18_143056_create_grades_table', 6),
(32, '2021_06_07_092326_create_users_services_table', 7),
(33, '2021_06_08_093246_create_respos_services_table', 8),
(34, '2021_06_28_144535_create_timesheet_demandes_table', 9),
(35, '2021_07_28_142419_create_tickets_table', 9),
(36, '2021_07_29_091608_create_detail_users_table', 10),
(37, '2021_08_30_081659_create_ouvertures_table', 11),
(40, '2021_08_31_142300_create_biblios_table', 12),
(43, '2021_09_02_104255_create_commandes_table', 13),
(44, '2021_09_06_181256_create_newroles_table', 14),
(45, '2021_09_06_181752_create_fonctionnalites_table', 15),
(46, '2021_09_06_182340_create_role_foncs_table', 16),
(47, '2021_09_17_103235_create_reunions_table', 17),
(48, '2021_09_20_125154_create_receveur_tickets_table', 17),
(49, '2021_09_23_142008_create_users_reunions_table', 18),
(53, '2021_09_29_082941_create_evaluation_respos_table', 19),
(54, '2021_10_26_114307_create_auto_evaluates_table', 20),
(55, '2021_12_21_163214_create_suggestions_table', 21),
(56, '2022_03_23_121156_create_validation_autorisations_table', 22),
(57, '2022_03_29_091343_create_demande_comptes_table', 22),
(58, '2022_03_29_091533_create_entreprises_table', 22),
(59, '2022_03_29_095646_create_secteurs_table', 22),
(60, '2022_03_29_101618_create_groupes_table', 22),
(61, '2022_03_29_102501_add_column_to_users', 22),
(62, '2022_03_29_104043_add_column_to_demande_comptes', 22),
(63, '2022_03_31_120705_create_user_foncs_table', 22),
(64, '2022_04_01_142342_add_column_to_entreprises', 22),
(65, '2022_04_01_150510_add_column_to_services', 22),
(66, '2022_04_04_123021_add_column_to_newroles', 23),
(67, '2022_04_04_123940_add_column_to_clients', 24),
(68, '2022_04_04_125354_add_column_to_projets', 25),
(69, '2022_04_04_130657_add_column_to_logs', 26),
(70, '2022_04_06_184922_add_column_to_ouvertures', 27),
(71, '2022_04_06_185603_add_column_to_biblios', 27),
(72, '2022_04_07_140340_add_column_to_equipements', 28);

-- --------------------------------------------------------

--
-- Structure de la table `newroles`
--

CREATE TABLE `newroles` (
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `nom_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newroles`
--

INSERT INTO `newroles` (`id_role`, `nom_role`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(1, 'danse', 1, '2021-09-10 11:08:50', '2021-09-10 11:08:50'),
(2, 'chant', NULL, '2021-09-10 11:10:15', '2021-09-10 11:10:15'),
(3, 'Nouveau', NULL, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(4, 'Gestionnaire', NULL, '2021-09-13 12:18:29', '2021-09-13 12:18:29'),
(5, 'ok ok', NULL, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(6, 'Dev web & mob', NULL, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(7, 'ZUDAGUAZ', NULL, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(8, 'ez', NULL, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(9, 'ecjne', NULL, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(10, 'Administrateur', 1, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(11, 'Groupe', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ouvertures`
--

CREATE TABLE `ouvertures` (
  `id_ouverture` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date_prise` date NOT NULL,
  `heure_prise` time NOT NULL,
  `date_remise` date DEFAULT NULL,
  `heure_remise` time DEFAULT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ouvertures`
--

INSERT INTO `ouvertures` (`id_ouverture`, `user_id`, `date_prise`, `heure_prise`, `date_remise`, `heure_remise`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-09-17', '11:04:38', '2021-09-20', '07:46:36', 1, '2021-09-17 11:04:38', '2021-09-20 07:46:37'),
(4, 10, '2021-09-20', '14:33:28', '2022-04-06', '07:46:36', NULL, '2021-09-20 14:33:28', '2021-09-20 14:33:28'),
(5, 2, '2021-09-19', '12:31:47', '2021-09-23', '12:38:37', NULL, '2021-09-23 12:31:47', '2021-09-23 12:38:38'),
(6, 2, '2021-09-23', '12:38:44', '2021-09-29', '14:21:24', NULL, '2021-09-23 12:38:44', '2021-09-29 14:21:24'),
(7, 2, '2021-09-29', '14:21:33', '2021-10-05', '09:37:21', NULL, '2021-09-29 14:21:33', '2021-10-05 09:37:21'),
(8, 2, '2021-10-05', '09:37:39', '2021-10-07', '12:15:39', NULL, '2021-10-05 09:37:39', '2021-10-07 12:15:39'),
(9, 2, '2021-10-07', '12:17:57', NULL, NULL, NULL, '2021-10-07 12:17:57', '2021-10-07 12:17:57');

-- --------------------------------------------------------

--
-- Structure de la table `partage_files`
--

CREATE TABLE `partage_files` (
  `id_partage` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_file` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partage_files`
--

INSERT INTO `partage_files` (`id_partage`, `user_id`, `id_file`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-07-30 15:17:57', '2021-07-30 15:17:57'),
(2, 2, 2, '2021-07-30 15:18:10', '2021-07-30 15:18:10');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_securities`
--

CREATE TABLE `password_securities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `password_expiry_days` tinyint(4) NOT NULL,
  `password_updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_securities`
--

INSERT INTO `password_securities` (`id`, `user_id`, `password_expiry_days`, `password_updated_at`, `created_at`, `updated_at`) VALUES
(1, 1, 30, '2021-04-19 10:27:59', '2021-04-19 10:27:59', '2021-04-19 10:27:59'),
(2, 2, 30, '2022-04-04 10:18:13', '2021-04-19 10:30:46', '2022-04-04 10:18:13'),
(3, 3, 30, '2021-04-29 09:06:39', '2021-04-29 09:06:39', '2021-04-29 09:06:39'),
(4, 4, 30, '2021-07-02 15:34:12', '2021-04-29 09:08:06', '2021-07-02 15:34:12'),
(5, 5, 30, '2021-06-01 08:51:29', '2021-04-29 09:10:37', '2021-06-01 08:51:29'),
(6, 6, 30, '2021-07-02 13:44:14', '2021-04-29 09:12:36', '2021-07-02 13:44:14'),
(7, 7, 30, '2021-04-29 09:16:22', '2021-04-29 09:16:22', '2021-04-29 09:16:22'),
(8, 8, 30, '2021-04-29 09:19:08', '2021-04-29 09:19:08', '2021-04-29 09:19:08'),
(9, 9, 30, '2021-06-10 07:50:02', '2021-04-29 09:21:01', '2021-06-10 07:50:02'),
(10, 10, 30, '2021-08-26 15:58:43', '2021-04-29 09:24:30', '2021-08-26 15:58:43'),
(11, 11, 30, '2021-04-29 09:26:18', '2021-04-29 09:26:18', '2021-04-29 09:26:18'),
(12, 12, 30, '2021-06-01 11:53:56', '2021-04-29 09:28:34', '2021-06-01 11:53:56'),
(13, 13, 30, '2021-11-16 09:14:53', '2021-04-29 09:30:23', '2021-11-16 09:14:53'),
(14, 14, 30, '2021-06-09 08:27:49', '2021-04-29 09:35:57', '2021-06-09 08:27:49'),
(15, 8, 30, '2021-04-29 09:53:30', '2021-04-29 09:53:30', '2021-04-29 09:53:30'),
(16, 10, 30, '2021-04-29 10:05:02', '2021-04-29 10:05:02', '2021-04-29 10:05:02'),
(17, 15, 30, '2021-04-29 14:32:30', '2021-04-29 14:32:30', '2021-04-29 14:32:30'),
(18, 14, 30, '2021-05-04 09:21:53', '2021-05-04 09:21:53', '2021-05-04 09:21:53'),
(19, 16, 30, '2021-05-07 17:08:06', '2021-05-07 17:08:06', '2021-05-07 17:08:06'),
(20, 17, 30, '2021-06-07 06:58:54', '2021-06-07 06:58:54', '2021-06-07 06:58:54'),
(21, 18, 30, '2021-07-12 16:59:21', '2021-07-12 16:59:21', '2021-07-12 16:59:21'),
(22, 19, 30, '2021-07-12 17:03:24', '2021-07-12 17:03:24', '2021-07-12 17:03:24'),
(23, 20, 30, '2021-07-12 17:05:47', '2021-07-12 17:05:47', '2021-07-12 17:05:47'),
(24, 21, 30, '2021-07-12 17:07:32', '2021-07-12 17:07:32', '2021-07-12 17:07:32'),
(25, 22, 30, '2021-09-13 12:05:58', '2021-09-13 12:05:58', '2021-09-13 12:05:58'),
(26, 23, 30, '2021-09-13 12:09:30', '2021-09-13 12:09:30', '2021-09-13 12:09:30'),
(27, 24, 30, '2021-09-13 12:13:51', '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(28, 25, 30, '2021-09-13 12:18:29', '2021-09-13 12:18:29', '2021-09-13 12:18:29'),
(29, 26, 30, '2021-10-05 14:07:10', '2021-10-05 14:07:10', '2021-10-05 14:07:10'),
(30, 27, 30, '2021-10-05 14:23:36', '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(31, 28, 30, '2021-10-05 15:05:37', '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(32, 29, 30, '2021-10-05 16:27:31', '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(33, 30, 30, '2021-10-05 17:10:32', '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(34, 31, 30, '2022-04-04 10:25:45', '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(35, 32, 30, '2022-04-04 10:53:53', '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(36, 33, 30, '2022-04-04 15:57:08', '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(37, 34, 127, '2022-04-04 16:48:44', '2022-04-04 16:48:44', '2022-04-04 16:48:44'),
(38, 35, 127, '2022-04-04 16:52:47', '2022-04-04 16:52:47', '2022-04-04 16:52:47'),
(39, 38, 127, '2022-04-05 10:12:44', '2022-04-05 10:12:44', '2022-04-05 10:12:44'),
(40, 39, 30, '2022-04-06 16:56:30', '2022-04-06 16:56:30', '2022-04-06 16:56:30'),
(41, 42, 30, '2022-04-06 17:02:35', '2022-04-06 17:02:35', '2022-04-06 17:02:35');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'voir-employe', 'voir-employe', '2021-04-19 10:29:24', '2021-04-19 10:29:24'),
(2, 'creer-employe', 'creer-employe', '2021-04-19 10:29:25', '2021-04-19 10:29:25'),
(3, 'modifier-employe', 'modifier-employe', '2021-04-19 10:29:25', '2021-04-19 10:29:25'),
(4, 'supprimer-employe', 'supprimer-employe', '2021-04-19 10:29:26', '2021-04-19 10:29:26'),
(5, 'voir-apps', 'voir-apps', '2021-04-19 10:29:26', '2021-04-19 10:29:26'),
(6, 'creer-apps', 'creer-apps', '2021-04-19 10:29:26', '2021-04-19 10:29:26'),
(7, 'modifier-apps', 'modifier-apps', '2021-04-19 10:29:26', '2021-04-19 10:29:26'),
(8, 'supprimer-apps', 'supprimer-apps', '2021-04-19 10:29:26', '2021-04-19 10:29:26'),
(9, 'voir-rh', 'voir-rh', '2021-04-19 10:29:27', '2021-04-19 10:29:27'),
(10, 'creer-rh', 'creer-rh', '2021-04-19 10:29:27', '2021-04-19 10:29:27'),
(11, 'modifier-rh', 'modifier-rh', '2021-04-19 10:29:27', '2021-04-19 10:29:27'),
(12, 'supprimer-rh', 'supprimer-rh', '2021-04-19 10:29:27', '2021-04-19 10:29:27'),
(13, 'voir-projets', 'voir-projets', '2021-04-19 10:29:27', '2021-04-19 10:29:27'),
(14, 'creer-projets', 'creer-projets', '2021-04-19 10:29:28', '2021-04-19 10:29:28'),
(15, 'modifier-projets', 'modifier-projets', '2021-04-19 10:29:28', '2021-04-19 10:29:28'),
(16, 'supprimer-projets', 'supprimer-projets', '2021-04-19 10:29:28', '2021-04-19 10:29:28'),
(17, 'voir-parametre', 'voir-parametre', '2021-04-19 10:29:28', '2021-04-19 10:29:28'),
(18, 'creer-parametre', 'creer-parametre', '2021-04-19 10:29:28', '2021-04-19 10:29:28'),
(19, 'modifier-parametre', 'modifier-parametre', '2021-04-19 10:29:28', '2021-04-19 10:29:28'),
(20, 'supprimer-parametre', 'supprimer-parametre', '2021-04-19 10:29:29', '2021-04-19 10:29:29'),
(21, 'voir-employe', 'voir-employe', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(22, 'creer-employe', 'creer-employe', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(23, 'modifier-employe', 'modifier-employe', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(24, 'supprimer-employe', 'supprimer-employe', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(25, 'voir-projets', 'voir-projets', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(26, 'creer-projets', 'creer-projets', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(27, 'modifier-projets', 'modifier-projets', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(28, 'supprimer-projets', 'supprimer-projets', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(29, 'voir-employe', 'voir-employe', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(30, 'creer-employe', 'creer-employe', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(31, 'modifier-employe', 'modifier-employe', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(32, 'supprimer-employe', 'supprimer-employe', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(33, 'voir-rh', 'voir-rh', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(34, 'creer-rh', 'creer-rh', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(35, 'modifier-rh', 'modifier-rh', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(36, 'supprimer-rh', 'supprimer-rh', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(37, 'voir-projets', 'voir-projets', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(38, 'creer-projets', 'creer-projets', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(39, 'modifier-projets', 'modifier-projets', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(40, 'supprimer-projets', 'supprimer-projets', '2021-04-29 09:03:15', '2021-04-29 09:03:15');

-- --------------------------------------------------------

--
-- Structure de la table `plannings`
--

CREATE TABLE `plannings` (
  `id_planning` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_respo` int(10) UNSIGNED DEFAULT NULL,
  `date_debut_planning` date NOT NULL,
  `date_fin_planning` date NOT NULL,
  `nom_planning` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semaine_planning` int(11) NOT NULL,
  `mois_planning` int(11) NOT NULL,
  `annee_planning` int(11) NOT NULL,
  `duree_planning` int(11) DEFAULT NULL,
  `progression` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `progression_taches`
--

CREATE TABLE `progression_taches` (
  `id_progress` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_tache` bigint(20) UNSIGNED NOT NULL,
  `temps_progress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_progress` date DEFAULT NULL,
  `description_progress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `progression_taches`
--

INSERT INTO `progression_taches` (`id_progress`, `user_id`, `id_tache`, `temps_progress`, `date_progress`, `description_progress`, `created_at`, `updated_at`) VALUES
(1, 10, 7, '8', '2021-04-29', 'Tâche terminée', '2021-04-29 15:27:28', '2021-04-29 15:27:28'),
(6, 14, 26, '5', '2021-05-03', NULL, '2021-05-03 15:09:48', '2021-05-03 15:09:48'),
(7, 14, 27, NULL, '2021-05-03', NULL, '2021-05-03 15:11:55', '2021-05-03 15:11:55'),
(8, 14, 28, NULL, '2021-05-03', NULL, '2021-05-03 15:12:39', '2021-05-03 15:12:39'),
(9, 14, 29, NULL, '2021-05-03', NULL, '2021-05-03 15:13:38', '2021-05-03 15:13:38'),
(10, 14, 29, NULL, '2021-05-03', NULL, '2021-05-03 15:14:01', '2021-05-03 15:14:01'),
(12, 14, 30, NULL, '2021-05-04', NULL, '2021-05-04 07:07:26', '2021-05-04 07:07:26'),
(13, 14, 31, NULL, '2021-05-04', NULL, '2021-05-04 07:08:02', '2021-05-04 07:08:02'),
(14, 10, 275, NULL, '2021-05-04', NULL, '2021-05-04 15:08:27', '2021-05-04 15:08:27'),
(15, 12, 191, '4', '2021-05-04', NULL, '2021-05-04 15:11:03', '2021-05-04 15:11:03'),
(16, 12, 192, '4', '2021-05-04', 'Avril 2021', '2021-05-04 15:40:01', '2021-05-04 15:40:01'),
(17, 12, 195, '5', '2021-05-04', 'ok', '2021-05-04 15:45:12', '2021-05-04 15:45:12'),
(18, 14, 240, NULL, '2021-05-04', NULL, '2021-05-04 15:48:30', '2021-05-04 15:48:30'),
(19, 12, 197, '5', '2021-05-04', 'ok', '2021-05-04 15:50:38', '2021-05-04 15:50:38'),
(20, 12, 198, '5', '2021-05-04', 'ok', '2021-05-04 15:55:56', '2021-05-04 15:55:56'),
(24, 6, 307, '8', '2021-05-04', 'En cours', '2021-05-04 16:11:37', '2021-05-04 16:11:37'),
(25, 12, 308, '8', '2021-05-04', 'En cours', '2021-05-04 16:13:04', '2021-05-04 16:13:04'),
(26, 12, 311, '3', '2021-05-04', 'ok', '2021-05-04 16:13:25', '2021-05-04 16:13:25'),
(27, 12, 316, '8', '2021-05-04', 'ok', '2021-05-04 16:13:57', '2021-05-04 16:13:57'),
(28, 12, 317, '5', '2021-05-04', 'En cours', '2021-05-04 16:14:28', '2021-05-04 16:14:28'),
(29, 8, 318, '3', '2021-05-04', 'Ok', '2021-05-04 16:15:00', '2021-05-04 16:15:00'),
(30, 12, 319, '3', '2021-05-04', 'Ok', '2021-05-04 16:15:27', '2021-05-04 16:15:27'),
(31, 12, 320, '4', '2021-05-04', 'Ok', '2021-05-04 16:16:30', '2021-05-04 16:16:30'),
(32, 4, 116, NULL, '2021-05-04', NULL, '2021-05-04 16:24:37', '2021-05-04 16:24:37'),
(33, 4, 118, NULL, '2021-05-04', NULL, '2021-05-04 16:25:11', '2021-05-04 16:25:11'),
(34, 4, 122, NULL, '2021-05-04', NULL, '2021-05-04 16:25:25', '2021-05-04 16:25:25'),
(35, 4, 128, NULL, '2021-05-04', NULL, '2021-05-04 16:25:52', '2021-05-04 16:25:52'),
(36, 4, 131, NULL, '2021-05-04', NULL, '2021-05-04 16:26:10', '2021-05-04 16:26:10'),
(37, 4, 133, NULL, '2021-05-04', NULL, '2021-05-04 16:26:31', '2021-05-04 16:26:31'),
(38, 4, 135, NULL, '2021-05-04', NULL, '2021-05-04 16:26:49', '2021-05-04 16:26:49'),
(39, 4, 136, NULL, '2021-05-04', NULL, '2021-05-04 16:27:12', '2021-05-04 16:27:12'),
(40, 4, 138, NULL, '2021-05-04', NULL, '2021-05-04 16:27:23', '2021-05-04 16:27:23'),
(41, 4, 139, NULL, '2021-05-04', NULL, '2021-05-04 16:27:36', '2021-05-04 16:27:36'),
(42, 4, 144, NULL, '2021-05-04', NULL, '2021-05-04 16:27:57', '2021-05-04 16:27:57'),
(43, 4, 146, NULL, '2021-05-04', NULL, '2021-05-04 16:28:19', '2021-05-04 16:28:19'),
(44, 4, 147, NULL, '2021-05-04', NULL, '2021-05-04 16:28:30', '2021-05-04 16:28:30'),
(45, 4, 148, NULL, '2021-05-04', NULL, '2021-05-04 16:28:39', '2021-05-04 16:28:39'),
(46, 4, 150, NULL, '2021-05-04', NULL, '2021-05-04 16:28:51', '2021-05-04 16:28:51'),
(47, 4, 152, NULL, '2021-05-04', NULL, '2021-05-04 16:29:22', '2021-05-04 16:29:22'),
(48, 4, 154, NULL, '2021-05-04', NULL, '2021-05-04 16:31:08', '2021-05-04 16:31:08'),
(49, 4, 157, NULL, '2021-05-04', NULL, '2021-05-04 16:31:19', '2021-05-04 16:31:19'),
(50, 4, 158, NULL, '2021-05-04', NULL, '2021-05-04 16:31:38', '2021-05-04 16:31:38'),
(51, 4, 159, NULL, '2021-05-04', NULL, '2021-05-04 16:31:56', '2021-05-04 16:31:56'),
(52, 4, 161, NULL, '2021-05-04', NULL, '2021-05-04 16:32:16', '2021-05-04 16:32:16'),
(53, 4, 162, NULL, '2021-05-04', NULL, '2021-05-04 16:32:38', '2021-05-04 16:32:38'),
(54, 4, 163, NULL, '2021-05-04', NULL, '2021-05-04 16:33:00', '2021-05-04 16:33:00'),
(55, 4, 164, NULL, '2021-05-04', NULL, '2021-05-04 16:33:21', '2021-05-04 16:33:21'),
(56, 4, 166, NULL, '2021-05-04', NULL, '2021-05-04 16:33:42', '2021-05-04 16:33:42'),
(57, 4, 168, NULL, '2021-05-04', NULL, '2021-05-04 16:33:59', '2021-05-04 16:33:59'),
(58, 4, 170, NULL, '2021-05-04', NULL, '2021-05-04 16:34:31', '2021-05-04 16:34:31'),
(59, 4, 171, NULL, '2021-05-04', NULL, '2021-05-04 16:34:40', '2021-05-04 16:34:40'),
(60, 4, 177, NULL, '2021-05-04', NULL, '2021-05-04 16:35:06', '2021-05-04 16:35:06'),
(61, 4, 179, NULL, '2021-05-04', NULL, '2021-05-04 16:35:17', '2021-05-04 16:35:17'),
(62, 4, 181, NULL, '2021-05-04', NULL, '2021-05-04 16:35:35', '2021-05-04 16:35:35'),
(63, 4, 182, NULL, '2021-05-04', NULL, '2021-05-04 16:35:51', '2021-05-04 16:35:51'),
(64, 4, 323, NULL, '2021-05-04', NULL, '2021-05-04 16:36:07', '2021-05-04 16:36:07'),
(65, 4, 326, NULL, '2021-05-04', NULL, '2021-05-04 16:36:19', '2021-05-04 16:36:19'),
(66, 4, 330, NULL, '2021-05-04', NULL, '2021-05-04 16:37:03', '2021-05-04 16:37:03'),
(67, 13, 90, NULL, '2021-05-04', NULL, '2021-05-04 16:37:56', '2021-05-04 16:37:56'),
(68, 4, 92, NULL, '2021-05-04', NULL, '2021-05-04 16:38:07', '2021-05-04 16:38:07'),
(69, 4, 94, NULL, '2021-05-04', NULL, '2021-05-04 16:38:26', '2021-05-04 16:38:26'),
(71, 4, 95, NULL, '2021-05-04', NULL, '2021-05-04 16:38:44', '2021-05-04 16:38:44'),
(72, 4, 97, NULL, '2021-05-04', NULL, '2021-05-04 16:38:55', '2021-05-04 16:38:55'),
(74, 4, 105, NULL, '2021-05-04', NULL, '2021-05-04 16:39:17', '2021-05-04 16:39:17'),
(75, 4, 107, NULL, '2021-05-04', NULL, '2021-05-04 16:39:25', '2021-05-04 16:39:25'),
(76, 4, 109, NULL, '2021-05-04', NULL, '2021-05-04 16:39:37', '2021-05-04 16:39:37'),
(77, 4, 111, NULL, '2021-05-04', NULL, '2021-05-04 16:39:49', '2021-05-04 16:39:49'),
(78, 4, 112, NULL, '2021-05-04', NULL, '2021-05-04 16:40:00', '2021-05-04 16:40:00'),
(83, 12, 201, '5', '2021-05-05', 'OK', '2021-05-05 06:43:20', '2021-05-05 06:43:20'),
(84, 12, 209, '4', '2021-05-05', 'OK', '2021-05-05 06:44:09', '2021-05-05 06:44:09'),
(85, 12, 213, '4', '2021-05-05', 'Ok', '2021-05-05 06:45:05', '2021-05-05 06:45:05'),
(86, 12, 220, '5', '2021-05-05', 'Ok', '2021-05-05 07:03:38', '2021-05-05 07:03:38'),
(87, 12, 241, '3', '2021-05-05', 'Ok', '2021-05-05 07:15:34', '2021-05-05 07:15:34'),
(88, 12, 242, '4', '2021-05-05', 'ok', '2021-05-05 07:16:19', '2021-05-05 07:16:19'),
(89, 12, 4, '8', '2021-05-05', 'En cours', '2021-05-05 07:50:27', '2021-05-05 07:50:27'),
(90, 12, 343, '4', '2021-05-05', 'En cours', '2021-05-05 15:20:48', '2021-05-05 15:20:48'),
(91, 12, 343, '4', '2021-05-05', 'En cours', '2021-05-05 15:21:27', '2021-05-05 15:21:27'),
(92, 12, 343, '3', '2021-05-05', NULL, '2021-05-05 15:27:47', '2021-05-05 15:27:47'),
(93, 12, 236, NULL, '2021-05-07', NULL, '2021-05-07 15:22:49', '2021-05-07 15:22:49'),
(94, 12, 236, NULL, '2021-05-07', NULL, '2021-05-07 15:22:50', '2021-05-07 15:22:50'),
(95, 12, 236, NULL, '2021-05-07', NULL, '2021-05-07 15:22:50', '2021-05-07 15:22:50'),
(96, 12, 236, NULL, '2021-05-07', NULL, '2021-05-07 15:22:50', '2021-05-07 15:22:50'),
(97, 12, 236, NULL, '2021-05-07', NULL, '2021-05-07 15:22:50', '2021-05-07 15:22:50'),
(98, 13, 102, NULL, '2021-05-07', NULL, '2021-05-07 15:23:59', '2021-05-07 15:23:59'),
(99, 13, 114, NULL, '2021-05-07', NULL, '2021-05-07 15:24:23', '2021-05-07 15:24:23'),
(100, 13, 121, NULL, '2021-05-07', NULL, '2021-05-07 15:24:48', '2021-05-07 15:24:48'),
(101, 12, 355, NULL, '2021-05-07', NULL, '2021-05-07 15:33:14', '2021-05-07 15:33:14'),
(102, 12, 4, NULL, '2021-05-07', NULL, '2021-05-07 15:33:41', '2021-05-07 15:33:41'),
(103, 12, 343, NULL, '2021-05-07', NULL, '2021-05-07 15:36:22', '2021-05-07 15:36:22'),
(104, 14, 347, NULL, '2021-05-07', NULL, '2021-05-07 15:36:45', '2021-05-07 15:36:45'),
(105, 12, 350, NULL, '2021-05-07', NULL, '2021-05-07 15:38:29', '2021-05-07 15:38:29'),
(108, 15, 282, NULL, '2021-05-07', NULL, '2021-05-07 15:53:58', '2021-05-07 15:53:58'),
(110, 12, 308, NULL, '2021-05-07', NULL, '2021-05-07 15:56:32', '2021-05-07 15:56:32'),
(111, 12, 321, NULL, '2021-05-07', NULL, '2021-05-07 15:57:25', '2021-05-07 15:57:25'),
(112, 12, 315, NULL, '2021-05-07', NULL, '2021-05-07 15:57:40', '2021-05-07 15:57:40'),
(113, 12, 325, NULL, '2021-05-07', NULL, '2021-05-07 15:58:30', '2021-05-07 15:58:30'),
(114, 13, 102, NULL, '2021-05-07', NULL, '2021-05-07 16:00:06', '2021-05-07 16:00:06'),
(115, 12, 278, NULL, '2021-05-07', NULL, '2021-05-07 16:03:38', '2021-05-07 16:03:38'),
(116, 12, 71, NULL, '2021-05-07', NULL, '2021-05-07 16:04:37', '2021-05-07 16:04:37'),
(117, 12, 74, NULL, '2021-05-07', NULL, '2021-05-07 16:04:59', '2021-05-07 16:04:59'),
(118, 12, 91, NULL, '2021-05-07', NULL, '2021-05-07 16:05:20', '2021-05-07 16:05:20'),
(120, 10, 185, NULL, '2021-05-07', NULL, '2021-05-07 16:20:23', '2021-05-07 16:20:23'),
(121, 10, 187, NULL, '2021-05-07', NULL, '2021-05-07 16:20:55', '2021-05-07 16:20:55'),
(122, 10, 189, NULL, '2021-05-07', NULL, '2021-05-07 16:21:23', '2021-05-07 16:21:23'),
(123, 10, 188, NULL, '2021-05-07', NULL, '2021-05-07 16:21:38', '2021-05-07 16:21:38'),
(124, 10, 310, NULL, '2021-05-07', NULL, '2021-05-07 16:22:19', '2021-05-07 16:22:19'),
(125, 10, 312, NULL, '2021-05-07', NULL, '2021-05-07 16:22:44', '2021-05-07 16:22:44'),
(126, 10, 313, NULL, '2021-05-07', NULL, '2021-05-07 16:23:02', '2021-05-07 16:23:02'),
(127, 10, 361, NULL, '2021-05-07', NULL, '2021-05-07 16:23:23', '2021-05-07 16:23:23'),
(128, 10, 314, NULL, '2021-05-07', NULL, '2021-05-07 16:23:40', '2021-05-07 16:23:40'),
(129, 10, 365, NULL, '2021-05-07', NULL, '2021-05-07 16:23:54', '2021-05-07 16:23:54'),
(130, 10, 309, NULL, '2021-05-07', NULL, '2021-05-07 16:24:27', '2021-05-07 16:24:27'),
(131, 15, 373, NULL, '2021-05-07', NULL, '2021-05-07 17:07:56', '2021-05-07 17:07:56'),
(132, 12, 375, NULL, '2021-05-08', NULL, '2021-05-08 12:02:04', '2021-05-08 12:02:04'),
(133, 12, 363, NULL, '2021-05-08', NULL, '2021-05-08 12:02:43', '2021-05-08 12:02:43'),
(134, 12, 381, NULL, '2021-05-08', NULL, '2021-05-08 12:05:43', '2021-05-08 12:05:43'),
(143, 14, 61, NULL, '2021-05-08', NULL, '2021-05-08 13:26:46', '2021-05-08 13:26:46'),
(144, 14, 62, NULL, '2021-05-08', NULL, '2021-05-08 13:27:10', '2021-05-08 13:27:10'),
(145, 14, 63, NULL, '2021-05-08', NULL, '2021-05-08 13:27:35', '2021-05-08 13:27:35'),
(146, 14, 65, NULL, '2021-05-08', NULL, '2021-05-08 13:27:51', '2021-05-08 13:27:51'),
(147, 15, 386, NULL, '2021-05-08', NULL, '2021-05-08 13:53:56', '2021-05-08 13:53:56'),
(148, 14, 58, NULL, '2021-05-08', NULL, '2021-05-08 13:54:34', '2021-05-08 13:54:34'),
(149, 14, 393, NULL, '2021-05-08', NULL, '2021-05-08 13:55:01', '2021-05-08 13:55:01'),
(150, 12, 385, NULL, '2021-05-10', NULL, '2021-05-10 06:57:32', '2021-05-10 06:57:32'),
(151, 13, 398, NULL, '2021-05-10', NULL, '2021-05-10 13:59:59', '2021-05-10 13:59:59'),
(152, 13, 397, NULL, '2021-05-10', NULL, '2021-05-10 14:03:28', '2021-05-10 14:03:28'),
(153, 13, 123, NULL, '2021-05-10', NULL, '2021-05-10 14:03:38', '2021-05-10 14:03:38'),
(154, 13, 400, NULL, '2021-05-10', NULL, '2021-05-10 14:04:24', '2021-05-10 14:04:24'),
(155, 13, 401, NULL, '2021-05-10', NULL, '2021-05-10 14:06:56', '2021-05-10 14:06:56'),
(156, 13, 407, NULL, '2021-05-10', NULL, '2021-05-10 14:16:39', '2021-05-10 14:16:39'),
(157, 13, 406, NULL, '2021-05-10', NULL, '2021-05-10 14:16:58', '2021-05-10 14:16:58'),
(158, 13, 411, NULL, '2021-05-10', NULL, '2021-05-10 14:34:57', '2021-05-10 14:34:57'),
(159, 13, 412, NULL, '2021-05-10', NULL, '2021-05-10 14:35:04', '2021-05-10 14:35:04'),
(160, 13, 413, NULL, '2021-05-10', NULL, '2021-05-10 14:35:14', '2021-05-10 14:35:14'),
(161, 4, 415, NULL, '2021-05-10', NULL, '2021-05-10 15:41:37', '2021-05-10 15:41:37'),
(162, 9, 416, NULL, '2021-05-10', NULL, '2021-05-10 15:41:52', '2021-05-10 15:41:52'),
(163, 13, 414, NULL, '2021-05-11', NULL, '2021-05-11 14:53:33', '2021-05-11 14:53:33'),
(164, 13, 423, NULL, '2021-05-11', NULL, '2021-05-11 14:54:20', '2021-05-11 14:54:20'),
(165, 12, 342, NULL, '2021-05-14', NULL, '2021-05-14 13:27:51', '2021-05-14 13:27:51'),
(166, 12, 343, NULL, '2021-05-14', NULL, '2021-05-14 13:28:10', '2021-05-14 13:28:10'),
(167, 12, 349, NULL, '2021-05-14', NULL, '2021-05-14 13:28:38', '2021-05-14 13:28:38'),
(168, 12, 362, NULL, '2021-05-14', NULL, '2021-05-14 13:29:12', '2021-05-14 13:29:12'),
(169, 15, 76, NULL, '2021-05-15', NULL, '2021-05-15 09:40:40', '2021-05-15 09:40:40'),
(170, 12, 74, NULL, '2021-05-15', NULL, '2021-05-15 09:40:55', '2021-05-15 09:40:55'),
(171, 12, 74, NULL, '2021-05-15', NULL, '2021-05-15 09:41:17', '2021-05-15 09:41:17'),
(172, 15, 76, NULL, '2021-05-15', NULL, '2021-05-15 09:41:31', '2021-05-15 09:41:31'),
(173, 4, 93, NULL, '2021-05-15', NULL, '2021-05-15 09:41:45', '2021-05-15 09:41:45'),
(174, 8, 175, NULL, '2021-05-15', NULL, '2021-05-15 09:42:43', '2021-05-15 09:42:43'),
(175, 4, 103, NULL, '2021-05-15', NULL, '2021-05-15 09:43:12', '2021-05-15 09:43:12'),
(176, 4, 73, NULL, '2021-05-15', NULL, '2021-05-15 09:43:35', '2021-05-15 09:43:35'),
(177, 14, 153, NULL, '2021-05-15', NULL, '2021-05-15 09:44:02', '2021-05-15 09:44:02'),
(178, 14, 110, NULL, '2021-05-15', NULL, '2021-05-15 09:44:24', '2021-05-15 09:44:24'),
(179, 14, 172, NULL, '2021-05-15', NULL, '2021-05-15 09:44:59', '2021-05-15 09:44:59'),
(180, 5, 173, NULL, '2021-05-15', NULL, '2021-05-15 09:45:34', '2021-05-15 09:45:34'),
(181, 8, 341, NULL, '2021-05-15', NULL, '2021-05-15 09:46:03', '2021-05-15 09:46:03'),
(182, 14, 436, NULL, '2021-05-15', NULL, '2021-05-15 09:49:12', '2021-05-15 09:49:12'),
(183, 14, 441, NULL, '2021-05-15', NULL, '2021-05-15 09:57:36', '2021-05-15 09:57:36'),
(184, 14, 442, NULL, '2021-05-15', NULL, '2021-05-15 10:03:55', '2021-05-15 10:03:55'),
(186, 14, 70, NULL, '2021-05-20', NULL, '2021-05-20 12:57:06', '2021-05-20 12:57:06'),
(187, 14, 68, NULL, '2021-05-20', NULL, '2021-05-20 12:58:42', '2021-05-20 12:58:42'),
(188, 12, 278, NULL, '2021-05-20', NULL, '2021-05-20 13:10:43', '2021-05-20 13:10:43'),
(189, 9, 505, NULL, '2021-05-26', NULL, '2021-05-26 14:00:10', '2021-05-26 14:00:10'),
(190, 4, 509, NULL, '2021-05-27', NULL, '2021-05-27 08:48:51', '2021-05-27 08:48:51'),
(191, 4, 498, NULL, '2021-05-27', NULL, '2021-05-27 08:49:08', '2021-05-27 08:49:08'),
(192, 4, 509, NULL, '2021-05-27', NULL, '2021-05-27 08:49:21', '2021-05-27 08:49:21'),
(193, 4, 510, NULL, '2021-05-27', NULL, '2021-05-27 08:53:36', '2021-05-27 08:53:36'),
(194, 4, 314, NULL, '2021-05-27', NULL, '2021-05-27 13:08:20', '2021-05-27 13:08:20'),
(195, 10, 459, NULL, '2021-05-27', NULL, '2021-05-27 13:09:09', '2021-05-27 13:09:09'),
(196, 10, 484, NULL, '2021-05-27', NULL, '2021-05-27 13:09:44', '2021-05-27 13:09:44'),
(197, 10, 6, NULL, '2021-05-27', NULL, '2021-05-27 13:10:05', '2021-05-27 13:10:05'),
(198, 9, 505, NULL, '2021-05-27', NULL, '2021-05-27 15:21:31', '2021-05-27 15:21:31'),
(199, 9, 517, NULL, '2021-05-27', NULL, '2021-05-27 15:23:05', '2021-05-27 15:23:05'),
(200, 10, 536, NULL, '2021-06-09', NULL, '2021-06-09 15:08:05', '2021-06-09 15:08:05'),
(201, 14, 537, NULL, '2021-06-09', NULL, '2021-06-09 16:41:53', '2021-06-09 16:41:53'),
(202, 14, 538, NULL, '2021-06-09', NULL, '2021-06-09 16:47:03', '2021-06-09 16:47:03'),
(203, 14, 539, NULL, '2021-06-09', NULL, '2021-06-09 16:53:32', '2021-06-09 16:53:32'),
(204, 14, 540, NULL, '2021-06-09', NULL, '2021-06-09 16:59:36', '2021-06-09 16:59:36'),
(205, 14, 541, NULL, '2021-06-09', NULL, '2021-06-09 17:04:08', '2021-06-09 17:04:08'),
(206, 14, 543, NULL, '2021-06-09', NULL, '2021-06-09 17:16:45', '2021-06-09 17:16:45'),
(207, 14, 542, NULL, '2021-06-09', NULL, '2021-06-09 17:24:54', '2021-06-09 17:24:54'),
(208, 14, 544, NULL, '2021-06-09', NULL, '2021-06-09 17:25:22', '2021-06-09 17:25:22'),
(209, 14, 545, NULL, '2021-06-09', NULL, '2021-06-09 17:29:57', '2021-06-09 17:29:57'),
(210, 14, 546, NULL, '2021-06-09', NULL, '2021-06-09 17:37:59', '2021-06-09 17:37:59'),
(211, 14, 547, NULL, '2021-06-09', NULL, '2021-06-09 17:40:45', '2021-06-09 17:40:45'),
(212, 14, 548, NULL, '2021-06-09', NULL, '2021-06-09 17:44:32', '2021-06-09 17:44:32'),
(213, 9, 585, NULL, '2021-07-02', NULL, '2021-07-02 14:03:49', '2021-07-02 14:03:49'),
(214, 2, 601, NULL, '2021-09-17', NULL, '2021-09-17 12:32:38', '2021-09-17 12:32:38'),
(215, 29, 6, NULL, '2022-04-06', NULL, '2022-04-06 16:40:36', '2022-04-06 16:40:36'),
(216, 13, 10, NULL, '2022-04-06', NULL, '2022-04-06 16:40:45', '2022-04-06 16:40:45'),
(217, 13, 12, NULL, '2022-04-06', NULL, '2022-04-06 16:41:05', '2022-04-06 16:41:05');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id_projet` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_client` int(10) UNSIGNED DEFAULT NULL,
  `id_sponsor` int(11) DEFAULT NULL,
  `nom_projet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `etat` int(11) NOT NULL COMMENT '0 = encours, 1 = retard, 2 = terminer',
  `heure_total` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fichier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fichier_validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_projet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_projet` int(11) NOT NULL COMMENT '0 = nonvalide, 1 = valide',
  `archiver_projet` int(2) DEFAULT NULL,
  `cree_par` int(11) DEFAULT NULL,
  `reference_projet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id_projet`, `user_id`, `id_client`, `id_sponsor`, `nom_projet`, `date_debut`, `date_fin`, `etat`, `heure_total`, `description`, `fichier`, `fichier_validation`, `type_projet`, `validation_projet`, `archiver_projet`, `cree_par`, `reference_projet`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 1, 'ezdez', '2021-11-19', '2021-12-16', 0, 248, '<p>eze</p>', '[\"cote-divoire-colocation-datasheet-FA.pdf\"]', NULL, 'PROJET', 1, 0, 2, 'PR-1-11192021EZ', 1, '2021-11-19 09:27:20', '2022-04-05 17:04:12'),
(2, 2, 0, 1, 'Testing', '2021-12-30', '2022-01-27', 0, 168, '<p>sd,e;ds</p>', '[\"Sans titre.png\"]', NULL, 'PROJET', 0, 0, 2, 'PR-2-12292021TE', 1, '2021-12-29 16:56:06', '2022-04-05 17:01:36'),
(3, 2, 0, 3, 'klqsd', '2022-04-18', '2022-04-22', 0, 40, '<p>poesklsd</p>', '[\"CONTENU METIER.pptm\"]', NULL, 'PROJET', 0, 0, 2, 'PR-3-472022KL', 1, '2022-04-07 14:35:41', '2022-04-07 14:35:41'),
(4, 2, 0, 3, 'Test du jeudi', '2022-04-11', '2022-04-28', 0, 112, '<p>sqbn</p>', '[\"Eloquent.txt\"]', NULL, 'PROJET', 0, 0, 2, 'PR-4-472022TE', 1, '2022-04-07 14:38:20', '2022-04-07 14:38:20'),
(5, 2, 0, 3, 'test du vendredi', '2022-04-11', '2022-04-29', 0, 120, '<p>sqjhsd</p>', '[\"Etat d\'avancement projet.docx\"]', NULL, 'PROJET', 0, 0, 2, 'PR-5-472022TE', 1, '2022-04-07 14:40:00', '2022-04-07 14:40:00'),
(6, 2, 0, 3, 'cxhbjxhc', '2022-04-11', '2022-04-22', 0, 80, '<p>sdjkn</p>', '[\"commandelaravel.txt\"]', NULL, 'PROJET', 0, 0, 2, 'PR-6-472022CX', 1, '2022-04-07 14:49:25', '2022-04-07 14:49:25'),
(7, 2, 0, 3, 'sdkjbds', '2022-04-19', '2022-04-28', 0, 64, '<p>jkbjbjds</p>', '[\"Eloquent.txt\"]', NULL, 'PROJET', 0, 0, 2, 'PR-7-472022SD', 1, '2022-04-07 14:50:20', '2022-04-07 14:50:20'),
(8, 2, 0, 3, 'Ski', '2022-04-07', '2022-04-21', 0, 88, '<p>sdds</p>', '[\"Eloquent.txt\"]', NULL, 'PROJET', 0, 0, 2, 'PR-8-472022SK', 1, '2022-04-07 14:52:50', '2022-04-07 14:52:50'),
(9, 2, 0, 3, 'zejkez', '2022-04-11', '2022-04-21', 0, 72, '<p>lilip</p>', '[\"BIBLIOTHEQUE AROA ORIGINAL.csv\"]', NULL, 'PROJET', 0, 0, 2, 'PR-9-472022ZE', 1, '2022-04-07 14:55:54', '2022-04-07 14:55:54'),
(10, 2, 0, 3, ',n bkjlklkllklk', '2022-04-11', '2022-04-22', 0, 80, '<p>edkjbdskj</p>', '[\"Eloquent.txt\"]', NULL, 'PROJET', 0, 0, 2, 'PR-10-472022,N', 1, '2022-04-07 14:58:18', '2022-04-07 14:58:18');

-- --------------------------------------------------------

--
-- Structure de la table `projet_validations`
--

CREATE TABLE `projet_validations` (
  `id_projetvalidation` bigint(20) UNSIGNED NOT NULL,
  `id_projet` bigint(20) UNSIGNED NOT NULL,
  `fichier_validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `receveur_tickets`
--

CREATE TABLE `receveur_tickets` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_ticket` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `receveur_tickets`
--

INSERT INTO `receveur_tickets` (`user_id`, `id_ticket`, `created_at`, `updated_at`) VALUES
(10, 1, '2021-09-21 11:32:09', '2021-09-21 11:32:53'),
(13, 2, '2021-09-21 11:56:50', '2021-09-21 11:56:50'),
(2, 3, '2021-09-21 13:24:38', '2021-09-21 13:24:38'),
(2, 4, '2021-09-21 13:47:33', '2021-09-21 13:47:33'),
(2, 5, '2021-09-21 13:54:39', '2021-09-21 13:54:39');

-- --------------------------------------------------------

--
-- Structure de la table `respos`
--

CREATE TABLE `respos` (
  `id_respo` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `respos`
--

INSERT INTO `respos` (`id_respo`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2021-04-29 09:08:06', '2021-04-29 09:08:06'),
(2, 5, '2021-04-29 09:10:37', '2021-04-29 09:10:37'),
(3, 6, '2021-04-29 09:12:37', '2021-04-29 09:12:37'),
(5, 8, '2021-04-29 09:19:09', '2021-04-29 09:19:09'),
(6, 14, '2021-04-29 09:35:58', '2021-04-29 09:35:58'),
(7, 16, '2021-05-07 17:08:06', '2021-05-07 17:08:06'),
(8, 2, NULL, NULL),
(13, 42, '2022-04-06 17:02:35', '2022-04-06 17:02:35');

-- --------------------------------------------------------

--
-- Structure de la table `respos_services`
--

CREATE TABLE `respos_services` (
  `id_respo` bigint(20) UNSIGNED NOT NULL,
  `id_service` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `respos_services`
--

INSERT INTO `respos_services` (`id_respo`, `id_service`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(2, 4, NULL, NULL),
(3, 5, NULL, NULL),
(5, 3, NULL, NULL),
(5, 7, NULL, NULL),
(6, 6, NULL, NULL),
(7, 3, NULL, NULL),
(7, 7, NULL, NULL),
(8, 2, NULL, NULL),
(13, 6, '2022-04-06 17:02:35', '2022-04-06 17:02:35');

-- --------------------------------------------------------

--
-- Structure de la table `reunions`
--

CREATE TABLE `reunions` (
  `id_reunion` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motif` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date DEFAULT NULL,
  `recurrence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heure_debut` time DEFAULT NULL,
  `heure_fin` time DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = encours, 1 = accepter, 2=refuser',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reunions`
--

INSERT INTO `reunions` (`id_reunion`, `user_id`, `name`, `motif`, `start_time`, `end_time`, `recurrence`, `heure_debut`, `heure_fin`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Demande de sall', 'ok', '2021-11-02', '2021-11-02', NULL, '11:00:00', '11:30:00', 1, '2021-09-23 16:02:35', '2021-09-27 16:01:31'),
(2, 2, 'sdhjb zjahbiuaz', 'merci', '2021-11-02', '2021-11-02', NULL, '20:00:00', '20:30:00', 1, '2021-09-23 16:14:53', '2021-09-27 15:09:09'),
(3, 2, 'Bien', 'efjknbdfkjs jezfnizef izehozef', '2021-11-02', '2021-11-02', NULL, '17:48:29', '22:48:29', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admins', 'admins', '2021-04-19 10:29:24', '2021-04-19 10:29:24'),
(2, 'Users', 'users', '2021-04-29 09:02:31', '2021-04-29 09:02:31'),
(3, 'Rh', 'rh', '2021-04-29 09:03:15', '2021-04-29 09:03:15'),
(7, 'new', 'new', '2021-09-10 10:54:45', '2021-09-10 10:54:45'),
(8, 'new', 'new', '2021-09-10 11:02:31', '2021-09-10 11:02:31');

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(3, 39),
(3, 40);

-- --------------------------------------------------------

--
-- Structure de la table `role_foncs`
--

CREATE TABLE `role_foncs` (
  `id_rolefonc` bigint(20) UNSIGNED NOT NULL,
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `id_fonc` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_foncs`
--

INSERT INTO `role_foncs` (`id_rolefonc`, `id_role`, `id_fonc`, `created_at`, `updated_at`) VALUES
(46, 3, 1, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(47, 3, 5, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(48, 3, 6, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(49, 3, 7, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(50, 3, 10, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(51, 3, 11, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(52, 3, 12, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(53, 3, 13, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(54, 3, 34, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(55, 3, 35, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(56, 3, 36, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(57, 3, 37, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(58, 3, 38, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(59, 3, 39, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(60, 3, 40, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(61, 3, 41, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(62, 3, 42, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(63, 3, 43, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(64, 3, 44, '2021-09-13 12:13:51', '2021-09-13 12:13:51'),
(77, 4, 1, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(78, 4, 34, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(79, 4, 35, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(80, 4, 36, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(81, 4, 37, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(82, 4, 38, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(83, 4, 39, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(84, 4, 40, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(85, 4, 41, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(86, 4, 42, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(87, 4, 43, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(88, 4, 44, '2021-09-14 12:01:44', '2021-09-14 12:01:44'),
(759, 2, 1, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(760, 2, 2, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(761, 2, 3, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(762, 2, 4, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(763, 2, 5, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(764, 2, 6, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(765, 2, 7, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(766, 2, 8, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(767, 2, 9, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(768, 2, 10, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(769, 2, 11, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(770, 2, 12, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(771, 2, 13, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(772, 2, 14, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(773, 2, 15, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(774, 2, 16, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(775, 2, 17, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(776, 2, 18, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(777, 2, 19, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(778, 2, 20, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(779, 2, 21, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(780, 2, 22, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(781, 2, 23, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(782, 2, 24, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(783, 2, 25, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(784, 2, 26, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(785, 2, 27, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(786, 2, 28, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(787, 2, 29, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(788, 2, 30, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(789, 2, 31, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(790, 2, 32, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(791, 2, 33, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(792, 2, 34, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(793, 2, 35, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(794, 2, 36, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(795, 2, 37, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(796, 2, 38, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(797, 2, 39, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(798, 2, 40, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(799, 2, 41, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(800, 2, 42, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(801, 2, 43, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(802, 2, 44, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(803, 2, 45, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(804, 2, 46, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(805, 2, 47, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(806, 2, 48, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(807, 2, 49, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(808, 2, 50, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(809, 2, 51, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(810, 2, 52, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(811, 2, 53, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(812, 2, 54, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(813, 2, 55, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(814, 2, 56, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(815, 2, 57, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(816, 2, 58, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(817, 2, 59, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(818, 2, 60, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(819, 2, 62, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(820, 2, 63, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(821, 2, 64, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(822, 2, 65, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(823, 2, 66, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(824, 2, 67, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(825, 2, 68, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(826, 2, 69, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(827, 2, 70, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(828, 2, 71, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(829, 2, 72, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(830, 2, 73, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(831, 2, 74, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(832, 2, 75, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(833, 2, 76, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(834, 2, 77, '2021-09-20 14:28:55', '2021-09-20 14:28:55'),
(1129, 5, 1, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1130, 5, 5, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1131, 5, 6, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1132, 5, 7, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1133, 5, 8, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1134, 5, 9, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1135, 5, 10, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1136, 5, 11, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1137, 5, 12, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1138, 5, 13, '2021-10-05 14:07:09', '2021-10-05 14:07:09'),
(1139, 6, 1, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1140, 6, 5, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1141, 6, 6, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1142, 6, 7, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1143, 6, 8, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1144, 6, 9, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1145, 6, 10, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1146, 6, 11, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1147, 6, 12, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1148, 6, 13, '2021-10-05 14:23:36', '2021-10-05 14:23:36'),
(1149, 7, 1, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1150, 7, 5, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1151, 7, 6, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1152, 7, 7, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1153, 7, 8, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1154, 7, 9, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1155, 7, 10, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1156, 7, 11, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1157, 7, 12, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1158, 7, 13, '2021-10-05 15:05:37', '2021-10-05 15:05:37'),
(1159, 8, 1, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1160, 8, 5, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1161, 8, 6, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1162, 8, 7, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1163, 8, 8, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1164, 8, 9, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1165, 8, 10, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1166, 8, 11, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1167, 8, 12, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1168, 8, 13, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(1169, 9, 1, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(1170, 9, 5, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(1171, 9, 6, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(1172, 9, 8, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(1173, 9, 9, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(1174, 9, 11, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(1226, 1, 1, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1227, 1, 2, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1228, 1, 3, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1229, 1, 4, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1230, 1, 5, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1231, 1, 6, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1232, 1, 7, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1233, 1, 8, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1234, 1, 9, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1235, 1, 10, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1236, 1, 11, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1237, 1, 12, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1238, 1, 13, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1239, 1, 14, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1240, 1, 15, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1241, 1, 16, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1242, 1, 17, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1243, 1, 18, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1244, 1, 19, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1245, 1, 20, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1246, 1, 21, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1247, 1, 22, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1248, 1, 23, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1249, 1, 24, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1250, 1, 25, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1251, 1, 26, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1252, 1, 27, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1253, 1, 28, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1254, 1, 29, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1255, 1, 30, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1256, 1, 31, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1257, 1, 32, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1258, 1, 33, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1259, 1, 34, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1260, 1, 35, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1261, 1, 36, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1262, 1, 37, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1263, 1, 38, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1264, 1, 39, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1265, 1, 40, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1266, 1, 41, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1267, 1, 42, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1268, 1, 43, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1269, 1, 44, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1270, 1, 45, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1271, 1, 46, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1272, 1, 47, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1273, 1, 48, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1274, 1, 50, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1275, 1, 51, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1276, 1, 52, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1277, 1, 53, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1278, 1, 79, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1279, 1, 80, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1280, 1, 81, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1281, 1, 82, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1282, 1, 83, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1283, 1, 84, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1284, 1, 85, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1285, 1, 86, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1286, 1, 87, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1287, 1, 89, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1288, 1, 90, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1289, 1, 91, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1290, 1, 54, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1291, 1, 55, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1292, 1, 56, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1293, 1, 57, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1294, 1, 58, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1295, 1, 59, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1296, 1, 60, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1297, 1, 61, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1298, 1, 62, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1299, 1, 63, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1300, 1, 64, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1301, 1, 65, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1302, 1, 66, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1303, 1, 67, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1304, 1, 68, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1305, 1, 69, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1306, 1, 70, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1307, 1, 71, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1308, 1, 72, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1309, 1, 73, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1310, 1, 74, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1311, 1, 75, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1312, 1, 76, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1313, 1, 77, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1314, 1, 78, '2021-10-07 12:24:18', '2021-10-07 12:24:18'),
(1315, 10, 1, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1316, 10, 2, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1317, 10, 103, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1318, 10, 54, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1319, 10, 55, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1320, 10, 56, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1321, 10, 57, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1322, 10, 58, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1323, 10, 59, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1324, 10, 60, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1325, 10, 61, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1326, 10, 62, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1327, 10, 63, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1328, 10, 64, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1329, 10, 65, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1330, 10, 66, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1331, 10, 67, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1332, 10, 68, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1333, 10, 69, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1334, 10, 70, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1335, 10, 71, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1336, 10, 72, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1337, 10, 73, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1338, 10, 74, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1339, 10, 75, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1340, 10, 76, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1341, 10, 77, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1342, 10, 78, '2022-04-04 10:25:18', '2022-04-04 10:25:18'),
(1343, 11, 126, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

CREATE TABLE `secteurs` (
  `id_secteur` bigint(20) UNSIGNED NOT NULL,
  `nom_secteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id_secteur`, `nom_secteur`, `created_at`, `updated_at`) VALUES
(1, 'ASSURANCE', NULL, NULL),
(2, 'FINANCE', NULL, NULL),
(3, 'TECHNOLOGIE', NULL, NULL),
(4, 'BANQUE', NULL, NULL),
(5, 'ADMINSITRATION', '2022-04-04 11:04:04', '2022-04-04 11:04:04'),
(6, 'AUTRE', '2022-04-04 11:04:18', '2022-04-04 11:04:18');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id_service` bigint(20) UNSIGNED NOT NULL,
  `nom_service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id_service`, `nom_service`, `id_entreprise`, `created_at`, `updated_at`) VALUES
(1, 'Test', 1, '2021-04-19 10:28:29', '2022-04-05 18:54:03'),
(2, 'IT', 1, '2021-04-29 08:57:44', '2021-04-29 08:57:44'),
(3, 'STRATEGIE', 1, '2021-04-29 08:57:59', '2021-04-29 08:57:59'),
(4, 'MARKETING ET COMMUNICATION', 1, '2021-04-29 09:00:31', '2021-04-29 09:00:31'),
(5, 'RISK MANAGEMENT', 1, '2021-04-29 09:00:51', '2021-04-29 09:00:51'),
(6, 'RH', 1, '2021-04-29 09:01:03', '2021-04-29 09:01:03'),
(7, 'Techniques financières & actuarielles', NULL, '2021-06-04 08:23:56', '2021-06-04 08:23:56'),
(8, 'Musique', 1, '2022-04-05 18:53:53', '2022-04-05 18:53:53');

-- --------------------------------------------------------

--
-- Structure de la table `sponsors`
--

CREATE TABLE `sponsors` (
  `id_sponsor` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type_sponsor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sponsors`
--

INSERT INTO `sponsors` (`id_sponsor`, `user_id`, `type_sponsor`, `created_at`, `updated_at`) VALUES
(1, 8, 'DIRECTEUR', '2021-05-07 15:36:18', '2021-05-07 15:36:18'),
(2, 16, 'DIRECTEUR', '2021-05-07 17:10:16', '2021-05-07 17:10:16'),
(3, 2, 'DIRECTEUR', '2022-04-07 14:27:37', '2022-04-07 14:27:37');

-- --------------------------------------------------------

--
-- Structure de la table `suggestions`
--

CREATE TABLE `suggestions` (
  `id_sug` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `suggestion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_suggestion` date NOT NULL,
  `reponse` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_reponse` date DEFAULT NULL,
  `fichier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `taches`
--

CREATE TABLE `taches` (
  `id_tache` bigint(20) UNSIGNED NOT NULL,
  `id_projet` bigint(20) UNSIGNED NOT NULL,
  `nom_tache` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` int(11) NOT NULL COMMENT '0 = encours, 1 = retard, 2 = terminer',
  `date_debut_tache` date NOT NULL,
  `date_fin_tache` date NOT NULL,
  `progression` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `heure_total_tache` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `taches`
--

INSERT INTO `taches` (`id_tache`, `id_projet`, `nom_tache`, `statut`, `date_debut_tache`, `date_fin_tache`, `progression`, `heure_total_tache`, `created_at`, `updated_at`) VALUES
(1, 1, 'Superviser', 0, '2021-11-19', '2021-12-31', '0', NULL, '2021-11-19 09:27:21', '2021-11-19 09:27:21'),
(2, 1, 'fsdsf', 2, '2021-11-19', '2021-11-26', '0', 48, '2021-11-19 10:28:32', '2022-04-05 12:20:03'),
(3, 1, 'ok', 0, '2021-11-19', '2021-11-26', '0', 48, '2021-11-19 14:01:41', '2021-11-19 14:01:41'),
(4, 1, 'dcds', 1, '2021-11-30', '2021-12-03', '0', 32, '2021-11-19 15:31:04', '2021-12-29 15:17:57'),
(5, 2, 'Superviser', 0, '2021-12-30', '2022-01-27', '0', NULL, '2021-12-29 16:56:06', '2021-12-29 16:56:06'),
(6, 2, 'Test 123', 2, '2022-04-18', '2022-04-27', '40', 64, '2022-04-06 15:38:19', '2022-04-06 16:40:52'),
(7, 2, 'dsjk', 0, '2022-04-11', '2022-04-16', '0', 40, '2022-04-06 15:40:16', '2022-04-06 15:40:16'),
(8, 2, 'sdds', 0, '2022-04-20', '2022-04-30', '0', 64, '2022-04-06 15:40:58', '2022-04-06 15:40:58'),
(9, 2, 'dsfezuezi', 0, '2022-04-18', '2022-04-28', '0', 72, '2022-04-06 15:42:51', '2022-04-06 15:42:51'),
(10, 2, 'sckj', 0, '2022-04-11', '2022-04-28', '80', 112, '2022-04-06 15:43:43', '2022-04-06 16:40:45'),
(11, 2, 'Bien bon merci', 0, '2022-04-11', '2022-04-21', '0', 72, '2022-04-06 15:44:45', '2022-04-06 15:44:45'),
(12, 2, 'd,nsn,dss,nd', 0, '2022-04-06', '2022-04-07', '20', 16, '2022-04-06 15:48:33', '2022-04-06 16:41:05'),
(13, 3, 'Superviser', 0, '2022-04-18', '2022-04-22', '0', NULL, '2022-04-07 14:35:41', '2022-04-07 14:35:41'),
(14, 4, 'Superviser', 0, '2022-04-11', '2022-04-28', '0', NULL, '2022-04-07 14:38:20', '2022-04-07 14:38:20'),
(15, 5, 'Superviser', 0, '2022-04-11', '2022-04-29', '0', NULL, '2022-04-07 14:40:00', '2022-04-07 14:40:00'),
(16, 6, 'Superviser', 0, '2022-04-11', '2022-04-22', '0', NULL, '2022-04-07 14:49:25', '2022-04-07 14:49:25'),
(17, 7, 'Superviser', 0, '2022-04-19', '2022-04-28', '0', NULL, '2022-04-07 14:50:20', '2022-04-07 14:50:20'),
(18, 8, 'Superviser', 0, '2022-04-07', '2022-04-21', '0', NULL, '2022-04-07 14:52:50', '2022-04-07 14:52:50'),
(19, 9, 'Superviser', 0, '2022-04-11', '2022-04-21', '0', NULL, '2022-04-07 14:55:54', '2022-04-07 14:55:54'),
(20, 10, 'Superviser', 0, '2022-04-11', '2022-04-22', '0', NULL, '2022-04-07 14:58:18', '2022-04-07 14:58:18');

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE `tickets` (
  `id_ticket` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `titre_ticket` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_ticket` date NOT NULL,
  `date_resolution` date DEFAULT NULL,
  `priorite` int(11) NOT NULL COMMENT '0 = haute, 1 = moyenne, 2 = basse',
  `status` int(11) NOT NULL COMMENT '0 = encours, 1 = resolus, 2 = fermer',
  `fichier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_ticket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sujet_ticket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tickets`
--

INSERT INTO `tickets` (`id_ticket`, `user_id`, `titre_ticket`, `date_ticket`, `date_resolution`, `priorite`, `status`, `fichier`, `numero_ticket`, `sujet_ticket`, `created_at`, `updated_at`) VALUES
(1, 2, 'Bon alors', '2021-09-21', NULL, 1, 1, '\"{\\\"body\\\":\\\"Notification pour ticket\\\",\\\"priorite\\\":\\\"Moyenne\\\",\\\"titre_ticket\\\":\\\"Bon alors\\\",\\\"sujet_ticket\\\":\\\"ces juste un test\\\",\\\"username\\\":\\\"Akichi\\\",\\\"prename\\\":\\\"Jean-philippe\\\",\\\"civilite\\\":\\\"M.\\\",\\\"sendname\\\":\\\"Admin\\\",\\\"sendprenom\\\":\\\"admin\\', '#TKT-6149c2b9271ed', 'ces juste un test', '2021-09-21 11:32:09', '2021-09-21 11:59:20'),
(2, 2, 'Mardi', '2021-09-21', '2021-09-21', 0, 1, '\"{\\\"body\\\":\\\"Notification pour ticket\\\",\\\"priorite\\\":\\\"Haute\\\",\\\"titre_ticket\\\":\\\"Mardi\\\",\\\"sujet_ticket\\\":\\\"Ajourdhui c\'est mardi\\\",\\\"username\\\":\\\"Akichi\\\",\\\"prename\\\":\\\"Jean-philippe\\\",\\\"civilite\\\":\\\"M.\\\",\\\"sendname\\\":\\\"Admin\\\",\\\"sendprenom\\\":\\\"admin\\\",', '#TKT-6149c8824ebd5', 'Ajourdhui c\'est mardi', '2021-09-21 11:56:50', '2021-09-21 12:06:18'),
(3, 2, 'Bon', '2021-09-21', NULL, 0, 0, '\"{\\\"body\\\":\\\"Notification pour ticket\\\",\\\"priorite\\\":\\\"Haute\\\",\\\"titre_ticket\\\":\\\"Bon\\\",\\\"sujet_ticket\\\":\\\"\\\\\\\"zdjnezk\\\",\\\"username\\\":\\\"Admin\\\",\\\"prename\\\":\\\"admin\\\",\\\"civilite\\\":\\\"M.\\\",\\\"sendname\\\":\\\"Admin\\\",\\\"sendprenom\\\":\\\"admin\\\",\\\"sendcivilite\\\":\\\"M.', '#TKT-6149dd16862ec', '\"zdjnezk', '2021-09-21 13:24:38', '2021-09-21 13:24:38'),
(4, 2, 'test 3', '2021-09-21', '2021-09-21', 2, 2, '\"{\\\"body\\\":\\\"Notification pour ticket\\\",\\\"priorite\\\":\\\"Basse\\\",\\\"titre_ticket\\\":\\\"test 3\\\",\\\"sujet_ticket\\\":\\\"Ces pas du gongonrongon\\\",\\\"username\\\":\\\"Admin\\\",\\\"prename\\\":\\\"admin\\\",\\\"civilite\\\":\\\"M.\\\",\\\"sendname\\\":\\\"Admin\\\",\\\"sendprenom\\\":\\\"admin\\\",\\\"send', '#TKT-6149e2753a981', 'Ces pas du gongonrongon', '2021-09-21 13:47:33', '2021-09-21 16:02:41'),
(5, 10, 'Réunion', '2021-09-21', NULL, 0, 2, '\"{\\\"body\\\":\\\"Notification pour ticket\\\",\\\"priorite\\\":\\\"Haute\\\",\\\"titre_ticket\\\":\\\"R\\\\u00e9union\\\",\\\"sujet_ticket\\\":\\\"R\\\\u00e9union\\\",\\\"username\\\":\\\"Admin\\\",\\\"prename\\\":\\\"admin\\\",\\\"civilite\\\":\\\"M.\\\",\\\"sendname\\\":\\\"DIBY\\\",\\\"sendprenom\\\":\\\"Koffi Innocent-Ker', '#TKT-6149e41f9ed05', 'Réunion', '2021-09-21 13:54:39', '2021-09-21 14:08:23');

-- --------------------------------------------------------

--
-- Structure de la table `timesheets`
--

CREATE TABLE `timesheets` (
  `id_timesheet` bigint(20) UNSIGNED NOT NULL,
  `id_projet` bigint(20) UNSIGNED NOT NULL,
  `id_tache` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_respo` int(10) UNSIGNED DEFAULT NULL,
  `date_timesheet` date DEFAULT NULL,
  `statut` int(11) NOT NULL,
  `validation_timesheet` int(11) NOT NULL DEFAULT 0,
  `heure_timesheet` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `timesheets`
--

INSERT INTO `timesheets` (`id_timesheet`, `id_projet`, `id_tache`, `user_id`, `id_respo`, `date_timesheet`, `statut`, `validation_timesheet`, `heure_timesheet`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 0, '2021-11-29', 1, 0, 2, '2021-11-30 15:49:15', '2021-11-30 15:51:32'),
(2, 1, 2, 13, 0, '2021-11-28', 0, 0, 2, '2021-11-30 15:57:18', '2021-11-30 15:57:18'),
(3, 1, 2, 13, 0, '2021-11-30', 1, 0, 4, '2021-11-30 16:01:27', '2021-11-30 16:01:38'),
(4, 1, 1, 2, 0, '2022-04-03', 0, 0, 2, '2022-04-05 16:06:16', '2022-04-05 16:06:16');

-- --------------------------------------------------------

--
-- Structure de la table `timesheet_demandes`
--

CREATE TABLE `timesheet_demandes` (
  `id_demande` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date_demande` date NOT NULL,
  `date_validation` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `motif` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anniversaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civilite` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actif` int(11) DEFAULT NULL COMMENT '0=actif,1=inactif',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_grade` int(10) UNSIGNED DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `genre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_entreprise` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `prenom`, `phone`, `image`, `poste`, `adresse`, `anniversaire`, `civilite`, `sexe`, `actif`, `email`, `email_verified_at`, `password`, `id_grade`, `id_role`, `genre`, `type_user`, `id_entreprise`, `username`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', '0758650487', 'awesome-feature.png-77440.png', 'Testeur', 'Marcory', '05 juin', 'M.', 'Homme', 0, 'test@gmail.com', NULL, '$2y$10$qlc8yjH7FgCTeRRsrQK/heOYczKVIGjWddmNzF.7ur8llKFnDXCF.', 3, 1, 'Homme', 'SUPERADMIN', 1, 'AKICHI', NULL, '2021-04-19 10:30:46', '2022-04-06 16:57:04'),
(4, 'KANGAH', 'Jean-Mari', '0778256600', 'LOGO BLANC-NOIR-01_1620127032.png', 'responsable IT', 'DEUX PLATEAUX SANON', '21/11', 'M.', 'Homme', 0, 'jeanmari.kangah@aroapartners.com', NULL, '$2y$10$/f2m2hs09WjJQozp/.F4P.T/Wb9IgJU76jUS21RJcu3YzRUDnIdq.', 2, 1, 'Homme', 'USER', NULL, 'JEAN', NULL, '2021-04-29 09:08:06', '2021-09-29 12:07:46'),
(5, 'GBEHE', 'Dedilha', '0779279490', 'DO5I0381_1620489675.jpg', 'Communicatrice', 'Abidjan, Angré', '23/12/1995', 'Mme', 'Femme', 1, 'dedilha.gbehe@aroapartners.com', NULL, '$2y$10$JvIeaZcg8XeWeHDVbQCj2OGhR/cBcbR7ycXlSMWkCM2oUOSIKJLVK', 2, 1, 'Femme', 'USER', NULL, 'PH', NULL, '2021-04-29 09:10:37', '2021-06-01 08:51:29'),
(6, 'Kade', 'Azo flora', NULL, NULL, 'Consultante Risk Management', NULL, NULL, 'Mme', NULL, 1, 'flora.kade@aroapartners.com', NULL, '$2y$10$SHm4dyl5NDdh/74fn2B.3uq752weJsXVqKjalIPBgfWh3k7wMjrG6', 2, 1, 'Femme', NULL, NULL, 'gsjd', NULL, '2021-04-29 09:12:36', '2021-07-02 13:44:14'),
(8, 'Agbe', 'Kodjo', NULL, NULL, 'Associé gérant', NULL, NULL, 'M.', NULL, 0, 'kodjo.agbe@aroapartners.com', NULL, '$2y$10$O5w9DftYt1XxZ7lSLIouHeTY015MjwwVKGLC4ws.KI.ykTty2/W/S', 3, 1, 'Homme', NULL, NULL, 'ds', NULL, '2021-04-29 09:19:08', '2021-04-29 09:53:30'),
(9, 'Kouadio', 'Phinéas', NULL, NULL, 'Développeur d\'application Android', NULL, NULL, 'M.', NULL, 1, 'phineas.kouadio@aroapartners.com', NULL, '$2y$10$lU9nOBpzcAYaDmFySCI9S.f2uoo75wxaJtG7y9IHle7bTBaSYn77e', 2, 1, 'Homme', NULL, NULL, 'sd', NULL, '2021-04-29 09:21:01', '2021-06-10 07:50:02'),
(10, 'DIBY', 'Koffi Innocent-Kericson', '0758084198', 'user.jpg', 'Développeur web', NULL, NULL, 'M.', 'Homme', 0, 'kericson.diby@aroapartners.com', NULL, '$2y$10$kDR/RFAw1gPBAbpRXMBQj.fe8be67aqSN3t2btJXrQUx335IyxlVy', 2, 2, 'Homme', NULL, NULL, 'dsds', NULL, '2021-04-29 09:24:30', '2021-09-20 14:16:50'),
(12, 'DEA', 'N\'Dissan Vatié', '0707062127', 'DO5I0135_1620059581.JPG', 'Assistante de direction', NULL, NULL, 'Mme', 'Femme', 0, 'vatie.dea@aroapartners.com', NULL, '$2y$10$WOlC5NJGIjv.VU5DPl9l2e/Whj5pCmGVm6WZAL5zIwYdWyHzIOtiu', 2, 1, 'Femme', NULL, NULL, 'za', NULL, '2021-04-29 09:28:34', '2021-06-07 08:26:10'),
(13, 'Akichi', 'Jean-philippe', '0758650487', 'DO5I0026_1620752396.JPG', 'Développeur web', 'Marcory résidentiel', '05 juin', 'M.', 'Homme', 0, 'jeanphilippe.akichi@aroapartners.com', NULL, '$2y$10$gtrjEMAc2GF2cNJUCzcMEeIakGrzPFxMuciI.Dn.kr1auhwtNx8ZW', 2, 3, 'Homme', NULL, NULL, 'io', NULL, '2021-04-29 09:30:23', '2021-11-16 09:14:53'),
(14, 'Bogui', 'Vanessa', '0708597179', 'me_1620127846.jpg', 'Rh', 'Bingerville', '26 Janvier', 'Mme', 'Femme', 0, 'vanessa.bogui@aroapartners.com', NULL, '$2y$10$wNF1fAoU3kNhOozO.hT3aueiBmi33nat7jlRSFQF4HawAp4ATxVSC', 2, 1, 'Femme', NULL, NULL, 'dskkmlds', NULL, '2021-04-29 09:35:57', '2021-06-09 08:27:49'),
(15, 'Kouadio', 'Leslie', NULL, NULL, 'Assistante de communication', NULL, NULL, 'Mme', NULL, 0, 'leslie.kouadio@aroapartners.com', NULL, '$2y$10$xCnjCS7TbX3FDJr653wp8.IAq6iSIntxf0ORio64BnR.YN6HIX9eG', 2, 1, 'Femme', NULL, NULL, 'slkds', NULL, '2021-04-29 14:32:30', '2021-04-29 14:32:30'),
(16, 'ODJO', 'Herve', NULL, NULL, 'Associé', NULL, NULL, 'M.', NULL, 0, 'herve.odjo@aroapartners.com', NULL, '$2y$10$DgYCUx6B5yrhCALeFxb2r.ENhxzizjdU5HK2P8wNb6cgMhaeQHJ9y', 3, 1, 'Homme', NULL, NULL, 'sql', NULL, '2021-05-07 17:08:06', '2021-06-07 06:55:28'),
(17, 'COULIBALY', 'Malamba Jonathan', NULL, NULL, 'Actuaire', NULL, NULL, 'M.', NULL, 0, 'jonathan.coulibaly@aroapartners.com', NULL, '$2y$10$e9Co9YCS9ONCtbWad7v9ZOYY3glU6/B2OS/m9pbiEMWd684zOlS.O', 2, 1, 'Homme', NULL, NULL, 'sddsaz', NULL, '2021-06-07 06:58:54', '2021-06-07 06:58:54'),
(29, 'Billy', 'billes', NULL, NULL, 'Dev mob', NULL, NULL, 'M.', NULL, 0, 'billybillesakichi@outlook.fr', NULL, '$2y$10$6rTYWRde8m1gUFuS400MfeXycoSc7efJfjBdvWFx3s8qYFySZ6fNW', 2, 8, 'Homme', NULL, NULL, 'sqqsljk', NULL, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(30, 'Diby', 'Koffi', NULL, NULL, 'Test', NULL, NULL, 'M.', NULL, 0, 'innocentkericson@gmail.com', NULL, '$2y$10$0RT2FxVgB8Ubfm7Az1XvwOzrSL1aWAOL08/dkr.Omwsss.WgoYeRS', 2, 9, 'Homme', NULL, NULL, 'dsdskm', NULL, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(31, 'AROA PARTNERS', NULL, NULL, NULL, 'Administrateur IT', NULL, NULL, 'M.', NULL, 0, 'info@aroapartners.com', NULL, '$2y$10$kmJGvQ2M5Vrpj.dFRXKOZOidhCIV5Uhe94.8gooSM3FruRR8UM0.q', 0, 10, 'Homme', 'ADMIN', NULL, 'sqdsljk', NULL, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(32, 'NSIA ASSURANCE', NULL, NULL, NULL, 'Administrateur IT', NULL, NULL, 'M.', NULL, 0, 'nsia@gmail.com', NULL, '$2y$10$144LcDl97JePofvFwgtXleDigIwUJw/JaCLmMXlLmvWpo0Yj5wSlO', 0, 10, 'Homme', 'ADMIN', NULL, 'sqsq', NULL, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(33, 'NSIA BANQUE', NULL, NULL, NULL, 'Administrateur IT', NULL, NULL, 'M.', NULL, 0, 'nsia1@gmail.com', NULL, '$2y$10$MgBApdcVOoXvc5YUfbv5xOBKtlpDari87ZzheExisVZD1Y./bv1Rq', 0, 10, 'Homme', 'ADMIN', NULL, 'sqslkljqs', NULL, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(38, 'NSIA GROUPE', NULL, NULL, NULL, 'Directeur generale', NULL, NULL, 'M.', NULL, 0, NULL, NULL, '$2y$10$vSuBXpkRQuLZXCks5RJ5ruVNGDqagTESmpTpU98rFmxdeoAibaH8S', 3, 11, 'Homme', 'GROUPE', NULL, 'NSIA GROUPE', NULL, '2022-04-05 10:12:35', '2022-04-05 10:12:35'),
(39, 'François', 'rigobert', NULL, NULL, 'Infographe', NULL, NULL, 'M.', NULL, 0, 'rigibert@xn--franois-xxa.com', NULL, '$2y$10$dcIP6Cp4R9gAwFI/RQ3D7.VZpwt6z7qT69Zt0Lb7y5uBo0gU.9uxO', 2, 4, NULL, 'USER', 1, '', NULL, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(42, 'Koblan', 'denise', NULL, NULL, 'RH', NULL, NULL, 'Mme', NULL, 0, 'denise.koblan@gmail.com', NULL, '$2y$10$X/qq85fuBnD5sNFp6mUsWeGhOu6zbxrM6zpkr.hdZEqqE8PM7EQsG', 2, 4, NULL, 'USER', 1, 'Koblan', NULL, '2022-04-06 17:02:34', '2022-04-06 17:02:34'),
(43, 'kouakou', 'jonas', NULL, NULL, 'Assistant IT', NULL, NULL, 'M.', NULL, 0, 'jonas.kouakou@gmail.com', NULL, '$2y$10$SgbO41xipW/WfqFesnGoFe.aEZPFBgjgMFBPpQEZeWZwqW/w5UB7q', 2, 0, NULL, 'USER', 1, 'kouakou', NULL, '2022-04-06 17:04:25', '2022-04-06 17:04:25');

-- --------------------------------------------------------

--
-- Structure de la table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users_permissions`
--

INSERT INTO `users_permissions` (`user_id`, `permission_id`) VALUES
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(6, 21),
(6, 22),
(6, 23),
(6, 24),
(6, 25),
(6, 26),
(6, 27),
(6, 28),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(8, 15),
(8, 16),
(8, 17),
(8, 18),
(8, 19),
(8, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(12, 21),
(12, 22),
(12, 23),
(12, 24),
(12, 25),
(12, 26),
(12, 27),
(12, 28),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(14, 29),
(14, 30),
(14, 31),
(14, 32),
(14, 33),
(14, 34),
(14, 35),
(14, 36),
(14, 37),
(14, 38),
(14, 39),
(14, 40),
(15, 21),
(15, 22),
(15, 23),
(15, 24),
(15, 25),
(15, 26),
(15, 27),
(15, 28),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(16, 9),
(16, 10),
(16, 11),
(16, 12),
(16, 13),
(16, 14),
(16, 15),
(16, 16),
(16, 17),
(16, 18),
(16, 19),
(16, 20),
(17, 21),
(17, 22),
(17, 23),
(17, 24),
(17, 25),
(17, 26),
(17, 27),
(17, 28);

-- --------------------------------------------------------

--
-- Structure de la table `users_reunions`
--

CREATE TABLE `users_reunions` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_reunion` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users_reunions`
--

INSERT INTO `users_reunions` (`user_id`, `id_reunion`, `created_at`, `updated_at`) VALUES
(13, 1, '2021-09-23 16:02:35', '2021-09-23 16:02:35'),
(10, 1, '2021-09-23 16:02:35', '2021-09-23 16:02:35'),
(2, 2, '2021-09-23 16:14:53', '2021-09-23 16:14:53'),
(13, 2, '2021-09-23 16:14:53', '2021-09-23 16:14:53');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(2, 1),
(4, 1),
(5, 2),
(6, 2),
(8, 1),
(9, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 3),
(15, 2),
(16, 1),
(17, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users_services`
--

CREATE TABLE `users_services` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_service` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users_services`
--

INSERT INTO `users_services` (`user_id`, `id_service`, `created_at`, `updated_at`) VALUES
(9, 2, NULL, NULL),
(10, 2, NULL, NULL),
(12, 3, NULL, NULL),
(13, 2, NULL, NULL),
(15, 4, NULL, NULL),
(17, 7, NULL, NULL),
(29, 2, '2021-10-05 16:27:31', '2021-10-05 16:27:31'),
(30, 2, '2021-10-05 17:10:32', '2021-10-05 17:10:32'),
(39, 4, '2022-04-06 16:56:30', '2022-04-06 16:56:30');

-- --------------------------------------------------------

--
-- Structure de la table `users_taches`
--

CREATE TABLE `users_taches` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_tache` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users_taches`
--

INSERT INTO `users_taches` (`user_id`, `id_tache`, `created_at`, `updated_at`) VALUES
(2, 1, '2021-11-19 09:27:21', '2021-11-19 09:27:21'),
(2, 2, '2021-11-19 10:28:32', '2021-11-19 10:28:32'),
(2, 3, '2021-11-19 14:01:41', '2021-11-19 14:01:41'),
(2, 4, '2021-11-19 15:31:04', '2021-11-19 15:31:04'),
(13, 2, '2021-11-30 15:56:50', '2021-11-30 15:56:50'),
(2, 5, '2021-12-29 16:56:06', '2021-12-29 16:56:06'),
(2, 6, '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(13, 6, '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(29, 6, '2022-04-06 15:38:19', '2022-04-06 15:38:19'),
(2, 7, '2022-04-06 15:40:16', '2022-04-06 15:40:16'),
(13, 7, '2022-04-06 15:40:16', '2022-04-06 15:40:16'),
(2, 8, '2022-04-06 15:40:58', '2022-04-06 15:40:58'),
(13, 8, '2022-04-06 15:40:58', '2022-04-06 15:40:58'),
(2, 9, '2022-04-06 15:42:51', '2022-04-06 15:42:51'),
(13, 9, '2022-04-06 15:42:51', '2022-04-06 15:42:51'),
(2, 10, '2022-04-06 15:43:43', '2022-04-06 15:43:43'),
(13, 10, '2022-04-06 15:43:43', '2022-04-06 15:43:43'),
(2, 11, '2022-04-06 15:44:45', '2022-04-06 15:44:45'),
(13, 11, '2022-04-06 15:44:45', '2022-04-06 15:44:45'),
(2, 12, '2022-04-06 15:48:33', '2022-04-06 15:48:33'),
(13, 12, '2022-04-06 15:48:33', '2022-04-06 15:48:33'),
(2, 13, '2022-04-07 14:35:41', '2022-04-07 14:35:41'),
(2, 14, '2022-04-07 14:38:20', '2022-04-07 14:38:20'),
(2, 15, '2022-04-07 14:40:00', '2022-04-07 14:40:00'),
(2, 16, '2022-04-07 14:49:25', '2022-04-07 14:49:25'),
(2, 17, '2022-04-07 14:50:20', '2022-04-07 14:50:20'),
(2, 18, '2022-04-07 14:52:50', '2022-04-07 14:52:50'),
(2, 19, '2022-04-07 14:55:54', '2022-04-07 14:55:54'),
(2, 20, '2022-04-07 14:58:18', '2022-04-07 14:58:18');

-- --------------------------------------------------------

--
-- Structure de la table `user_foncs`
--

CREATE TABLE `user_foncs` (
  `id_userfonc` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id_fonc` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_foncs`
--

INSERT INTO `user_foncs` (`id_userfonc`, `user_id`, `id_fonc`, `created_at`, `updated_at`) VALUES
(1, 31, 1, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(2, 31, 2, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(3, 31, 54, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(4, 31, 55, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(5, 31, 56, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(6, 31, 57, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(7, 31, 58, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(8, 31, 59, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(9, 31, 60, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(10, 31, 61, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(11, 31, 62, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(12, 31, 63, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(13, 31, 64, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(14, 31, 65, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(15, 31, 66, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(16, 31, 67, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(17, 31, 68, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(18, 31, 69, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(19, 31, 70, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(20, 31, 71, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(21, 31, 72, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(22, 31, 73, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(23, 31, 74, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(24, 31, 75, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(25, 31, 76, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(26, 31, 77, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(27, 31, 78, '2022-04-04 10:25:45', '2022-04-04 10:25:45'),
(28, 32, 1, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(29, 32, 2, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(30, 32, 54, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(31, 32, 55, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(32, 32, 56, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(33, 32, 57, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(34, 32, 58, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(35, 32, 59, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(36, 32, 60, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(37, 32, 61, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(38, 32, 62, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(39, 32, 63, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(40, 32, 64, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(41, 32, 65, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(42, 32, 66, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(43, 32, 67, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(44, 32, 68, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(45, 32, 69, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(46, 32, 70, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(47, 32, 71, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(48, 32, 72, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(49, 32, 73, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(50, 32, 74, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(51, 32, 75, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(52, 32, 76, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(53, 32, 77, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(54, 32, 78, '2022-04-04 10:53:53', '2022-04-04 10:53:53'),
(55, 33, 1, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(56, 33, 2, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(57, 33, 103, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(58, 33, 54, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(59, 33, 55, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(60, 33, 56, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(61, 33, 57, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(62, 33, 58, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(63, 33, 59, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(64, 33, 60, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(65, 33, 61, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(66, 33, 62, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(67, 33, 63, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(68, 33, 64, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(69, 33, 65, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(70, 33, 66, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(71, 33, 67, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(72, 33, 68, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(73, 33, 69, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(74, 33, 70, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(75, 33, 71, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(76, 33, 72, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(77, 33, 73, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(78, 33, 74, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(79, 33, 75, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(80, 33, 76, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(81, 33, 77, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(82, 33, 78, '2022-04-04 15:57:08', '2022-04-04 15:57:08'),
(85, 38, 126, '2022-04-05 10:12:44', '2022-04-05 10:12:44'),
(86, 39, 1, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(87, 39, 34, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(88, 39, 35, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(89, 39, 36, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(90, 39, 37, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(91, 39, 38, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(92, 39, 39, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(93, 39, 40, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(94, 39, 41, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(95, 39, 42, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(96, 39, 43, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(97, 39, 44, '2022-04-06 16:56:29', '2022-04-06 16:56:29'),
(98, 42, 1, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(99, 42, 34, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(100, 42, 35, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(101, 42, 36, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(102, 42, 37, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(103, 42, 38, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(104, 42, 39, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(105, 42, 40, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(106, 42, 41, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(107, 42, 42, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(108, 42, 43, '2022-04-06 17:02:35', '2022-04-06 17:02:35'),
(109, 42, 44, '2022-04-06 17:02:35', '2022-04-06 17:02:35');

-- --------------------------------------------------------

--
-- Structure de la table `validation_autorisations`
--

CREATE TABLE `validation_autorisations` (
  `id_autorisation` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date_demande` date NOT NULL,
  `date_validation` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `motif` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auto_evaluates`
--
ALTER TABLE `auto_evaluates`
  ADD PRIMARY KEY (`id_auto`),
  ADD KEY `auto_evaluates_user_id_foreign` (`user_id`),
  ADD KEY `auto_evaluates_id_projet_foreign` (`id_projet`);

--
-- Index pour la table `biblios`
--
ALTER TABLE `biblios`
  ADD PRIMARY KEY (`id_biblio`),
  ADD KEY `biblios_id_entreprise_foreign` (`id_entreprise`);

--
-- Index pour la table `charge_factures`
--
ALTER TABLE `charge_factures`
  ADD PRIMARY KEY (`id_chargetache`);

--
-- Index pour la table `charge_taches`
--
ALTER TABLE `charge_taches`
  ADD PRIMARY KEY (`id_charge`),
  ADD KEY `charge_taches_user_id_foreign` (`user_id`),
  ADD KEY `charge_taches_id_tache_foreign` (`id_tache`);

--
-- Index pour la table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id_chat`),
  ADD KEY `chats_user_id_foreign` (`user_id`),
  ADD KEY `chats_id_projet_foreign` (`id_projet`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `clients_id_entreprise_foreign` (`id_entreprise`),
  ADD KEY `clients_id_secteur_foreign` (`id_secteur`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `commandes_id_biblio_foreign` (`id_biblio`),
  ADD KEY `commandes_user_id_foreign` (`user_id`);

--
-- Index pour la table `conges`
--
ALTER TABLE `conges`
  ADD PRIMARY KEY (`id_conge`),
  ADD KEY `conges_user_id_foreign` (`user_id`);

--
-- Index pour la table `cout_factures`
--
ALTER TABLE `cout_factures`
  ADD PRIMARY KEY (`id_couttache`);

--
-- Index pour la table `cout_taches`
--
ALTER TABLE `cout_taches`
  ADD PRIMARY KEY (`id_cout`),
  ADD KEY `cout_taches_user_id_foreign` (`user_id`),
  ADD KEY `cout_taches_id_tache_foreign` (`id_tache`);

--
-- Index pour la table `demande_comptes`
--
ALTER TABLE `demande_comptes`
  ADD PRIMARY KEY (`id_compte`),
  ADD KEY `demande_comptes_id_secteur_foreign` (`id_secteur`);

--
-- Index pour la table `detail_users`
--
ALTER TABLE `detail_users`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `detail_users_user_id_foreign` (`user_id`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`id_entreprise`),
  ADD KEY `entreprises_id_secteur_foreign` (`id_secteur`),
  ADD KEY `entreprises_id_groupe_foreign` (`id_groupe`);

--
-- Index pour la table `equipements`
--
ALTER TABLE `equipements`
  ADD PRIMARY KEY (`id_equipement`),
  ADD KEY `equipements_id_entreprise_foreign` (`id_entreprise`);

--
-- Index pour la table `evaluation_respos`
--
ALTER TABLE `evaluation_respos`
  ADD PRIMARY KEY (`id_evaluate`),
  ADD KEY `evaluation_respos_user_id_foreign` (`user_id`),
  ADD KEY `evaluation_respos_id_projet_foreign` (`id_projet`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`);

--
-- Index pour la table `fonctionnalites`
--
ALTER TABLE `fonctionnalites`
  ADD PRIMARY KEY (`id_fonc`);

--
-- Index pour la table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id_grade`);

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Index pour la table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `logs_user_id_foreign` (`user_id`),
  ADD KEY `logs_id_entreprise_foreign` (`id_entreprise`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newroles`
--
ALTER TABLE `newroles`
  ADD PRIMARY KEY (`id_role`),
  ADD KEY `newroles_id_entreprise_foreign` (`id_entreprise`);

--
-- Index pour la table `ouvertures`
--
ALTER TABLE `ouvertures`
  ADD PRIMARY KEY (`id_ouverture`),
  ADD KEY `ouvertures_user_id_foreign` (`user_id`),
  ADD KEY `ouvertures_id_entreprise_foreign` (`id_entreprise`);

--
-- Index pour la table `partage_files`
--
ALTER TABLE `partage_files`
  ADD PRIMARY KEY (`id_partage`),
  ADD KEY `partage_files_user_id_foreign` (`user_id`),
  ADD KEY `partage_files_id_file_foreign` (`id_file`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_securities`
--
ALTER TABLE `password_securities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plannings`
--
ALTER TABLE `plannings`
  ADD PRIMARY KEY (`id_planning`),
  ADD KEY `plannings_user_id_foreign` (`user_id`);

--
-- Index pour la table `progression_taches`
--
ALTER TABLE `progression_taches`
  ADD PRIMARY KEY (`id_progress`),
  ADD KEY `progression_taches_user_id_foreign` (`user_id`),
  ADD KEY `progression_taches_id_tache_foreign` (`id_tache`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id_projet`),
  ADD KEY `projets_user_id_foreign` (`user_id`),
  ADD KEY `projets_id_entreprise_foreign` (`id_entreprise`);

--
-- Index pour la table `receveur_tickets`
--
ALTER TABLE `receveur_tickets`
  ADD KEY `receveur_tickets_user_id_foreign` (`user_id`),
  ADD KEY `receveur_tickets_id_ticket_foreign` (`id_ticket`);

--
-- Index pour la table `respos`
--
ALTER TABLE `respos`
  ADD PRIMARY KEY (`id_respo`),
  ADD KEY `respos_user_id_foreign` (`user_id`);

--
-- Index pour la table `respos_services`
--
ALTER TABLE `respos_services`
  ADD KEY `respos_services_id_respo_foreign` (`id_respo`);

--
-- Index pour la table `reunions`
--
ALTER TABLE `reunions`
  ADD PRIMARY KEY (`id_reunion`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`);

--
-- Index pour la table `role_foncs`
--
ALTER TABLE `role_foncs`
  ADD PRIMARY KEY (`id_rolefonc`),
  ADD KEY `role_foncs_id_role_foreign` (`id_role`),
  ADD KEY `role_foncs_id_fonc_foreign` (`id_fonc`);

--
-- Index pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id_secteur`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `services_id_entreprise_foreign` (`id_entreprise`);

--
-- Index pour la table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id_sponsor`),
  ADD KEY `sponsors_user_id_foreign` (`user_id`);

--
-- Index pour la table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id_sug`),
  ADD KEY `suggestions_user_id_foreign` (`user_id`);

--
-- Index pour la table `taches`
--
ALTER TABLE `taches`
  ADD PRIMARY KEY (`id_tache`),
  ADD KEY `taches_id_projet_foreign` (`id_projet`);

--
-- Index pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Index pour la table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id_timesheet`),
  ADD KEY `timesheets_id_projet_foreign` (`id_projet`),
  ADD KEY `timesheets_id_tache_foreign` (`id_tache`),
  ADD KEY `timesheets_user_id_foreign` (`user_id`);

--
-- Index pour la table `timesheet_demandes`
--
ALTER TABLE `timesheet_demandes`
  ADD PRIMARY KEY (`id_demande`),
  ADD KEY `timesheet_demandes_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_entreprise_foreign` (`id_entreprise`);

--
-- Index pour la table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`);

--
-- Index pour la table `users_reunions`
--
ALTER TABLE `users_reunions`
  ADD KEY `users_reunions_user_id_foreign` (`user_id`),
  ADD KEY `users_reunions_id_reunion_foreign` (`id_reunion`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

--
-- Index pour la table `users_services`
--
ALTER TABLE `users_services`
  ADD KEY `users_services_user_id_foreign` (`user_id`);

--
-- Index pour la table `users_taches`
--
ALTER TABLE `users_taches`
  ADD KEY `users_taches_user_id_foreign` (`user_id`),
  ADD KEY `users_taches_id_tache_foreign` (`id_tache`);

--
-- Index pour la table `user_foncs`
--
ALTER TABLE `user_foncs`
  ADD PRIMARY KEY (`id_userfonc`),
  ADD KEY `user_foncs_user_id_foreign` (`user_id`),
  ADD KEY `user_foncs_id_fonc_foreign` (`id_fonc`);

--
-- Index pour la table `validation_autorisations`
--
ALTER TABLE `validation_autorisations`
  ADD PRIMARY KEY (`id_autorisation`),
  ADD KEY `validation_autorisations_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auto_evaluates`
--
ALTER TABLE `auto_evaluates`
  MODIFY `id_auto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `biblios`
--
ALTER TABLE `biblios`
  MODIFY `id_biblio` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `charge_factures`
--
ALTER TABLE `charge_factures`
  MODIFY `id_chargetache` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `charge_taches`
--
ALTER TABLE `charge_taches`
  MODIFY `id_charge` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `chats`
--
ALTER TABLE `chats`
  MODIFY `id_chat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id_commande` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conges`
--
ALTER TABLE `conges`
  MODIFY `id_conge` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `cout_factures`
--
ALTER TABLE `cout_factures`
  MODIFY `id_couttache` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cout_taches`
--
ALTER TABLE `cout_taches`
  MODIFY `id_cout` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `demande_comptes`
--
ALTER TABLE `demande_comptes`
  MODIFY `id_compte` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `detail_users`
--
ALTER TABLE `detail_users`
  MODIFY `id_detail` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id_entreprise` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `equipements`
--
ALTER TABLE `equipements`
  MODIFY `id_equipement` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `evaluation_respos`
--
ALTER TABLE `evaluation_respos`
  MODIFY `id_evaluate` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1452;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `files`
--
ALTER TABLE `files`
  MODIFY `id_file` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `fonctionnalites`
--
ALTER TABLE `fonctionnalites`
  MODIFY `id_fonc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT pour la table `grades`
--
ALTER TABLE `grades`
  MODIFY `id_grade` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id_groupe` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `id_log` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1099;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `newroles`
--
ALTER TABLE `newroles`
  MODIFY `id_role` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `ouvertures`
--
ALTER TABLE `ouvertures`
  MODIFY `id_ouverture` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `partage_files`
--
ALTER TABLE `partage_files`
  MODIFY `id_partage` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `password_securities`
--
ALTER TABLE `password_securities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `plannings`
--
ALTER TABLE `plannings`
  MODIFY `id_planning` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `progression_taches`
--
ALTER TABLE `progression_taches`
  MODIFY `id_progress` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id_projet` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `respos`
--
ALTER TABLE `respos`
  MODIFY `id_respo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `reunions`
--
ALTER TABLE `reunions`
  MODIFY `id_reunion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `role_foncs`
--
ALTER TABLE `role_foncs`
  MODIFY `id_rolefonc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1344;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id_secteur` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id_sponsor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id_sug` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taches`
--
ALTER TABLE `taches`
  MODIFY `id_tache` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_ticket` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id_timesheet` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `timesheet_demandes`
--
ALTER TABLE `timesheet_demandes`
  MODIFY `id_demande` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `user_foncs`
--
ALTER TABLE `user_foncs`
  MODIFY `id_userfonc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT pour la table `validation_autorisations`
--
ALTER TABLE `validation_autorisations`
  MODIFY `id_autorisation` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `biblios`
--
ALTER TABLE `biblios`
  ADD CONSTRAINT `biblios_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE,
  ADD CONSTRAINT `clients_id_secteur_foreign` FOREIGN KEY (`id_secteur`) REFERENCES `secteurs` (`id_secteur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `demande_comptes`
--
ALTER TABLE `demande_comptes`
  ADD CONSTRAINT `demande_comptes_id_secteur_foreign` FOREIGN KEY (`id_secteur`) REFERENCES `secteurs` (`id_secteur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD CONSTRAINT `entreprises_id_groupe_foreign` FOREIGN KEY (`id_groupe`) REFERENCES `groupes` (`id_groupe`) ON DELETE CASCADE,
  ADD CONSTRAINT `entreprises_id_secteur_foreign` FOREIGN KEY (`id_secteur`) REFERENCES `secteurs` (`id_secteur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `equipements`
--
ALTER TABLE `equipements`
  ADD CONSTRAINT `equipements_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `newroles`
--
ALTER TABLE `newroles`
  ADD CONSTRAINT `newroles_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ouvertures`
--
ALTER TABLE `ouvertures`
  ADD CONSTRAINT `ouvertures_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `suggestions`
--
ALTER TABLE `suggestions`
  ADD CONSTRAINT `suggestions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_entreprise_foreign` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_foncs`
--
ALTER TABLE `user_foncs`
  ADD CONSTRAINT `user_foncs_id_fonc_foreign` FOREIGN KEY (`id_fonc`) REFERENCES `fonctionnalites` (`id_fonc`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_foncs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `validation_autorisations`
--
ALTER TABLE `validation_autorisations`
  ADD CONSTRAINT `validation_autorisations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
