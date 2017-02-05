/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aa_timers` (
  `charid` int(12) unsigned NOT NULL DEFAULT '0',
  `ability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `begin` int(10) unsigned NOT NULL DEFAULT '0',
  `end` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charid`,`ability`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `charname` varchar(64) NOT NULL DEFAULT '',
  `sharedplat` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT '0',
  `lsaccount_id` int(11) unsigned DEFAULT NULL,
  `gmspeed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `revoked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `karma` int(5) unsigned NOT NULL DEFAULT '0',
  `minilogin_ip` varchar(32) NOT NULL DEFAULT '',
  `hideme` tinyint(4) NOT NULL DEFAULT '0',
  `rulesflag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspendeduntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_creation` int(10) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(4) NOT NULL DEFAULT '15',
  `ban_reason` text,
  `suspend_reason` text,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `ip_exemption_multiplier` int(5) DEFAULT '1',
  `gminvul` tinyint(4) NOT NULL DEFAULT '0',
  `flymode` tinyint(4) NOT NULL DEFAULT '0',
  `ignore_tells` tinyint(4) NOT NULL DEFAULT '0',
  `mule` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  UNIQUE KEY `lsaccount_id` (`lsaccount_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=69785 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_flags` (
  `p_accid` int(10) unsigned NOT NULL,
  `p_flag` varchar(50) NOT NULL,
  `p_value` varchar(80) NOT NULL,
  PRIMARY KEY (`p_accid`,`p_flag`),
  KEY `p_accid` (`p_accid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_ip` (
  `accid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '1',
  `lastused` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `ip` (`accid`,`ip`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_rewards` (
  `account_id` int(10) unsigned NOT NULL,
  `reward_id` int(10) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  UNIQUE KEY `account_reward` (`account_id`,`reward_id`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `last_name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(32) NOT NULL DEFAULT '',
  `suffix` varchar(32) NOT NULL DEFAULT '',
  `zone_id` int(11) unsigned NOT NULL DEFAULT '0',
  `zone_instance` int(11) unsigned NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `gender` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `race` smallint(11) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '0',
  `deity` int(11) unsigned NOT NULL DEFAULT '0',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `time_played` int(11) unsigned NOT NULL DEFAULT '0',
  `level2` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `anon` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `gm` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `face` int(11) unsigned NOT NULL DEFAULT '0',
  `hair_color` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `hair_style` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `beard` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `beard_color` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `eye_color_1` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `eye_color_2` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) unsigned NOT NULL DEFAULT '0',
  `aa_points_spent` int(11) unsigned NOT NULL DEFAULT '0',
  `aa_exp` int(11) unsigned NOT NULL DEFAULT '0',
  `aa_points` int(11) unsigned NOT NULL DEFAULT '0',
  `points` int(11) unsigned NOT NULL DEFAULT '0',
  `cur_hp` int(11) unsigned NOT NULL DEFAULT '0',
  `mana` int(11) unsigned NOT NULL DEFAULT '0',
  `endurance` int(11) unsigned NOT NULL DEFAULT '0',
  `intoxication` int(11) unsigned NOT NULL DEFAULT '0',
  `str` int(11) unsigned NOT NULL DEFAULT '0',
  `sta` int(11) unsigned NOT NULL DEFAULT '0',
  `cha` int(11) unsigned NOT NULL DEFAULT '0',
  `dex` int(11) unsigned NOT NULL DEFAULT '0',
  `int` int(11) unsigned NOT NULL DEFAULT '0',
  `agi` int(11) unsigned NOT NULL DEFAULT '0',
  `wis` int(11) unsigned NOT NULL DEFAULT '0',
  `zone_change_count` int(11) unsigned NOT NULL DEFAULT '0',
  `hunger_level` int(11) unsigned NOT NULL DEFAULT '0',
  `thirst_level` int(11) unsigned NOT NULL DEFAULT '0',
  `pvp_status` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `air_remaining` int(11) unsigned NOT NULL DEFAULT '0',
  `autosplit_enabled` int(11) unsigned NOT NULL DEFAULT '0',
  `mailkey` char(16) NOT NULL DEFAULT '',
  `firstlogon` tinyint(3) NOT NULL DEFAULT '0',
  `e_aa_effects` int(11) unsigned NOT NULL DEFAULT '0',
  `e_percent_to_aa` int(11) unsigned NOT NULL DEFAULT '0',
  `e_expended_aa_spent` int(11) unsigned NOT NULL DEFAULT '0',
  `boatid` int(11) unsigned NOT NULL DEFAULT '0',
  `boatname` varchar(25) DEFAULT NULL,
  `famished` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=179481 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_currency` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `platinum` int(11) unsigned NOT NULL DEFAULT '0',
  `gold` int(11) unsigned NOT NULL DEFAULT '0',
  `silver` int(11) unsigned NOT NULL DEFAULT '0',
  `copper` int(11) unsigned NOT NULL DEFAULT '0',
  `platinum_bank` int(11) unsigned NOT NULL DEFAULT '0',
  `gold_bank` int(11) unsigned NOT NULL DEFAULT '0',
  `silver_bank` int(11) unsigned NOT NULL DEFAULT '0',
  `copper_bank` int(11) unsigned NOT NULL DEFAULT '0',
  `platinum_cursor` int(11) unsigned NOT NULL DEFAULT '0',
  `gold_cursor` int(11) unsigned NOT NULL DEFAULT '0',
  `silver_cursor` int(11) unsigned NOT NULL DEFAULT '0',
  `copper_cursor` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_alternate_abilities` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `slot` smallint(11) unsigned NOT NULL DEFAULT '0',
  `aa_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `aa_value` smallint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`slot`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_home` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `zone_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `instance_id` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`is_home`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=180028 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_consent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `consented_name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`consented_name`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_corpses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `charid` int(11) unsigned NOT NULL DEFAULT '0',
  `charname` varchar(64) NOT NULL DEFAULT '',
  `zone_id` smallint(5) NOT NULL DEFAULT '0',
  `instance_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `time_of_death` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rez_time` int(11) NOT NULL DEFAULT '0',
  `is_rezzed` tinyint(3) unsigned DEFAULT '0',
  `is_buried` tinyint(3) NOT NULL DEFAULT '0',
  `was_at_graveyard` tinyint(3) NOT NULL DEFAULT '0',
  `is_locked` tinyint(11) DEFAULT '0',
  `exp` int(11) unsigned DEFAULT '0',
  `gmexp` int(11) NOT NULL DEFAULT '0',
  `size` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned DEFAULT '0',
  `race` int(11) unsigned DEFAULT '0',
  `gender` int(11) unsigned DEFAULT '0',
  `class` int(11) unsigned DEFAULT '0',
  `deity` int(11) unsigned DEFAULT '0',
  `texture` int(11) unsigned DEFAULT '0',
  `helm_texture` int(11) unsigned DEFAULT '0',
  `copper` int(11) unsigned DEFAULT '0',
  `silver` int(11) unsigned DEFAULT '0',
  `gold` int(11) unsigned DEFAULT '0',
  `platinum` int(11) unsigned DEFAULT '0',
  `hair_color` int(11) unsigned DEFAULT '0',
  `beard_color` int(11) unsigned DEFAULT '0',
  `eye_color_1` int(11) unsigned DEFAULT '0',
  `eye_color_2` int(11) unsigned DEFAULT '0',
  `hair_style` int(11) unsigned DEFAULT '0',
  `face` int(11) unsigned DEFAULT '0',
  `beard` int(11) unsigned DEFAULT '0',
  `drakkin_heritage` int(11) unsigned DEFAULT '0',
  `drakkin_tattoo` int(11) unsigned DEFAULT '0',
  `drakkin_details` int(11) unsigned DEFAULT '0',
  `wc_1` int(11) unsigned DEFAULT '0',
  `wc_2` int(11) unsigned DEFAULT '0',
  `wc_3` int(11) unsigned DEFAULT '0',
  `wc_4` int(11) unsigned DEFAULT '0',
  `wc_5` int(11) unsigned DEFAULT '0',
  `wc_6` int(11) unsigned DEFAULT '0',
  `wc_7` int(11) unsigned DEFAULT '0',
  `wc_8` int(11) unsigned DEFAULT '0',
  `wc_9` int(11) unsigned DEFAULT '0',
  `killedby` tinyint(11) NOT NULL DEFAULT '0',
  `rezzable` tinyint(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `zoneid` (`zone_id`) USING BTREE,
  KEY `instanceid` (`instance_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_corpses_backup` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `charid` int(11) unsigned NOT NULL DEFAULT '0',
  `charname` varchar(64) NOT NULL DEFAULT '',
  `zone_id` smallint(5) NOT NULL DEFAULT '0',
  `instance_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `heading` float NOT NULL DEFAULT '0',
  `time_of_death` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rez_time` int(11) NOT NULL DEFAULT '0',
  `is_rezzed` tinyint(3) unsigned DEFAULT '0',
  `is_buried` tinyint(3) NOT NULL DEFAULT '0',
  `was_at_graveyard` tinyint(3) NOT NULL DEFAULT '0',
  `is_locked` tinyint(11) DEFAULT '0',
  `exp` int(11) unsigned DEFAULT '0',
  `gmexp` int(11) NOT NULL DEFAULT '0',
  `size` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned DEFAULT '0',
  `race` int(11) unsigned DEFAULT '0',
  `gender` int(11) unsigned DEFAULT '0',
  `class` int(11) unsigned DEFAULT '0',
  `deity` int(11) unsigned DEFAULT '0',
  `texture` int(11) unsigned DEFAULT '0',
  `helm_texture` int(11) unsigned DEFAULT '0',
  `copper` int(11) unsigned DEFAULT '0',
  `silver` int(11) unsigned DEFAULT '0',
  `gold` int(11) unsigned DEFAULT '0',
  `platinum` int(11) unsigned DEFAULT '0',
  `hair_color` int(11) unsigned DEFAULT '0',
  `beard_color` int(11) unsigned DEFAULT '0',
  `eye_color_1` int(11) unsigned DEFAULT '0',
  `eye_color_2` int(11) unsigned DEFAULT '0',
  `hair_style` int(11) unsigned DEFAULT '0',
  `face` int(11) unsigned DEFAULT '0',
  `beard` int(11) unsigned DEFAULT '0',
  `drakkin_heritage` int(11) unsigned DEFAULT '0',
  `drakkin_tattoo` int(11) unsigned DEFAULT '0',
  `drakkin_details` int(11) unsigned DEFAULT '0',
  `wc_1` int(11) unsigned DEFAULT '0',
  `wc_2` int(11) unsigned DEFAULT '0',
  `wc_3` int(11) unsigned DEFAULT '0',
  `wc_4` int(11) unsigned DEFAULT '0',
  `wc_5` int(11) unsigned DEFAULT '0',
  `wc_6` int(11) unsigned DEFAULT '0',
  `wc_7` int(11) unsigned DEFAULT '0',
  `wc_8` int(11) unsigned DEFAULT '0',
  `wc_9` int(11) unsigned DEFAULT '0',
  `killedby` tinyint(11) NOT NULL DEFAULT '0',
  `rezzable` tinyint(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_corpse_items_backup` (
  `corpse_id` int(11) unsigned NOT NULL,
  `equip_slot` int(11) unsigned NOT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `charges` int(11) unsigned DEFAULT NULL,
  `aug_1` int(11) unsigned DEFAULT '0',
  `aug_2` int(11) unsigned DEFAULT '0',
  `aug_3` int(11) unsigned DEFAULT '0',
  `aug_4` int(11) unsigned DEFAULT '0',
  `aug_5` int(11) unsigned DEFAULT '0',
  `attuned` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`corpse_id`,`equip_slot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_corpse_items` (
  `corpse_id` int(11) unsigned NOT NULL,
  `equip_slot` int(11) unsigned NOT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `charges` int(11) unsigned DEFAULT NULL,
  `aug_1` int(11) unsigned DEFAULT '0',
  `aug_2` int(11) unsigned DEFAULT '0',
  `aug_3` int(11) unsigned DEFAULT '0',
  `aug_4` int(11) unsigned DEFAULT '0',
  `aug_5` int(11) unsigned DEFAULT '0',
  `attuned` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`corpse_id`,`equip_slot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_faction_values` (
  `id` int(11) NOT NULL DEFAULT '0',
  `faction_id` int(4) NOT NULL DEFAULT '0',
  `current_value` smallint(6) NOT NULL DEFAULT '0',
  `temp` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`faction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_inventory` (
  `id` int(11) NOT NULL DEFAULT '0',
  `slotid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `itemid` int(11) unsigned DEFAULT '0',
  `charges` smallint(3) unsigned DEFAULT '0',
  `color` int(11) unsigned NOT NULL DEFAULT '0',
  `augslot1` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `augslot2` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `augslot3` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `augslot4` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `augslot5` mediumint(7) unsigned DEFAULT '0',
  `instnodrop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom_data` text,
  PRIMARY KEY (`id`,`slotid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_keyring` (
  `id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `value` smallint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`lang_id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=180028 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `timelaston` int(11) unsigned DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `zonename` varchar(30) NOT NULL DEFAULT '',
  `zoneid` smallint(6) NOT NULL DEFAULT '0',
  `instanceid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pktime` int(8) NOT NULL DEFAULT '0',
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(4) NOT NULL DEFAULT '0',
  `level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lfp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lfg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mailkey` char(16) NOT NULL,
  `xtargets` tinyint(3) unsigned NOT NULL DEFAULT '5',
  `firstlogon` tinyint(3) NOT NULL DEFAULT '0',
  `inspectmessage` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=171020 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_skills` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `skill_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `value` smallint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`skill_id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=180028 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_soulmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charid` int(11) NOT NULL DEFAULT '0',
  `charname` varchar(64) NOT NULL DEFAULT '',
  `acctname` varchar(32) NOT NULL DEFAULT '',
  `gmname` varchar(64) NOT NULL DEFAULT '',
  `gmacctname` varchar(32) NOT NULL DEFAULT '',
  `utime` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `desc` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_spells` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slot_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `spell_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`slot_id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=180028 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_timers` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `start` int(10) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_memmed_spells` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `slot_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `spell_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`slot_id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slot` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `blue` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `green` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `red` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `use_tint` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `color` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`slot`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_inspect_messages` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `inspect_message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_buffs` (
  `id` int(10) NOT NULL DEFAULT '0',
  `slot_id` tinyint(3) unsigned NOT NULL,
  `spell_id` smallint(10) unsigned NOT NULL,
  `caster_level` tinyint(3) unsigned NOT NULL,
  `caster_name` varchar(64) NOT NULL,
  `ticsremaining` int(10) unsigned NOT NULL,
  `counters` int(10) unsigned NOT NULL,
  `numhits` int(10) unsigned NOT NULL,
  `melee_rune` int(10) unsigned NOT NULL,
  `magic_rune` int(10) unsigned NOT NULL,
  `persistent` tinyint(3) unsigned NOT NULL,
  `dot_rune` int(10) NOT NULL DEFAULT '0',
  `caston_x` int(10) NOT NULL DEFAULT '0',
  `caston_y` int(10) NOT NULL DEFAULT '0',
  `caston_z` int(10) NOT NULL DEFAULT '0',
  `ExtraDIChance` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`slot_id`),
  KEY `character_id` (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_pet_buffs` (
  `char_id` int(11) NOT NULL,
  `pet` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `spell_id` int(11) NOT NULL,
  `caster_level` tinyint(4) NOT NULL DEFAULT '0',
  `castername` varchar(64) NOT NULL DEFAULT '',
  `ticsremaining` int(11) NOT NULL DEFAULT '0',
  `counters` int(11) NOT NULL DEFAULT '0',
  `numhits` int(11) NOT NULL DEFAULT '0',
  `rune` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`pet`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_pet_info` (
  `char_id` int(11) NOT NULL,
  `pet` int(11) NOT NULL,
  `petname` varchar(64) NOT NULL DEFAULT '',
  `petpower` int(11) NOT NULL DEFAULT '0',
  `spell_id` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `size` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`pet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_pet_inventory` (
  `char_id` int(11) NOT NULL,
  `pet` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`char_id`,`pet`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_zone_flags` (
  `id` int(11) NOT NULL DEFAULT '0',
  `zoneID` int(11) NOT NULL DEFAULT '0',
  `key_` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`zoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_recipe_list` (
  `char_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `madecount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `charid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1 = Friend, 0 = Ignore',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`charid`,`type`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_list_player` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `charid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`charid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `msgid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charid` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `from` varchar(100) NOT NULL DEFAULT '',
  `subject` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `to` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgid`),
  KEY `charid` (`charid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2477 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_titlesets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL,
  `title_set` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=717 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trader` (
  `char_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `serialnumber` int(10) unsigned NOT NULL DEFAULT '0',
  `charges` int(11) NOT NULL DEFAULT '0',
  `item_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `slot_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`slot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
