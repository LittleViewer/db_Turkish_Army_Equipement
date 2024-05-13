-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 13 mai 2024 à 20:18
-- Version du serveur : 8.0.36-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Forcee_armee_turque_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `Corp_d_arme`
--

CREATE TABLE `Corp_d_arme` (
  `ID_CorpArmes` varchar(3) NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Nombre_Pax` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Corp_d_arme`
--

INSERT INTO `Corp_d_arme` (`ID_CorpArmes`, `Type`, `Nombre_Pax`) VALUES
('ATT', 'Armée de Terre Turque', 315000),
('FAT', 'Force Aérienne Turque', 60100),
('MTU', 'Marine Turque', 45000);

-- --------------------------------------------------------

--
-- Structure de la table `Equipement`
--

CREATE TABLE `Equipement` (
  `Nom` varchar(50) NOT NULL,
  `Nombre` int DEFAULT NULL,
  `Key_CorpArmes` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Equipement`
--

INSERT INTO `Equipement` (`Nom`, `Nombre`, `Key_CorpArmes`) VALUES
('ACV-AAPC', 823, 'ATT'),
('ACV-AIFV', 645, 'ATT'),
('ACV-ATV', 365, 'ATT'),
('AGL-142 Popeye I', 99, 'FAT'),
('AGM-154A-1 JSOW Block-II', 50, 'FAT'),
('AGM-154C-JSOW-C/Broach', 50, 'FAT'),
('AGM-65A/B Maverick', 550, 'FAT'),
('AGM-65G1 Maverich IIR', 270, 'FAT'),
('AGM-84K SLAM-ER', 50, 'FAT'),
('AGM-88B HARM', 107, 'FAT'),
('Agusta-Bell 204B/AB204', 12, 'ATT'),
('Agusta-Bell AB205A1', 69, 'ATT'),
('Agusta-Bell AB206B3', 20, 'ATT'),
('AH-1W (Helicoptere|MTU)', 10, 'MTU'),
('AIM-120 AMRAAM C7', 252, 'FAT'),
('AIM-120A/B AMRAAM', 314, 'FAT'),
('AIM-7E', 367, 'FAT'),
('AIM-9B Sidewinder', 290, 'FAT'),
('AIM-9L/I Sidewinder', 640, 'FAT'),
('AIM-9M Sidewinder', 500, 'FAT'),
('AIM-9P3 Sidewinder', 750, 'FAT'),
('AIM-9S Sidewinder', 310, 'FAT'),
('AIM-9X Block I Sidewinder', 352, 'FAT'),
('AIM-9X block II Sidewinder', 117, 'FAT'),
('Airbus A400M', 10, 'FAT'),
('Akinci', 24, 'FAT'),
('Aksungur (UAV)', 6, 'MTU'),
('Altay T1', 2, 'ATT'),
('AN/AAQ 13 LANTIRN', 30, 'FAT'),
('AN/AVQ 23 Pave Spike', 70, 'FAT'),
('Anka-3', 2, 'FAT'),
('Anka-A/B/C', 22, 'FAT'),
('Anka-S', 58, 'FAT'),
('Anka-S (UAV|MTU)', 8, 'MTU'),
('ATILGAN PMSS PMADS', 70, 'ATT'),
('ATILGAN PMSS Zipkin PMADS', 78, 'ATT'),
('ATR 72 MPA (PatMaritime)', 6, 'MTU'),
('Augusta-Bell AB-212 A SW (Helicoptere|MTU)', 9, 'MTU'),
('AZMIN', 12, 'ATT'),
('Bayraktar Mini UAV', 148, 'ATT'),
('Bayraktar TB2', 33, 'ATT'),
('Bayraktar TB2 (FAT)', 300, 'FAT'),
('Bayraktar TB2 (UAV|MTU)', 10, 'MTU'),
('Beechcraft 200', 5, 'ATT'),
('Beechcraft 200 (FAT)', 1, 'FAT'),
('Beechcraft 350 King Air', 5, 'ATT'),
('Beechcraft Baron T-42A Cochise', 4, 'ATT'),
('Bell 205 UH-1H', 43, 'ATT'),
('Bell 205A UH-1H', 64, 'ATT'),
('Bell AH-1P Cobra', 18, 'ATT'),
('Bell AH-1S Cobra', 12, 'ATT'),
('Bell AH-1W Cobra', 5, 'ATT'),
('Bell OH-58B', 3, 'ATT'),
('Bell TAH-1P Cobra', 4, 'ATT'),
('Bell UH 1H/2020-ASAM', 52, 'ATT'),
('BLU 107 Durandal', 523, 'FAT'),
('BMC 185-09B', NULL, 'ATT'),
('BMC 235-16P', NULL, 'ATT'),
('BMC 380-26P', NULL, 'ATT'),
('BMC Kirpi I', 650, 'ATT'),
('BMC KIRPI II', 320, 'ATT'),
('BMC Kirpi PMKI', 10, 'ATT'),
('Boeing 737 AEW&C', 4, 'FAT'),
('Boeing CH-47F Chinook', 11, 'ATT'),
('Boeing KC-135 Stratotanker', 7, 'FAT'),
('Bofors L60/70', 803, 'ATT'),
('Bora', 50, 'ATT'),
('Boran', 7, 'ATT'),
('Bozena', NULL, 'ATT'),
('BPz-2', 12, 'ATT'),
('C-130B Hercules', 6, 'FAT'),
('C-130E Hercules', 13, 'FAT'),
('Casa CN-235', 38, 'FAT'),
('Casa CN-235 (PatMaritime|MTU)', 8, 'MTU'),
('CB7 105 Sensor Fuzed Bomb', 300, 'FAT'),
('Cessna 421', 3, 'ATT'),
('Cessna Citation II', 2, 'FAT'),
('Cessna Citation III', 2, 'FAT'),
('Cessna T-41 Mescalero', 28, 'FAT'),
('Cessna T182', 45, 'ATT'),
('CL-89', NULL, 'ATT'),
('Classe 130 (EmbDebarq', 2, 'MTU'),
('Classe 140 (EmbDebarq)', 10, 'MTU'),
('Classe 151 (EmbDebarq)', 8, 'MTU'),
('Classe 320 (EmbDebarq)', 10, 'MTU'),
('Classe Ada (Corvette)', 4, 'MTU'),
('Classe Akar (NavSupport)', 2, 'MTU'),
('Classe Albay Hakki Burak (NavSupport)', 2, 'MTU'),
('Classe Atilay 209/1200 (Sous-Marin)', 4, 'MTU'),
('Classe Aydin (NavGuerreMine)', 6, 'MTU'),
('Classe Barbaros (Frégate)', 4, 'MTU'),
('Classe Bayraktar (EmbDebarq)', 3, 'MTU'),
('Classe Bey (EmbDebarq)', 2, 'MTU'),
('Classe Burak', 6, 'MTU'),
('Classe Derya (NavSupport)', 1, 'MTU'),
('Classe Dogan (Patrouilleur)', 3, 'MTU'),
('Classe Gabya (Frégate)', 8, 'MTU'),
('Classe Gür 209/1400', 4, 'MTU'),
('Classe Istanbul (Frégate)', 1, 'MTU'),
('Classe Kiliç (Patrouilleur)', 9, 'MTU'),
('Classe Osman Gazi (EmbDebarq)', 1, 'MTU'),
('Classe Preveze 209/1400 (Sous-Marin)', 4, 'MTU'),
('Classe Tuzla (Patrouilleur)', 16, 'MTU'),
('Classe Ufuk (NavCollectRens)', 1, 'MTU'),
('Classe Yavuz (Frégate)', 4, 'MTU'),
('Classe Yildiz (NavGuerreMine)', 2, 'MTU'),
('Classe Yildiz (Patrouilleur)', 2, 'MTU'),
('Classe Yzb.Güngör Durmus (NavSupport)', 2, 'MTU'),
('Edjer Yalcin 4x4', 360, 'ATT'),
('Eurocopter AS-532UL Cougar', 28, 'ATT'),
('F-16C/D Viper', 235, 'FAT'),
('F-16V Viper', 119, 'FAT'),
('F-4E 2020 Terminator', 49, 'FAT'),
('F-5 2000', 24, 'FAT'),
('Falcon 600/Firebee', NULL, 'ATT'),
('FIM-92C Stinger RMP', 108, 'FAT'),
('FNSS PARS 6x6/8x8', 57, 'ATT'),
('FNSS Pars STA 4x4', 76, 'ATT'),
('GBU 10/12 Paveway I-II', 1200, 'FAT'),
('GBY 8/B HOBOS', 200, 'FAT'),
('Global 6000 SOJ', 4, 'FAT'),
('Gnat', NULL, 'ATT'),
('Gökturk-1', 1, 'FAT'),
('Gökturk-2', 1, 'FAT'),
('Gökturk-3', 1, 'FAT'),
('Gökturk-4', 1, 'FAT'),
('Gulfstream G500', 1, 'FAT'),
('Gulfstream IV', 3, 'FAT'),
('HGK', NULL, 'FAT'),
('HISAR-A-A+/HISAR-O', NULL, 'ATT'),
('HISAR-A+ (Batterie)', NULL, 'FAT'),
('HISAR-O+ (Batterie)', 10, 'FAT'),
('Humvee', NULL, 'ATT'),
('Hürkus-B', 6, 'FAT'),
('Husky VMMD 2G', 4, 'ATT'),
('HY-12Di', 578, 'ATT'),
('I-Hawk-21', 48, 'FAT'),
('IAI Harpy', NULL, 'ATT'),
('IAI Heron', 10, 'FAT'),
('IMECE', 1, 'FAT'),
('J-600T Yildirim I/II', NULL, 'ATT'),
('JDAM', 800, 'FAT'),
('Jeep Wrangler', NULL, 'ATT'),
('KAI KT-1 Woongbi', 40, 'FAT'),
('Kale Bayraktar - Caldiran', 12, 'ATT'),
('Kaplan STA', 184, 'ATT'),
('KGK', NULL, 'FAT'),
('Kizilelma', 7, 'FAT'),
('KORKUT', 40, 'ATT'),
('Leguan', 36, 'ATT'),
('Leopard 1A3', 227, 'ATT'),
('Leopard 1A4', 170, 'ATT'),
('Leopard 2A4 TU/NG', 316, 'ATT'),
('M-19', NULL, 'ATT'),
('M1/M29', NULL, 'ATT'),
('M101A1', 75, 'ATT'),
('M106', 150, 'ATT'),
('M107', 36, 'ATT'),
('M110A2', 219, 'ATT'),
('M113 A1/A2T1/A2T2', 2813, 'ATT'),
('M114', 517, 'ATT'),
('M115', 36, 'ATT'),
('M270 MRLS', 12, 'ATT'),
('M30', NULL, 'ATT'),
('M44T1', 150, 'ATT'),
('M48 Patton', 1200, 'ATT'),
('M48A5T1', 619, 'ATT'),
('M48A5T2', 758, 'ATT'),
('M48AEV', 12, 'ATT'),
('M48T5', 105, 'ATT'),
('M52T', 365, 'ATT'),
('M55', 9, 'ATT'),
('M60A1 RISE Passive', 100, 'ATT'),
('M60A3 TTS', 650, 'ATT'),
('M60T', 165, 'ATT'),
('M88 A1', 33, 'ATT'),
('Malazgirt Mini UAV', 4, 'ATT'),
('MAN 26.372', NULL, 'ATT'),
('Mercedes Actros', NULL, 'ATT'),
('Mercedes Axor', NULL, 'ATT'),
('MFAB-F', 52, 'ATT'),
('MGM-140A ATACMS', NULL, 'ATT'),
('MIM-14C Nike Hercules', 72, 'FAT'),
('NEB', NULL, 'FAT'),
('Northrop T-38 Talon', 33, 'FAT'),
('Oerlikon 35mm GDF-001/003', 120, 'ATT'),
('Oerlikon GAI-D01/Rheinmetall Mk 20 Rh-202', 439, 'ATT'),
('Otokar Cobra I', 800, 'ATT'),
('Otokar Cobra II', 400, 'ATT'),
('Otokar Defencer', NULL, 'ATT'),
('Otokar Engerek', NULL, 'ATT'),
('PAC MFI-17', 3, 'FAT'),
('Panter', 40, 'ATT'),
('Rapier FSB1', 86, 'FAT'),
('S-125', NULL, 'FAT'),
('S-300PMU1 (Entrainement)', 1, 'FAT'),
('S-300V (Entrainement)', 1, 'FAT'),
('S-400 Triumph (Régiment)', 4, 'FAT'),
('Schweizer S300 Hughes 300C', 28, 'ATT'),
('SIAI Marchetti SF 260', 38, 'FAT'),
('Sikorsky T-70', 109, 'ATT'),
('Sikorsky UH-60 S-70A Black Hawk', 48, 'ATT'),
('Silorsky S-70B-28 Seahawk (Helicoptere)', 24, 'MTU'),
('SNIPER', 30, 'FAT'),
('SOM', 400, 'FAT'),
('T-107', 100, 'ATT'),
('T-122 Sakarya', 36, 'ATT'),
('T-155 Firtina I', 280, 'ATT'),
('T-155 Firtina II', 30, 'ATT'),
('T-300/Kasirga WS-1', 50, 'ATT'),
('TAI T128B ATAK', 48, 'ATT'),
('TAI T219A ATAK', 9, 'ATT'),
('TAI TF Hurjet (Entrainement)', 6, 'FAT'),
('Tai TF Kaan (Prototype)', 2, 'FAT'),
('Tamkar', 0, 'ATT'),
('TCG Anadolu (L400)(BatProjCom)', 1, 'MTU'),
('Torm-M1 (Entrainement)', 1, 'FAT'),
('Türksat-3A', 1, 'FAT'),
('Türksat-4A', 1, 'FAT'),
('Türksat-4B', 1, 'FAT'),
('Türksat-4R', 1, 'FAT'),
('Türksat-5A', 1, 'FAT'),
('Türksat-5B', 1, 'FAT'),
('Türksat-6A', NULL, 'FAT'),
('Unimog 4000/5000', NULL, 'ATT'),
('UT1', NULL, 'ATT'),
('Vuran', 300, 'ATT'),
('Zipkin KMS', 90, 'FAT');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Corp_d_arme`
--
ALTER TABLE `Corp_d_arme`
  ADD PRIMARY KEY (`ID_CorpArmes`);

--
-- Index pour la table `Equipement`
--
ALTER TABLE `Equipement`
  ADD PRIMARY KEY (`Nom`),
  ADD KEY `Key_CorpArmes` (`Key_CorpArmes`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Equipement`
--
ALTER TABLE `Equipement`
  ADD CONSTRAINT `Equipement_ibfk_1` FOREIGN KEY (`Key_CorpArmes`) REFERENCES `Corp_d_arme` (`ID_CorpArmes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
