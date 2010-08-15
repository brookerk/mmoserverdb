/*
---------------------------------------------------------------------------------------
This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)

For more information, visit http://www.swganh.com

Copyright (c) 2006 - 2010 The SWG:ANH Team
---------------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
---------------------------------------------------------------------------------------
*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE swganh;

--
-- Definition of table `galaxy`
--

DROP TABLE IF EXISTS `galaxy`;
CREATE TABLE `galaxy` (
  `galaxy_id` int(5) NOT NULL auto_increment COMMENT 'Server ID',
  `name` char(32) NOT NULL default '' COMMENT 'Server Name',
  `address` char(16) NOT NULL default '' COMMENT 'Server IP Address',
  `port` int(8) NOT NULL default '0' COMMENT 'Server Listen Port',
  `pingport` int(8) default NULL COMMENT 'Server PING port',
  `population` int(4) NOT NULL default '0' COMMENT 'Server Population (Administrative Feature)',
  `character_retention` int(4) NOT NULL COMMENT 'Character retention period (Administrative Feature)',
  `items_retention` int(4) NOT NULL COMMENT 'Item retention period (Administrative Feature)',
  `account_retention` int(4) NOT NULL COMMENT 'Account retention period (Administrative Feature)',
  `status` int(10) unsigned NOT NULL default '0' COMMENT 'Current Galaxy Status (0-offline 1-loading 2-online 3-locked)',
  `last_update` datetime NOT NULL COMMENT 'Last Galaxy Update',
  `global_Tick_Count` bigint(20) unsigned NOT NULL COMMENT 'Global server tickcount',
  `characters_Allowed` int(4) unsigned NOT NULL COMMENT 'Maximum Characters Allowed',
  `unlimited_Characters` int(4) unsigned NOT NULL COMMENT 'Unlimited Characters 1-yes 0-no',
  PRIMARY KEY  (`galaxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galaxy`
--

/*!40000 ALTER TABLE `galaxy` DISABLE KEYS */;
INSERT INTO `galaxy` (`galaxy_id`,`name`,`address`,`port`,`pingport`,`population`,`character_retention`,`items_retention`,`account_retention`,`status`,`last_update`,`global_Tick_Count`, `characters_Allowed`, `unlimited_Characters`) VALUES
 (2,'SWGANH - Test Center','127.0.0.1',44991,44992,0,180,1,180,0,NOW(),0, 2, 0);
/*!40000 ALTER TABLE `galaxy` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
