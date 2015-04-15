-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2015 at 03:41 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cs4750dk2qd`
--

-- --------------------------------------------------------

--
-- Table structure for table `Game_Mode`
--

CREATE TABLE IF NOT EXISTS `lolProject_game_mode` (
  `name` varchar(16) NOT NULL,
  `neutral_ground` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Game_Mode`
--

INSERT INTO `lolProject_game_mode` (`name`, `neutral_ground`) VALUES
('Summoner''s Rift', 'The Jungle; The Dragon; Baron Nashor'),
('The Twisted Tree', 'The Jungle; Altars; Vilemaw'),
('Howling Abyss', 'No Healing or Shopping; Health Relics; A Single In'),
('The Crystal Scar', 'Health Relics; Speed Shrines; Storm Shield');

-- --------------------------------------------------------

--
-- Table structure for table `Masteries`
--

CREATE TABLE IF NOT EXISTS `lolProject_masteries` (
  `name` varchar(30) NOT NULL,
  `m_type` varchar(10) NOT NULL,
  `effect` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Masteries`
--

INSERT INTO `lolProject_masteries` (`name`, `m_type`, `effect`) VALUES
('Double-Edged Sword', 'Offense', 'Deal an additional 2% damage and receive an additional 1% damage'),
('Fury', 'Offense', '1.25% Attack Speed'),
('Sorcery', 'Offense', '1.25% Cooldown Reduction'),
('Butcher', 'Offense', 'Basic attacks and single target spells deal an additional 2 damage to minions and monsters'),
('Expose Weakness', 'Offense', 'Damaging an enemy with a spell increases allied champions''s damage to that enemy by 1% for the next '),
('Brute Force', 'Offense', '+4 Attack Damage at level 18 (+0.22 Attack Damage per level)'),
('Mental Force', 'Offense', '+6 Ability Power at level 18 (+0.33 Ability Power per level)'),
('Feast', 'Offense', 'Killing a unit restores 3 Health and 1 Mana'),
('Block', 'Defense', 'Reduces incoming damage from champions basic attacks by 1/2'),
('Recovery', 'Defense', 'Grants 1/2 health regeneration per 5 seconds'),
('Enchanted Armor', 'Defense', 'Increases your bonus armor and magic resistance by 2.5/5%'),
('Tough Skin', 'Defense', 'Reduces damage taken from monsters by 1/2'),
('Unyielding', 'Defense', 'Reduces all incoming damage from champions by 2 on melee and 1 on ranged champions'),
('Veteran''s Scars', 'Defense', 'Grants 12 health'),
('Bladed Armor', 'Defense', 'When enemy monsters attack you, they are inflicted with bleed for 2 seconds, dealing 1% of their cur'),
('Phasewalker', 'Utility', 'Reduces the channel time on Recall by 1 second and Enchanced Recall by 0.5 seconds'),
('Fleet of Foot', 'Utility', 'Grants 0.5% movement speed'),
('Meditation', 'Utility', 'Grants 1 mana regeneration per 5 seconds'),
('Scout', 'Utility', 'Increases the cast range of trinkets by 15%'),
('Summoner''s Insight', 'Utility', 'Reduces the cooldown of summoner spells by 4%'),
('Strength of Spirit', 'Utility', 'Gain 1 health regeneration per 5 seconds for every 300 maximum mana'),
('Alchemist', 'Utility', 'Increases the duration of potions and elixirs by 10%');

-- --------------------------------------------------------

--
-- Table structure for table `Minions`
--

CREATE TABLE IF NOT EXISTS `lolProject_minions` (
  `minion_type` varchar(12) NOT NULL,
  `health` int(4) NOT NULL,
  `attack_dmg` int(3) NOT NULL,
  `armor` int(2) NOT NULL,
  `magic_resist` int(2) NOT NULL,
  `attack_speed` decimal(10,0) NOT NULL,
  `gold` int(3) NOT NULL,
  `exp` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Minions`
--

INSERT INTO `lolProject_minions` (`minion_type`, `health`, `attack_dmg`, `armor`, `magic_resist`, `attack_speed`, `gold`, `exp`) VALUES
('Melee', 445, 12, 0, 0, 1, 20, 59),
('Caster', 280, 25, 0, 0, 1, 15, 29),
('Cannon', 700, 40, 15, 0, 1, 40, 92),
('Super', 1500, 190, 30, -30, 1, 27, 97);

-- --------------------------------------------------------

--
-- Table structure for table `Neutral_Monsters`
--

CREATE TABLE IF NOT EXISTS `lolProject_neutral_monsters` (
  `camp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rewards` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `health` int(4) NOT NULL,
  `damage` int(3) NOT NULL,
  `resistance` varchar(16) NOT NULL,
  `initial_spawn` time NOT NULL,
  `respawn_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Neutral_Monsters`
--

INSERT INTO `lolProject_neutral_monsters` (`camp`, `rewards`, `health`, `damage`, `resistance`, `initial_spawn`, `respawn_time`) VALUES
('Crimson Raptor', '+41 Gold; +210EXP', 1200, 55, 'Ar:15; MR:0', '00:01:55', '00:01:40'),
('Raptor', '+9 Gold; +30EXP', 250, 20, 'Ar:5; MR:0', '00:01:55', '00:01:40'),
('Greater Murk Wolf', '+42 Gold; +213EXP', 1320, 42, 'Ar:9; MR:0', '00:01:55', '00:01:40'),
('Murk Wolf', '+12 Gold; +45EXP', 420, 16, 'Ar:6; MR:0', '00:01:55', '00:01:40'),
('Ancient Krug', '+60 Gold; +225EXP', 1440, 73, 'Ar:12; MR:-10', '00:01:55', '00:01:40'),
('Krug', '+14 Gold; +75EXP', 540, 35, 'Ar:12; MR:-10', '00:01:55', '00:01:40'),
('Gromp', '+62 Gold; +300EXP', 1600, 90, 'Ar:15; MR:0', '00:01:55', '00:01:40'),
('Rift Scuttler', '+50 Gold; +75EXP', 750, 0, 'Ar:60; MR:60', '00:02:30', '00:03:00'),
('Sentry', '+20 Gold; +75EXP', 400, 12, 'Ar:8; MR:0', '00:01:55', '00:05:00'),
('Cinderling', '+20 Gold; +75EXP', 400, 12, 'Ar:8; MR:0', '00:01:55', '00:05:00'),
('Blue Sentinel', '+36 Gold; +150EXP; Crest of Insight', 2000, 73, 'Ar:20; MR:0', '00:01:55', '00:05:00'),
('Red Brambleback', '+36 Gold; +150EXP; Crest of Cinders', 1800, 80, 'Ar:20; MR:0', '00:01:55', '00:05:00'),
('Dragon', '+25 Gold; +75EXP; 1 stack of Dragon Slayer to all teammates', 4940, 230, 'Ar:21; MR:30', '00:02:30', '00:06:00'),
('Baron Nashor', '+25 Gold; +300 Gold; +900EXP all teammates; Hand of Baron to all living teammates', 8800, 500, 'Ar:120; MR:500', '00:20:00', '00:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `Runes`
--

CREATE TABLE IF NOT EXISTS `lolProject_runes` (
  `name` varchar(32) NOT NULL,
  `rune_type` varchar(20) NOT NULL,
  `effects` decimal(10,0) NOT NULL,
  `cost` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Runes`
--

INSERT INTO `lolProject_runes` (`name`, `rune_type`, `effects`, `cost`) VALUES
('Ability Power', 'Mark', 1, 410),
('Ability Power', 'Seal', 1, 410),
('Ability Power', 'Glyph', 1, 410),
('Ability Power', 'Quintessence', 5, 1025),
('Armor', 'Mark', 1, 205),
('Armor', 'Seal', 1, 205),
('Armor', 'Glyph', 1, 205),
('Armor', 'Quintessence', 4, 1025),
('Armor Penetration', 'Mark', 1, 410),
('Armor Penetration', 'Quintessence', 3, 1025),
('Attack Damage', 'Mark', 1, 205),
('Attack Damage', 'Seal', 0, 205),
('Attack Damage', 'Glyph', 1, 205),
('Attack Damage', 'Quintessence', 4, 1025),
('Attack Speed', 'Mark', 2, 410),
('Attack Speed', 'Seal', 1, 410),
('Attack Speed', 'Glyph', 1, 410),
('Attack Speed', 'Quintessence', 5, 1025),
('Cooldown Reduction', 'Mark', 0, 410),
('Cooldown Reduction', 'Seal', 0, 410),
('Cooldown Reduction', 'Glyph', 1, 820),
('Cooldown Reduction', 'Quintessence', 3, 2050),
('Critical Chance', 'Mark', 1, 410),
('Critical Chance', 'Seal', 0, 410),
('Critical Chance', 'Glyph', 0, 410),
('Critical Chance', 'Quintessence', 2, 1025),
('Energy', 'Glyph', 2, 820),
('Energy', 'Quintessence', 5, 1025),
('Energy Regeneration', 'Seal', 1, 830),
('Energy Regeneration', 'Quintessence', 2, 2050),
('Experience', 'Quintessence', 2, 2050),
('Gold', 'Seal', 0, 410),
('Gold', 'Quintessence', 1, 515),
('Health', 'Mark', 3, 410),
('Health', 'Seal', 8, 820),
('Health', 'Glyph', 3, 410),
('Health', 'Quintessence', 26, 2050),
('Health Regeneration', 'Seal', 1, 820),
('Health Regeneration', 'Glyph', 0, 820),
('Health Regeneration', 'Quintessence', 3, 2050),
('Life Steal', 'Quintessence', 2, 2050),
('Magic Penetration', 'Mark', 1, 410),
('Magic Penetration', 'Glyph', 1, 410),
('Magic Penetration', 'Quintessence', 2, 1025),
('Magic Resist', 'Mark', 1, 205),
('Magic Resist', 'Seal', 1, 205),
('Magic Resist', 'Glyph', 1, 205),
('Magic Resist', 'Quintessence', 4, 1025),
('Mana Regeneration', 'Mark', 0, 205),
('Mana Regeneration', 'Seal', 0, 205),
('Mana Regeneration', 'Glyph', 0, 410),
('Mana Regeneration', 'Quintessence', 1, 1025),
('Movement Speed', 'Quintessence', 2, 2050),
('Spell Vamp', 'Quintessence', 2, 2050);

-- --------------------------------------------------------

--
-- Table structure for table `Summoner_spells`
--

CREATE TABLE IF NOT EXISTS `lolProject_summoner_spells` (
  `spell` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `cooldown` int(11) NOT NULL,
  `summoner_range` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Summoner_spells`
--

INSERT INTO `lolProject_summoner_spells` (`spell`, `level`, `cooldown`, `summoner_range`, `description`) VALUES
('Barrier', 4, 210, 'Self', 'Shields your champion'),
('Clairvoyance', 8, 60, 'Global', 'Reveals an area of the map for 5 seconds'),
('Clarity', 1, 180, 'Self', 'Restores 40% maximum mana to you and your nearby allies'),
('Cleanse', 6, 210, 'Self', 'Removes all disables and summoner spell debuffs affecting your champion'),
('Exhaust', 4, 210, '650', 'Reduces their Movement Speed and Attack Speed by 40%, their Armor and Magic Resist by 10, and their '),
('Flash', 8, 300, '400', 'Teleports your champion to target nearby location'),
('Garrison', 1, 210, '1000', 'Strenghtens allied capture points or weakens enemy capture points'),
('Ghost', 1, 210, 'Self', 'Your champion passes through any unit and moves 27% faster for 10 seconds'),
('Heal', 1, 240, '700', 'Restores 90~340 health to your champion and the allied champion nearest to the cursor'),
('Ignite', 10, 210, '600', 'Targets a single champion dealing 70~410 true damage over 5 seconds'),
('Revive', 1, 540, 'Self', 'Instantly revives your champion at your team''s Summoner Platform'),
('Smite', 10, 60, '750', 'Deals 390~1000 true damage to a jungle monster, enemy minions, or pets'),
('Teleport', 6, 300, 'Global', 'After 4 seconds, teleports your champion to a non-champion, friendly target');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
