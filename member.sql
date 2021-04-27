-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2021 at 05:04 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"project_member\",\"table\":\"adminlogs\"},{\"db\":\"project_dbs\",\"table\":\"custom_graph\"},{\"db\":\"project_dbs\",\"table\":\"custom_sections\"},{\"db\":\"project_dbs\",\"table\":\"custom_maintenance\"},{\"db\":\"project_dbs\",\"table\":\"maintenance_record\"},{\"db\":\"project_dbs\",\"table\":\"custom_alerts\"},{\"db\":\"project_dbs\",\"table\":\"custom_installation_info\"},{\"db\":\"project_dbs\",\"table\":\"installation_info\"},{\"db\":\"project_dbs\",\"table\":\"user_and_devices\"},{\"db\":\"project_dbs\",\"table\":\"custom_devicestatus\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`) VALUES
('root', 'project_dbs', 'maintenance_record', '{\"CREATE_TIME\":\"2021-04-01 16:59:04\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `config_data`) VALUES
('root', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project_dbs`
--
CREATE DATABASE IF NOT EXISTS `project_dbs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `project_dbs`;

-- --------------------------------------------------------

--
-- Table structure for table `custom_alerts`
--

CREATE TABLE `custom_alerts` (
  `id` int NOT NULL,
  `device_id` int NOT NULL,
  `today_check` varchar(50) NOT NULL DEFAULT 'on',
  `today_title` varchar(50) NOT NULL DEFAULT 'Today',
  `last_7_check` varchar(50) NOT NULL DEFAULT 'on',
  `last_7_title` varchar(50) NOT NULL DEFAULT 'Last 7 Days',
  `last_mnth_check` varchar(50) NOT NULL DEFAULT 'on',
  `last_mnth_title` varchar(50) NOT NULL DEFAULT 'Last Month',
  `last_6mnth_check` varchar(50) NOT NULL DEFAULT 'on',
  `last_6mnth_title` varchar(50) NOT NULL DEFAULT 'Last Six Months'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `custom_alerts`
--

INSERT INTO `custom_alerts` (`id`, `device_id`, `today_check`, `today_title`, `last_7_check`, `last_7_title`, `last_mnth_check`, `last_mnth_title`, `last_6mnth_check`, `last_6mnth_title`) VALUES
(1, 1, 'on', 'Todayx', 'on', 'Last 7 Days', 'on', 'Last Month', 'on', 'Last Six Months'),
(2, 26, 'on', 'Today', 'on', 'Last 7 Days', 'on', 'Last Month', 'on', 'Last Six Months'),
(3, 28, 'on', 'Today', 'on', 'Last 7 Days', 'on', 'Last Month', 'on', 'Last Six Months'),
(4, 30, 'on', 'Today', 'on', 'Last 7 Days', 'on', 'Last Month', 'on', 'Last Six Months'),
(5, 32, 'on', 'Today', 'on', 'Last 7 Days', 'on', 'Last Month', 'on', 'Last Six Months'),
(6, 34, 'on', 'Today', 'on', 'Last 7 Days', 'on', 'Last Month', 'on', 'Last Six Months'),
(7, 36, 'on', 'Today', 'on', 'Last 7 Days', 'on', 'Last Month', 'on', 'Last Six Months'),
(8, 37, 'on', 'Today', 'on', 'Last 7 Days', 'on', 'Last Month', 'on', 'Last Six Months');

-- --------------------------------------------------------

--
-- Table structure for table `custom_devicestatus`
--

CREATE TABLE `custom_devicestatus` (
  `id` int NOT NULL,
  `device_id` int NOT NULL,
  `a1` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'on',
  `a2` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'on',
  `a3` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'on',
  `a4` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'on',
  `a5` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'on',
  `a6` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'on',
  `a7` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'on',
  `a8` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_devicestatus`
--

INSERT INTO `custom_devicestatus` (`id`, `device_id`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`) VALUES
(1, 1, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(2, 26, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(3, 28, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(4, 30, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(5, 32, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(6, 34, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(7, 36, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on'),
(8, 37, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `custom_graph`
--

CREATE TABLE `custom_graph` (
  `id` int NOT NULL,
  `device_id` int NOT NULL,
  `graph_title` varchar(30) NOT NULL DEFAULT 'TORQUE HISTORY',
  `line_color` varchar(20) NOT NULL DEFAULT '#009cde',
  `line_name` varchar(20) NOT NULL DEFAULT 'Torque',
  `y_unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'FT-LBS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `custom_graph`
--

INSERT INTO `custom_graph` (`id`, `device_id`, `graph_title`, `line_color`, `line_name`, `y_unit`) VALUES
(1, 1, 'Graph112', '#009cde', 'Torque', 'FT-LBS'),
(2, 26, 'TORQUE HISTORY', '#009cde', 'Torque', 'FT-LBS'),
(3, 28, 'TORQUE HISTORY', '#009cde', 'Torque', 'FT-LBS'),
(4, 30, 'TORQUE HISTORY', '#009cde', 'Torque', 'FT-LBS'),
(5, 32, 'TORQUE HISTORY', '#009cde', 'Torque', 'FT-LBS'),
(6, 34, 'TORQUE HISTORY', '#009cde', 'Torque', 'FT-LBS'),
(7, 36, 'TORQUE HISTORY', '#009cde', 'Torque', 'FT-LBS'),
(8, 37, 'TORQUE HISTORY', '#009cde', 'Torque', 'FT-LBS');

-- --------------------------------------------------------

--
-- Table structure for table `custom_installation_info`
--

CREATE TABLE `custom_installation_info` (
  `id` int NOT NULL,
  `device_id` int NOT NULL,
  `drive_model_check` varchar(20) NOT NULL DEFAULT 'on',
  `drive_model_title` varchar(50) NOT NULL DEFAULT 'Drive Model',
  `drive_rating_check` varchar(20) NOT NULL DEFAULT 'on',
  `drive_rating_title` varchar(50) NOT NULL DEFAULT 'Driver Continuous Rating',
  `drive_speed_check` varchar(20) NOT NULL DEFAULT 'on',
  `drive_speed_title` varchar(50) NOT NULL DEFAULT 'Output Speed',
  `drive_motor_check` varchar(20) NOT NULL DEFAULT 'on',
  `drive_motor_title` varchar(50) NOT NULL DEFAULT 'Electric Motor Rake',
  `drive_lift_check` varchar(20) NOT NULL DEFAULT 'on',
  `drive_lift_title` varchar(50) NOT NULL DEFAULT 'Electric Motor Lift',
  `drive_service_check` varchar(20) NOT NULL DEFAULT 'on',
  `drive_service_title` varchar(50) NOT NULL DEFAULT 'In Service Since',
  `driver_sn_check` varchar(20) NOT NULL DEFAULT 'on',
  `driver_sn_title` varchar(50) NOT NULL DEFAULT 'Driver SN',
  `driver_user_check` varchar(20) NOT NULL DEFAULT 'on',
  `driver_user_title` varchar(50) NOT NULL DEFAULT 'End User',
  `driver_installation_check` varchar(20) NOT NULL DEFAULT 'on',
  `driver_installation_title` varchar(50) NOT NULL DEFAULT 'Installation',
  `driver_process_check` varchar(20) NOT NULL DEFAULT 'on',
  `driver_process_title` varchar(50) NOT NULL DEFAULT 'Process',
  `driver_size_check` varchar(20) NOT NULL DEFAULT 'on',
  `driver_size_title` varchar(50) NOT NULL DEFAULT 'Basin Size (diameter)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `custom_installation_info`
--

INSERT INTO `custom_installation_info` (`id`, `device_id`, `drive_model_check`, `drive_model_title`, `drive_rating_check`, `drive_rating_title`, `drive_speed_check`, `drive_speed_title`, `drive_motor_check`, `drive_motor_title`, `drive_lift_check`, `drive_lift_title`, `drive_service_check`, `drive_service_title`, `driver_sn_check`, `driver_sn_title`, `driver_user_check`, `driver_user_title`, `driver_installation_check`, `driver_installation_title`, `driver_process_check`, `driver_process_title`, `driver_size_check`, `driver_size_title`) VALUES
(1, 1, 'on', 'Drive Model', 'on', 'Driver Continuous Rating', 'on', 'Output Speed', 'on', 'Electric Motor Rake', 'on', 'Electric Motor Lift', 'on', 'In Service Since', 'on', 'Driver SN', 'on', 'End User', 'on', 'Installation', 'on', 'Process', 'on', 'Basin Size (diameter)'),
(2, 26, 'on', 'Drive Model', 'on', 'Driver Continuous Rating', 'on', 'Output Speed', 'on', 'Electric Motor Rake', 'on', 'Electric Motor Lift', 'on', 'In Service Since', 'on', 'Driver SN', 'on', 'End User', 'on', 'Installation', 'on', 'Process', 'on', 'Basin Size (diameter)'),
(3, 28, 'on', 'Drive Model', 'on', 'Driver Continuous Rating', 'on', 'Output Speed', 'on', 'Electric Motor Rake', 'on', 'Electric Motor Lift', 'on', 'In Service Since', 'on', 'Driver SN', 'on', 'End User', 'on', 'Installation', 'on', 'Process', 'on', 'Basin Size (diameter)'),
(4, 30, 'on', 'Drive Model', 'on', 'Driver Continuous Rating', 'on', 'Output Speed', 'on', 'Electric Motor Rake', 'on', 'Electric Motor Lift', 'on', 'In Service Since', 'on', 'Driver SN', 'on', 'End User', 'on', 'Installation', 'on', 'Process', 'on', 'Basin Size (diameter)'),
(5, 32, 'on', 'Drive Model', 'on', 'Driver Continuous Rating', 'on', 'Output Speed', 'on', 'Electric Motor Rake', 'on', 'Electric Motor Lift', 'on', 'In Service Since', 'on', 'Driver SN', 'on', 'End User', 'on', 'Installation', 'on', 'Process', 'on', 'Basin Size (diameter)'),
(6, 34, 'on', 'Drive Model', 'on', 'Driver Continuous Rating', 'on', 'Output Speed', 'on', 'Electric Motor Rake', 'on', 'Electric Motor Lift', 'on', 'In Service Since', 'on', 'Driver SN', 'on', 'End User', 'on', 'Installation', 'on', 'Process', 'on', 'Basin Size (diameter)'),
(7, 36, 'on', 'Drive Model', 'on', 'Driver Continuous Rating', 'on', 'Output Speed', 'on', 'Electric Motor Rake', 'on', 'Electric Motor Lift', 'on', 'In Service Since', 'on', 'Driver SN', 'on', 'End User', 'on', 'Installation', 'on', 'Process', 'on', 'Basin Size (diameter)'),
(8, 37, 'on', 'Drive Model', 'on', 'Driver Continuous Rating', 'on', 'Output Speed', 'on', 'Electric Motor Rake', 'on', 'Electric Motor Lift', 'on', 'In Service Since', 'on', 'Driver SN', 'on', 'End User', 'on', 'Installation', 'on', 'Process', 'on', 'Basin Size (diameter)');

-- --------------------------------------------------------

--
-- Table structure for table `custom_maintenance`
--

CREATE TABLE `custom_maintenance` (
  `id` int NOT NULL,
  `device_id` int NOT NULL,
  `last_oil_change_main_check` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'on',
  `last_oil_change_main_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT ' Last Oil Change (main gear)',
  `next_oil_change_main_check` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'on',
  `next_oil_change_main_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Next Oil Change (main gear)',
  `last_oil_lift_check` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'on',
  `last_oil_lift_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Last Oil Change (lift PU)',
  `next_oil_lift_check` varchar(50) NOT NULL DEFAULT 'on',
  `next_oil_lift_title` varchar(50) NOT NULL DEFAULT 'Next Oil Change (lift PU)',
  `next_service_check` varchar(50) NOT NULL DEFAULT 'on',
  `next_service_title` varchar(50) NOT NULL DEFAULT 'Next Schedule Service',
  `dbs_warranty_check` varchar(50) NOT NULL DEFAULT 'on',
  `dbs_warranty_title` varchar(50) NOT NULL DEFAULT 'DBS Warranty',
  `last_repair_check` varchar(50) NOT NULL DEFAULT 'on',
  `last_repair_title` varchar(50) NOT NULL DEFAULT 'Last Repair(INC #)',
  `parts_repaired_check` varchar(50) NOT NULL DEFAULT 'on',
  `parts_repaired_title` varchar(50) NOT NULL DEFAULT 'Parts Repaired'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `custom_maintenance`
--

INSERT INTO `custom_maintenance` (`id`, `device_id`, `last_oil_change_main_check`, `last_oil_change_main_title`, `next_oil_change_main_check`, `next_oil_change_main_title`, `last_oil_lift_check`, `last_oil_lift_title`, `next_oil_lift_check`, `next_oil_lift_title`, `next_service_check`, `next_service_title`, `dbs_warranty_check`, `dbs_warranty_title`, `last_repair_check`, `last_repair_title`, `parts_repaired_check`, `parts_repaired_title`) VALUES
(1, 1, 'on', 'Last Oil Change (main gear)', 'on', 'Next Oil Change (main gear)', 'on', 'Driver Continuous Rating', 'on', 'Next Oil Change (lift PU)', 'on', 'Next Schedule Service', 'on', 'DBS Warrantyr', 'on', 'Last Repair(INC #)', 'on', 'Parts Repaired'),
(2, 26, 'on', 'Last Oil Change (main gear)', 'on', 'Next Oil Change (main gear):', 'on', 'Driver Continuous Rating', 'on', 'Next Oil Change (lift PU)', 'on', 'Next Schedule Service', 'on', 'DBS Warranty', 'on', 'Last Repair(INC #)', 'on', 'Parts Repaired'),
(3, 28, 'on', 'Last Oil Change (main gear)', 'on', 'Next Oil Change (main gear):', 'on', 'Driver Continuous Rating', 'on', 'Next Oil Change (lift PU)', 'on', 'Next Schedule Service', 'on', 'DBS Warranty', 'on', 'Last Repair(INC #)', 'on', 'Parts Repaired'),
(4, 30, 'on', 'Last Oil Change (main gear)', 'on', 'Next Oil Change (main gear):', 'on', 'Driver Continuous Rating', 'on', 'Next Oil Change (lift PU)', 'on', 'Next Schedule Service', 'on', 'DBS Warranty', 'on', 'Last Repair(INC #)', 'on', 'Parts Repaired'),
(5, 32, 'on', 'Last Oil Change (main gear)', 'on', 'Next Oil Change (main gear):', 'on', 'Driver Continuous Rating', 'on', 'Next Oil Change (lift PU)', 'on', 'Next Schedule Service', 'on', 'DBS Warranty', 'on', 'Last Repair(INC #)', 'on', 'Parts Repaired'),
(6, 34, 'on', 'Last Oil Change (main gear)', 'on', 'Next Oil Change (main gear):', 'on', 'Driver Continuous Rating', 'on', 'Next Oil Change (lift PU)', 'on', 'Next Schedule Service', 'on', 'DBS Warranty', 'on', 'Last Repair(INC #)', 'on', 'Parts Repaired'),
(7, 36, 'on', 'Last Oil Change (main gear)', 'on', 'Next Oil Change (main gear):', 'on', 'Driver Continuous Rating', 'on', 'Next Oil Change (lift PU)', 'on', 'Next Schedule Service', 'on', 'DBS Warranty', 'on', 'Last Repair(INC #)', 'on', 'Parts Repaired'),
(8, 37, 'on', 'Last Oil Change (main gear)', 'on', 'Next Oil Change (main gear):', 'on', 'Driver Continuous Rating', 'on', 'Next Oil Change (lift PU)', 'on', 'Next Schedule Service', 'on', 'DBS Warranty', 'on', 'Last Repair(INC #)', 'on', 'Parts Repaired');

-- --------------------------------------------------------

--
-- Table structure for table `custom_sections`
--

CREATE TABLE `custom_sections` (
  `id` int NOT NULL,
  `device_id` int NOT NULL,
  `device_settings_check` varchar(50) NOT NULL DEFAULT 'on',
  `torque_gauge_check` varchar(50) NOT NULL DEFAULT 'on',
  `graph_check` varchar(50) NOT NULL DEFAULT 'on',
  `installation_info_check` varchar(50) NOT NULL DEFAULT 'on',
  `alerts_check` varchar(50) NOT NULL DEFAULT 'on',
  `maintenance_check` varchar(50) NOT NULL DEFAULT 'on',
  `installation_info_title` varchar(50) NOT NULL DEFAULT 'INSTALLATION INFORMATION',
  `alerts_title` varchar(50) NOT NULL DEFAULT 'ALERTS',
  `maintenance_title` varchar(50) NOT NULL DEFAULT 'MAINTENANCE RECORD',
  `device_settings_title` varchar(50) NOT NULL DEFAULT 'Device Settings',
  `graph_title` varchar(50) NOT NULL DEFAULT 'Graph',
  `torque_title` varchar(50) NOT NULL DEFAULT 'Torque Gauge'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_sections`
--

INSERT INTO `custom_sections` (`id`, `device_id`, `device_settings_check`, `torque_gauge_check`, `graph_check`, `installation_info_check`, `alerts_check`, `maintenance_check`, `installation_info_title`, `alerts_title`, `maintenance_title`, `device_settings_title`, `graph_title`, `torque_title`) VALUES
(1, 1, 'on', 'on', 'on', 'on', 'on', 'on', 'INSTALLATION INFO', 'ALERTS', 'MAINTENANCE RECORD0', 'Device Settings', 'TORQUE HISTORY', 'Torque Gauge'),
(2, 26, 'on', 'on', 'on', 'on', 'on', 'on', 'INSTALLATION INFORMATION', 'ALERTS', 'MAINTENANCE RECORD', 'Device Settings', 'Graph112', 'Torque Gauge'),
(3, 28, 'on', 'on', 'on', 'on', 'on', 'on', 'INSTALLATION INFORMATION', 'ALERTS', 'MAINTENANCE RECORD', 'Device Settings', 'Graph112', 'Torque Gauge'),
(4, 30, 'on', 'on', 'on', 'on', 'on', 'on', 'INSTALLATION INFORMATION', 'ALERTS', 'MAINTENANCE RECORD', 'Device Settings', 'Graph112', 'Torque Gauge'),
(5, 32, 'on', 'on', 'on', 'on', 'on', 'on', 'INSTALLATION INFORMATION', 'ALERTS', 'MAINTENANCE RECORD', 'Device Settings', 'Graph112', 'Torque Gauge'),
(6, 34, 'on', 'on', 'on', 'on', 'on', 'on', 'INSTALLATION INFORMATION', 'ALERTS', 'MAINTENANCE RECORD', 'Device Settings', 'Graph112', 'Torque Gauge'),
(7, 36, 'on', 'on', 'on', 'on', 'on', 'on', 'INSTALLATION INFORMATION', 'ALERTS', 'MAINTENANCE RECORD', 'Device Settings', 'Graph112', 'Torque Gauge'),
(8, 37, 'on', 'on', 'on', 'on', 'on', 'on', 'INSTALLATION INFORMATION', 'ALERTS', 'MAINTENANCE RECORD', 'Device Settings', 'Graph112', 'Torque Gauge');

-- --------------------------------------------------------

--
-- Table structure for table `installation_info`
--

CREATE TABLE `installation_info` (
  `id` int NOT NULL,
  `mac` varchar(30) NOT NULL,
  `driver_model` varchar(30) NOT NULL,
  `driver_rating` varchar(30) NOT NULL,
  `speed` varchar(30) NOT NULL,
  `electric_rate` varchar(30) NOT NULL,
  `electric_lift` varchar(30) NOT NULL,
  `driver_sn` varchar(30) NOT NULL,
  `end_user` varchar(30) NOT NULL,
  `installation` varchar(30) NOT NULL,
  `process` varchar(30) NOT NULL,
  `basin_size` varchar(30) NOT NULL,
  `service_since` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `installation_info`
--

INSERT INTO `installation_info` (`id`, `mac`, `driver_model`, `driver_rating`, `speed`, `electric_rate`, `electric_lift`, `driver_sn`, `end_user`, `installation`, `process`, `basin_size`, `service_since`) VALUES
(1, 'testing:mac', 'S25-AE-l52F', '14,000 ft-lbs', '0.06', '1 HP', '1 HP', '123G768', 'Paper Mill of south', 'Rome, GA, USA', 'Mud Thickening', '30ft', '12/03/2004'),
(3, '3:4:511', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(4, 'esp32@esp32.com', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(5, '2222', '1', '2', '2', '2', '1', '2', '2', '1', '1', '1', '2'),
(6, '2222', '1', '2', '2', '2', '1', '2', '2', '1', '1', '1', '2'),
(7, '121212', '1212', '1212', '1212', '1221', '1221', '1212', '1221', '1212', '1221', '1212', '1212'),
(8, 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk'),
(9, 'kkkk', 'kkkk', '1', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk', 'kkkk');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_record`
--

CREATE TABLE `maintenance_record` (
  `id` int NOT NULL,
  `last_oil_pdu` date NOT NULL,
  `next_oil_change_lift_pu` date NOT NULL,
  `next_schedule_service` date NOT NULL,
  `last_repair` varchar(50) NOT NULL,
  `last_oil_change_main_gear` date NOT NULL,
  `parts_prepaired` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maintenance_record`
--

INSERT INTO `maintenance_record` (`id`, `last_oil_pdu`, `next_oil_change_lift_pu`, `next_schedule_service`, `last_repair`, `last_oil_change_main_gear`, `parts_prepaired`) VALUES
(1, '2021-04-28', '2021-04-27', '2021-04-26', '1234', '2021-04-02', 'na'),
(2, '2021-04-01', '2021-04-03', '2021-04-04', 'N/A', '2021-04-02', 'N/A'),
(3, '2021-04-01', '2021-04-03', '2021-04-04', 'N/A', '2021-04-02', 'N/A'),
(4, '2021-04-01', '2021-04-03', '2021-04-04', 'N/A', '2021-04-02', 'N/A'),
(5, '2021-04-09', '2021-04-11', '2021-04-12', 'abv', '2021-04-10', 'def'),
(6, '2021-04-14', '2021-04-16', '2021-04-17', '333', '2021-04-15', '444');

-- --------------------------------------------------------

--
-- Table structure for table `recorded_values`
--

CREATE TABLE `recorded_values` (
  `id` int NOT NULL,
  `mac` varchar(20) NOT NULL,
  `alarm_cirlcleVal` tinyint(1) NOT NULL,
  `cutOff_cirlcleVal` tinyint(1) NOT NULL,
  `liftActive_cirlcleVal` tinyint(1) NOT NULL,
  `waterInOil_cirlcleVal` tinyint(1) NOT NULL,
  `lowOil_cirlcleVal` tinyint(1) NOT NULL,
  `lossMotion_cirlcleVal` tinyint(1) NOT NULL,
  `leftPosition_verticalBar` int NOT NULL,
  `oilTemp_verticalBar` int NOT NULL,
  `temp1` float NOT NULL,
  `temp2` float NOT NULL,
  `temp3` float NOT NULL,
  `Torque` int NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recorded_values`
--

INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(1, 'testing:mac', 0, 0, 0, 1, 0, 1, 0, 1, 51, 0, 0, 0, '2021-02-01 15:16:32'),
(3, 'testing:mac', 1, 0, 1, 0, 1, 0, 22, 55, 77, 0, 0, 0, '2021-02-02 10:27:26'),
(4, 'testing:mac', 1, 2, 3, 4, 5, 0, 7, 8, 9, 0, 0, 0, '2021-02-17 19:02:44'),
(5, 'testing:mac', 1, 2, 3, 4, 5, 6, 7, 8, 1, 0, 0, 0, '2021-02-17 19:17:31'),
(6, 'testing:mac', 1, 2, 3, 4, 5, 6, 7, 8, 1, 0, 0, 0, '2021-02-18 17:24:20'),
(7, 'testing:mac', 1, 0, 0, 0, 1, 0, 11, 33, 55, 0, 0, 0, '2021-02-18 18:45:06'),
(8, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 46, 0, '2021-02-18 21:08:19'),
(9, 'testing:mac', 1, 1, 0, 0, 1, 0, 50, 60, 10, 0, 0, 0, '2021-02-18 23:28:39'),
(10, 'testing:mac', 1, 1, 1, 1, 1, 1, 50, 60, 10, 46, 0, 0, '2021-02-18 23:29:12'),
(11, 'testing:mac', 1, 1, 1, 1, 1, 1, 20, 60, 10, 0, 0, 0, '2021-02-18 23:29:48'),
(12, 'testing:mac', 1, 1, 1, 0, 1, 1, 20, 60, 10, 0, 0, 0, '2021-02-18 23:32:45'),
(13, 'testing:mac', 1, 1, 1, 0, 1, 1, 20, 60, 10, 0, 0, 0, '2021-02-18 23:32:53'),
(14, 'testing:mac', 1, 1, 1, 0, 1, 1, 20, 60, 40, 0, 0, 0, '2021-02-18 23:32:59'),
(15, 'testing:mac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-18 23:33:28'),
(16, 'testing:mac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-18 23:33:53'),
(17, 'testing:mac', 1, 1, 1, 0, 1, 1, 20, 60, 40, 0, 0, 0, '2021-02-18 23:35:02'),
(18, 'testing:mac', 0, 1, 1, 0, 1, 1, 20, 60, 40, 0, 46, 0, '2021-02-18 23:35:16'),
(19, 'testing:mac', 0, 1, 1, 0, 1, 1, 20, 60, 2, 0, 0, 0, '2021-02-18 23:37:40'),
(20, 'testing:mac', 0, 0, 0, 0, 1, 1, 20, 60, 2, 0, 0, 0, '2021-02-18 23:42:12'),
(21, 'testing:mac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-18 23:55:33'),
(22, 'testing:mac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-18 23:56:10'),
(23, 'testing:mac', 1, 1, 0, 0, 1, 1, 20, 60, 2, 0, 0, 0, '2021-02-18 23:56:45'),
(24, 'testing:mac', 1, 0, 0, 0, 1, 1, 20, 60, 2, 0, 0, 0, '2021-02-18 23:57:07'),
(25, 'testing:mac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, '2021-02-18 23:57:31'),
(26, 'testing:mac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-18 23:57:48'),
(27, 'testing:mac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-19 14:45:36'),
(28, 'testing:mac', 1, 0, 0, 0, 1, 0, 11, 33, 55, 0, 0, 0, '2021-02-19 14:45:58'),
(29, 'testing:mac', 1, 0, 0, 0, 1, 0, 11, 33, 4, 0, 0, 0, '2021-02-19 14:46:29'),
(30, 'testing:mac', 1, 0, 0, 0, 1, 0, 1, 73, 14, 0, 0, 0, '2021-02-19 14:49:31'),
(31, 'testing:mac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-21 17:39:53'),
(32, 'testing:mac', 1, 0, 0, 0, 1, 0, 11, 33, 55, 0, 0, 0, '2021-02-21 17:41:39'),
(33, 'testing:mac', 1, 0, 0, 0, 1, 0, 11, 33, 24, 0, 0, 0, '2021-02-21 17:41:47'),
(34, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:12:14'),
(35, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:16:16'),
(36, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:20:17'),
(37, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:24:19'),
(38, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:28:20'),
(39, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:32:22'),
(40, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:36:23'),
(41, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:40:25'),
(42, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:44:26'),
(43, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:48:28'),
(44, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:52:29'),
(45, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 02:56:31'),
(46, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:00:32'),
(47, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:04:34'),
(48, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:08:35'),
(49, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:12:37'),
(50, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:16:38'),
(51, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:20:40'),
(52, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:24:41'),
(53, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:28:43'),
(54, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:32:44'),
(55, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:36:46'),
(56, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:40:47'),
(57, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:44:49'),
(58, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:48:50'),
(59, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:52:52'),
(60, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 03:56:54'),
(61, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:00:55'),
(62, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:04:56'),
(63, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:08:58'),
(64, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:13:00'),
(65, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:17:02'),
(66, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:21:03'),
(67, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:25:04'),
(68, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:29:06'),
(69, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:33:08'),
(70, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:37:09'),
(71, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:41:11'),
(72, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:45:12'),
(73, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:49:14'),
(74, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:53:16'),
(75, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 04:57:18'),
(76, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:01:19'),
(77, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:05:20'),
(78, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:09:22'),
(79, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:13:24'),
(80, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:17:25'),
(81, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:21:27'),
(82, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:25:28'),
(83, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:29:30'),
(84, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:33:31'),
(85, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:37:33'),
(86, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:41:34'),
(87, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:45:36'),
(88, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:49:40'),
(89, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:53:42'),
(90, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 05:57:43'),
(91, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:01:45'),
(92, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:05:46'),
(93, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:09:48'),
(94, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:13:49'),
(95, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:17:51'),
(96, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:21:52'),
(97, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:25:54'),
(98, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:29:55'),
(99, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:33:57'),
(100, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:37:58'),
(101, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:42:00'),
(102, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:46:01'),
(103, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:50:03'),
(104, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:54:04'),
(105, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 06:58:06'),
(106, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:02:07'),
(107, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:06:09'),
(108, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:10:11'),
(109, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:14:12'),
(110, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:18:14'),
(111, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:22:15'),
(112, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:26:17'),
(113, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:30:18'),
(114, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:34:20'),
(115, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:38:21'),
(116, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:42:23'),
(117, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:46:24'),
(118, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:50:26'),
(119, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:54:27'),
(120, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 07:58:29'),
(121, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:02:30'),
(122, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:06:32'),
(123, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:10:33'),
(124, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:14:35'),
(125, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:18:36'),
(126, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:22:38'),
(127, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:26:39'),
(128, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:30:41'),
(129, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:34:42'),
(130, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:38:44'),
(131, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:42:45'),
(132, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:46:47'),
(133, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:50:48'),
(134, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:54:50'),
(135, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 08:58:51'),
(136, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:02:53'),
(137, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:06:54'),
(138, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:10:56'),
(139, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:14:57'),
(140, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:18:59'),
(141, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:23:00'),
(142, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:27:01'),
(143, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:31:03'),
(144, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:35:05'),
(145, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:39:06'),
(146, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:43:08'),
(147, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:47:09'),
(148, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:51:11'),
(149, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:55:12'),
(150, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 09:59:14'),
(151, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:03:15'),
(152, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:07:17'),
(153, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:11:18'),
(154, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:15:20'),
(155, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:19:21'),
(156, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:23:22'),
(157, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:27:24'),
(158, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:31:30'),
(159, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:35:32'),
(160, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:39:33'),
(161, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:43:35'),
(162, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:47:36'),
(163, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:51:38'),
(164, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:55:40'),
(165, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 10:59:41'),
(166, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:03:42'),
(167, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:07:44'),
(168, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:11:45'),
(169, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:15:47'),
(170, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:19:49'),
(171, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:23:50'),
(172, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:27:51'),
(173, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:31:53'),
(174, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:35:54'),
(175, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:39:56'),
(176, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:43:57'),
(177, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:48:00'),
(178, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:52:01'),
(179, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 11:56:03'),
(180, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:00:05'),
(181, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:04:06'),
(182, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:08:11'),
(183, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:12:13'),
(184, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:16:15'),
(185, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:20:16'),
(186, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:24:17'),
(187, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:28:19'),
(188, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:32:20'),
(189, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:36:22'),
(190, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:40:23'),
(191, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:44:25'),
(192, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:48:26'),
(193, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:52:28'),
(194, 'testing:mac', 1, 1, 1, 1, 1, 0, 88, 99, 5, 0, 0, 0, '2021-02-23 12:56:29'),
(195, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 12:57:09'),
(196, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 13:07:10'),
(197, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 13:17:12'),
(198, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 13:27:13'),
(199, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 13:37:15'),
(200, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 13:47:17'),
(201, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 13:57:18'),
(202, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 14:07:20'),
(203, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 14:17:21'),
(204, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 14:27:23'),
(205, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 14:37:24'),
(206, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 14:47:26'),
(207, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 14:57:28'),
(208, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 15:07:29'),
(209, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 15:17:31'),
(210, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 15:27:32'),
(211, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 15:37:34'),
(212, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 15:47:35'),
(213, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 15:57:37'),
(214, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 16:07:39'),
(215, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 16:17:40'),
(216, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 16:27:42'),
(217, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 16:37:44'),
(218, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 16:47:45'),
(219, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 16:57:47'),
(220, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 17:07:48'),
(221, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 17:17:50'),
(222, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 17:27:51'),
(223, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 17:37:53'),
(224, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 17:47:55'),
(225, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 17:57:57'),
(226, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 18:07:59'),
(227, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 18:18:00'),
(228, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 18:28:02'),
(229, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 18:38:03'),
(230, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 18:48:05'),
(231, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 18:58:07'),
(232, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 19:08:09'),
(233, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 19:18:11'),
(234, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 19:28:12'),
(235, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 19:38:14'),
(236, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 19:48:15'),
(237, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 19:58:17'),
(238, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 20:08:20'),
(239, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 20:18:22'),
(240, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 20:28:23'),
(241, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 20:38:24'),
(242, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 20:48:26'),
(243, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 20:58:28'),
(244, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 21:08:29'),
(245, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 21:18:31'),
(246, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 21:28:32'),
(247, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 21:38:34'),
(248, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 21:48:36'),
(249, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 21:58:38'),
(250, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 22:08:39'),
(251, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 22:18:41'),
(252, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 22:28:43'),
(253, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 22:38:44'),
(254, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 22:48:46'),
(255, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 22:58:00'),
(256, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 23:08:02'),
(257, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 23:18:04'),
(258, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 23:28:05'),
(259, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 23:38:07'),
(260, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 23:48:09'),
(261, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-23 23:58:10'),
(262, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 00:08:12'),
(263, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 00:18:14'),
(264, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 00:28:16'),
(265, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 00:38:17'),
(266, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 00:48:19'),
(267, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 00:58:20'),
(268, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 01:08:22'),
(269, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 01:18:23'),
(270, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 01:28:25'),
(271, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 01:38:26'),
(272, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 01:48:28'),
(273, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 01:58:30'),
(274, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 02:08:31'),
(275, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 02:18:33'),
(276, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 02:20:51'),
(277, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 02:30:53'),
(278, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 02:40:54'),
(279, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 02:50:56'),
(280, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 03:00:57'),
(281, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 03:10:59'),
(282, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 03:21:00'),
(283, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 03:31:02'),
(284, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 03:41:03'),
(285, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 03:51:05'),
(286, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 04:01:07'),
(287, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 04:11:08'),
(288, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 04:21:10'),
(289, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 04:31:11'),
(290, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 04:41:13'),
(291, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 04:51:15'),
(292, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 05:01:16'),
(293, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 05:11:19'),
(294, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 05:21:20'),
(295, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 05:31:22'),
(296, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 05:41:26'),
(297, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 05:51:28'),
(298, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 06:01:29'),
(299, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 06:11:31'),
(300, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 06:21:33'),
(301, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 06:31:35'),
(302, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 06:41:37'),
(303, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 06:51:38'),
(304, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 07:01:40'),
(305, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 07:11:42'),
(306, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 07:21:43'),
(307, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 07:31:45'),
(308, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 07:41:46'),
(309, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 07:51:48'),
(310, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 08:01:50'),
(311, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 08:11:51'),
(312, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 08:21:53'),
(313, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 08:31:54'),
(314, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 08:41:56'),
(315, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 08:51:58'),
(316, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 09:02:00'),
(317, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 09:12:03'),
(318, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 09:22:04'),
(319, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 09:32:06'),
(320, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 09:42:08'),
(321, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 09:52:09'),
(322, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 10:02:11'),
(323, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 10:12:13'),
(324, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 10:22:14'),
(325, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 10:32:16'),
(326, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 10:42:17'),
(327, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 10:52:19'),
(328, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 11:02:20'),
(329, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 11:12:22'),
(330, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 11:22:24'),
(331, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 11:32:25'),
(332, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 11:42:27'),
(333, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 11:52:28'),
(334, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 12:02:30'),
(335, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 12:12:31'),
(336, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 12:22:33'),
(337, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 12:32:35'),
(338, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 12:42:36'),
(339, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 12:52:37'),
(340, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 13:02:39'),
(341, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 13:12:41'),
(342, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 13:22:42'),
(343, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 13:32:44'),
(344, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 13:42:45'),
(345, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 13:52:47'),
(346, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 14:02:48'),
(347, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 14:12:50'),
(348, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 14:22:51'),
(349, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 14:32:53'),
(350, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 14:42:54'),
(351, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 14:52:56'),
(352, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 15:02:57'),
(353, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 15:12:59'),
(354, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 15:23:01'),
(355, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 15:33:02'),
(356, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 15:43:04'),
(357, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 15:53:05'),
(358, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 16:03:07'),
(359, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 16:13:08'),
(360, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 16:23:10'),
(361, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 16:33:12'),
(362, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 16:43:13'),
(363, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 16:53:15'),
(364, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 17:03:16'),
(365, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 17:13:18'),
(366, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 17:23:19'),
(367, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 17:33:21'),
(368, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 17:43:22'),
(369, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 17:53:24'),
(370, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 18:03:25'),
(371, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 18:13:27'),
(372, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 18:23:28'),
(373, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 18:33:30'),
(374, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 18:43:32'),
(375, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 18:53:33'),
(376, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 19:03:35'),
(377, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 19:13:37'),
(378, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 19:23:38'),
(379, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 19:33:40'),
(380, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 19:43:41'),
(381, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 19:53:46'),
(382, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 20:03:48'),
(383, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 20:13:50'),
(384, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 20:23:51'),
(385, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 20:33:53'),
(386, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 20:43:55'),
(387, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 20:53:57'),
(388, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 21:03:59'),
(389, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 21:14:01'),
(390, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 21:24:04'),
(391, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 21:34:06'),
(392, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 21:44:08'),
(393, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 21:54:10'),
(394, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 22:04:12'),
(395, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 22:14:14'),
(396, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 22:24:15'),
(397, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 22:34:17'),
(398, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 22:44:19'),
(399, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 22:54:21'),
(400, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 23:04:23'),
(401, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 23:14:25'),
(402, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 23:24:26'),
(403, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 23:34:28'),
(404, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 23:44:30'),
(405, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-24 23:54:32'),
(406, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 00:04:34'),
(407, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 00:14:35'),
(408, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 00:24:37'),
(409, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 00:34:39'),
(410, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 00:44:41'),
(411, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 00:54:43'),
(412, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 01:04:44'),
(413, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 01:14:47'),
(414, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 01:24:49'),
(415, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 01:34:51'),
(416, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 01:44:53'),
(417, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 01:54:54'),
(418, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 02:04:56'),
(419, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 02:14:58'),
(420, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 02:25:00'),
(421, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 02:35:02'),
(422, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 02:45:03'),
(423, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 02:55:05'),
(424, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 03:05:07'),
(425, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 03:15:09'),
(426, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 03:25:10'),
(427, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 03:35:13'),
(428, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 03:45:14'),
(429, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 03:55:16'),
(430, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 04:05:18'),
(431, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 04:15:20'),
(432, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 04:25:21'),
(433, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 04:35:23'),
(434, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 04:45:25'),
(435, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 04:55:27'),
(436, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 05:05:29'),
(437, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 05:15:31'),
(438, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 05:25:32'),
(439, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 05:35:34'),
(440, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 05:45:36'),
(441, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 05:55:38'),
(442, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 06:05:39'),
(443, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 06:15:41'),
(444, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 06:25:43'),
(445, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 06:35:45'),
(446, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 06:45:47'),
(447, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 06:55:49'),
(448, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 07:05:50'),
(449, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 07:15:52'),
(450, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 07:25:54'),
(451, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 07:35:56'),
(452, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 07:45:58'),
(453, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 07:55:59'),
(454, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 08:06:01'),
(455, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 08:16:03'),
(456, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 08:26:05'),
(457, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 08:36:07'),
(458, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 08:46:09'),
(459, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 08:56:11'),
(460, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 09:06:13'),
(461, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 09:16:15'),
(462, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 09:26:17'),
(463, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 09:36:29'),
(464, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 09:46:30'),
(465, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 09:56:32'),
(466, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 10:06:34'),
(467, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 10:16:36'),
(468, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 10:26:38'),
(469, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 10:36:39'),
(470, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 10:46:41'),
(471, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 10:56:43'),
(472, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 11:06:45'),
(473, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 11:16:46'),
(474, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 11:26:48'),
(475, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 11:36:50'),
(476, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 11:46:52'),
(477, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 11:56:54'),
(478, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 12:06:55'),
(479, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 12:27:16'),
(480, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 12:37:17'),
(481, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 12:47:19'),
(482, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 12:57:21'),
(483, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 13:07:23'),
(484, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 13:17:25'),
(485, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 13:27:26'),
(486, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 13:37:28'),
(487, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 13:47:30'),
(488, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 13:57:32'),
(489, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 14:07:34'),
(490, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 14:17:35'),
(491, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 19:31:01'),
(492, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 19:41:03'),
(493, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 19:49:11'),
(494, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 19:59:16'),
(495, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 20:09:20'),
(496, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 20:19:26'),
(497, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 20:29:30'),
(498, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 20:39:42'),
(499, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 20:49:49'),
(500, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 20:59:55'),
(501, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 21:09:59'),
(502, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 21:20:03'),
(503, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 21:30:08'),
(504, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 21:40:11'),
(505, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 22:00:16'),
(506, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 22:10:20'),
(507, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 22:20:28'),
(508, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 22:30:33'),
(509, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 22:40:37'),
(510, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 22:50:44'),
(511, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 23:00:48'),
(512, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 23:10:53'),
(513, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 23:31:14'),
(514, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 23:41:18'),
(515, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-25 23:51:23'),
(516, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 00:01:27'),
(517, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 00:11:32'),
(518, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 00:21:38'),
(519, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 00:31:43'),
(520, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 00:41:47'),
(521, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 00:51:52'),
(522, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 01:01:58'),
(523, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 01:12:05'),
(524, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 01:22:09'),
(525, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 01:32:14'),
(526, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 01:42:18'),
(527, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 01:52:24'),
(528, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 02:02:29'),
(529, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 02:12:33'),
(530, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 02:22:39'),
(531, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 02:32:45'),
(532, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 02:42:57'),
(533, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 02:53:02'),
(534, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 03:03:06'),
(535, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 03:13:11'),
(536, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 03:23:16'),
(537, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 03:33:21'),
(538, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 03:43:26'),
(539, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 03:53:30'),
(540, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 04:03:35'),
(541, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 04:13:39'),
(542, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 04:23:44'),
(543, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 04:33:48'),
(544, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 04:43:53'),
(545, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 04:53:58'),
(546, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 05:04:02'),
(547, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 05:14:08'),
(548, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 05:24:14'),
(549, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 05:34:19'),
(550, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 05:44:23'),
(551, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 05:54:28'),
(552, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 06:04:33'),
(553, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 06:14:39'),
(554, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 06:24:43'),
(555, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 06:34:48'),
(556, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 06:44:52'),
(557, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 06:54:57'),
(558, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 07:05:01'),
(559, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 07:15:06'),
(560, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 07:25:11'),
(561, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 07:35:16'),
(562, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 07:45:21'),
(563, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 07:55:26'),
(564, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 08:05:30'),
(565, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 08:15:36'),
(566, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 08:25:40'),
(567, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 08:35:45'),
(568, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 08:45:50'),
(569, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 08:55:54'),
(570, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 09:05:59'),
(571, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 09:16:03'),
(572, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 09:26:07'),
(573, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 09:36:12'),
(574, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 09:46:17'),
(575, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 09:56:21'),
(576, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 10:06:26'),
(577, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 10:16:30'),
(578, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 10:26:35'),
(579, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 10:36:39'),
(580, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 10:46:44'),
(581, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 10:56:49'),
(582, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 11:06:53'),
(583, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 11:16:58'),
(584, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 11:27:02'),
(585, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 11:37:07'),
(586, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 11:47:11'),
(587, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 11:57:15'),
(588, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 12:07:20'),
(589, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 12:17:24'),
(590, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 12:27:29'),
(591, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 12:37:34'),
(592, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 12:47:38'),
(593, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 12:57:43'),
(594, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 13:07:47'),
(595, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 13:17:52'),
(596, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 13:27:56'),
(597, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 13:38:01'),
(598, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 13:48:05'),
(599, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 13:58:10'),
(600, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 14:08:14'),
(601, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 14:18:19'),
(602, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 14:28:23'),
(603, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 14:38:28'),
(604, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 14:48:32'),
(605, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 14:58:37'),
(606, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 15:08:41'),
(607, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 15:18:46'),
(608, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 15:28:50'),
(609, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 15:38:55'),
(610, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 15:48:59'),
(611, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 15:59:04'),
(612, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 16:09:08'),
(613, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 16:19:13'),
(614, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 16:29:17'),
(615, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 16:39:22'),
(616, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 16:49:26');
INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(617, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 16:59:31'),
(618, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 17:09:35'),
(619, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 17:19:40'),
(620, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 17:29:44'),
(621, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 17:39:49'),
(622, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 17:49:54'),
(623, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 17:59:59'),
(624, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 18:10:04'),
(625, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 18:20:09'),
(626, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 18:30:13'),
(627, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 18:40:18'),
(628, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 18:50:23'),
(629, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 19:00:28'),
(630, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 19:10:33'),
(631, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 19:20:37'),
(632, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 19:30:42'),
(633, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 19:40:47'),
(634, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 19:50:51'),
(635, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 20:00:57'),
(636, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 20:11:01'),
(637, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 20:21:14'),
(638, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 20:31:18'),
(639, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 20:41:20'),
(640, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 20:51:24'),
(641, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 21:01:35'),
(642, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 21:11:39'),
(643, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 21:21:44'),
(644, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 21:31:49'),
(645, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 21:52:11'),
(646, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 22:02:15'),
(647, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 22:12:20'),
(648, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 22:22:31'),
(649, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 22:32:36'),
(650, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 22:42:43'),
(651, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 22:52:56'),
(652, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-02-26 23:03:08'),
(653, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-26 23:04:28'),
(654, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-26 23:14:35'),
(655, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-26 23:24:41'),
(656, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-26 23:34:46'),
(657, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-26 23:44:52'),
(658, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-26 23:54:58'),
(659, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 00:05:02'),
(660, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 00:15:07'),
(661, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 00:45:44'),
(662, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 00:55:49'),
(663, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 01:16:09'),
(664, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 01:46:39'),
(665, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 01:56:44'),
(666, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 02:17:00'),
(667, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 02:27:12'),
(668, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 02:37:18'),
(669, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 02:47:23'),
(670, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 02:57:29'),
(671, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 03:07:35'),
(672, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 03:27:58'),
(673, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 03:38:03'),
(674, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 03:48:10'),
(675, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 03:58:16'),
(676, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 04:08:27'),
(677, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 04:18:32'),
(678, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 04:28:38'),
(679, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 04:38:44'),
(680, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 04:48:49'),
(681, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 04:58:53'),
(682, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 05:08:59'),
(683, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 05:19:10'),
(684, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 05:29:16'),
(685, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 05:39:19'),
(686, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 05:49:25'),
(687, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 05:59:30'),
(688, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 06:09:36'),
(689, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 06:19:40'),
(690, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 06:29:46'),
(691, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 06:39:51'),
(692, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 06:50:04'),
(693, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 07:00:10'),
(694, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 07:10:16'),
(695, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 07:20:22'),
(696, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 07:30:26'),
(697, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 07:40:34'),
(698, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 07:50:38'),
(699, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 08:00:42'),
(700, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 08:10:53'),
(701, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 08:20:58'),
(702, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 08:31:04'),
(703, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 08:41:11'),
(704, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 08:51:16'),
(705, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 09:01:21'),
(706, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 09:11:27'),
(707, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 09:21:32'),
(708, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 09:31:36'),
(709, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 09:41:41'),
(710, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 09:51:46'),
(711, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 10:01:50'),
(712, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 10:11:55'),
(713, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 10:22:00'),
(714, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 10:32:05'),
(715, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 10:42:09'),
(716, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 10:52:13'),
(717, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 11:02:18'),
(718, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 11:12:22'),
(719, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 11:22:27'),
(720, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 11:32:31'),
(721, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 11:42:35'),
(722, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 11:52:41'),
(723, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 12:02:45'),
(724, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 12:12:50'),
(725, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 12:22:54'),
(726, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 12:32:59'),
(727, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 12:43:03'),
(728, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 12:53:07'),
(729, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 13:03:12'),
(730, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 13:13:17'),
(731, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 13:23:22'),
(732, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 13:33:26'),
(733, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 13:43:30'),
(734, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 13:53:35'),
(735, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 14:03:40'),
(736, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 14:13:44'),
(737, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 14:23:48'),
(738, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 14:33:53'),
(739, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 14:44:00'),
(740, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 14:54:04'),
(741, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 15:04:09'),
(742, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 15:14:14'),
(743, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 15:24:18'),
(744, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 15:34:22'),
(745, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 15:44:27'),
(746, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 15:54:32'),
(747, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 16:04:36'),
(748, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 16:14:41'),
(749, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 16:24:46'),
(750, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 16:34:50'),
(751, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 16:44:55'),
(752, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 16:54:59'),
(753, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 17:05:03'),
(754, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 17:15:08'),
(755, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 17:25:12'),
(756, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 17:35:17'),
(757, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 17:45:21'),
(758, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 17:55:25'),
(759, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 18:05:29'),
(760, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 18:15:34'),
(761, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 18:25:38'),
(762, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 18:35:42'),
(763, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 18:45:47'),
(764, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 18:55:52'),
(765, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 19:05:56'),
(766, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 19:16:01'),
(767, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 19:26:05'),
(768, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 19:36:09'),
(769, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 19:46:14'),
(770, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 19:56:18'),
(771, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 20:06:22'),
(772, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 20:16:27'),
(773, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 20:26:31'),
(774, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 20:36:36'),
(775, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 20:46:40'),
(776, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 20:56:44'),
(777, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 21:06:48'),
(778, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 21:16:54'),
(779, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 21:26:59'),
(780, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 21:37:03'),
(781, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 21:47:09'),
(782, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 21:57:14'),
(783, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 22:07:19'),
(784, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 22:17:28'),
(785, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 22:27:33'),
(786, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 22:37:38'),
(787, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 22:47:43'),
(788, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 22:57:48'),
(789, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 23:07:52'),
(790, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 23:17:57'),
(791, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 23:28:01'),
(792, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 23:38:07'),
(793, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 23:48:11'),
(794, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-27 23:58:15'),
(795, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 00:08:20'),
(796, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 00:18:24'),
(797, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 00:28:28'),
(798, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 00:38:34'),
(799, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 00:48:39'),
(800, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 00:58:43'),
(801, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 01:08:47'),
(802, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 01:18:52'),
(803, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 01:28:56'),
(804, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 01:39:01'),
(805, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 01:49:06'),
(806, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 01:59:11'),
(807, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 02:09:18'),
(808, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 02:19:23'),
(809, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 02:29:27'),
(810, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 02:39:33'),
(811, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 02:49:39'),
(812, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 02:59:45'),
(813, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 03:09:50'),
(814, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 03:19:54'),
(815, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 03:29:58'),
(816, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 03:40:03'),
(817, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 04:00:30'),
(818, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 04:10:34'),
(819, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 04:20:40'),
(820, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 04:30:46'),
(821, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 04:40:51'),
(822, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 04:50:55'),
(823, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 05:00:59'),
(824, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 05:11:05'),
(825, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 05:21:09'),
(826, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 05:31:13'),
(827, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 05:41:18'),
(828, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 05:51:22'),
(829, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 06:01:28'),
(830, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 06:11:32'),
(831, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 06:21:37'),
(832, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 06:31:42'),
(833, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 06:41:47'),
(834, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 06:51:52'),
(835, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 07:01:58'),
(836, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 07:12:03'),
(837, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 07:22:08'),
(838, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 07:32:13'),
(839, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 07:42:24'),
(840, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 07:52:28'),
(841, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 08:02:34'),
(842, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 08:12:39'),
(843, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 08:22:44'),
(844, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 08:32:51'),
(845, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 08:42:56'),
(846, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 08:53:01'),
(847, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 09:03:05'),
(848, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 09:13:10'),
(849, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 09:23:14'),
(850, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 09:33:19'),
(851, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 09:43:23'),
(852, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 09:53:27'),
(853, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 10:03:32'),
(854, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 10:13:36'),
(855, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 10:23:41'),
(856, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 10:33:46'),
(857, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 10:43:51'),
(858, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 10:53:55'),
(859, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 11:04:01'),
(860, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 11:14:06'),
(861, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 11:24:10'),
(862, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 11:34:16'),
(863, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 11:44:21'),
(864, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 11:54:25'),
(865, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 12:04:29'),
(866, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 12:14:34'),
(867, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 12:24:41'),
(868, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 12:34:45'),
(869, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 12:44:50'),
(870, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 12:54:57'),
(871, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 13:05:02'),
(872, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 13:15:06'),
(873, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 13:25:10'),
(874, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 13:35:15'),
(875, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 13:45:19'),
(876, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 13:55:23'),
(877, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 14:05:27'),
(878, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 14:15:32'),
(879, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 14:25:37'),
(880, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 14:35:42'),
(881, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 14:45:46'),
(882, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 14:55:50'),
(883, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 15:05:55'),
(884, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 15:15:59'),
(885, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 15:26:04'),
(886, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 15:36:08'),
(887, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 15:46:13'),
(888, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 15:56:17'),
(889, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 16:06:21'),
(890, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 16:16:25'),
(891, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 16:26:30'),
(892, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 16:36:34'),
(893, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 16:46:38'),
(894, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 16:56:43'),
(895, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 17:06:47'),
(896, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 17:16:51'),
(897, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 17:26:55'),
(898, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 17:37:00'),
(899, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 17:47:05'),
(900, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 17:57:10'),
(901, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 18:07:14'),
(902, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 18:17:18'),
(903, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 18:27:23'),
(904, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 18:37:27'),
(905, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 18:47:32'),
(906, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 18:57:36'),
(907, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 19:07:40'),
(908, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 19:17:45'),
(909, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 19:27:49'),
(910, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 19:37:53'),
(911, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 19:47:57'),
(912, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 19:58:03'),
(913, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 20:08:08'),
(914, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 20:18:14'),
(915, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 20:28:18'),
(916, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 20:38:24'),
(917, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 20:48:29'),
(918, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 20:58:34'),
(919, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 21:08:39'),
(920, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 21:18:50'),
(921, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 21:28:54'),
(922, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 21:38:58'),
(923, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 21:49:03'),
(924, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 21:59:07'),
(925, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 22:09:14'),
(926, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 22:19:22'),
(927, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 22:29:26'),
(928, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 22:39:32'),
(929, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 22:49:37'),
(930, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 22:59:42'),
(931, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 23:09:49'),
(932, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 23:19:58'),
(933, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 23:30:04'),
(934, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 23:40:09'),
(935, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-02-28 23:50:14'),
(936, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 00:00:24'),
(937, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 00:10:28'),
(938, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 00:20:33'),
(939, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 00:30:40'),
(940, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 00:40:45'),
(941, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 00:50:49'),
(942, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 01:00:54'),
(943, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 01:11:02'),
(944, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 01:21:07'),
(945, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 01:31:23'),
(946, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 01:41:28'),
(947, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 01:51:32'),
(948, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 02:01:37'),
(949, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 02:11:42'),
(950, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 02:21:47'),
(951, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 02:31:55'),
(952, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 02:42:00'),
(953, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 02:52:04'),
(954, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 03:12:32'),
(955, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 03:22:37'),
(956, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 03:32:41'),
(957, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 03:42:47'),
(958, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 03:52:52'),
(959, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 04:02:57'),
(960, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 04:13:03'),
(961, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 04:23:07'),
(962, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 04:33:12'),
(963, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 04:43:16'),
(964, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 04:53:21'),
(965, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 05:03:27'),
(966, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 05:13:32'),
(967, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 05:23:36'),
(968, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 05:33:41'),
(969, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 05:43:45'),
(970, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 05:53:51'),
(971, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 06:03:56'),
(972, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 06:14:01'),
(973, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 06:24:06'),
(974, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 06:34:11'),
(975, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 06:44:15'),
(976, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 06:54:19'),
(977, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 07:04:23'),
(978, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 07:14:28'),
(979, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 07:24:33'),
(980, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 07:34:37'),
(981, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 07:44:41'),
(982, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 07:54:46'),
(983, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 08:04:50'),
(984, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 08:14:55'),
(985, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 08:24:59'),
(986, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 08:35:05'),
(987, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 08:45:12'),
(988, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 08:55:16'),
(989, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 09:05:21'),
(990, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 09:15:26'),
(991, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 09:25:32'),
(992, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 09:35:36'),
(993, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 09:45:41'),
(994, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 09:55:45'),
(995, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 10:05:49'),
(996, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 10:15:54'),
(997, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 10:25:58'),
(998, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 10:36:03'),
(999, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 10:46:07'),
(1000, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 10:56:12'),
(1001, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 11:06:17'),
(1002, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 11:16:22'),
(1003, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 11:26:26'),
(1004, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 11:36:31'),
(1005, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 11:46:35'),
(1006, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 11:56:39'),
(1007, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 12:06:43'),
(1008, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 12:16:49'),
(1009, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 12:26:54'),
(1010, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 12:36:59'),
(1011, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 12:47:04'),
(1012, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 12:57:09'),
(1013, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 13:07:14'),
(1014, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 13:17:19'),
(1015, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 13:27:23'),
(1016, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 13:37:29'),
(1017, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 13:47:34'),
(1018, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 13:57:38'),
(1019, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 14:07:43'),
(1020, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 14:17:47'),
(1021, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 14:27:51'),
(1022, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 14:37:58'),
(1023, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 14:48:02'),
(1024, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 14:58:06'),
(1025, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 15:08:11'),
(1026, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 15:18:16'),
(1027, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 15:28:21'),
(1028, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 15:38:26'),
(1029, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 15:48:31'),
(1030, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 15:58:36'),
(1031, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 16:01:12'),
(1032, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 16:11:16'),
(1033, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 16:21:21'),
(1034, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 16:31:28'),
(1035, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 16:41:33'),
(1036, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 16:51:37'),
(1037, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 17:01:50'),
(1038, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 17:11:50'),
(1039, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 17:21:54'),
(1040, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 17:31:58'),
(1041, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 17:42:03'),
(1042, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 17:52:07'),
(1043, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 18:02:12'),
(1044, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 18:12:16'),
(1045, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 18:22:20'),
(1046, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 18:32:25'),
(1047, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 18:42:29'),
(1048, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 18:52:33'),
(1049, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 19:02:38'),
(1050, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 19:12:42'),
(1051, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 19:22:46'),
(1052, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 19:32:50'),
(1053, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 19:42:55'),
(1054, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 19:52:59'),
(1055, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 20:03:03'),
(1056, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 20:13:08'),
(1057, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 20:23:12'),
(1058, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 20:33:16'),
(1059, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 20:43:21'),
(1060, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 20:53:25'),
(1061, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 21:03:29'),
(1062, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 21:13:34'),
(1063, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 21:23:45'),
(1064, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 21:33:49'),
(1065, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 21:43:55'),
(1066, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 21:54:06'),
(1067, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 22:04:10'),
(1068, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 22:14:14'),
(1069, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 22:24:19'),
(1070, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 22:34:23'),
(1071, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 22:44:28'),
(1072, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 22:54:32'),
(1073, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 23:04:41'),
(1074, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 23:14:45'),
(1075, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 23:24:50'),
(1076, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 23:34:55'),
(1077, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 23:44:59'),
(1078, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-01 23:55:03'),
(1079, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 00:05:08'),
(1080, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 00:15:12'),
(1081, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 00:25:16'),
(1082, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 00:35:20'),
(1083, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 00:45:25'),
(1084, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 00:55:29'),
(1085, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 01:05:33'),
(1086, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 01:15:38'),
(1087, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 01:25:42'),
(1088, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 01:35:46'),
(1089, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 01:45:51'),
(1090, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 01:55:55'),
(1091, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 02:06:00'),
(1092, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 02:16:04'),
(1093, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 02:26:08'),
(1094, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 02:36:12'),
(1095, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 02:46:17'),
(1096, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 02:56:27'),
(1097, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 03:06:31'),
(1098, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 03:16:35'),
(1099, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 03:26:40'),
(1100, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 03:36:44'),
(1101, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 03:46:48'),
(1102, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 03:56:52'),
(1103, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 04:06:57'),
(1104, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 04:17:01'),
(1105, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 04:27:05'),
(1106, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 04:37:10'),
(1107, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 04:47:14'),
(1108, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 04:57:18'),
(1109, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 05:07:23'),
(1110, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 05:17:27'),
(1111, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 05:27:31'),
(1112, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 05:37:35'),
(1113, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 05:47:40'),
(1114, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 05:57:44'),
(1115, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 06:07:48'),
(1116, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 06:17:52'),
(1117, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 06:27:57'),
(1118, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 06:38:01'),
(1119, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 06:48:05'),
(1120, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 06:58:09'),
(1121, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 07:08:14'),
(1122, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 07:18:18'),
(1123, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 07:28:22'),
(1124, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 07:38:26'),
(1125, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 07:48:31'),
(1126, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 07:58:35'),
(1127, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 08:08:40'),
(1128, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 08:18:44'),
(1129, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 08:28:48'),
(1130, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 08:38:52'),
(1131, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 08:48:57'),
(1132, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 08:59:01'),
(1133, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 09:09:05'),
(1134, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 09:19:10'),
(1135, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 09:29:14'),
(1136, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 09:39:18'),
(1137, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 09:49:22'),
(1138, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 09:59:27'),
(1139, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 10:09:31'),
(1140, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 10:19:35'),
(1141, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 10:29:40'),
(1142, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 10:39:44'),
(1143, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 10:49:51'),
(1144, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 10:59:55'),
(1145, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 11:10:00'),
(1146, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 11:20:04'),
(1147, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 11:30:09'),
(1148, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 11:40:13'),
(1149, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 11:50:17'),
(1150, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 12:00:22'),
(1151, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 12:10:26'),
(1152, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 12:20:30'),
(1153, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 12:30:34'),
(1154, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 12:40:39'),
(1155, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 12:50:43'),
(1156, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 13:00:47'),
(1157, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 13:10:51'),
(1158, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 13:20:56'),
(1159, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 13:31:00'),
(1160, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 13:41:05'),
(1161, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 13:51:09'),
(1162, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 14:01:14'),
(1163, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 14:11:18'),
(1164, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 14:21:22'),
(1165, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 14:31:27'),
(1166, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 14:41:31'),
(1167, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 14:51:35'),
(1168, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 15:01:39'),
(1169, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 15:11:44'),
(1170, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 15:21:48'),
(1171, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 15:31:52'),
(1172, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 15:41:56'),
(1173, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 15:52:01'),
(1174, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 16:02:05'),
(1175, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 16:12:10'),
(1176, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 16:22:14'),
(1177, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 16:32:19'),
(1178, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 16:42:23'),
(1179, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 16:52:27'),
(1180, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 17:02:31'),
(1181, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 17:12:36'),
(1182, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 17:22:40'),
(1183, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 17:32:44'),
(1184, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 17:42:49'),
(1185, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 17:52:53'),
(1186, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 18:02:57'),
(1187, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 18:13:02'),
(1188, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 18:23:06'),
(1189, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 18:33:10'),
(1190, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 18:43:14'),
(1191, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 18:53:19'),
(1192, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 19:03:23'),
(1193, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 19:13:27'),
(1194, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 19:23:32'),
(1195, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 19:33:36'),
(1196, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 19:43:40'),
(1197, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 19:53:45'),
(1198, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 20:03:49'),
(1199, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 20:13:53'),
(1200, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 20:23:57'),
(1201, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 20:34:02'),
(1202, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 20:44:06'),
(1203, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 20:54:11'),
(1204, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 21:04:22'),
(1205, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 21:14:27'),
(1206, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 21:24:32'),
(1207, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 21:44:46'),
(1208, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 21:54:54'),
(1209, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 22:05:00'),
(1210, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 22:15:06'),
(1211, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 22:25:18'),
(1212, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 22:45:46'),
(1213, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 22:55:51'),
(1214, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 23:05:55'),
(1215, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 23:16:00'),
(1216, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 23:26:08'),
(1217, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 23:36:12'),
(1218, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 23:46:16'),
(1219, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-02 23:56:20'),
(1220, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 00:06:33'),
(1221, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 00:16:38'),
(1222, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 00:26:41'),
(1223, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 00:36:45'),
(1224, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 00:46:49'),
(1225, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 00:56:54'),
(1226, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 01:06:58');
INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(1227, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 01:17:02'),
(1228, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 01:27:08'),
(1229, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 01:37:13'),
(1230, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 01:47:19'),
(1231, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 01:57:24'),
(1232, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 02:07:28'),
(1233, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 02:17:32'),
(1234, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 02:27:36'),
(1235, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 02:37:41'),
(1236, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 02:47:46'),
(1237, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 02:57:52'),
(1238, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 03:07:57'),
(1239, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 03:18:01'),
(1240, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 03:28:06'),
(1241, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 03:38:10'),
(1242, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 03:48:16'),
(1243, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 03:58:21'),
(1244, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 04:18:43'),
(1245, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 04:28:52'),
(1246, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 04:38:56'),
(1247, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 04:49:07'),
(1248, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 04:59:12'),
(1249, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 05:09:17'),
(1250, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 05:19:21'),
(1251, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 05:29:25'),
(1252, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 05:39:30'),
(1253, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 05:49:34'),
(1254, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 05:59:38'),
(1255, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 06:09:42'),
(1256, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 06:19:47'),
(1257, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 06:29:51'),
(1258, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 06:39:56'),
(1259, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 06:50:01'),
(1260, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 07:00:06'),
(1261, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 07:10:10'),
(1262, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 07:20:15'),
(1263, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 07:30:19'),
(1264, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 07:40:30'),
(1265, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 07:50:36'),
(1266, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 08:00:41'),
(1267, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 08:10:46'),
(1268, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 08:20:53'),
(1269, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 08:30:57'),
(1270, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 08:41:02'),
(1271, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 08:51:12'),
(1272, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 09:01:23'),
(1273, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 09:11:27'),
(1274, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 09:21:31'),
(1275, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 09:31:36'),
(1276, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 09:41:40'),
(1277, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 09:51:44'),
(1278, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 10:01:49'),
(1279, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 10:11:53'),
(1280, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 10:21:57'),
(1281, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 10:32:02'),
(1282, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 10:42:12'),
(1283, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 10:52:24'),
(1284, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 11:02:28'),
(1285, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 11:12:32'),
(1286, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 11:22:36'),
(1287, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 11:32:41'),
(1288, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 11:42:45'),
(1289, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 11:52:52'),
(1290, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 12:02:56'),
(1291, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 12:13:01'),
(1292, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 12:23:05'),
(1293, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 12:33:09'),
(1294, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 12:43:20'),
(1295, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 12:53:24'),
(1296, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 13:03:28'),
(1297, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 13:13:33'),
(1298, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 13:23:37'),
(1299, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 13:33:41'),
(1300, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 13:43:45'),
(1301, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 13:53:50'),
(1302, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 14:03:54'),
(1303, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 14:13:58'),
(1304, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 14:24:03'),
(1305, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 14:34:07'),
(1306, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 14:44:11'),
(1307, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 14:54:16'),
(1308, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 15:04:20'),
(1309, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 15:14:24'),
(1310, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 15:24:29'),
(1311, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 15:34:33'),
(1312, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 15:44:37'),
(1313, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 15:54:41'),
(1314, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 16:04:46'),
(1315, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 16:14:50'),
(1316, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 16:24:55'),
(1317, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 16:34:59'),
(1318, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 16:45:03'),
(1319, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 16:55:07'),
(1320, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 17:05:11'),
(1321, 'testing:mac', 1, 1, 1, 1, 1, 1, 88, 99, 34, 10, 0, 7000, '2021-03-03 17:15:16'),
(1322, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 17:25:20'),
(1323, '3:4:5', 1, 0, 0, 0, 1, 0, 11, 33, 24, 0, 0, 0, '2021-03-03 17:37:57'),
(1324, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 17:45:29'),
(1325, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 17:55:33'),
(1326, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 18:15:55'),
(1327, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 18:26:00'),
(1328, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 18:56:46'),
(1329, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 19:17:19'),
(1330, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 19:27:24'),
(1331, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 19:37:28'),
(1332, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 19:47:35'),
(1333, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 19:57:39'),
(1334, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 20:07:41'),
(1335, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 20:17:48'),
(1336, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 20:27:59'),
(1337, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 20:38:03'),
(1338, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 20:48:09'),
(1339, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 20:58:14'),
(1340, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 21:08:25'),
(1341, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 21:18:37'),
(1342, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 21:28:47'),
(1343, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 21:38:53'),
(1344, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 21:59:00'),
(1345, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 22:09:04'),
(1346, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 22:19:10'),
(1347, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 22:29:17'),
(1348, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 22:39:23'),
(1349, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 22:49:28'),
(1350, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 22:59:32'),
(1351, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 23:09:37'),
(1352, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 23:29:59'),
(1353, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 23:40:05'),
(1354, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-03 23:50:11'),
(1355, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 00:00:16'),
(1356, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 00:10:22'),
(1357, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 00:20:27'),
(1358, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 00:30:32'),
(1359, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 00:40:36'),
(1360, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 00:50:41'),
(1361, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 01:00:45'),
(1362, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 01:10:50'),
(1363, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 01:20:54'),
(1364, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 01:30:59'),
(1365, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 01:41:03'),
(1366, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 01:51:15'),
(1367, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 02:01:20'),
(1368, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 02:11:24'),
(1369, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 02:21:29'),
(1370, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 02:31:33'),
(1371, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 02:41:39'),
(1372, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 02:51:44'),
(1373, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 03:01:54'),
(1374, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 03:11:59'),
(1375, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 03:22:03'),
(1376, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 03:32:08'),
(1377, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 03:42:13'),
(1378, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 03:52:17'),
(1379, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 04:02:21'),
(1380, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 04:12:26'),
(1381, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 04:22:31'),
(1382, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 04:32:35'),
(1383, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 04:42:41'),
(1384, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 04:52:46'),
(1385, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 05:02:51'),
(1386, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 05:12:58'),
(1387, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 05:23:04'),
(1388, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 05:33:08'),
(1389, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 05:43:13'),
(1390, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 05:53:17'),
(1391, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 06:03:22'),
(1392, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 06:13:27'),
(1393, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 06:23:31'),
(1394, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 06:33:36'),
(1395, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 06:43:40'),
(1396, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 06:53:44'),
(1397, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 07:03:49'),
(1398, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 07:13:53'),
(1399, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 07:23:58'),
(1400, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 07:34:03'),
(1401, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 07:44:08'),
(1402, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 07:54:12'),
(1403, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 08:04:17'),
(1404, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 08:14:21'),
(1405, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 08:24:26'),
(1406, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 08:34:30'),
(1407, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 08:44:35'),
(1408, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 08:54:39'),
(1409, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 09:04:44'),
(1410, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 09:14:49'),
(1411, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 09:24:53'),
(1412, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 09:34:58'),
(1413, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 09:45:03'),
(1414, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 09:55:08'),
(1415, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 10:05:13'),
(1416, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 10:15:18'),
(1417, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 10:25:22'),
(1418, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 10:35:27'),
(1419, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 10:45:31'),
(1420, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 10:55:36'),
(1421, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 11:05:40'),
(1422, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 11:15:45'),
(1423, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 11:25:49'),
(1424, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 11:35:54'),
(1425, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 11:45:58'),
(1426, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 11:56:03'),
(1427, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 12:06:07'),
(1428, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 12:16:12'),
(1429, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 12:26:16'),
(1430, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 12:36:24'),
(1431, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 12:46:29'),
(1432, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 12:56:33'),
(1433, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 13:06:38'),
(1434, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 13:16:42'),
(1435, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 13:26:47'),
(1436, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 13:36:51'),
(1437, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 13:46:56'),
(1438, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 13:57:00'),
(1439, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 14:07:13'),
(1440, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 14:17:13'),
(1441, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 14:27:17'),
(1442, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 14:37:22'),
(1443, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 14:47:26'),
(1444, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 14:57:31'),
(1445, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 15:07:36'),
(1446, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 15:17:40'),
(1447, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 15:27:44'),
(1448, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 15:37:49'),
(1449, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 15:47:53'),
(1450, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 15:57:57'),
(1451, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 16:08:02'),
(1452, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 16:18:06'),
(1453, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 16:28:10'),
(1454, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 16:38:15'),
(1455, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 16:48:20'),
(1456, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 16:58:24'),
(1457, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 17:08:28'),
(1458, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 17:18:33'),
(1459, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 17:28:37'),
(1460, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 17:38:42'),
(1461, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 17:48:46'),
(1462, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 17:58:51'),
(1463, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 18:08:55'),
(1464, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 18:19:00'),
(1465, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 18:39:06'),
(1466, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 18:49:11'),
(1467, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 18:59:15'),
(1468, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 19:09:20'),
(1469, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 19:19:24'),
(1470, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 19:29:35'),
(1471, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 19:39:41'),
(1472, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 19:49:47'),
(1473, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 19:59:51'),
(1474, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 20:09:56'),
(1475, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 20:20:01'),
(1476, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 20:30:12'),
(1477, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 20:40:23'),
(1478, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 20:50:28'),
(1479, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 21:00:39'),
(1480, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 21:10:52'),
(1481, '0', 1, 1, 1, 1, 1, 1, 88, 99, 0, 0, 0, 0, '2021-03-04 21:21:03'),
(1482, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 21:55:48'),
(1483, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 22:05:50'),
(1484, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 22:15:53'),
(1485, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 22:25:55'),
(1486, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 22:35:57'),
(1487, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 22:45:59'),
(1488, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 22:56:02'),
(1489, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 23:06:04'),
(1490, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 23:16:06'),
(1491, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 23:26:08'),
(1492, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 23:36:10'),
(1493, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 23:46:12'),
(1494, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-04 23:56:22'),
(1495, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 00:06:24'),
(1496, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 00:16:28'),
(1497, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 00:26:31'),
(1498, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 00:46:49'),
(1499, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 00:56:58'),
(1500, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 01:07:00'),
(1501, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 01:17:07'),
(1502, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 01:27:15'),
(1503, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 01:37:17'),
(1504, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 01:47:20'),
(1505, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 01:57:23'),
(1506, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 02:07:34'),
(1507, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 02:17:37'),
(1508, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 02:37:52'),
(1509, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 02:47:55'),
(1510, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 02:57:58'),
(1511, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 03:08:00'),
(1512, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 03:18:03'),
(1513, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 03:28:05'),
(1514, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 03:38:08'),
(1515, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 03:58:18'),
(1516, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 04:08:20'),
(1517, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 04:18:22'),
(1518, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 04:28:24'),
(1519, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 04:38:27'),
(1520, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 04:48:29'),
(1521, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 04:58:31'),
(1522, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 05:08:33'),
(1523, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 05:18:36'),
(1524, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 05:28:38'),
(1525, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 05:38:40'),
(1526, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 05:48:42'),
(1527, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 05:58:45'),
(1528, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 06:08:47'),
(1529, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 06:18:49'),
(1530, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 06:28:51'),
(1531, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 06:38:54'),
(1532, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 06:48:56'),
(1533, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 06:58:58'),
(1534, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 07:09:01'),
(1535, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 07:19:04'),
(1536, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 07:29:06'),
(1537, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 07:39:09'),
(1538, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 07:49:11'),
(1539, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 07:59:14'),
(1540, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 08:09:16'),
(1541, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 08:19:18'),
(1542, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 08:29:20'),
(1543, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 08:39:22'),
(1544, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 08:49:25'),
(1545, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 08:59:27'),
(1546, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 09:09:29'),
(1547, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 09:19:31'),
(1548, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 09:29:34'),
(1549, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 09:39:36'),
(1550, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 09:49:38'),
(1551, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 09:59:40'),
(1552, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 10:09:42'),
(1553, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 10:19:45'),
(1554, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 10:29:47'),
(1555, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 10:39:49'),
(1556, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 10:49:51'),
(1557, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 10:59:54'),
(1558, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 11:09:56'),
(1559, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 11:19:58'),
(1560, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 11:30:00'),
(1561, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 11:40:03'),
(1562, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 11:50:05'),
(1563, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 12:00:07'),
(1564, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 12:10:09'),
(1565, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 12:20:14'),
(1566, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 12:30:16'),
(1567, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 12:40:18'),
(1568, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 12:50:21'),
(1569, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 13:00:23'),
(1570, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 13:10:25'),
(1571, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 13:20:27'),
(1572, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 13:30:29'),
(1573, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 13:40:32'),
(1574, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 13:50:34'),
(1575, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 14:00:36'),
(1576, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 14:10:38'),
(1577, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 14:20:41'),
(1578, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 14:30:43'),
(1579, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 14:40:45'),
(1580, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 14:50:47'),
(1581, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 15:00:52'),
(1582, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 15:10:54'),
(1583, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 15:20:56'),
(1584, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 15:30:58'),
(1585, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 15:41:01'),
(1586, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 15:51:03'),
(1587, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 16:01:05'),
(1588, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 16:11:07'),
(1589, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 16:21:10'),
(1590, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 16:31:12'),
(1591, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 16:41:14'),
(1592, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 16:51:17'),
(1593, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 17:01:20'),
(1594, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 17:11:22'),
(1595, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 17:21:24'),
(1596, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 17:31:26'),
(1597, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 17:41:32'),
(1598, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 17:51:35'),
(1599, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 18:01:37'),
(1600, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 18:11:39'),
(1601, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 18:21:42'),
(1602, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 18:31:44'),
(1603, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 18:41:46'),
(1604, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 18:51:48'),
(1605, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 19:01:51'),
(1606, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 19:11:53'),
(1607, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 19:21:55'),
(1608, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 19:31:57'),
(1609, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 19:41:59'),
(1610, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 19:52:01'),
(1611, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 20:02:04'),
(1612, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 20:12:06'),
(1613, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 20:22:08'),
(1614, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 20:32:12'),
(1615, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 20:42:14'),
(1616, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 20:52:16'),
(1617, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 21:02:19'),
(1618, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 21:12:21'),
(1619, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 21:22:23'),
(1620, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 21:32:25'),
(1621, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 21:42:27'),
(1622, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 21:52:29'),
(1623, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 22:02:32'),
(1624, '0', 1, 1, 1, 1, 1, 1, 88, 99, 5, 0, 0, 0, '2021-03-05 22:12:34'),
(1625, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 88, 99, 88, 99, 0, 5, '2021-03-09 11:16:08'),
(1626, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:16:52'),
(1627, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 11:17:52'),
(1628, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:18:52'),
(1629, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:19:52'),
(1630, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:20:52'),
(1631, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:21:52'),
(1632, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 11:22:52'),
(1633, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:23:52'),
(1634, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:24:52'),
(1635, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:25:52'),
(1636, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:26:52'),
(1637, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:27:52'),
(1638, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:28:52'),
(1639, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:29:52'),
(1640, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 11:30:52'),
(1641, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:31:52'),
(1642, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:32:52'),
(1643, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:33:52'),
(1644, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:34:52'),
(1645, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:35:52'),
(1646, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:36:52'),
(1647, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:37:52'),
(1648, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:38:52'),
(1649, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:39:52'),
(1650, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 11:40:52'),
(1651, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:41:52'),
(1652, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:42:52'),
(1653, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:43:54'),
(1654, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:44:52'),
(1655, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:45:52'),
(1656, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:46:52'),
(1657, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:47:52'),
(1658, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:48:52'),
(1659, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:49:52'),
(1660, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:50:52'),
(1661, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:51:52'),
(1662, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 11:52:52'),
(1663, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:53:52'),
(1664, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:54:52'),
(1665, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 11:55:52'),
(1666, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:56:52'),
(1667, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:57:52'),
(1668, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 11:58:52'),
(1669, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 11:59:52'),
(1670, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:00:52'),
(1671, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:01:52'),
(1672, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:02:52'),
(1673, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:03:52'),
(1674, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:04:52'),
(1675, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:05:52'),
(1676, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:06:52'),
(1677, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:07:52'),
(1678, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:08:52'),
(1679, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:09:52'),
(1680, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:10:52'),
(1681, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:11:52'),
(1682, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:12:52'),
(1683, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:13:52'),
(1684, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:14:52'),
(1685, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:15:55'),
(1686, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:16:52'),
(1687, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:17:52'),
(1688, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:18:52'),
(1689, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:19:52'),
(1690, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:20:52'),
(1691, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:21:52'),
(1692, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:22:52'),
(1693, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:23:52'),
(1694, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:24:52'),
(1695, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:25:52'),
(1696, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:26:52'),
(1697, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:27:52'),
(1698, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:28:52'),
(1699, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:29:55'),
(1700, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:30:52'),
(1701, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:31:52'),
(1702, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:32:52'),
(1703, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:33:52'),
(1704, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:34:52'),
(1705, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:35:52'),
(1706, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:36:52'),
(1707, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:37:52'),
(1708, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:38:52'),
(1709, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:39:52'),
(1710, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:40:52'),
(1711, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:41:52'),
(1712, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:42:52'),
(1713, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:43:52'),
(1714, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:44:52'),
(1715, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:45:52'),
(1716, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:46:52'),
(1717, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:47:52'),
(1718, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:48:52'),
(1719, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:49:52'),
(1720, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:50:52'),
(1721, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:51:52'),
(1722, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:52:52'),
(1723, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:53:52'),
(1724, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:54:52'),
(1725, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:55:52'),
(1726, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:56:52'),
(1727, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 12:57:52'),
(1728, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:58:52'),
(1729, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 12:59:52'),
(1730, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:00:52'),
(1731, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:01:52'),
(1732, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:02:52'),
(1733, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:03:52'),
(1734, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:04:52'),
(1735, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:05:52'),
(1736, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:06:52'),
(1737, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:07:52'),
(1738, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:08:52'),
(1739, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:09:52'),
(1740, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:10:52'),
(1741, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:11:52'),
(1742, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:12:52'),
(1743, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:13:52'),
(1744, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:14:52'),
(1745, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:15:52'),
(1746, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:16:52'),
(1747, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:17:52'),
(1748, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:18:52'),
(1749, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:19:52'),
(1750, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:20:52'),
(1751, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:21:52'),
(1752, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:22:52'),
(1753, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:23:52'),
(1754, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:24:52'),
(1755, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:25:52'),
(1756, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:26:52'),
(1757, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:27:52'),
(1758, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:28:52'),
(1759, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:29:52'),
(1760, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:30:52'),
(1761, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:31:52'),
(1762, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:32:52'),
(1763, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:33:52'),
(1764, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:34:52'),
(1765, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:35:52'),
(1766, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:36:52'),
(1767, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:37:52'),
(1768, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:38:52'),
(1769, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:39:52'),
(1770, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:40:52'),
(1771, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:41:52'),
(1772, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:42:52'),
(1773, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:43:52'),
(1774, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:44:52'),
(1775, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:45:52'),
(1776, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:46:52'),
(1777, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:47:52'),
(1778, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:48:52'),
(1779, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:49:52'),
(1780, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:50:54'),
(1781, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:51:52'),
(1782, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:52:54'),
(1783, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:53:52'),
(1784, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 13:54:53'),
(1785, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:55:52'),
(1786, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:56:52'),
(1787, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:57:52'),
(1788, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:58:52'),
(1789, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 13:59:52'),
(1790, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:00:52'),
(1791, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:01:52'),
(1792, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:02:52'),
(1793, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:03:52'),
(1794, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:05:03'),
(1795, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:05:52'),
(1796, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:06:57'),
(1797, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:07:52'),
(1798, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:08:52'),
(1799, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:09:52'),
(1800, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:10:52'),
(1801, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:11:52'),
(1802, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:12:52'),
(1803, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:13:52'),
(1804, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:14:55'),
(1805, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:15:52'),
(1806, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:16:54'),
(1807, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:17:52'),
(1808, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:18:52'),
(1809, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:19:52'),
(1810, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:20:52'),
(1811, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:21:53'),
(1812, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:22:52'),
(1813, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:23:53'),
(1814, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:24:52'),
(1815, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:25:52'),
(1816, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:26:52'),
(1817, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:27:52'),
(1818, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:28:52'),
(1819, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:29:52'),
(1820, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:30:52'),
(1821, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:31:52'),
(1822, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:32:52'),
(1823, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:33:52'),
(1824, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:34:52'),
(1825, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:35:52'),
(1826, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:36:52'),
(1827, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:37:52'),
(1828, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:38:52'),
(1829, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:39:52'),
(1830, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:40:52'),
(1831, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:41:52'),
(1832, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:42:52'),
(1833, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:43:52'),
(1834, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:44:52'),
(1835, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:45:52'),
(1836, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:46:52'),
(1837, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:47:52'),
(1838, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:48:52'),
(1839, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:49:52'),
(1840, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:50:52'),
(1841, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:51:52'),
(1842, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:52:51'),
(1843, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:53:52'),
(1844, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:54:52');
INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(1845, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:55:52'),
(1846, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:56:52'),
(1847, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:57:52'),
(1848, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 14:58:52'),
(1849, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 14:59:52'),
(1850, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:00:52'),
(1851, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:01:51'),
(1852, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:02:51'),
(1853, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:03:52'),
(1854, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:04:51'),
(1855, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:05:52'),
(1856, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:06:51'),
(1857, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:07:51'),
(1858, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:08:51'),
(1859, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:09:51'),
(1860, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:10:51'),
(1861, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:11:52'),
(1862, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:12:51'),
(1863, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:13:52'),
(1864, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:14:51'),
(1865, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:15:51'),
(1866, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:16:52'),
(1867, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:17:52'),
(1868, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:18:52'),
(1869, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:19:52'),
(1870, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:20:51'),
(1871, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:21:51'),
(1872, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:22:52'),
(1873, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:23:51'),
(1874, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:24:51'),
(1875, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:25:52'),
(1876, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:26:51'),
(1877, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:27:52'),
(1878, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:28:51'),
(1879, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:29:51'),
(1880, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:30:52'),
(1881, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:31:51'),
(1882, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:32:51'),
(1883, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:33:51'),
(1884, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:34:52'),
(1885, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:35:52'),
(1886, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:36:51'),
(1887, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:37:52'),
(1888, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:38:52'),
(1889, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:39:52'),
(1890, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:40:51'),
(1891, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:41:52'),
(1892, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:42:51'),
(1893, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:43:51'),
(1894, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:44:52'),
(1895, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:45:51'),
(1896, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:46:52'),
(1897, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:47:52'),
(1898, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:48:51'),
(1899, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:49:51'),
(1900, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:50:51'),
(1901, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:51:51'),
(1902, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:52:51'),
(1903, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:53:51'),
(1904, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:54:52'),
(1905, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:55:56'),
(1906, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:56:51'),
(1907, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 15:57:51'),
(1908, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:58:52'),
(1909, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 15:59:52'),
(1910, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:00:51'),
(1911, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:01:51'),
(1912, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:02:51'),
(1913, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:03:52'),
(1914, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:04:51'),
(1915, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:05:51'),
(1916, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:06:51'),
(1917, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:07:51'),
(1918, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:08:52'),
(1919, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:09:51'),
(1920, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:10:51'),
(1921, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:11:51'),
(1922, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:12:51'),
(1923, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:13:51'),
(1924, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:14:51'),
(1925, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:15:51'),
(1926, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:16:52'),
(1927, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:17:51'),
(1928, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:18:51'),
(1929, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:19:52'),
(1930, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:20:52'),
(1931, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:21:51'),
(1932, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:22:51'),
(1933, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:23:51'),
(1934, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:24:52'),
(1935, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:25:52'),
(1936, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:26:52'),
(1937, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:27:52'),
(1938, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:28:51'),
(1939, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:29:51'),
(1940, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:30:52'),
(1941, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:31:51'),
(1942, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:32:52'),
(1943, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:33:51'),
(1944, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:34:51'),
(1945, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:35:51'),
(1946, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:36:51'),
(1947, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:37:52'),
(1948, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:38:52'),
(1949, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:39:52'),
(1950, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:40:52'),
(1951, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:41:52'),
(1952, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:42:52'),
(1953, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:43:52'),
(1954, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:44:51'),
(1955, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:45:52'),
(1956, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:46:52'),
(1957, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:47:52'),
(1958, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:48:52'),
(1959, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:49:52'),
(1960, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:50:51'),
(1961, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:51:51'),
(1962, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:52:51'),
(1963, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:53:51'),
(1964, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:54:51'),
(1965, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:55:51'),
(1966, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:56:52'),
(1967, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 16:57:51'),
(1968, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:58:51'),
(1969, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 16:59:51'),
(1970, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:00:51'),
(1971, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:01:53'),
(1972, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:02:52'),
(1973, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:03:51'),
(1974, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:04:51'),
(1975, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:05:52'),
(1976, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:06:51'),
(1977, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:07:51'),
(1978, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:08:52'),
(1979, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:09:52'),
(1980, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:10:51'),
(1981, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:11:51'),
(1982, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:12:51'),
(1983, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:13:51'),
(1984, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:14:52'),
(1985, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:15:52'),
(1986, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:16:51'),
(1987, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:17:52'),
(1988, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:18:52'),
(1989, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:19:51'),
(1990, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:20:52'),
(1991, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:21:51'),
(1992, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:22:52'),
(1993, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:23:53'),
(1994, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:24:51'),
(1995, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:25:51'),
(1996, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:26:51'),
(1997, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:27:51'),
(1998, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:28:51'),
(1999, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:29:51'),
(2000, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:30:52'),
(2001, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:31:52'),
(2002, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:32:51'),
(2003, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:33:52'),
(2004, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:34:52'),
(2005, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:35:51'),
(2006, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:36:51'),
(2007, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:37:51'),
(2008, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:38:52'),
(2009, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:39:51'),
(2010, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:40:51'),
(2011, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:41:51'),
(2012, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:42:51'),
(2013, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:43:51'),
(2014, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:44:52'),
(2015, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:45:51'),
(2016, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:46:52'),
(2017, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:47:51'),
(2018, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:48:52'),
(2019, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:49:51'),
(2020, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:50:51'),
(2021, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:51:52'),
(2022, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:52:52'),
(2023, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:53:51'),
(2024, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:54:51'),
(2025, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:55:51'),
(2026, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:56:51'),
(2027, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 17:57:51'),
(2028, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:58:51'),
(2029, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 17:59:52'),
(2030, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:00:53'),
(2031, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:01:52'),
(2032, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:02:53'),
(2033, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:03:53'),
(2034, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:04:53'),
(2035, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:05:53'),
(2036, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:07:52'),
(2037, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:08:51'),
(2038, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:09:52'),
(2039, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:10:51'),
(2040, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:11:52'),
(2041, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:12:52'),
(2042, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:13:51'),
(2043, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:14:51'),
(2044, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:15:51'),
(2045, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:16:51'),
(2046, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:17:52'),
(2047, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:18:51'),
(2048, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:19:52'),
(2049, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:20:51'),
(2050, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:21:51'),
(2051, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:22:51'),
(2052, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:23:52'),
(2053, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:24:52'),
(2054, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:25:52'),
(2055, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:26:52'),
(2056, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:27:51'),
(2057, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:28:52'),
(2058, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:29:51'),
(2059, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:30:54'),
(2060, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:31:51'),
(2061, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:32:52'),
(2062, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:33:52'),
(2063, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:34:52'),
(2064, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:35:52'),
(2065, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:36:52'),
(2066, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:37:52'),
(2067, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:38:52'),
(2068, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:39:52'),
(2069, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:40:52'),
(2070, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:41:52'),
(2071, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:42:54'),
(2072, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:43:52'),
(2073, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:44:51'),
(2074, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:45:52'),
(2075, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:46:52'),
(2076, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:47:51'),
(2077, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:48:51'),
(2078, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:49:51'),
(2079, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:50:51'),
(2080, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:51:51'),
(2081, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:52:51'),
(2082, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 18:53:51'),
(2083, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:54:52'),
(2084, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:55:51'),
(2085, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:56:51'),
(2086, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:57:51'),
(2087, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:58:51'),
(2088, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 18:59:51'),
(2089, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:00:51'),
(2090, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:01:52'),
(2091, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:02:51'),
(2092, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:03:51'),
(2093, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:04:51'),
(2094, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:05:51'),
(2095, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:06:52'),
(2096, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:07:55'),
(2097, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:08:51'),
(2098, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:09:52'),
(2099, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:10:51'),
(2100, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:11:51'),
(2101, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:12:51'),
(2102, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:13:52'),
(2103, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:14:51'),
(2104, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:15:52'),
(2105, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:16:51'),
(2106, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:17:55'),
(2107, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:18:51'),
(2108, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:19:52'),
(2109, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:20:51'),
(2110, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:21:51'),
(2111, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:22:51'),
(2112, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:23:52'),
(2113, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:24:51'),
(2114, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:25:51'),
(2115, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:26:52'),
(2116, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:27:52'),
(2117, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:28:52'),
(2118, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:29:53'),
(2119, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:30:52'),
(2120, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:31:51'),
(2121, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:32:51'),
(2122, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:33:52'),
(2123, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:34:52'),
(2124, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:35:52'),
(2125, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:36:51'),
(2126, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:37:51'),
(2127, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:38:52'),
(2128, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:39:51'),
(2129, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:40:52'),
(2130, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:41:51'),
(2131, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:42:51'),
(2132, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:43:51'),
(2133, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:44:51'),
(2134, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:45:52'),
(2135, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:46:51'),
(2136, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:47:51'),
(2137, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:48:53'),
(2138, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:49:52'),
(2139, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:50:52'),
(2140, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:51:51'),
(2141, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:52:51'),
(2142, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:53:52'),
(2143, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:54:52'),
(2144, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:55:52'),
(2145, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:56:51'),
(2146, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 19:57:52'),
(2147, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:58:51'),
(2148, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 19:59:52'),
(2149, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:00:52'),
(2150, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:01:51'),
(2151, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:02:52'),
(2152, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:03:51'),
(2153, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:04:52'),
(2154, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:05:52'),
(2155, 'e00fce68e454a56457c6', 1, 1, 0, 1, 1, 0, 0, 99, 0, 0, 0, 0, '2021-03-09 20:06:53'),
(2156, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:07:52'),
(2157, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:08:52'),
(2158, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:09:53'),
(2159, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:10:52'),
(2160, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:11:54'),
(2161, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:12:52'),
(2162, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:13:52'),
(2163, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:14:52'),
(2164, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:15:52'),
(2165, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:16:52'),
(2166, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:17:52'),
(2167, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:18:52'),
(2168, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:19:53'),
(2169, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:20:56'),
(2170, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:21:51'),
(2171, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:22:52'),
(2172, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:23:51'),
(2173, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:24:52'),
(2174, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:25:52'),
(2175, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:26:53'),
(2176, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:27:55'),
(2177, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:28:53'),
(2178, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:29:52'),
(2179, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:30:52'),
(2180, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:31:52'),
(2181, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:32:52'),
(2182, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:33:51'),
(2183, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:34:52'),
(2184, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:35:51'),
(2185, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:36:51'),
(2186, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:37:53'),
(2187, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:38:51'),
(2188, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:39:52'),
(2189, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:40:51'),
(2190, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:41:52'),
(2191, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:42:52'),
(2192, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:43:52'),
(2193, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:44:51'),
(2194, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:45:52'),
(2195, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:46:51'),
(2196, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:47:51'),
(2197, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:48:51'),
(2198, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:49:52'),
(2199, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:50:52'),
(2200, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:51:53'),
(2201, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:52:51'),
(2202, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:53:52'),
(2203, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:54:51'),
(2204, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:55:52'),
(2205, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 20:56:54'),
(2206, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:57:52'),
(2207, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:58:51'),
(2208, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 20:59:51'),
(2209, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:00:51'),
(2210, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:01:52'),
(2211, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:02:56'),
(2212, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:03:52'),
(2213, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:04:51'),
(2214, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:05:52'),
(2215, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:06:53'),
(2216, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:07:52'),
(2217, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:08:52'),
(2218, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:09:51'),
(2219, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:10:51'),
(2220, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:11:52'),
(2221, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:12:52'),
(2222, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:13:51'),
(2223, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:14:52'),
(2224, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:15:51'),
(2225, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:16:52'),
(2226, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:17:51'),
(2227, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:18:51'),
(2228, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:19:51'),
(2229, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:20:52'),
(2230, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:21:51'),
(2231, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:22:51'),
(2232, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:23:51'),
(2233, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:24:51'),
(2234, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:25:51'),
(2235, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:26:52'),
(2236, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:27:55'),
(2237, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:28:51'),
(2238, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:29:51'),
(2239, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:30:52'),
(2240, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:31:55'),
(2241, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:32:52'),
(2242, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:33:52'),
(2243, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:34:51'),
(2244, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:35:52'),
(2245, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:36:52'),
(2246, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:37:51'),
(2247, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:38:51'),
(2248, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:39:51'),
(2249, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:40:51'),
(2250, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:41:51'),
(2251, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:42:51'),
(2252, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:43:52'),
(2253, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:44:51'),
(2254, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:45:51'),
(2255, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:46:51'),
(2256, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:47:51'),
(2257, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:48:52'),
(2258, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:49:51'),
(2259, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:50:51'),
(2260, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:51:51'),
(2261, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:52:51'),
(2262, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:53:52'),
(2263, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:54:52'),
(2264, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:55:51'),
(2265, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 21:56:52'),
(2266, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:57:52'),
(2267, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:58:53'),
(2268, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 21:59:53'),
(2269, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:00:53'),
(2270, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:03:53'),
(2271, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:04:52'),
(2272, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:05:53'),
(2273, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:06:51'),
(2274, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:07:52'),
(2275, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:08:52'),
(2276, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:10:51'),
(2277, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:11:52'),
(2278, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:12:52'),
(2279, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:13:51'),
(2280, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:14:52'),
(2281, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:15:51'),
(2282, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:16:52'),
(2283, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:17:51'),
(2284, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:18:52'),
(2285, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:19:52'),
(2286, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:20:51'),
(2287, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:21:52'),
(2288, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:22:51'),
(2289, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:23:51'),
(2290, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:24:52'),
(2291, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:25:51'),
(2292, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:26:52'),
(2293, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:27:53'),
(2294, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:28:51'),
(2295, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:29:53'),
(2296, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:30:51'),
(2297, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:31:51'),
(2298, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:32:52'),
(2299, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:33:51'),
(2300, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:34:52'),
(2301, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:35:52'),
(2302, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:36:52'),
(2303, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:37:53'),
(2304, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:38:51'),
(2305, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:39:52'),
(2306, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:40:52'),
(2307, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:41:51'),
(2308, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:42:51'),
(2309, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:43:52'),
(2310, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:44:52'),
(2311, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:45:52'),
(2312, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:46:55'),
(2313, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:47:52'),
(2314, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:48:52'),
(2315, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:49:51'),
(2316, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:50:52'),
(2317, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:51:51'),
(2318, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:52:51'),
(2319, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:53:53'),
(2320, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:54:51'),
(2321, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:55:51'),
(2322, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 22:56:52'),
(2323, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:57:53'),
(2324, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:58:53'),
(2325, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 22:59:51'),
(2326, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:01:51'),
(2327, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:02:52'),
(2328, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:03:51'),
(2329, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:04:52'),
(2330, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:05:52'),
(2331, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:06:51'),
(2332, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:07:51'),
(2333, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:08:53'),
(2334, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:09:52'),
(2335, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:10:54'),
(2336, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:11:52'),
(2337, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:12:54'),
(2338, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:13:57'),
(2339, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:14:51'),
(2340, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:15:51'),
(2341, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:16:52'),
(2342, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:17:52'),
(2343, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:18:52'),
(2344, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:19:51'),
(2345, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:20:51'),
(2346, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:21:51'),
(2347, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:22:51'),
(2348, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:23:54'),
(2349, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:24:52'),
(2350, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:25:52'),
(2351, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:26:52'),
(2352, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:28:00'),
(2353, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:28:53'),
(2354, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:29:51'),
(2355, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:30:51'),
(2356, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:31:51'),
(2357, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:32:57'),
(2358, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:33:54'),
(2359, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:34:51'),
(2360, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:35:51'),
(2361, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:36:54'),
(2362, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:37:51'),
(2363, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:38:55'),
(2364, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:39:51'),
(2365, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:40:51'),
(2366, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:41:51'),
(2367, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:42:51'),
(2368, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:43:51'),
(2369, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:44:51'),
(2370, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:45:51'),
(2371, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:46:51'),
(2372, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:47:51'),
(2373, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:48:51'),
(2374, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:49:55'),
(2375, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:50:51'),
(2376, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:51:51'),
(2377, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:52:51'),
(2378, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:53:51'),
(2379, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:54:52'),
(2380, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:55:51'),
(2381, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:56:52'),
(2382, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:57:54'),
(2383, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-09 23:58:51'),
(2384, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-09 23:59:54'),
(2385, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:00:53'),
(2386, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:01:52'),
(2387, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:02:51'),
(2388, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:03:51'),
(2389, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:04:55'),
(2390, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:05:51');
INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(2391, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:06:51'),
(2392, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:07:51'),
(2393, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:08:51'),
(2394, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:09:51'),
(2395, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:10:52'),
(2396, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:11:51'),
(2397, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:12:51'),
(2398, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:13:51'),
(2399, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:14:51'),
(2400, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:15:51'),
(2401, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:16:51'),
(2402, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:17:51'),
(2403, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:18:51'),
(2404, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:19:51'),
(2405, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:20:52'),
(2406, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:21:52'),
(2407, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:22:51'),
(2408, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:23:51'),
(2409, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:24:51'),
(2410, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:25:51'),
(2411, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:26:51'),
(2412, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:27:53'),
(2413, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:28:52'),
(2414, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:29:52'),
(2415, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:30:53'),
(2416, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:31:52'),
(2417, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:32:52'),
(2418, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:33:59'),
(2419, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:34:52'),
(2420, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:35:51'),
(2421, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:36:51'),
(2422, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:37:51'),
(2423, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:38:52'),
(2424, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:39:51'),
(2425, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:40:51'),
(2426, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:41:52'),
(2427, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:42:52'),
(2428, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:43:51'),
(2429, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:44:51'),
(2430, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:45:51'),
(2431, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:46:52'),
(2432, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:47:52'),
(2433, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:48:51'),
(2434, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:49:51'),
(2435, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:50:51'),
(2436, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:51:51'),
(2437, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:52:51'),
(2438, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:53:52'),
(2439, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:54:52'),
(2440, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:55:51'),
(2441, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:56:53'),
(2442, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 00:57:51'),
(2443, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:58:51'),
(2444, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 00:59:51'),
(2445, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:00:51'),
(2446, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:01:51'),
(2447, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:02:52'),
(2448, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:03:51'),
(2449, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:04:51'),
(2450, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:05:51'),
(2451, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:06:51'),
(2452, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:07:51'),
(2453, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:08:51'),
(2454, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:09:51'),
(2455, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:10:51'),
(2456, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:11:51'),
(2457, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:12:51'),
(2458, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:13:51'),
(2459, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:14:51'),
(2460, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:15:51'),
(2461, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:16:51'),
(2462, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:17:51'),
(2463, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:18:51'),
(2464, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:19:51'),
(2465, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:20:51'),
(2466, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:21:51'),
(2467, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:22:51'),
(2468, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:23:51'),
(2469, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:24:51'),
(2470, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:25:51'),
(2471, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:26:51'),
(2472, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:27:54'),
(2473, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:28:51'),
(2474, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:29:51'),
(2475, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:30:51'),
(2476, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:31:51'),
(2477, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:32:51'),
(2478, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:33:51'),
(2479, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:34:51'),
(2480, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:35:51'),
(2481, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:36:51'),
(2482, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:37:51'),
(2483, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:38:51'),
(2484, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:39:51'),
(2485, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:40:51'),
(2486, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:41:51'),
(2487, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:42:51'),
(2488, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:43:51'),
(2489, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:44:51'),
(2490, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:45:51'),
(2491, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:46:51'),
(2492, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:47:51'),
(2493, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:48:51'),
(2494, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:49:51'),
(2495, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:50:51'),
(2496, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:51:51'),
(2497, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:52:51'),
(2498, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:53:51'),
(2499, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:54:51'),
(2500, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:55:53'),
(2501, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 01:56:51'),
(2502, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:57:51'),
(2503, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:58:51'),
(2504, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 01:59:51'),
(2505, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:00:51'),
(2506, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:01:51'),
(2507, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:02:51'),
(2508, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:03:51'),
(2509, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:04:51'),
(2510, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:05:51'),
(2511, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:06:53'),
(2512, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:07:53'),
(2513, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:08:51'),
(2514, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:09:52'),
(2515, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:10:52'),
(2516, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:11:53'),
(2517, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:12:52'),
(2518, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:13:51'),
(2519, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:14:53'),
(2520, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:15:52'),
(2521, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:16:53'),
(2522, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:17:52'),
(2523, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:18:53'),
(2524, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:20:53'),
(2525, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:21:52'),
(2526, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:22:53'),
(2527, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:23:54'),
(2528, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:24:54'),
(2529, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:25:52'),
(2530, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:26:52'),
(2531, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:27:55'),
(2532, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:28:52'),
(2533, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:29:52'),
(2534, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:30:58'),
(2535, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:31:52'),
(2536, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:32:53'),
(2537, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:33:52'),
(2538, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:34:53'),
(2539, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:35:52'),
(2540, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:36:52'),
(2541, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:37:52'),
(2542, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:38:52'),
(2543, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:39:53'),
(2544, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:40:52'),
(2545, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:41:52'),
(2546, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:42:52'),
(2547, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:43:52'),
(2548, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:44:52'),
(2549, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:45:52'),
(2550, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:46:54'),
(2551, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:47:54'),
(2552, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:48:52'),
(2553, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:49:51'),
(2554, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:50:52'),
(2555, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:51:52'),
(2556, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:52:52'),
(2557, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:53:52'),
(2558, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:54:52'),
(2559, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:55:51'),
(2560, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 02:56:52'),
(2561, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:57:52'),
(2562, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:58:52'),
(2563, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 02:59:52'),
(2564, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:00:53'),
(2565, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:02:52'),
(2566, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:03:55'),
(2567, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:04:52'),
(2568, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:05:52'),
(2569, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:06:53'),
(2570, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:07:52'),
(2571, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:08:52'),
(2572, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:09:55'),
(2573, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:11:52'),
(2574, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:12:52'),
(2575, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:13:52'),
(2576, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:14:52'),
(2577, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:15:52'),
(2578, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:16:52'),
(2579, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:17:52'),
(2580, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:18:53'),
(2581, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:19:52'),
(2582, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:20:53'),
(2583, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:21:52'),
(2584, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:22:52'),
(2585, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:23:52'),
(2586, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:24:53'),
(2587, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:25:52'),
(2588, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:26:52'),
(2589, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:27:52'),
(2590, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:28:52'),
(2591, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:29:52'),
(2592, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:30:52'),
(2593, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:31:53'),
(2594, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:32:52'),
(2595, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:33:52'),
(2596, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:34:51'),
(2597, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:35:52'),
(2598, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:36:52'),
(2599, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:37:52'),
(2600, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:38:52'),
(2601, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:39:52'),
(2602, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:40:55'),
(2603, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:41:53'),
(2604, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:42:52'),
(2605, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:43:53'),
(2606, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:44:52'),
(2607, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:45:52'),
(2608, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:46:54'),
(2609, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:47:52'),
(2610, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:48:52'),
(2611, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:49:52'),
(2612, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:50:52'),
(2613, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:51:53'),
(2614, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:52:55'),
(2615, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:53:52'),
(2616, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:54:52'),
(2617, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:55:52'),
(2618, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:56:53'),
(2619, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:57:52'),
(2620, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 03:58:53'),
(2621, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 03:59:52'),
(2622, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:00:52'),
(2623, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:01:52'),
(2624, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:02:52'),
(2625, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:03:52'),
(2626, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:04:52'),
(2627, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:05:51'),
(2628, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:07:52'),
(2629, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:08:55'),
(2630, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:09:52'),
(2631, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:10:52'),
(2632, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:11:52'),
(2633, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:12:52'),
(2634, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:13:53'),
(2635, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:14:52'),
(2636, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:15:52'),
(2637, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:16:52'),
(2638, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:17:55'),
(2639, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:18:53'),
(2640, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:19:52'),
(2641, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:20:52'),
(2642, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:21:52'),
(2643, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:22:52'),
(2644, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:23:52'),
(2645, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:24:52'),
(2646, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:26:54'),
(2647, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:27:53'),
(2648, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:28:53'),
(2649, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:29:52'),
(2650, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:30:51'),
(2651, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:32:53'),
(2652, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:33:53'),
(2653, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:34:52'),
(2654, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:35:53'),
(2655, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:36:52'),
(2656, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:37:52'),
(2657, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:38:53'),
(2658, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:39:52'),
(2659, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:40:52'),
(2660, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:41:53'),
(2661, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:42:52'),
(2662, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:43:52'),
(2663, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:45:53'),
(2664, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:46:55'),
(2665, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:47:52'),
(2666, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:48:52'),
(2667, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:49:57'),
(2668, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:51:52'),
(2669, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:52:55'),
(2670, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:53:52'),
(2671, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:54:58'),
(2672, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 04:55:52'),
(2673, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:56:52'),
(2674, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:57:52'),
(2675, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:58:52'),
(2676, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 04:59:52'),
(2677, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:00:52'),
(2678, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:01:52'),
(2679, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:02:55'),
(2680, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:03:52'),
(2681, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:04:52'),
(2682, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:05:53'),
(2683, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:06:52'),
(2684, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:07:55'),
(2685, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:08:52'),
(2686, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:09:52'),
(2687, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:10:52'),
(2688, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:11:53'),
(2689, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:12:52'),
(2690, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:13:52'),
(2691, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:14:52'),
(2692, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:15:56'),
(2693, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:16:52'),
(2694, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:17:52'),
(2695, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:19:00'),
(2696, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:19:51'),
(2697, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:20:52'),
(2698, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:21:52'),
(2699, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:22:52'),
(2700, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:23:52'),
(2701, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:24:52'),
(2702, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:25:52'),
(2703, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:26:52'),
(2704, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:27:52'),
(2705, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:28:52'),
(2706, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:29:52'),
(2707, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:30:52'),
(2708, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:31:52'),
(2709, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:32:52'),
(2710, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:33:52'),
(2711, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:34:53'),
(2712, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:35:52'),
(2713, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:36:52'),
(2714, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:37:52'),
(2715, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:38:52'),
(2716, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:39:52'),
(2717, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:40:52'),
(2718, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:41:52'),
(2719, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:42:52'),
(2720, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:43:52'),
(2721, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:44:52'),
(2722, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:45:52'),
(2723, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:46:52'),
(2724, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:47:52'),
(2725, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:48:54'),
(2726, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:49:52'),
(2727, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:50:53'),
(2728, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:51:53'),
(2729, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:52:53'),
(2730, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:53:54'),
(2731, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 05:54:52'),
(2732, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:55:52'),
(2733, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:56:52'),
(2734, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:58:52'),
(2735, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 05:59:52'),
(2736, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:00:54'),
(2737, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:01:52'),
(2738, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:02:53'),
(2739, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:03:52'),
(2740, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:04:52'),
(2741, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:05:51'),
(2742, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:06:54'),
(2743, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:07:58'),
(2744, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:09:51'),
(2745, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:10:53'),
(2746, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:11:53'),
(2747, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:12:53'),
(2748, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:13:52'),
(2749, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:14:53'),
(2750, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:15:51'),
(2751, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:16:52'),
(2752, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:17:52'),
(2753, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:18:52'),
(2754, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:19:53'),
(2755, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:20:51'),
(2756, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:21:52'),
(2757, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:22:52'),
(2758, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:23:52'),
(2759, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:24:52'),
(2760, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:25:53'),
(2761, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:26:53'),
(2762, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:27:52'),
(2763, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:28:52'),
(2764, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:29:52'),
(2765, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:30:52'),
(2766, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:32:52'),
(2767, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:33:52'),
(2768, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:34:52'),
(2769, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:36:52'),
(2770, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:37:52'),
(2771, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:38:52'),
(2772, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:39:53'),
(2773, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:40:54'),
(2774, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:42:51'),
(2775, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:43:52'),
(2776, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:44:52'),
(2777, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:45:52'),
(2778, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:46:52'),
(2779, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:47:52'),
(2780, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:48:52'),
(2781, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:49:52'),
(2782, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:50:53'),
(2783, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:51:52'),
(2784, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:52:53'),
(2785, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:53:58'),
(2786, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:54:52'),
(2787, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 06:55:51'),
(2788, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:56:59'),
(2789, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:57:53'),
(2790, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:58:51'),
(2791, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 06:59:54'),
(2792, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:00:52'),
(2793, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:01:58'),
(2794, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:02:51'),
(2795, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:03:53'),
(2796, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:04:52'),
(2797, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:05:51'),
(2798, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:06:51'),
(2799, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:07:51'),
(2800, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:08:53'),
(2801, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:09:52'),
(2802, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:10:53'),
(2803, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:12:52'),
(2804, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:13:51'),
(2805, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:15:52'),
(2806, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:16:51'),
(2807, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:18:52'),
(2808, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:19:52'),
(2809, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:20:52'),
(2810, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:21:53'),
(2811, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:22:52'),
(2812, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:23:52'),
(2813, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:24:52'),
(2814, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:25:52'),
(2815, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:26:52'),
(2816, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:27:52'),
(2817, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:28:51'),
(2818, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:29:53'),
(2819, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:30:52'),
(2820, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:31:52'),
(2821, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:32:52'),
(2822, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:33:52'),
(2823, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:34:52'),
(2824, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:35:53'),
(2825, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:36:53'),
(2826, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:37:52'),
(2827, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:38:52'),
(2828, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:39:52'),
(2829, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:40:52'),
(2830, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:41:52'),
(2831, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:42:55'),
(2832, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:43:52'),
(2833, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:44:53'),
(2834, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:45:53'),
(2835, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:46:52'),
(2836, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:47:52'),
(2837, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:48:52'),
(2838, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:49:52'),
(2839, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:50:53'),
(2840, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:51:54'),
(2841, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:53:53'),
(2842, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:54:51'),
(2843, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:55:51'),
(2844, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:56:53'),
(2845, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 07:57:53'),
(2846, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 07:58:56'),
(2847, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:00:52'),
(2848, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:02:52'),
(2849, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:03:54'),
(2850, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:04:51'),
(2851, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:05:52'),
(2852, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:06:52'),
(2853, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:07:51'),
(2854, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:08:51'),
(2855, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:09:59'),
(2856, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:11:51'),
(2857, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:12:52'),
(2858, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:13:52'),
(2859, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:14:52'),
(2860, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:15:54'),
(2861, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:17:53'),
(2862, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:18:58'),
(2863, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:19:52'),
(2864, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:20:52'),
(2865, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:21:53'),
(2866, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:22:52'),
(2867, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:23:53'),
(2868, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:24:51'),
(2869, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:25:52'),
(2870, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:26:52'),
(2871, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:27:52'),
(2872, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:28:52'),
(2873, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:29:51'),
(2874, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:30:53'),
(2875, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:31:52'),
(2876, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:32:52'),
(2877, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:33:51'),
(2878, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:34:53'),
(2879, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:35:52'),
(2880, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:36:55'),
(2881, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:37:51'),
(2882, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:38:52'),
(2883, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:39:51'),
(2884, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:40:53'),
(2885, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:41:52'),
(2886, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:42:55'),
(2887, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:44:52'),
(2888, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:45:51'),
(2889, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:46:53'),
(2890, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:47:52'),
(2891, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:49:52'),
(2892, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:50:52'),
(2893, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:51:52'),
(2894, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:52:52'),
(2895, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:53:53'),
(2896, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:54:52'),
(2897, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:55:52'),
(2898, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:56:52'),
(2899, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:57:52'),
(2900, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 08:58:53'),
(2901, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 08:59:53'),
(2902, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:00:51'),
(2903, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:01:51'),
(2904, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:02:53'),
(2905, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:03:54'),
(2906, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:04:51'),
(2907, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:05:54'),
(2908, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:06:53'),
(2909, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:07:51'),
(2910, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:08:52'),
(2911, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:09:54'),
(2912, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:10:52'),
(2913, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:11:52'),
(2914, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:12:52'),
(2915, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:13:51'),
(2916, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:14:51'),
(2917, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:15:52'),
(2918, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:16:52'),
(2919, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:17:51'),
(2920, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:18:54'),
(2921, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:19:51'),
(2922, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:20:52'),
(2923, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:21:52'),
(2924, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:22:52'),
(2925, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:23:54'),
(2926, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:24:52'),
(2927, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:25:52'),
(2928, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:26:53'),
(2929, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:29:01'),
(2930, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:29:53'),
(2931, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:30:51'),
(2932, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:31:52'),
(2933, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:32:52'),
(2934, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:33:53'),
(2935, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:34:52'),
(2936, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:35:52');
INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(2937, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:36:51'),
(2938, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:37:52'),
(2939, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:38:54'),
(2940, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:39:52'),
(2941, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:40:52'),
(2942, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:41:52'),
(2943, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:42:51'),
(2944, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:43:52'),
(2945, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:44:51'),
(2946, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:45:51'),
(2947, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:46:53'),
(2948, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:48:51'),
(2949, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:49:52'),
(2950, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:50:52'),
(2951, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:51:51'),
(2952, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:52:52'),
(2953, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:53:52'),
(2954, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:54:51'),
(2955, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:55:52'),
(2956, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:56:51'),
(2957, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 09:57:51'),
(2958, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:58:53'),
(2959, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 09:59:51'),
(2960, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:00:51'),
(2961, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:01:53'),
(2962, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:02:52'),
(2963, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:03:52'),
(2964, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:04:51'),
(2965, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:05:52'),
(2966, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:06:52'),
(2967, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:07:53'),
(2968, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:08:51'),
(2969, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:09:53'),
(2970, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:10:52'),
(2971, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:12:51'),
(2972, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:13:53'),
(2973, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:14:59'),
(2974, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:15:54'),
(2975, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:16:53'),
(2976, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:17:52'),
(2977, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:18:51'),
(2978, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:19:51'),
(2979, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:20:51'),
(2980, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:21:52'),
(2981, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:22:52'),
(2982, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:23:53'),
(2983, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:24:52'),
(2984, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:25:52'),
(2985, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:26:52'),
(2986, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:27:52'),
(2987, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:28:51'),
(2988, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:29:52'),
(2989, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:30:51'),
(2990, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:31:52'),
(2991, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:33:52'),
(2992, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:34:51'),
(2993, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:35:52'),
(2994, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:36:51'),
(2995, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:37:52'),
(2996, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:38:51'),
(2997, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:39:52'),
(2998, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:40:52'),
(2999, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:41:52'),
(3000, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:42:52'),
(3001, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:43:52'),
(3002, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:44:51'),
(3003, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:46:56'),
(3004, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:47:51'),
(3005, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:48:52'),
(3006, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:49:52'),
(3007, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:50:52'),
(3008, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:51:53'),
(3009, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:52:51'),
(3010, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:53:52'),
(3011, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:54:53'),
(3012, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 10:55:51'),
(3013, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:56:51'),
(3014, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:57:51'),
(3015, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:58:51'),
(3016, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 10:59:51'),
(3017, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:00:51'),
(3018, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:01:51'),
(3019, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:02:51'),
(3020, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:03:51'),
(3021, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:04:51'),
(3022, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:05:51'),
(3023, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:06:51'),
(3024, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:07:52'),
(3025, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:08:51'),
(3026, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:09:51'),
(3027, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:11:52'),
(3028, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:12:55'),
(3029, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:13:52'),
(3030, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:14:52'),
(3031, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:15:52'),
(3032, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:16:54'),
(3033, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:17:52'),
(3034, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:18:54'),
(3035, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:19:52'),
(3036, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:20:52'),
(3037, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:21:52'),
(3038, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:22:52'),
(3039, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:23:52'),
(3040, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:24:52'),
(3041, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:25:53'),
(3042, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:26:52'),
(3043, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:27:51'),
(3044, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:28:51'),
(3045, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:29:51'),
(3046, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:30:51'),
(3047, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:31:51'),
(3048, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:32:51'),
(3049, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:33:52'),
(3050, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:34:51'),
(3051, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:35:52'),
(3052, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:36:53'),
(3053, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:37:51'),
(3054, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:38:53'),
(3055, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:39:51'),
(3056, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:40:52'),
(3057, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:41:51'),
(3058, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:42:51'),
(3059, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:43:51'),
(3060, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:44:52'),
(3061, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:45:51'),
(3062, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:46:51'),
(3063, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:47:51'),
(3064, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:48:51'),
(3065, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:49:51'),
(3066, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 11:51:51'),
(3067, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:52:51'),
(3068, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:53:52'),
(3069, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:54:51'),
(3070, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:55:52'),
(3071, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:56:51'),
(3072, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:57:51'),
(3073, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:58:52'),
(3074, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 11:59:51'),
(3075, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:00:51'),
(3076, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:01:51'),
(3077, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:02:51'),
(3078, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:03:51'),
(3079, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:04:51'),
(3080, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:05:51'),
(3081, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:06:51'),
(3082, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:07:52'),
(3083, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:08:51'),
(3084, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:09:51'),
(3085, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:10:53'),
(3086, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:11:52'),
(3087, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:12:52'),
(3088, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:13:51'),
(3089, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:14:51'),
(3090, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:15:51'),
(3091, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:16:51'),
(3092, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:17:53'),
(3093, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:18:53'),
(3094, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:19:51'),
(3095, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:20:51'),
(3096, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:21:52'),
(3097, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:22:51'),
(3098, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:23:51'),
(3099, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:24:52'),
(3100, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:25:55'),
(3101, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:26:52'),
(3102, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:27:51'),
(3103, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:28:52'),
(3104, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:29:51'),
(3105, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:30:51'),
(3106, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:31:54'),
(3107, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:32:51'),
(3108, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:33:51'),
(3109, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:34:53'),
(3110, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:35:52'),
(3111, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:36:51'),
(3112, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:38:52'),
(3113, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:39:52'),
(3114, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:40:51'),
(3115, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:42:52'),
(3116, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:43:52'),
(3117, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:44:51'),
(3118, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:45:52'),
(3119, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:46:52'),
(3120, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:47:51'),
(3121, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:48:52'),
(3122, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:49:51'),
(3123, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:50:51'),
(3124, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:51:51'),
(3125, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:52:51'),
(3126, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:53:51'),
(3127, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:54:52'),
(3128, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:55:51'),
(3129, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:56:52'),
(3130, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:57:52'),
(3131, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 12:58:51'),
(3132, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 12:59:52'),
(3133, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:00:51'),
(3134, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:01:52'),
(3135, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:02:52'),
(3136, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:03:51'),
(3137, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:04:51'),
(3138, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:05:51'),
(3139, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:06:51'),
(3140, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:07:52'),
(3141, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:08:51'),
(3142, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:09:53'),
(3143, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:10:52'),
(3144, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:12:52'),
(3145, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:13:51'),
(3146, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:14:51'),
(3147, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:15:51'),
(3148, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:16:51'),
(3149, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:17:51'),
(3150, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:18:52'),
(3151, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:20:51'),
(3152, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:21:51'),
(3153, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:22:51'),
(3154, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:23:51'),
(3155, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:24:51'),
(3156, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:25:51'),
(3157, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:26:51'),
(3158, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:27:51'),
(3159, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:28:51'),
(3160, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:29:51'),
(3161, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:30:51'),
(3162, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:31:51'),
(3163, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:32:52'),
(3164, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:33:51'),
(3165, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:34:51'),
(3166, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:35:52'),
(3167, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:36:51'),
(3168, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:37:51'),
(3169, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:38:51'),
(3170, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:39:51'),
(3171, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:40:52'),
(3172, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:41:51'),
(3173, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:42:51'),
(3174, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:43:51'),
(3175, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:44:51'),
(3176, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:45:51'),
(3177, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:46:51'),
(3178, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:47:51'),
(3179, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:48:51'),
(3180, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:49:51'),
(3181, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:50:51'),
(3182, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:51:51'),
(3183, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:52:51'),
(3184, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:53:51'),
(3185, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:54:51'),
(3186, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 13:55:51'),
(3187, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:56:51'),
(3188, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:57:51'),
(3189, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:58:52'),
(3190, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 13:59:51'),
(3191, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:00:51'),
(3192, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:01:51'),
(3193, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:02:51'),
(3194, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:03:51'),
(3195, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:04:51'),
(3196, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:05:51'),
(3197, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:06:54'),
(3198, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:07:52'),
(3199, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:08:51'),
(3200, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:09:54'),
(3201, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:10:51'),
(3202, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:11:52'),
(3203, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:12:51'),
(3204, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:13:51'),
(3205, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:14:51'),
(3206, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:15:51'),
(3207, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:16:51'),
(3208, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:17:51'),
(3209, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:18:51'),
(3210, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:19:51'),
(3211, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:20:51'),
(3212, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:21:52'),
(3213, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:22:51'),
(3214, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:23:52'),
(3215, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:24:51'),
(3216, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:25:51'),
(3217, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:26:51'),
(3218, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:27:51'),
(3219, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:28:51'),
(3220, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:29:52'),
(3221, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:30:51'),
(3222, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:31:51'),
(3223, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:32:51'),
(3224, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:33:51'),
(3225, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:34:51'),
(3226, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:35:51'),
(3227, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:36:52'),
(3228, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:37:51'),
(3229, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:38:51'),
(3230, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:39:52'),
(3231, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:40:52'),
(3232, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:41:51'),
(3233, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:42:51'),
(3234, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:43:51'),
(3235, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:44:51'),
(3236, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:45:51'),
(3237, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:46:51'),
(3238, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:47:52'),
(3239, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:48:51'),
(3240, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:49:54'),
(3241, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:50:51'),
(3242, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:51:51'),
(3243, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:52:51'),
(3244, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:53:51'),
(3245, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:54:51'),
(3246, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 14:55:54'),
(3247, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:56:51'),
(3248, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:57:51'),
(3249, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:58:51'),
(3250, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 14:59:51'),
(3251, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:00:52'),
(3252, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:01:51'),
(3253, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:02:54'),
(3254, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:03:51'),
(3255, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:04:51'),
(3256, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:05:51'),
(3257, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:06:51'),
(3258, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:07:51'),
(3259, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:08:51'),
(3260, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:09:51'),
(3261, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:10:52'),
(3262, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:11:51'),
(3263, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:12:52'),
(3264, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:13:53'),
(3265, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:14:52'),
(3266, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:15:52'),
(3267, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:16:51'),
(3268, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:17:51'),
(3269, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:18:51'),
(3270, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:19:51'),
(3271, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:20:51'),
(3272, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:21:52'),
(3273, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:22:51'),
(3274, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:23:52'),
(3275, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:24:52'),
(3276, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:25:51'),
(3277, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:26:51'),
(3278, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:27:51'),
(3279, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:28:51'),
(3280, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:29:51'),
(3281, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:30:51'),
(3282, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:31:51'),
(3283, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:32:52'),
(3284, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:33:51'),
(3285, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:34:51'),
(3286, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:35:52'),
(3287, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:36:51'),
(3288, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:37:51'),
(3289, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:38:51'),
(3290, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:39:52'),
(3291, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:40:51'),
(3292, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:41:52'),
(3293, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:42:53'),
(3294, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:43:51'),
(3295, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:44:51'),
(3296, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:45:51'),
(3297, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:46:51'),
(3298, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:47:51'),
(3299, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:48:52'),
(3300, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:49:51'),
(3301, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:50:51'),
(3302, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:51:52'),
(3303, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:52:57'),
(3304, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:53:52'),
(3305, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:54:51'),
(3306, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 15:55:51'),
(3307, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:57:51'),
(3308, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:58:54'),
(3309, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 15:59:51'),
(3310, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:00:51'),
(3311, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:01:51'),
(3312, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:02:51'),
(3313, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:03:51'),
(3314, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:04:51'),
(3315, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:05:51'),
(3316, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:06:51'),
(3317, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:07:55'),
(3318, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:08:51'),
(3319, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:09:53'),
(3320, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:10:51'),
(3321, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:11:51'),
(3322, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:12:51'),
(3323, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:13:51'),
(3324, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:14:51'),
(3325, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:15:51'),
(3326, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:16:51'),
(3327, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:17:51'),
(3328, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:18:51'),
(3329, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:19:51'),
(3330, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:20:51'),
(3331, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:21:51'),
(3332, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:22:51'),
(3333, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:23:51'),
(3334, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:24:51'),
(3335, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:25:51'),
(3336, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:26:51'),
(3337, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:27:51'),
(3338, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:28:51'),
(3339, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:29:51'),
(3340, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:30:51'),
(3341, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:31:51'),
(3342, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:32:51'),
(3343, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:33:51'),
(3344, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:34:51'),
(3345, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:35:51'),
(3346, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:36:51'),
(3347, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:37:51'),
(3348, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:38:51'),
(3349, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:39:51'),
(3350, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:40:51'),
(3351, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:41:51'),
(3352, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:42:51'),
(3353, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:43:51'),
(3354, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:44:51'),
(3355, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:45:51'),
(3356, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:46:51'),
(3357, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:47:51'),
(3358, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:48:51'),
(3359, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:49:51'),
(3360, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 16:50:51'),
(3361, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:51:51'),
(3362, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:52:51'),
(3363, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:53:51'),
(3364, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:54:51'),
(3365, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:55:51'),
(3366, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:56:51'),
(3367, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:57:51'),
(3368, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:58:51'),
(3369, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 16:59:51'),
(3370, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:00:51'),
(3371, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:01:51'),
(3372, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:02:51'),
(3373, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:03:51'),
(3374, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:04:51'),
(3375, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:05:51'),
(3376, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:06:51'),
(3377, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:07:51'),
(3378, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:08:51'),
(3379, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:09:51'),
(3380, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:10:51'),
(3381, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:11:51'),
(3382, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:12:51'),
(3383, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:13:51'),
(3384, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:14:51'),
(3385, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:15:51'),
(3386, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:16:51'),
(3387, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:17:51'),
(3388, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:18:51'),
(3389, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:19:51'),
(3390, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:20:51'),
(3391, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:21:51'),
(3392, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:22:51'),
(3393, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:23:51'),
(3394, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:24:51'),
(3395, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:25:51'),
(3396, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:26:51'),
(3397, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:27:51'),
(3398, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:28:51'),
(3399, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:29:51'),
(3400, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:30:51'),
(3401, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:31:51'),
(3402, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:32:51'),
(3403, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:33:51'),
(3404, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:34:51'),
(3405, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:35:51'),
(3406, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:36:51'),
(3407, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:37:51'),
(3408, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:38:51'),
(3409, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:39:51'),
(3410, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:40:52'),
(3411, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:41:51'),
(3412, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:42:52'),
(3413, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:43:51'),
(3414, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:44:51'),
(3415, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:45:51'),
(3416, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:46:51'),
(3417, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:47:52'),
(3418, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:48:51'),
(3419, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:49:51'),
(3420, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:50:51'),
(3421, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:51:51'),
(3422, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:52:51'),
(3423, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:53:51'),
(3424, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:54:51'),
(3425, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:55:51'),
(3426, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:56:51'),
(3427, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:57:51'),
(3428, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 17:58:52'),
(3429, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 17:59:51'),
(3430, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:00:51'),
(3431, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:01:51'),
(3432, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:02:51'),
(3433, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:03:51'),
(3434, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:04:51'),
(3435, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:05:51'),
(3436, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:06:51'),
(3437, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:07:51'),
(3438, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:08:52'),
(3439, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:09:53'),
(3440, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:10:52'),
(3441, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:11:53'),
(3442, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:12:51'),
(3443, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:13:51'),
(3444, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:14:51'),
(3445, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:15:51'),
(3446, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:16:51'),
(3447, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:17:51'),
(3448, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:18:51'),
(3449, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:19:51'),
(3450, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:20:53'),
(3451, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:21:51'),
(3452, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:22:51'),
(3453, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:23:51'),
(3454, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:24:51'),
(3455, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:25:51'),
(3456, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:26:51'),
(3457, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:27:51'),
(3458, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:28:51'),
(3459, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:29:51'),
(3460, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:30:51'),
(3461, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:31:51'),
(3462, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:32:51'),
(3463, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:33:52'),
(3464, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:34:51'),
(3465, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:35:51'),
(3466, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:36:51'),
(3467, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:37:51'),
(3468, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:38:51'),
(3469, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:39:58'),
(3470, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:40:51'),
(3471, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:41:51'),
(3472, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:42:51'),
(3473, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:43:51'),
(3474, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:44:51'),
(3475, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:45:51'),
(3476, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:46:51'),
(3477, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:47:51'),
(3478, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:48:51'),
(3479, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:49:51'),
(3480, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:50:52'),
(3481, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:51:51'),
(3482, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:52:52');
INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(3483, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:53:51'),
(3484, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:54:51'),
(3485, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:55:51'),
(3486, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:56:51'),
(3487, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 18:57:51'),
(3488, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:58:51'),
(3489, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 18:59:52'),
(3490, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:00:53'),
(3491, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:01:51'),
(3492, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:02:52'),
(3493, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:03:51'),
(3494, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:04:51'),
(3495, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:05:52'),
(3496, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:06:51'),
(3497, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:07:51'),
(3498, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:08:51'),
(3499, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:09:51'),
(3500, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:10:52'),
(3501, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:11:51'),
(3502, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:12:53'),
(3503, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:13:55'),
(3504, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:14:53'),
(3505, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:15:52'),
(3506, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:16:51'),
(3507, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:17:52'),
(3508, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:18:51'),
(3509, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:19:51'),
(3510, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:20:51'),
(3511, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:21:51'),
(3512, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:22:51'),
(3513, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:23:51'),
(3514, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:24:51'),
(3515, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:25:51'),
(3516, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:26:51'),
(3517, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:33:51'),
(3518, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:34:51'),
(3519, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:35:51'),
(3520, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:36:51'),
(3521, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:37:51'),
(3522, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:38:51'),
(3523, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:39:51'),
(3524, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:40:51'),
(3525, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:41:54'),
(3526, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:42:52'),
(3527, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:43:51'),
(3528, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:44:51'),
(3529, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:45:51'),
(3530, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:46:51'),
(3531, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:47:51'),
(3532, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:48:51'),
(3533, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:49:51'),
(3534, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:50:51'),
(3535, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:51:52'),
(3536, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:52:51'),
(3537, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 19:53:51'),
(3538, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:54:52'),
(3539, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:55:54'),
(3540, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:58:51'),
(3541, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 19:59:52'),
(3542, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:00:51'),
(3543, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:01:51'),
(3544, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:02:51'),
(3545, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:03:52'),
(3546, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:04:51'),
(3547, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:05:52'),
(3548, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:06:51'),
(3549, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:07:52'),
(3550, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:08:52'),
(3551, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:09:51'),
(3552, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:10:51'),
(3553, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:11:51'),
(3554, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:12:51'),
(3555, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:13:51'),
(3556, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:14:51'),
(3557, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:15:51'),
(3558, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:16:52'),
(3559, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:17:52'),
(3560, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:18:51'),
(3561, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:19:51'),
(3562, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:20:51'),
(3563, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:21:51'),
(3564, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:22:51'),
(3565, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:23:51'),
(3566, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:24:51'),
(3567, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:25:52'),
(3568, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:26:51'),
(3569, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:27:51'),
(3570, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:28:51'),
(3571, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:29:52'),
(3572, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:30:51'),
(3573, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:31:51'),
(3574, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:32:51'),
(3575, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:33:51'),
(3576, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:34:51'),
(3577, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:35:51'),
(3578, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:36:51'),
(3579, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:37:52'),
(3580, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:38:51'),
(3581, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:39:51'),
(3582, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:40:51'),
(3583, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:41:51'),
(3584, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:42:51'),
(3585, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:43:51'),
(3586, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:44:51'),
(3587, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:45:51'),
(3588, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:46:51'),
(3589, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:47:51'),
(3590, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:48:51'),
(3591, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:49:51'),
(3592, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:50:51'),
(3593, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:51:51'),
(3594, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:52:53'),
(3595, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:53:51'),
(3596, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:54:51'),
(3597, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:55:52'),
(3598, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 20:56:51'),
(3599, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:57:52'),
(3600, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:58:53'),
(3601, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 20:59:52'),
(3602, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:00:51'),
(3603, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:01:51'),
(3604, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:02:51'),
(3605, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:03:52'),
(3606, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:04:51'),
(3607, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:05:51'),
(3608, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:06:52'),
(3609, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:07:51'),
(3610, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:08:51'),
(3611, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:09:51'),
(3612, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:10:51'),
(3613, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:11:51'),
(3614, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:12:51'),
(3615, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:13:51'),
(3616, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:14:51'),
(3617, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:15:51'),
(3618, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:16:51'),
(3619, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:17:51'),
(3620, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:18:51'),
(3621, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:19:52'),
(3622, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:20:51'),
(3623, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:21:51'),
(3624, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:22:51'),
(3625, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:23:51'),
(3626, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:24:51'),
(3627, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:25:51'),
(3628, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:26:51'),
(3629, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:27:51'),
(3630, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:28:51'),
(3631, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:29:51'),
(3632, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:30:51'),
(3633, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:31:51'),
(3634, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:32:51'),
(3635, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:33:51'),
(3636, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:34:53'),
(3637, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:35:51'),
(3638, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:36:51'),
(3639, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:37:51'),
(3640, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:38:51'),
(3641, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:39:51'),
(3642, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:40:51'),
(3643, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:41:51'),
(3644, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:42:51'),
(3645, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:43:51'),
(3646, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:44:51'),
(3647, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:45:51'),
(3648, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:46:51'),
(3649, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:47:51'),
(3650, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:48:52'),
(3651, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:49:51'),
(3652, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:50:51'),
(3653, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:51:51'),
(3654, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:52:51'),
(3655, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:53:51'),
(3656, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:54:51'),
(3657, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:55:51'),
(3658, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:56:51'),
(3659, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 21:57:51'),
(3660, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:58:51'),
(3661, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 21:59:51'),
(3662, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:00:51'),
(3663, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:01:51'),
(3664, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:02:51'),
(3665, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:03:51'),
(3666, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:04:51'),
(3667, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:05:51'),
(3668, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:06:51'),
(3669, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:07:51'),
(3670, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:08:52'),
(3671, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:09:51'),
(3672, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:10:51'),
(3673, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:11:51'),
(3674, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:12:51'),
(3675, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:13:55'),
(3676, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:14:57'),
(3677, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:15:53'),
(3678, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:16:51'),
(3679, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:17:51'),
(3680, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:18:51'),
(3681, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:19:51'),
(3682, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:20:51'),
(3683, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:21:51'),
(3684, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:22:51'),
(3685, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:23:51'),
(3686, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:24:51'),
(3687, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:25:52'),
(3688, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:26:52'),
(3689, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:27:53'),
(3690, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:28:52'),
(3691, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:29:51'),
(3692, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:32:51'),
(3693, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:33:52'),
(3694, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:34:51'),
(3695, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:35:51'),
(3696, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:36:51'),
(3697, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:37:51'),
(3698, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:38:50'),
(3699, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:39:51'),
(3700, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:40:51'),
(3701, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:41:53'),
(3702, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:42:50'),
(3703, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:43:51'),
(3704, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:44:51'),
(3705, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 22:45:51'),
(3706, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:46:51'),
(3707, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:47:51'),
(3708, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:48:51'),
(3709, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:49:51'),
(3710, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:50:50'),
(3711, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:51:51'),
(3712, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:52:51'),
(3713, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:53:51'),
(3714, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:54:51'),
(3715, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:55:51'),
(3716, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:56:52'),
(3717, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:57:50'),
(3718, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:58:52'),
(3719, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 22:59:53'),
(3720, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:00:52'),
(3721, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:02:51'),
(3722, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:03:51'),
(3723, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:04:52'),
(3724, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:05:50'),
(3725, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:06:51'),
(3726, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:07:57'),
(3727, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:09:51'),
(3728, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:10:52'),
(3729, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:11:51'),
(3730, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:12:51'),
(3731, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:13:51'),
(3732, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:14:52'),
(3733, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:15:51'),
(3734, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:16:51'),
(3735, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:17:51'),
(3736, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:18:51'),
(3737, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:19:51'),
(3738, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:20:55'),
(3739, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:21:51'),
(3740, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:22:51'),
(3741, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:23:52'),
(3742, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:24:51'),
(3743, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:25:51'),
(3744, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:26:52'),
(3745, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:27:51'),
(3746, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:28:50'),
(3747, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:29:51'),
(3748, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:30:51'),
(3749, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:31:51'),
(3750, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:32:51'),
(3751, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:33:51'),
(3752, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:34:52'),
(3753, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:35:51'),
(3754, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:36:51'),
(3755, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:37:51'),
(3756, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:38:52'),
(3757, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:39:51'),
(3758, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:40:52'),
(3759, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:41:51'),
(3760, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:42:51'),
(3761, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:43:51'),
(3762, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:44:53'),
(3763, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:45:51'),
(3764, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:46:51'),
(3765, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:47:51'),
(3766, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:48:51'),
(3767, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:49:51'),
(3768, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:50:51'),
(3769, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:51:51'),
(3770, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:52:51'),
(3771, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:53:51'),
(3772, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:54:50'),
(3773, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:55:51'),
(3774, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:56:50'),
(3775, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:57:51'),
(3776, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-10 23:58:50'),
(3777, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-10 23:59:51'),
(3778, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:00:51'),
(3779, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:01:52'),
(3780, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:02:51'),
(3781, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:03:51'),
(3782, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:04:52'),
(3783, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:05:51'),
(3784, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:06:52'),
(3785, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:07:51'),
(3786, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:08:54'),
(3787, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:09:51'),
(3788, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:10:51'),
(3789, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:11:51'),
(3790, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:12:51'),
(3791, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:13:51'),
(3792, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:14:51'),
(3793, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:15:51'),
(3794, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:16:51'),
(3795, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:17:51'),
(3796, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:18:52'),
(3797, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:19:51'),
(3798, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:20:51'),
(3799, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:21:51'),
(3800, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:22:51'),
(3801, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:23:51'),
(3802, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:24:51'),
(3803, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:25:50'),
(3804, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:26:51'),
(3805, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:27:51'),
(3806, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:28:51'),
(3807, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:29:51'),
(3808, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:30:53'),
(3809, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:31:50'),
(3810, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:32:50'),
(3811, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:33:50'),
(3812, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:34:51'),
(3813, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:35:51'),
(3814, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:36:52'),
(3815, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:37:52'),
(3816, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:38:51'),
(3817, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:39:52'),
(3818, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:40:51'),
(3819, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:41:51'),
(3820, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:42:50'),
(3821, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:43:51'),
(3822, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:44:50'),
(3823, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:45:51'),
(3824, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:46:50'),
(3825, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:47:51'),
(3826, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:48:51'),
(3827, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:49:52'),
(3828, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:50:50'),
(3829, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:51:51'),
(3830, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:52:51'),
(3831, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:53:51'),
(3832, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:54:50'),
(3833, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:55:52'),
(3834, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:56:51'),
(3835, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 00:57:52'),
(3836, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:58:50'),
(3837, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 00:59:51'),
(3838, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:00:50'),
(3839, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:01:50'),
(3840, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:02:51'),
(3841, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:03:51'),
(3842, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:04:51'),
(3843, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:05:51'),
(3844, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:06:51'),
(3845, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:07:51'),
(3846, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:08:50'),
(3847, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:09:50'),
(3848, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:10:51'),
(3849, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:11:50'),
(3850, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:12:50'),
(3851, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:13:50'),
(3852, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:14:52'),
(3853, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:15:51'),
(3854, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:17:07'),
(3855, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:17:50'),
(3856, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:18:50'),
(3857, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:19:50'),
(3858, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:20:50'),
(3859, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:21:51'),
(3860, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:22:50'),
(3861, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:23:50'),
(3862, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:24:51'),
(3863, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:25:51'),
(3864, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:26:51'),
(3865, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:27:52'),
(3866, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:28:52'),
(3867, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:29:50'),
(3868, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:30:52'),
(3869, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:31:50'),
(3870, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:32:50'),
(3871, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:33:52'),
(3872, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:34:51'),
(3873, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:35:50'),
(3874, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:36:50'),
(3875, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:37:51'),
(3876, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:38:51'),
(3877, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:39:51'),
(3878, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:40:51'),
(3879, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:41:52'),
(3880, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:42:52'),
(3881, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:43:51'),
(3882, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:44:50'),
(3883, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:45:50'),
(3884, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:46:50'),
(3885, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:47:51'),
(3886, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:48:51'),
(3887, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:49:54'),
(3888, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:50:54'),
(3889, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:51:51'),
(3890, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:52:50'),
(3891, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:53:50'),
(3892, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:54:50'),
(3893, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:55:51'),
(3894, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 01:56:50'),
(3895, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:57:51'),
(3896, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 01:59:50'),
(3897, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:00:50'),
(3898, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:02:06'),
(3899, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:02:51'),
(3900, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:03:50'),
(3901, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:04:51'),
(3902, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:05:52'),
(3903, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:06:51'),
(3904, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:07:51'),
(3905, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:08:51'),
(3906, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:09:51'),
(3907, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:10:52'),
(3908, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:11:52'),
(3909, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:12:51'),
(3910, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:13:54'),
(3911, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:14:51'),
(3912, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:15:51'),
(3913, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:16:50'),
(3914, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:17:50'),
(3915, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:18:50'),
(3916, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:19:51'),
(3917, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 651, '2021-03-11 02:20:50'),
(3918, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 2861, '2021-03-11 02:21:50'),
(3919, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:22:50'),
(3920, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:23:51'),
(3921, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:24:50'),
(3922, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:25:50'),
(3923, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:26:50'),
(3924, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:27:50'),
(3925, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:28:50'),
(3926, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:29:50'),
(3927, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:30:50'),
(3928, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:31:50'),
(3929, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:32:51'),
(3930, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:33:51'),
(3931, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:34:50'),
(3932, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:35:50'),
(3933, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:36:50'),
(3934, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:37:50'),
(3935, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:38:50'),
(3936, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:39:50'),
(3937, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:40:51'),
(3938, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:41:50'),
(3939, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:42:50'),
(3940, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:43:50'),
(3941, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:44:50'),
(3942, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:45:50'),
(3943, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:46:50'),
(3944, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:47:51'),
(3945, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:48:50'),
(3946, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:49:51'),
(3947, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:50:54'),
(3948, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:51:51'),
(3949, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:52:51'),
(3950, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:53:51'),
(3951, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:54:50'),
(3952, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:55:50'),
(3953, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:56:52'),
(3954, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 02:57:50'),
(3955, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 02:58:51'),
(3956, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:01:51'),
(3957, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:02:50'),
(3958, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:03:50'),
(3959, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:04:50'),
(3960, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:05:50'),
(3961, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:06:50'),
(3962, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:07:50'),
(3963, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:08:51'),
(3964, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:09:50'),
(3965, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:10:50'),
(3966, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:11:50'),
(3967, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:12:51'),
(3968, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:13:52'),
(3969, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:14:55'),
(3970, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:15:51'),
(3971, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:16:53'),
(3972, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:17:51'),
(3973, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:18:51'),
(3974, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:19:51'),
(3975, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:20:51'),
(3976, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:21:50'),
(3977, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:22:51'),
(3978, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:23:52'),
(3979, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:24:52'),
(3980, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:25:50'),
(3981, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:26:52'),
(3982, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:27:51'),
(3983, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:28:51'),
(3984, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:29:51'),
(3985, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:30:51'),
(3986, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:31:50'),
(3987, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:32:50'),
(3988, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:33:51'),
(3989, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:34:51'),
(3990, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:35:51'),
(3991, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:36:50'),
(3992, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:37:50'),
(3993, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:38:50'),
(3994, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:39:50'),
(3995, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:40:50'),
(3996, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:41:50'),
(3997, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:42:52'),
(3998, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:43:52'),
(3999, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:44:51'),
(4000, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:45:53'),
(4001, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:46:50'),
(4002, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:47:53'),
(4003, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:48:51'),
(4004, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:49:52'),
(4005, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:50:51'),
(4006, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:51:50'),
(4007, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:52:51'),
(4008, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:53:50'),
(4009, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:54:52'),
(4010, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:55:51'),
(4011, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:56:50'),
(4012, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:57:50'),
(4013, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 03:58:50'),
(4014, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 03:59:50'),
(4015, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:00:53'),
(4016, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:01:50'),
(4017, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:02:50'),
(4018, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:03:50'),
(4019, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:04:50'),
(4020, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:05:51'),
(4021, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:06:51'),
(4022, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:07:50'),
(4023, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:08:51'),
(4024, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:09:50'),
(4025, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:10:50'),
(4026, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:11:50'),
(4027, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:12:50'),
(4028, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:13:51');
INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(4029, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:14:51'),
(4030, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:15:52'),
(4031, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:16:51'),
(4032, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:17:52'),
(4033, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:18:51'),
(4034, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:19:50'),
(4035, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:20:51'),
(4036, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:21:51'),
(4037, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:22:50'),
(4038, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:23:50'),
(4039, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:24:50'),
(4040, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:25:50'),
(4041, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:26:50'),
(4042, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:27:50'),
(4043, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:28:50'),
(4044, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:29:50'),
(4045, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:30:52'),
(4046, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:31:50'),
(4047, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:32:50'),
(4048, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:33:50'),
(4049, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:34:52'),
(4050, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:35:50'),
(4051, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:36:51'),
(4052, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:37:52'),
(4053, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:38:51'),
(4054, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:39:50'),
(4055, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:40:50'),
(4056, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:41:50'),
(4057, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:42:50'),
(4058, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:43:51'),
(4059, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:44:50'),
(4060, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:45:50'),
(4061, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:46:51'),
(4062, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:47:51'),
(4063, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:48:50'),
(4064, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:49:51'),
(4065, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:50:51'),
(4066, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:51:50'),
(4067, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:52:50'),
(4068, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:53:51'),
(4069, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:54:50'),
(4070, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:55:51'),
(4071, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:56:51'),
(4072, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:57:52'),
(4073, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 04:58:52'),
(4074, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 04:59:50'),
(4075, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:00:53'),
(4076, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:01:51'),
(4077, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:02:50'),
(4078, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:03:51'),
(4079, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:04:50'),
(4080, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:05:51'),
(4081, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:06:50'),
(4082, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:07:51'),
(4083, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:08:50'),
(4084, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:09:51'),
(4085, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:10:51'),
(4086, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:11:50'),
(4087, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:12:51'),
(4088, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:13:51'),
(4089, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:14:50'),
(4090, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:15:51'),
(4091, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:16:51'),
(4092, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:17:50'),
(4093, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:18:51'),
(4094, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:19:51'),
(4095, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:20:51'),
(4096, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:21:50'),
(4097, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:22:51'),
(4098, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:23:50'),
(4099, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:24:50'),
(4100, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:25:51'),
(4101, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:26:50'),
(4102, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:27:51'),
(4103, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:28:50'),
(4104, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:29:50'),
(4105, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:30:50'),
(4106, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:31:52'),
(4107, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:32:50'),
(4108, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:33:52'),
(4109, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:34:50'),
(4110, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:35:50'),
(4111, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:36:51'),
(4112, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:37:51'),
(4113, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:38:51'),
(4114, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:39:51'),
(4115, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:40:50'),
(4116, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:41:50'),
(4117, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:42:51'),
(4118, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:43:51'),
(4119, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:44:50'),
(4120, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:45:56'),
(4121, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:46:51'),
(4122, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:47:51'),
(4123, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:48:51'),
(4124, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:49:50'),
(4125, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:50:50'),
(4126, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:51:50'),
(4127, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:52:52'),
(4128, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:53:51'),
(4129, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:54:52'),
(4130, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:55:51'),
(4131, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:56:50'),
(4132, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:57:50'),
(4133, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 05:58:50'),
(4134, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 05:59:51'),
(4135, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:00:51'),
(4136, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:01:52'),
(4137, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:02:50'),
(4138, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:03:50'),
(4139, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:04:50'),
(4140, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:05:50'),
(4141, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:06:51'),
(4142, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:07:50'),
(4143, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:08:51'),
(4144, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:09:51'),
(4145, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:10:50'),
(4146, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:11:50'),
(4147, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:12:50'),
(4148, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:13:50'),
(4149, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:14:51'),
(4150, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:15:50'),
(4151, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:16:51'),
(4152, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:17:50'),
(4153, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:18:50'),
(4154, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:19:50'),
(4155, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:20:51'),
(4156, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:21:51'),
(4157, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:22:50'),
(4158, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:23:50'),
(4159, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:24:50'),
(4160, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:25:50'),
(4161, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:26:51'),
(4162, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:27:50'),
(4163, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:28:50'),
(4164, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:29:50'),
(4165, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:30:51'),
(4166, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:31:51'),
(4167, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:32:51'),
(4168, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:33:50'),
(4169, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:34:50'),
(4170, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:35:50'),
(4171, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:36:50'),
(4172, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:37:50'),
(4173, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:38:50'),
(4174, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:39:50'),
(4175, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:40:50'),
(4176, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:41:51'),
(4177, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:42:51'),
(4178, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:43:50'),
(4179, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:44:51'),
(4180, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:45:50'),
(4181, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:46:51'),
(4182, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:47:51'),
(4183, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:50:56'),
(4184, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:51:51'),
(4185, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:52:50'),
(4186, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:53:51'),
(4187, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:54:50'),
(4188, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:55:51'),
(4189, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:56:51'),
(4190, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:57:50'),
(4191, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 06:58:51'),
(4192, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 06:59:50'),
(4193, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:00:51'),
(4194, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:01:50'),
(4195, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:02:51'),
(4196, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:03:51'),
(4197, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:04:51'),
(4198, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:05:51'),
(4199, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:06:50'),
(4200, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:07:50'),
(4201, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:08:50'),
(4202, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:09:51'),
(4203, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:10:51'),
(4204, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:11:51'),
(4205, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:12:50'),
(4206, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:13:50'),
(4207, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:14:51'),
(4208, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:15:50'),
(4209, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:16:50'),
(4210, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:17:53'),
(4211, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:18:50'),
(4212, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:19:50'),
(4213, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:20:51'),
(4214, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:21:50'),
(4215, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:22:50'),
(4216, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:23:51'),
(4217, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:24:51'),
(4218, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:25:50'),
(4219, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:26:50'),
(4220, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:27:50'),
(4221, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:28:50'),
(4222, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:29:50'),
(4223, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:30:50'),
(4224, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:31:50'),
(4225, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:32:51'),
(4226, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:33:51'),
(4227, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:34:51'),
(4228, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:35:50'),
(4229, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:36:51'),
(4230, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:37:50'),
(4231, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:38:50'),
(4232, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:39:50'),
(4233, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:40:51'),
(4234, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:41:51'),
(4235, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:42:50'),
(4236, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:43:51'),
(4237, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:44:51'),
(4238, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:45:51'),
(4239, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:46:51'),
(4240, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:47:50'),
(4241, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:48:50'),
(4242, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:49:50'),
(4243, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:50:50'),
(4244, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:51:50'),
(4245, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:52:50'),
(4246, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:53:50'),
(4247, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:54:51'),
(4248, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:55:50'),
(4249, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:56:50'),
(4250, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:57:51'),
(4251, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 07:58:50'),
(4252, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 07:59:50'),
(4253, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:00:50'),
(4254, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:01:50'),
(4255, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:02:50'),
(4256, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:03:50'),
(4257, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:04:50'),
(4258, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:05:51'),
(4259, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:06:51'),
(4260, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:07:51'),
(4261, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:08:50'),
(4262, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:09:50'),
(4263, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:10:50'),
(4264, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:11:50'),
(4265, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:12:51'),
(4266, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:13:52'),
(4267, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:14:51'),
(4268, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:15:50'),
(4269, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:16:51'),
(4270, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:17:51'),
(4271, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:18:51'),
(4272, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:19:51'),
(4273, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:20:50'),
(4274, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:21:50'),
(4275, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:22:50'),
(4276, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:23:50'),
(4277, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:24:51'),
(4278, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:25:50'),
(4279, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:26:51'),
(4280, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:27:51'),
(4281, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:28:50'),
(4282, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:29:51'),
(4283, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:30:51'),
(4284, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:31:56'),
(4285, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:32:50'),
(4286, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:33:50'),
(4287, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:34:50'),
(4288, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:35:51'),
(4289, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:36:50'),
(4290, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:37:51'),
(4291, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:38:51'),
(4292, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:39:51'),
(4293, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:40:50'),
(4294, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:41:50'),
(4295, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:42:50'),
(4296, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:43:50'),
(4297, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:44:50'),
(4298, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:45:51'),
(4299, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:46:50'),
(4300, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:47:51'),
(4301, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:48:51'),
(4302, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:49:50'),
(4303, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:50:50'),
(4304, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:51:51'),
(4305, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:52:50'),
(4306, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:53:50'),
(4307, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:54:50'),
(4308, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:55:51'),
(4309, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:56:51'),
(4310, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:57:51'),
(4311, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 08:58:51'),
(4312, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 08:59:51'),
(4313, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:00:51'),
(4314, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:01:51'),
(4315, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:02:50'),
(4316, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:03:50'),
(4317, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:04:50'),
(4318, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:05:50'),
(4319, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:06:51'),
(4320, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:07:50'),
(4321, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:08:51'),
(4322, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:09:51'),
(4323, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:10:51'),
(4324, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:11:50'),
(4325, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:12:51'),
(4326, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:13:51'),
(4327, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:14:51'),
(4328, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:15:51'),
(4329, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:16:53'),
(4330, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:17:51'),
(4331, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:18:52'),
(4332, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:19:51'),
(4333, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:20:50'),
(4334, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:21:50'),
(4335, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:22:51'),
(4336, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:23:50'),
(4337, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:24:51'),
(4338, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:25:50'),
(4339, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:26:51'),
(4340, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:27:51'),
(4341, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:28:50'),
(4342, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:29:51'),
(4343, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:30:51'),
(4344, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:31:51'),
(4345, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:32:50'),
(4346, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:33:50'),
(4347, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:34:51'),
(4348, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:35:51'),
(4349, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:36:51'),
(4350, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:37:51'),
(4351, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:38:50'),
(4352, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:39:50'),
(4353, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:40:50'),
(4354, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:41:51'),
(4355, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:42:51'),
(4356, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:43:50'),
(4357, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:44:50'),
(4358, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:45:51'),
(4359, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:46:51'),
(4360, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:47:51'),
(4361, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:48:51'),
(4362, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:49:50'),
(4363, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:50:51'),
(4364, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:51:51'),
(4365, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:52:51'),
(4366, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:53:51'),
(4367, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:54:50'),
(4368, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:55:51'),
(4369, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:56:51'),
(4370, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:57:51'),
(4371, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 09:58:51'),
(4372, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 09:59:51'),
(4373, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:00:51'),
(4374, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:01:51'),
(4375, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:02:51'),
(4376, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:03:51'),
(4377, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:04:51'),
(4378, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:05:50'),
(4379, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:06:51'),
(4380, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:07:51'),
(4381, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:08:51'),
(4382, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:09:51'),
(4383, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:10:51'),
(4384, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:11:51'),
(4385, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:12:51'),
(4386, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:13:51'),
(4387, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:14:51'),
(4388, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:15:51'),
(4389, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:16:51'),
(4390, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:17:51'),
(4391, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:18:51'),
(4392, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:19:51'),
(4393, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:20:51'),
(4394, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:21:51'),
(4395, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:22:50'),
(4396, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:23:51'),
(4397, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:24:51'),
(4398, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:25:51'),
(4399, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:26:50'),
(4400, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:27:51'),
(4401, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:28:51'),
(4402, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:29:51'),
(4403, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:30:51'),
(4404, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:31:51'),
(4405, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:32:51'),
(4406, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:33:51'),
(4407, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:34:51'),
(4408, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:35:51'),
(4409, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:36:51'),
(4410, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:37:51'),
(4411, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:38:51'),
(4412, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:39:50'),
(4413, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:40:51'),
(4414, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:41:51'),
(4415, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:42:51'),
(4416, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 10:43:51'),
(4417, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:44:51'),
(4418, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:45:51'),
(4419, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:46:51'),
(4420, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:47:51'),
(4421, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:48:51'),
(4422, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:49:51'),
(4423, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:50:51'),
(4424, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:51:51'),
(4425, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:52:50'),
(4426, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:53:51'),
(4427, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:54:51'),
(4428, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:55:50'),
(4429, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:56:51'),
(4430, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:57:51'),
(4431, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:58:51'),
(4432, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 10:59:51'),
(4433, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:00:54'),
(4434, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:01:50'),
(4435, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:02:50'),
(4436, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:03:51'),
(4437, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:04:51'),
(4438, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:05:51'),
(4439, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:06:51'),
(4440, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:07:51'),
(4441, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:08:50'),
(4442, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:09:51'),
(4443, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:10:51'),
(4444, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:11:50'),
(4445, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:12:51'),
(4446, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:13:51'),
(4447, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:14:51'),
(4448, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:15:51'),
(4449, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:16:51'),
(4450, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:17:51'),
(4451, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:18:51'),
(4452, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:19:50'),
(4453, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:20:51'),
(4454, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:21:51'),
(4455, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:22:51'),
(4456, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:23:51'),
(4457, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:24:51'),
(4458, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:25:51'),
(4459, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:26:51'),
(4460, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:27:51'),
(4461, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:28:51'),
(4462, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:29:51'),
(4463, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:30:51'),
(4464, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:31:50'),
(4465, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:32:51'),
(4466, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:33:50'),
(4467, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:34:51'),
(4468, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:35:51'),
(4469, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:36:51'),
(4470, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:37:51'),
(4471, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:38:51'),
(4472, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:39:50'),
(4473, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:40:51'),
(4474, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:41:51'),
(4475, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:42:51'),
(4476, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:43:51'),
(4477, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:44:51'),
(4478, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:45:51'),
(4479, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:46:51'),
(4480, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:47:51'),
(4481, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:48:51'),
(4482, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:49:51'),
(4483, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:50:51'),
(4484, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:51:51'),
(4485, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:52:50'),
(4486, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:53:51'),
(4487, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:54:51'),
(4488, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:55:50'),
(4489, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 11:56:51'),
(4490, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:57:51'),
(4491, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:58:51'),
(4492, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 11:59:51'),
(4493, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:00:51'),
(4494, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:01:50'),
(4495, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:02:51'),
(4496, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:03:51'),
(4497, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:04:51'),
(4498, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:05:51'),
(4499, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:06:50'),
(4500, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:07:51'),
(4501, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:08:51'),
(4502, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:09:51'),
(4503, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:10:51'),
(4504, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:11:51'),
(4505, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:12:51'),
(4506, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:13:51'),
(4507, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:14:51'),
(4508, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:15:50'),
(4509, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:16:51'),
(4510, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:17:51'),
(4511, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:18:51'),
(4512, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:19:51'),
(4513, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:20:51'),
(4514, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:21:51'),
(4515, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:22:51'),
(4516, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:23:51'),
(4517, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:24:50'),
(4518, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:25:51'),
(4519, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:26:51'),
(4520, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:27:51'),
(4521, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:28:51'),
(4522, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:29:51'),
(4523, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:30:50'),
(4524, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:31:51'),
(4525, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:32:51'),
(4526, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:33:51'),
(4527, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:34:51'),
(4528, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:35:51'),
(4529, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:36:51'),
(4530, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:37:51'),
(4531, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:38:51'),
(4532, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:39:51'),
(4533, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:40:51'),
(4534, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:41:51'),
(4535, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:42:51'),
(4536, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:43:51'),
(4537, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:44:51'),
(4538, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:45:51'),
(4539, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:46:51'),
(4540, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:47:51'),
(4541, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:48:51'),
(4542, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:49:51'),
(4543, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:50:51'),
(4544, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:51:51'),
(4545, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:52:51'),
(4546, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:53:51'),
(4547, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:54:51'),
(4548, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:55:51'),
(4549, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:56:51'),
(4550, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 12:57:51'),
(4551, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:58:51'),
(4552, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 12:59:51'),
(4553, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:00:51'),
(4554, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:01:51'),
(4555, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:02:51'),
(4556, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:03:51'),
(4557, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:04:51'),
(4558, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:05:51'),
(4559, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:06:51'),
(4560, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:07:53'),
(4561, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:08:51'),
(4562, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:09:51'),
(4563, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:10:51'),
(4564, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:11:51'),
(4565, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:12:51'),
(4566, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:13:51'),
(4567, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:14:51'),
(4568, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:15:51'),
(4569, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:16:51'),
(4570, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:17:51'),
(4571, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:18:51'),
(4572, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:19:51'),
(4573, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:20:52'),
(4574, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:21:51');
INSERT INTO `recorded_values` (`id`, `mac`, `alarm_cirlcleVal`, `cutOff_cirlcleVal`, `liftActive_cirlcleVal`, `waterInOil_cirlcleVal`, `lowOil_cirlcleVal`, `lossMotion_cirlcleVal`, `leftPosition_verticalBar`, `oilTemp_verticalBar`, `temp1`, `temp2`, `temp3`, `Torque`, `date_time`) VALUES
(4575, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:22:51'),
(4576, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:23:51'),
(4577, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:24:51'),
(4578, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:25:51'),
(4579, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:26:51'),
(4580, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:27:51'),
(4581, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:28:51'),
(4582, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:29:51'),
(4583, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:30:51'),
(4584, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:31:51'),
(4585, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:32:51'),
(4586, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:33:51'),
(4587, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:34:51'),
(4588, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:35:51'),
(4589, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:36:51'),
(4590, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:37:51'),
(4591, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:38:51'),
(4592, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:39:51'),
(4593, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:40:51'),
(4594, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:41:51'),
(4595, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:42:51'),
(4596, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:43:51'),
(4597, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:44:51'),
(4598, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:45:51'),
(4599, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:46:51'),
(4600, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:47:51'),
(4601, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:48:51'),
(4602, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:49:51'),
(4603, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:50:51'),
(4604, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:51:51'),
(4605, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:52:51'),
(4606, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:53:51'),
(4607, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:54:51'),
(4608, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:55:51'),
(4609, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:56:51'),
(4610, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:57:51'),
(4611, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 13:58:51'),
(4612, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 13:59:51'),
(4613, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:00:52'),
(4614, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:01:51'),
(4615, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:02:51'),
(4616, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:03:51'),
(4617, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:04:51'),
(4618, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:05:51'),
(4619, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:06:51'),
(4620, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:07:51'),
(4621, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:08:51'),
(4622, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:09:51'),
(4623, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:10:51'),
(4624, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:11:51'),
(4625, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:12:51'),
(4626, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:13:51'),
(4627, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:14:51'),
(4628, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:15:51'),
(4629, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:16:51'),
(4630, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:17:51'),
(4631, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:18:51'),
(4632, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 1, '2021-03-11 14:19:51'),
(4633, 'e00fce68e454a56457c6', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 0, '2021-03-11 14:20:53'),
(4634, '121212', 1, 1, 1, 1, 1, 0, 0, 99, 0, 99, 0, 8, '2021-03-11 14:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `is_admin`) VALUES
(1, 'Administrator', 'admin@admin.com', 'admin@123', 1),
(2, 'User', 'user@user.com', 'user@123', 0),
(19, 'Test User', 'kashifkhan@loketa.com', 'Test User', 0),
(20, 'abc', 'abc@def.com', 'abc@def.com', 0),
(22, 'aaa', 'adf@adf.root', 'adf@adf.root', 0),
(27, 'abc', 'abc@aaaa.2q', 'abc@aaaa.2q', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_and_devices`
--

CREATE TABLE `user_and_devices` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `mac` varchar(20) NOT NULL,
  `device_name` varchar(30) NOT NULL,
  `meter_ranges` varchar(100) NOT NULL,
  `meter_range_1` int NOT NULL,
  `meter_range_2` int NOT NULL,
  `meter_range_3` int NOT NULL,
  `meter_color_1` varchar(20) NOT NULL,
  `meter_color_2` varchar(20) NOT NULL,
  `meter_color_3` varchar(20) NOT NULL,
  `manual` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_and_devices`
--

INSERT INTO `user_and_devices` (`id`, `user_id`, `mac`, `device_name`, `meter_ranges`, `meter_range_1`, `meter_range_2`, `meter_range_3`, `meter_color_1`, `meter_color_2`, `meter_color_3`, `manual`) VALUES
(1, 2, 'testing:mac', 'Testing Device', '0,2500,5000,7500,10000,12500,15000,175000,20000,22500,25000,27500,30000', 10000, 20000, 30000, '#62B58F', '#FFC533', '#F2726F', ''),
(26, 22, 'test', 'test', '1,2,3,4,5,6,7,8,9,10', 3, 7, 10, 'yellow', 'pink', 'brown', 'Dashboard functionality control - Rev 4-9-21 (1).docx'),
(37, 27, 'kkkk', 'kkkk', '1,2,3,4,5,6,7,8,9,10', 3, 7, 10, 'yellow', 'pink', 'brown', 'Mentor Unsubscribe mock - v1.2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custom_alerts`
--
ALTER TABLE `custom_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_devicestatus`
--
ALTER TABLE `custom_devicestatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_graph`
--
ALTER TABLE `custom_graph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_installation_info`
--
ALTER TABLE `custom_installation_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_maintenance`
--
ALTER TABLE `custom_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_sections`
--
ALTER TABLE `custom_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installation_info`
--
ALTER TABLE `installation_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_record`
--
ALTER TABLE `maintenance_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recorded_values`
--
ALTER TABLE `recorded_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `user_and_devices`
--
ALTER TABLE `user_and_devices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custom_alerts`
--
ALTER TABLE `custom_alerts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_devicestatus`
--
ALTER TABLE `custom_devicestatus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_graph`
--
ALTER TABLE `custom_graph`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_installation_info`
--
ALTER TABLE `custom_installation_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_maintenance`
--
ALTER TABLE `custom_maintenance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_sections`
--
ALTER TABLE `custom_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `installation_info`
--
ALTER TABLE `installation_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `maintenance_record`
--
ALTER TABLE `maintenance_record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recorded_values`
--
ALTER TABLE `recorded_values`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4635;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_and_devices`
--
ALTER TABLE `user_and_devices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Database: `project_designerMoney`
--
CREATE DATABASE IF NOT EXISTS `project_designerMoney` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `project_designerMoney`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `address`) VALUES
(1, 2, 'main street'),
(2, 3, 'main streetmain streetmain street');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `register_date` timestamp(6) NOT NULL,
  `last_login` timestamp(6) NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `register_date`, `last_login`, `is_admin`) VALUES
(1, 'Kashif Ali', 'kashif@ali.com', 'kashif@123', '2021-03-24 09:49:51.000000', NULL, 0),
(2, 'Kashif Ali', 'kashif@ali.com1', 'kashif@123', '2021-03-24 10:04:22.000000', NULL, 0),
(3, 'Kashif Ali', 'kashif@ali.com2', 'kashif@123', '2021-03-24 10:08:00.000000', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `project_member`
--
CREATE DATABASE IF NOT EXISTS `project_member` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `project_member`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogs`
--

CREATE TABLE `adminlogs` (
  `id` int NOT NULL,
  `admin_id` int NOT NULL,
  `message` varchar(500) NOT NULL,
  `date_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `adminlogs`
--

INSERT INTO `adminlogs` (`id`, `admin_id`, `message`, `date_time`) VALUES
(10, 1, 'Inserted Engagement For UserID # 5 By Admin # 1', '2021-04-27 02:06:21.257622');

-- --------------------------------------------------------

--
-- Table structure for table `communication_logs_calls`
--

CREATE TABLE `communication_logs_calls` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `call_date` date NOT NULL,
  `outcome` varchar(100) NOT NULL,
  `notes` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communication_logs_calls`
--

INSERT INTO `communication_logs_calls` (`id`, `user_id`, `call_date`, `outcome`, `notes`) VALUES
(6, 5, '2021-04-27', 'Donation', 'Some notes here');

-- --------------------------------------------------------

--
-- Table structure for table `donation_history`
--

CREATE TABLE `donation_history` (
  `id` int NOT NULL,
  `userID` int NOT NULL,
  `campaign` varchar(500) NOT NULL,
  `payment_method` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `source` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation_history`
--

INSERT INTO `donation_history` (`id`, `userID`, `campaign`, `payment_method`, `amount`, `source`, `date`) VALUES
(1, 2, 'Campaign Scheme 2', 'option2', '500.0', 'Friend', '2021-04-12'),
(2, 2, 'Campaign Scheme 3', 'option1', '1111', 'Print Advertisement', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `general` varchar(2) NOT NULL,
  `job` varchar(2) NOT NULL,
  `review` varchar(2) NOT NULL,
  `data` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `user_id`, `general`, `job`, `review`, `data`) VALUES
(1, 2, '0', '0', '0', '0'),
(2, 2, '0', '0', '0', '0'),
(3, 2, '0', '0', '0', '0'),
(4, 2, '', '', '', 'on'),
(5, 2, '', 'on', '', 'on'),
(6, 2, '', 'on', '', 'on'),
(7, 2, 'on', 'on', '', 'on'),
(8, 2, 'on', 'on', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `name`) VALUES
(2, 'Testing1'),
(3, 'aaaa'),
(4, 'Top level Memebr');

-- --------------------------------------------------------

--
-- Table structure for table `membership_history`
--

CREATE TABLE `membership_history` (
  `id` int NOT NULL,
  `userID` int NOT NULL,
  `membershipID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_history`
--

INSERT INTO `membership_history` (`id`, `userID`, `membershipID`) VALUES
(1, 4, 3),
(2, 8, 2),
(3, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `member_engagement`
--

CREATE TABLE `member_engagement` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_now` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_engagement`
--

INSERT INTO `member_engagement` (`id`, `user_id`, `date_now`) VALUES
(1, 5, '2021-04-27'),
(2, 5, '2021-04-27'),
(3, 5, '2021-04-14'),
(4, 5, '2021-04-27'),
(5, 5, '2021-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `acronym` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `parentOrganization` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `acronym`, `website`, `email`, `instagram`, `twitter`, `facebook`, `linkedin`, `parentOrganization`, `address`, `phone`, `category_id`) VALUES
(2, 'Member365', 'Nick Acronym', 'mysite.com', 'acc@site.com', 'isnta.com/myself', 'twitter.com/myself', 'facebook.com/myself', 'linkedin.com/myself', 'Ahmed Complex', 'House # 148 C, Streed 28, New Society, UA', '0418294045491', 2),
(3, 'Blue Company Production', 'Nick Acronym', 'mysite.com', 'acc@site.com', 'isnta.com/myself', 'twitter.com/myself', 'facebook.com/myself', 'linkedin.com/myself', 'Ahmed Complex', 'House # 148 C, Streed 28, New Society, UA', '0418294045491', NULL),
(4, 'B4U', 'Nick Acronym', 'mysite.com', 'acc@site.com', 'isnta.com/myself', 'twitter.com/myself', 'facebook.com/myself', 'linkedin.com/myself', 'Ahmed Complex', 'House # 148 C, Streed 28, New Society, UA', '0418294045491', NULL),
(6, 'Dream Big Company', 'Nick Acronym', 'mysite.com', 'acc@site.com', 'isnta.com/myself', 'twitter.com/myself', 'facebook.com/myself', 'linkedin.com/myself', 'Ahmed Complex', 'House # 148 C, Streed 28, New Society, UA', '0418294045491', 1),
(7, 'Deltashoppe', 'Nick Acronym', 'mysite.com', 'acc@site.com', 'isnta.com/myself', 'twitter.com/myself', 'facebook.com/myself', 'linkedin.com/myself', 'Ahmed Complex', 'House # 148 C, Streed 28, New Society, UA', '0418294045491', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organization_category`
--

CREATE TABLE `organization_category` (
  `id` int NOT NULL,
  `cat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organization_category`
--

INSERT INTO `organization_category` (`id`, `cat`) VALUES
(1, 'Corporate Membership'),
(2, 'Gold Membership');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `organizationID` int NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  `salutation` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `email`, `password`, `organizationID`, `jobTitle`, `salutation`, `middle_name`, `last_name`, `dob`, `phone`, `gender`, `language`, `address`, `is_admin`) VALUES
(1, 'Kashif Ali', 'kashif@ali.com', 'kashif@ali.com', 2, '', 'Mr.', '', '', '2021-04-14', '', 'Male', 'English', '', 1),
(2, 'Test', 'user@new.com', 'kashif@ali.com', 7, 'Helper', 'Ms.', 'a', 'User', '2021-03-30', '031185747893', 'Male', 'English', '213 Legget Drive Ottawa, Ontario K2K 3B8 Canada', 0),
(5, 'Random', 'random@user.com', 'random', 6, 'Employee', 'M.', 'a', 'user', '3333-03-31', '3333838', 'Male', 'English', 'kadflajdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_files`
--

CREATE TABLE `users_files` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_files`
--

INSERT INTO `users_files` (`id`, `user_id`, `category`, `filename`) VALUES
(1, 2, 'Fax Log', 'word.doc'),
(2, 3, 'Email Attachement', 'FIles.zip');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogs`
--
ALTER TABLE `adminlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_logs_calls`
--
ALTER TABLE `communication_logs_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_history`
--
ALTER TABLE `donation_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_history`
--
ALTER TABLE `membership_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_engagement`
--
ALTER TABLE `member_engagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_category`
--
ALTER TABLE `organization_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_files`
--
ALTER TABLE `users_files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogs`
--
ALTER TABLE `adminlogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `communication_logs_calls`
--
ALTER TABLE `communication_logs_calls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donation_history`
--
ALTER TABLE `donation_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `membership_history`
--
ALTER TABLE `membership_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member_engagement`
--
ALTER TABLE `member_engagement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `organization_category`
--
ALTER TABLE `organization_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_files`
--
ALTER TABLE `users_files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `project_smartgate`
--
CREATE DATABASE IF NOT EXISTS `project_smartgate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `project_smartgate`;

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int NOT NULL,
  `alert_name` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `app_push` varchar(20) NOT NULL,
  `machine_mac` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  `relay` varchar(20) NOT NULL,
  `positions` varchar(20) NOT NULL,
  `weekday` varchar(20) NOT NULL,
  `alert_sent` tinyint(1) NOT NULL,
  `delta_time_alert` varchar(5) NOT NULL,
  `delta_time_alert_sent` tinyint(1) NOT NULL,
  `relay_pos_alert_sent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alive_status`
--

CREATE TABLE `alive_status` (
  `id` int NOT NULL,
  `mac` varchar(20) NOT NULL,
  `device_status` text NOT NULL,
  `date_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_logs`
--

CREATE TABLE `api_logs` (
  `id` int NOT NULL,
  `api_input` text NOT NULL,
  `api_output` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_logs`
--

INSERT INTO `api_logs` (`id`, `api_input`, `api_output`, `date_time`) VALUES
(1, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\" is set to Hold\"}}]', '{\"multicast_id\":8995313888872567828,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616686576416339%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:36:16'),
(2, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\" is set to Hold\"}}]', '{\"multicast_id\":4101617181994377554,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616686578782934%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:36:18'),
(3, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\" is set to Hold\"}}]', '{\"multicast_id\":1221816162094106988,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616686580888896%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:36:21'),
(4, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\" is set to Hold\"}}]', '{\"multicast_id\":7281513127670244859,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616686583212750%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:36:23'),
(5, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\" is set to Hold\"}}]', '{\"multicast_id\":8899563879772761228,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616686585385996%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:36:25'),
(6, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\" is set to Hold\"}}]', '{\"multicast_id\":7694718654132881831,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687017904032%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:43:38'),
(7, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\" is set to Hold\"}}]', '{\"multicast_id\":3748455214551139219,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687020365951%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:43:40'),
(8, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":622249310043676240,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687044248401%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:44:04'),
(9, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":922763806790145231,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687046596118%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:44:06'),
(10, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5413573993703253144,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687049406082%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:44:09'),
(11, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1869425478070638465,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687051427388%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:44:11'),
(12, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1663762310200097541,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687053855205%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:44:13'),
(13, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6209215513594156825,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687056107556%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:44:16'),
(14, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7769634197087315255,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687058138010%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:44:18'),
(15, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5949753871383518033,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687102221591%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:02'),
(16, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":658268309508109450,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687103619085%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:03'),
(17, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6569429953355268828,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687104838753%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:04'),
(18, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6401354549287458247,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687106007037%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:06'),
(19, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5018725315592313217,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687107037581%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:07'),
(20, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":211819860674374961,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687108089057%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:08'),
(21, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1155929420129692548,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687110976574%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:11'),
(22, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4476518845197467909,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687112165765%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:12'),
(23, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5410043867040202199,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687113197785%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:13'),
(24, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7889624652647881578,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687114206743%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:14'),
(25, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1016153205004658844,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687115399281%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:15'),
(26, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8430866591078266789,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687116494735%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:16'),
(27, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8006054221899477845,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687130372887%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:30'),
(28, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"Test device is set to Open\"}}]', '{\"multicast_id\":4788196674376614362,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687142075775%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:42'),
(29, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"Test device is set to Open\"}}]', '{\"multicast_id\":122465514436225823,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687144433559%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:44'),
(30, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"Test device is set to Open\"}}]', '{\"multicast_id\":4650490654089376491,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687146635965%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:46'),
(31, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"Test device is set to Open\"}}]', '{\"multicast_id\":6705218864995519713,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687150147536%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:50'),
(32, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4431051248716404657,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687152683068%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:52'),
(33, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":733587622568825284,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687154170907%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:54'),
(34, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4937025525445408164,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687159651458%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:45:59'),
(35, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":503912937176874646,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687223444654%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:47:03'),
(36, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4013633054313659220,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687225146616%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:47:05'),
(37, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4756281492182459401,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687227367839%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:47:07'),
(38, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":218124802974736995,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687229065220%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:47:09'),
(39, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4022261050313183096,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687261076951%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:47:41'),
(40, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4150691301632694261,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687262724885%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:47:42'),
(41, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2649865679092621918,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687264758856%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:47:44'),
(42, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2251496976420203750,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687276656143%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:47:56'),
(43, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6816122507453703904,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687280016103%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:48:00'),
(44, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2693346594643309618,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687282023586%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:48:02'),
(45, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3325203861768442487,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687302982827%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:48:23'),
(46, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3065603475304229304,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687305450084%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:48:25'),
(47, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4077300794342278549,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687307633139%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:48:27'),
(48, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7232664338982274971,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687363871671%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:23'),
(49, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8490028033987255640,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687378043042%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:38'),
(50, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":9113832916074155680,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687380506097%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:40'),
(51, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3556402401257674568,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687382830707%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:42'),
(52, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2772976355497339263,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687384707652%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:44'),
(53, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4842819519191795635,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687386232732%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:46'),
(54, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5096025546431342077,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687387733059%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:47'),
(55, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":903951454719607834,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687388907422%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:49'),
(56, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1086183797623267636,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687389924294%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:50'),
(57, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1722665130890563223,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687391026529%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:51'),
(58, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4714515430981472460,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687392283549%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:49:52'),
(59, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":9144216562971435850,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687425478475%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:50:25'),
(60, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":915380411890924253,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687428980192%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:50:29'),
(61, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8486721373454427486,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687432402585%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:50:32'),
(62, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6741825388410114902,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687452803626%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:50:52'),
(63, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2673291096145792105,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687457838909%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:50:57'),
(64, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5558851185587312829,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687458897591%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:50:58'),
(65, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1000294208569668488,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687460295595%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:51:00'),
(66, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6044420652463295960,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687461289990%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:51:01'),
(67, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5968257348508064921,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687462287384%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:51:02'),
(68, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7746331015213546777,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687463304487%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:51:03'),
(69, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3400177016179389162,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687466609235%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:51:06'),
(70, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":768702772704315751,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687482363567%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:51:22'),
(71, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8834586157174352597,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687518520379%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:51:58'),
(72, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8403319036643970659,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687520209454%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:00'),
(73, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6240994457942167517,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687521694708%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:01');
INSERT INTO `api_logs` (`id`, `api_input`, `api_output`, `date_time`) VALUES
(74, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7697994080264552564,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687522883442%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:02'),
(75, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1819761700240884108,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687524410460%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:04'),
(76, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1207868261188209054,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687525584206%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:05'),
(77, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6886712569144149795,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687526696874%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:06'),
(78, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3188855378871755859,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687527700045%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:07'),
(79, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":827418485928417263,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687528789009%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:08'),
(80, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3024961390732981311,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687529999014%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:10'),
(81, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1027993021759590667,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687531196259%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:11'),
(82, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7587599853163921444,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687532324510%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:12'),
(83, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":183509711067823496,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687533458773%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:13'),
(84, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4869054232995403581,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687534461491%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:14'),
(85, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7158895650791872689,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687535482995%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:15'),
(86, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3236576616169719976,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687536543840%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:16'),
(87, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8559911907930213578,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687537581229%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:17'),
(88, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2877320898226090724,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687538603045%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:18'),
(89, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8599333629163528960,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687539738129%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:19'),
(90, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2352001855021097837,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687540853609%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:20'),
(91, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6780409071164976809,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687541947743%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:22'),
(92, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":692616948707283812,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687543159799%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:23'),
(93, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8374578369575813075,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687544236601%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:24'),
(94, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1493521344179459250,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687545306404%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:25'),
(95, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6611209485679375127,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687546349963%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:26'),
(96, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":958818194773096941,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687547908770%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:28'),
(97, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7708233237056560169,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687549586297%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:29'),
(98, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5438997958011687568,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687550803176%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:30'),
(99, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3219654566464677124,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687551782722%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:31'),
(100, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5518682184266887247,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687552916916%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:32'),
(101, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3084829926755008520,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687554501621%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:34'),
(102, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5095189298225890349,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687555609738%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:35'),
(103, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3238559210595044177,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687556772630%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:36'),
(104, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7805043037063012822,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687557978155%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:38'),
(105, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1388718954691484383,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687559127520%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:39'),
(106, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3769515193838588751,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687560630266%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:40'),
(107, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":885946610508315281,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687562426819%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:42'),
(108, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3951408440622435610,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687563659239%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:43'),
(109, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4401195765877681982,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687565038209%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:45'),
(110, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":46712995025509739,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687566081816%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:46'),
(111, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":906961695218329,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687567089206%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:47'),
(112, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8485477736321648621,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687568109768%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:48'),
(113, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3441963506833644162,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687569097075%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:49'),
(114, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1853150281883913360,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687570126581%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:50'),
(115, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":9045575404269027265,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687571142146%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:51'),
(116, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5254686991555121576,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687572195437%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:52'),
(117, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6389357858133775054,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687573206516%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:53'),
(118, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":844041885648932431,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687574318101%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:54'),
(119, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4625214735456260645,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687575364262%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:55'),
(120, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7250553924335931267,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687576357153%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:56'),
(121, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5258129429921064468,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687577378901%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:57'),
(122, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":295265101374152955,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687578712916%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:52:58'),
(123, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":861551648229965046,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687580831406%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:00'),
(124, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5561414597446357983,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687582129235%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:02'),
(125, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":8634441894088226514,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687583398472%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:03'),
(126, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2508772012731126109,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687584787976%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:04'),
(127, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3320411729909584211,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687585812896%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:05'),
(128, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5410463685636084442,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687586801383%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:06'),
(129, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4160304478620292972,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687587855123%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:07'),
(130, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4968707955783904542,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687588876060%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:08'),
(131, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":244658118875627586,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687590103160%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:10'),
(132, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7043717566904847060,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687591352628%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:11'),
(133, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4089585518490409593,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687592891990%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:12'),
(134, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":3990615574973507619,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687593895084%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:13'),
(135, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6439149120986486170,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687595044416%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:15'),
(136, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2229856540625417652,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687596621033%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:16'),
(137, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1387025066658109165,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687597757347%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:17'),
(138, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":477387616346096353,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687599274548%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:19'),
(139, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":945730171688472904,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687600761401%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:20'),
(140, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":2058452923592497101,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687602347758%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:22'),
(141, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4686583571417098401,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687603625438%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:23'),
(142, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":871488225521393182,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687604769031%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:24'),
(143, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6880458465943141678,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687605861877%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:25'),
(144, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1806373375054281012,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687607021018%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:27'),
(145, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6424261004651542312,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687608220249%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:28'),
(146, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7052773697167669309,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687609470159%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:29');
INSERT INTO `api_logs` (`id`, `api_input`, `api_output`, `date_time`) VALUES
(147, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1834416834729141678,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687610951348%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:31'),
(148, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7877536886228366339,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687612025576%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:32'),
(149, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":6889122678676323721,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687613105287%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:33'),
(150, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7905420157457965588,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687614147946%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:34'),
(151, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5949336367502706920,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687615402783%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:35'),
(152, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":1004563982064324481,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687616506089%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:36'),
(153, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7125593085684097618,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687617584641%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:37'),
(154, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":4928297112517601239,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687618977302%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:39'),
(155, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":5198028328424925426,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687620110544%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:40'),
(156, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":9142500608188686746,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687621253185%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:41'),
(157, '[[\"Authorization:key = AAAAJ9TR7wM:APA91bG89Ri7cTBKbBV1w2axSdj3eAgflefPLNprlKEQ1DNh0A4Ylsu3VyovtHr5bmUwns8eaiKF_j65TrTqmCouOE0nm0cpvwMoTyc_OOt0-6hPeh3KmWW4MxuP69I76ev6GO42vUgo\",\"Content-Type: application/json\"],{\"to\":\"db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo\",\"notification\":{\"title\":\"Notification form server\",\"body\":\"ESP33 is set to Open\"}}]', '{\"multicast_id\":7205508218136960846,\"success\":1,\"failure\":0,\"canonical_ids\":0,\"results\":[{\"message_id\":\"0:1616687627458804%3baeb4ab3baeb4ab\"}]}', '2021-03-25 20:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `app_requests`
--

CREATE TABLE `app_requests` (
  `id` int NOT NULL,
  `mobile_mac` varchar(20) NOT NULL,
  `machine_mac` varchar(20) NOT NULL,
  `request` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_requests`
--

INSERT INTO `app_requests` (`id`, `mobile_mac`, `machine_mac`, `request`, `date_time`) VALUES
(1, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-03 09:15:39'),
(2, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-04 13:15:51'),
(3, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-05 13:51:30'),
(4, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-05 14:00:54'),
(5, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-05 14:24:44'),
(6, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-05 19:12:01'),
(7, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 12:54:09'),
(8, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:44:29'),
(9, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:45:33'),
(10, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:46:18'),
(11, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:46:38'),
(12, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:46:50'),
(13, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:48:25'),
(14, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:49:05'),
(15, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:49:15'),
(16, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 13:49:29'),
(17, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-06 18:09:17'),
(18, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-01-08 09:45:32'),
(19, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-01-08 09:46:01'),
(20, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-01-08 09:46:19'),
(21, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-01-08 09:47:04'),
(22, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-01-08 09:47:52'),
(23, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-01-08 09:48:07'),
(24, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-01-08 09:48:11'),
(25, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-01-08 09:58:51'),
(26, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-01-08 09:59:21'),
(27, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-09 09:16:57'),
(28, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-09 09:20:26'),
(29, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-09 09:20:45'),
(30, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-09 09:37:17'),
(31, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-09 09:37:34'),
(32, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-09 15:07:51'),
(33, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 09:59:02'),
(34, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 09:59:14'),
(35, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:00:09'),
(36, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:00:33'),
(37, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:00:40'),
(38, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:00:48'),
(39, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:01:27'),
(40, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:01:39'),
(41, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:02:15'),
(42, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:04:01'),
(43, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:04:32'),
(44, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:04:41'),
(45, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:09:47'),
(46, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 10:12:59'),
(47, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 11:15:32'),
(48, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 11:17:55'),
(49, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 11:18:19'),
(50, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 11:19:11'),
(51, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 11:23:26'),
(52, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 12:09:27'),
(53, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 12:12:27'),
(54, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-14 12:12:42'),
(55, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-15 11:19:16'),
(56, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 11:58:15'),
(57, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:08:59'),
(58, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:09:29'),
(59, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:09:48'),
(60, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:11:37'),
(61, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:11:54'),
(62, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:14:56'),
(63, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:17:30'),
(64, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:20:10'),
(65, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:58:01'),
(66, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:59:13'),
(67, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-01-18 12:59:43'),
(68, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Hold', '2021-01-18 13:00:28'),
(69, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-01-20 08:59:06'),
(70, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-01-20 08:59:08'),
(71, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-01-20 08:59:10'),
(72, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-01-20 08:59:37'),
(73, 'b0:72:bf:ef:50:c7', 'c8:2b:96:b4:3e:28', 'Open', '2021-02-16 13:12:24'),
(74, 'b0:72:bf:ef:50:c7', 'c8:2b:96:b4:3e:28', 'Open', '2021-02-16 13:12:29'),
(75, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-02-16 13:14:03'),
(76, 'b0:72:bf:ef:50:c7', 'c8:2b:96:b4:3e:28', 'Open', '2021-02-16 13:14:31'),
(77, 'b0:72:bf:ef:50:c7', 'c8:2b:96:b4:3e:28', 'Open', '2021-02-16 13:14:33'),
(78, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-02-16 13:15:14'),
(79, 'b0:72:bf:ef:50:c7', 'c8:2b:96:b4:3e:28', 'Open', '2021-02-16 13:15:24'),
(80, 'b0:72:bf:ef:50:c7', 'c8:2b:96:b4:3e:28', 'Close', '2021-02-16 13:18:52'),
(81, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-02-18 09:06:08'),
(82, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-18 12:05:18'),
(83, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-02-18 12:05:21'),
(84, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-21 21:07:14'),
(85, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-02-21 21:07:16'),
(86, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-02-21 21:07:18'),
(87, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-21 21:07:22'),
(88, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-02-21 21:07:23'),
(89, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-21 21:07:26'),
(90, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-02-21 21:07:28'),
(91, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-21 21:07:39'),
(92, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-02-21 21:07:50'),
(93, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-02-21 21:08:16'),
(94, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-02-21 21:08:31'),
(95, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-21 21:12:50'),
(96, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-21 21:12:53'),
(97, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-02-21 21:12:54'),
(98, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-02-21 21:12:56'),
(99, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-21 21:13:31'),
(100, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-02-21 21:13:33'),
(101, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-02-21 21:13:35'),
(102, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-02-21 21:13:37'),
(103, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-02-21 21:13:39'),
(104, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-02-25 14:30:12'),
(105, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-02-25 14:33:57'),
(106, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-02-25 14:33:59'),
(107, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-02-25 14:34:04'),
(108, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-02-25 14:34:15'),
(109, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-02-25 14:34:23'),
(110, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-02-25 14:43:27'),
(111, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-04 14:37:02'),
(112, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-04 14:37:12'),
(113, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:37:18'),
(114, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:37:23'),
(115, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:37:36'),
(116, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:37:48'),
(117, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:37:54'),
(118, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:38:01'),
(119, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-04 14:38:07'),
(120, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-04 14:38:18'),
(121, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:38:27'),
(122, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-04 14:38:38'),
(123, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:38:45'),
(124, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:39:04'),
(125, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:39:33'),
(126, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:40:25'),
(127, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:40:36'),
(128, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-04 14:40:45'),
(129, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-04 14:40:51'),
(130, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:40:57'),
(131, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:41:05'),
(132, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:41:10'),
(133, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:41:15'),
(134, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-04 14:41:21'),
(135, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-04 14:41:31'),
(136, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-04 14:41:39'),
(137, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-06 16:06:22'),
(138, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 08:53:33'),
(139, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 22:46:01'),
(140, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 22:46:04'),
(141, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 22:47:26'),
(142, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 22:47:30'),
(143, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 22:47:43'),
(144, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 23:27:46'),
(145, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 23:27:54'),
(146, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 23:28:58'),
(147, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:29:01'),
(148, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:29:03'),
(149, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 23:29:05'),
(150, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 23:29:07'),
(151, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:29:10'),
(152, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:29:57'),
(153, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 23:30:00'),
(154, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:30:03'),
(155, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 23:30:07'),
(156, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 23:37:57'),
(157, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:37:59'),
(158, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 23:38:46'),
(159, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 23:42:59'),
(160, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 23:49:26'),
(161, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 23:49:59'),
(162, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:50:04'),
(163, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-08 23:51:08'),
(164, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:51:15'),
(165, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-08 23:55:20'),
(166, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-08 23:55:22'),
(167, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:02:02'),
(168, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:02:57'),
(169, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:03:02'),
(170, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:03:05'),
(171, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:03:14'),
(172, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:04:27'),
(173, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:04:29'),
(174, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:04:31'),
(175, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:04:32'),
(176, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:04:34'),
(177, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:04:37'),
(178, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:04:39'),
(179, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:06:42'),
(180, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:06:44'),
(181, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:06:46'),
(182, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:06:51'),
(183, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:06:53'),
(184, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:06:55'),
(185, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:06:57'),
(186, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:06:59'),
(187, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:07:01'),
(188, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:07:03'),
(189, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:07:04'),
(190, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:07:44'),
(191, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:07:46'),
(192, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:07:48'),
(193, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:07:49'),
(194, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:07:51'),
(195, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:07:53'),
(196, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:07:56'),
(197, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:07:58'),
(198, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 00:19:46'),
(199, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:19:48'),
(200, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 00:19:50'),
(201, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 00:19:51'),
(202, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 07:20:47'),
(203, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 07:21:05'),
(204, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 07:24:30'),
(205, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 07:32:36'),
(206, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'hold', '2021-03-09 07:41:07'),
(207, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'open', '2021-03-09 07:42:01'),
(208, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'close', '2021-03-09 08:05:17'),
(209, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'open', '2021-03-09 08:05:19'),
(210, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'hold', '2021-03-09 08:05:21'),
(211, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'close', '2021-03-09 08:05:24'),
(212, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'open', '2021-03-09 08:05:30'),
(213, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 08:06:15'),
(214, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 08:06:20'),
(215, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 08:06:30'),
(216, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 08:13:33'),
(217, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 08:13:36'),
(218, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 08:13:38'),
(219, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 08:17:58'),
(220, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 08:18:02'),
(221, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 08:18:04'),
(222, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 08:18:59'),
(223, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 09:20:52'),
(224, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 09:20:57'),
(225, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 09:21:02'),
(226, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 09:21:07'),
(227, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 09:21:31'),
(228, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 09:21:33'),
(229, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 09:21:39'),
(230, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 09:21:43'),
(231, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-09 12:37:58'),
(232, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-09 12:38:01'),
(233, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Hold', '2021-03-09 12:38:04'),
(234, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:53:45'),
(235, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:53:56'),
(236, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:54:45'),
(237, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:54:52'),
(238, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:54:59'),
(239, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-15 13:55:04'),
(240, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-15 13:55:11'),
(241, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:55:15'),
(242, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:56:14'),
(243, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:56:21'),
(244, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:56:31'),
(245, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-15 13:56:38'),
(246, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-15 13:56:44'),
(247, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-15 13:56:51'),
(248, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:57:32'),
(249, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:59:01'),
(250, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-15 13:59:10'),
(251, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:59:19'),
(252, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 13:59:47'),
(253, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:00:02'),
(254, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:00:18'),
(255, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-15 14:00:24'),
(256, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:00:33'),
(257, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-15 14:00:41'),
(258, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-15 14:00:51'),
(259, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:00:57'),
(260, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:01:03'),
(261, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:01:16'),
(262, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:01:25'),
(263, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-15 14:01:32'),
(264, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:01:40'),
(265, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:01:56'),
(266, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:02:39'),
(267, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:02:47'),
(268, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:03:56'),
(269, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:04:12'),
(270, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:06:33'),
(271, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:07:18'),
(272, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:07:27'),
(273, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:08:12'),
(274, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:08:29'),
(275, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:08:42'),
(276, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:09:02'),
(277, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:17:39'),
(278, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:21:13'),
(279, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:21:45'),
(280, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:21:52'),
(281, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:22:03'),
(282, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:22:38'),
(283, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:28:47'),
(284, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:28:58'),
(285, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:31:25'),
(286, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:34:32'),
(287, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:35:34'),
(288, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:39:52'),
(289, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 14:43:05'),
(290, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 17:12:46'),
(291, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-15 17:12:57'),
(292, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-15 23:47:15'),
(293, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-15 23:47:22'),
(294, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-15 23:48:11'),
(295, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-15 23:48:25'),
(296, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-15 23:49:39'),
(297, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-16 00:04:43'),
(298, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-16 00:05:14'),
(299, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-16 00:05:21'),
(300, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-16 00:06:18'),
(301, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-16 00:06:28'),
(302, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-16 00:06:41'),
(303, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-16 00:06:47'),
(304, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-16 00:07:01'),
(305, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-16 00:13:39'),
(306, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-16 00:13:48'),
(307, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-16 00:13:55'),
(308, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-16 00:25:52'),
(309, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Open', '2021-03-16 00:26:01'),
(310, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-16 00:26:12'),
(311, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-16 00:26:19'),
(312, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-16 00:26:25'),
(313, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-16 00:26:37'),
(314, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-16 00:27:15'),
(315, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-16 00:27:19'),
(316, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-16 00:27:41'),
(317, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-16 00:27:50'),
(318, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-16 00:29:18'),
(319, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-16 00:29:25'),
(320, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-16 00:30:12'),
(321, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-16 04:20:08'),
(322, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 14:41:25'),
(323, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 14:41:32'),
(324, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 14:44:30'),
(325, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-17 14:44:37'),
(326, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-17 14:44:49'),
(327, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-17 14:44:55'),
(328, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-17 14:45:01'),
(329, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 14:45:06'),
(330, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 15:26:37'),
(331, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 15:27:18'),
(332, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-17 15:27:24'),
(333, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Close', '2021-03-17 15:27:30'),
(334, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 15:28:17'),
(335, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 15:31:37'),
(336, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 15:32:03'),
(337, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-17 15:46:30'),
(338, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 15:46:35'),
(339, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-17 16:18:15'),
(340, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:18:23'),
(341, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:19:36'),
(342, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:23:19'),
(343, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:25:07'),
(344, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:25:18'),
(345, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:25:21'),
(346, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:25:26'),
(347, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Hold', '2021-03-17 16:25:32'),
(348, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:27:43'),
(349, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-17 16:27:56'),
(350, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 11:16:51'),
(351, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 11:22:02'),
(352, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 11:22:14'),
(353, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Open', '2021-03-18 11:48:32'),
(354, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hold', '2021-03-18 11:49:26'),
(355, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Close', '2021-03-18 11:49:48'),
(356, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:02:15'),
(357, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:04:51'),
(358, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:04:58'),
(359, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:05:01'),
(360, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:05:22'),
(361, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:05:32'),
(362, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:05:40'),
(363, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:08:13'),
(364, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:18:30'),
(365, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:18:32'),
(366, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:18:38'),
(367, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:19:59'),
(368, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:22:19'),
(369, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-18 12:23:24'),
(370, 'b0:72:bf:ef:50:c7', 'c8:2b:96:b4:3e:28', 'Open', '2021-03-18 23:38:36'),
(371, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:37:03'),
(372, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:38:18'),
(373, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:39:39'),
(374, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:40:52'),
(375, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:41:31'),
(376, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:42:02'),
(377, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:42:38'),
(378, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:46:00'),
(379, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 12:49:10'),
(380, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-19 14:06:14'),
(381, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-22 11:02:46'),
(382, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-22 11:02:54'),
(383, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-22 11:03:25'),
(384, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 11:40:28'),
(385, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 12:05:35'),
(386, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 12:05:38'),
(387, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Close', '2021-03-22 12:05:41'),
(388, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 12:05:42'),
(389, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 12:05:44'),
(390, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 12:05:50'),
(391, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 15:11:04'),
(392, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 15:15:23'),
(393, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 15:15:27'),
(394, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-22 15:15:32'),
(395, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 09:08:40'),
(396, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 09:08:43'),
(397, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Hold', '2021-03-23 09:54:19'),
(398, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 09:57:22'),
(399, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Hold', '2021-03-23 10:39:57'),
(400, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 10:40:08'),
(401, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Close', '2021-03-23 10:42:34'),
(402, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Close', '2021-03-23 10:42:39'),
(403, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 10:42:45'),
(404, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Hold', '2021-03-23 10:42:56'),
(405, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Hold', '2021-03-23 10:42:58'),
(406, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Close', '2021-03-23 10:43:10'),
(407, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 10:48:34'),
(408, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-23 11:28:20'),
(409, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-23 11:28:33'),
(410, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-23 11:30:01'),
(411, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-23 16:25:15'),
(412, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B4:3E:28', 'Open', '2021-03-23 16:25:25'),
(413, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 16:25:31'),
(414, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 16:25:34'),
(415, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-23 16:25:39'),
(416, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 09:12:44'),
(417, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 10:42:42'),
(418, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Hold', '2021-03-24 10:42:49'),
(419, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 10:44:10'),
(420, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 10:44:26'),
(421, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 10:44:35'),
(422, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 10:49:07'),
(423, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 11:42:57'),
(424, '00:11:22:33:44:55', '24:6F:28:F1:6B:48', 'Close', '2021-03-24 11:55:54'),
(425, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 14:44:24'),
(426, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 14:50:06'),
(427, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 14:50:13'),
(428, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 14:52:10'),
(429, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Close', '2021-03-24 14:52:49'),
(430, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Close', '2021-03-24 14:52:55'),
(431, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Close', '2021-03-24 14:53:02'),
(432, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 14:53:12'),
(433, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 15:04:06'),
(434, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 15:04:16'),
(435, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 15:04:38'),
(436, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 15:04:47'),
(437, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 15:04:55'),
(438, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 15:05:03'),
(439, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 15:05:17'),
(440, 'b0:72:bf:ef:50:c7', 'C8:2B:96:B3:EE:00', 'Open', '2021-03-24 15:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'Access 1 Tech'),
(2, 'Test Company'),
(3, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` int NOT NULL,
  `parent_id` int NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL DEFAULT 'default.png',
  `machine_mac` varchar(50) NOT NULL,
  `mobile_mac` varchar(50) NOT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `parent_id`, `fullname`, `email`, `password`, `picture`, `machine_mac`, `mobile_mac`, `is_restricted`) VALUES
(5, 59, 'Andrew Kim', 'kim@kim.com', 'user', '54_user-avatar.png', '24:6F:AA:BB:CC:77', '20:30:40:50:60:70', 0),
(6, 59, 'Andrew Kim', 'andrew@mail.com', 'abcdefghijklmn', 'default.png', '24:6F:28:F1:6B:48', '00:11:22:33:44:55', 0),
(7, 74, 'Guest 1', 'guest@guest.com', 'Guest', '67_man-1.jpg', '1212121212', '1122334455', 0),
(8, 59, 'New Guest', 'newguest@mail.com', '', 'default.png', '24:6F:28:F1:6B:48', '02344444', 0),
(11, 58, 'Gardener', 'gardener@gardener.com', 'gardener', 'default.png', '1234567890', '3333333333', 0),
(12, 74, 'Guest 2', 'Guest2@Guest2.com', 'Guest2', '81_DBeeding.png', '1234567890', '3333333333', 0),
(13, 59, 'Inst Guest', 'guest1@guest.com', 'guest1', 'default.png', '24:6F:28:F1:6B:48', 'AA:BB:CC:DD:EE:FK', 0);

-- --------------------------------------------------------

--
-- Table structure for table `machine_req_completeack`
--

CREATE TABLE `machine_req_completeack` (
  `id` int NOT NULL,
  `action` text NOT NULL,
  `mobile_mac` varchar(20) NOT NULL,
  `machine_mac` varchar(20) NOT NULL,
  `Event` varchar(10) NOT NULL,
  `Pos` varchar(10) NOT NULL,
  `Exitt` varchar(10) NOT NULL,
  `Buzz` varchar(10) NOT NULL,
  `relay` varchar(5) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machine_req_recievedack`
--

CREATE TABLE `machine_req_recievedack` (
  `id` int NOT NULL,
  `response` text NOT NULL,
  `mobile_mac` varchar(20) NOT NULL,
  `machine_mac` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int NOT NULL,
  `request` text NOT NULL,
  `mobile_mac` varchar(20) NOT NULL,
  `machine_mac` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `request`, `mobile_mac`, `machine_mac`) VALUES
(1, 'open', 't4t4t4t4', '3f2323ff23f2'),
(2, 'open', 'abcd1234', '2232332323'),
(3, 'abcc', 'aaaabbbb', 'aksdfjlaf'),
(4, 'abcc', 'aaaabbbb', 'aksdfjlaf'),
(5, 'Close', 'aaaabbbb', 'aksdfjlaf'),
(6, 'Open', 'abcd3e3r', 'asdjkfladj'),
(7, 'Open', '2234EE432', '1233343334'),
(8, 'Open', '2234EE432', '1233343334'),
(9, 'Open', '2223344', '4343332'),
(10, 'Open', '2233433', '34555444'),
(11, 'Close', 'aaaabbbb', 'aksdfjlaf'),
(12, 'Open', 'asdffd', '4444444'),
(13, 'Open', 'asdffd', '4444444'),
(14, 'Open', 'asdffd', '4444444'),
(15, 'Open', '1223344', '3434343'),
(16, 'Open', '123456', '554321'),
(17, 'Open', '123456', '554321'),
(18, 'Open', '123456', '554321'),
(19, 'Open', '123456', '554321'),
(20, 'Open', '123456', '554321'),
(21, 'Open', '123456', '554321'),
(22, 'Open', '123456', '554321'),
(23, 'Open', '123456', '554321'),
(24, 'Open', '123456', '554321'),
(25, 'Open', '123456', '554321'),
(26, 'Open', '123456', '554321'),
(27, 'Open', '123456', '554321'),
(28, 'Open', '123456', '554321'),
(29, 'Open', '123456', '554321'),
(30, 'Open', '123456', '554321'),
(31, 'Open', '123456', '554321'),
(32, 'Open', '123456', '554321'),
(33, 'Open', '123456', '554321'),
(34, 'Open', '123456', '554321'),
(35, 'Open', '123456', '554321'),
(36, 'Open', '123456', '554321'),
(37, 'Open', '123456', '554321'),
(38, 'Open', '123456', '554321'),
(39, 'Open', '123456', '554321'),
(40, 'Open', '123456', '554321'),
(41, 'Open', '123456', '554321'),
(42, 'Open', '123456', '554321'),
(43, 'Open', '123456', '554321'),
(44, 'Open', '123456', '554321'),
(45, 'Open', '123456', '554321'),
(46, 'Open', '123456', '554321'),
(47, 'Open', '123456', '554321'),
(48, 'Open', '123456', '554321'),
(49, 'Open', '123456', '554321'),
(50, 'Open', '123456', '554321'),
(51, 'Open', '123456', '554321'),
(52, 'Open', '123456', '554321');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int NOT NULL,
  `sch_name` varchar(30) NOT NULL,
  `relay` text NOT NULL,
  `user_id` int NOT NULL,
  `mobile_mac` varchar(20) NOT NULL,
  `machine_mac` varchar(20) NOT NULL,
  `event` varchar(5) NOT NULL DEFAULT 'off',
  `holiday` varchar(5) NOT NULL DEFAULT 'off',
  `positions` varchar(5) NOT NULL DEFAULT 'off',
  `schedule_nature` varchar(20) NOT NULL DEFAULT 'open',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `weekday` text NOT NULL,
  `request_send_open` tinyint(1) NOT NULL DEFAULT '0',
  `request_send_close` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `sch_name`, `relay`, `user_id`, `mobile_mac`, `machine_mac`, `event`, `holiday`, `positions`, `schedule_nature`, `start_date`, `end_date`, `start_time`, `end_time`, `weekday`, `request_send_open`, `request_send_close`) VALUES
(5, 'first_alert', 'Latch', 59, 'AA:00:FF:CC:50:77', 'C8:2B:96:B2:71:A4', 'Hi', 'off', 'None', 'open', '2021-03-28', '2021-03-28', '14:04:00.000000', '14:05:00.000000', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_guest`
--

CREATE TABLE `schedule_guest` (
  `id` int NOT NULL,
  `sch_name` varchar(30) NOT NULL,
  `relay` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int NOT NULL,
  `mobile_mac` varchar(20) NOT NULL,
  `machine_mac` varchar(20) NOT NULL,
  `event` varchar(5) NOT NULL DEFAULT 'off',
  `holiday` varchar(5) NOT NULL DEFAULT 'off',
  `positions` varchar(5) NOT NULL DEFAULT 'off',
  `schedule_nature` varchar(20) NOT NULL DEFAULT 'open',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `weekday` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule_guest`
--

INSERT INTO `schedule_guest` (`id`, `sch_name`, `relay`, `user_id`, `parent_id`, `mobile_mac`, `machine_mac`, `event`, `holiday`, `positions`, `schedule_nature`, `start_date`, `end_date`, `start_time`, `end_time`, `weekday`) VALUES
(32, 'all_time_guest', 'none', 91, 59, '', '', 'none', 'on', 'none', '', '2020-03-30', '2020-04-30', '00:00:00.000000', '23:59:00.000000', 'sun,sat,fri,thu,wed,tue,mon,');

-- --------------------------------------------------------

--
-- Table structure for table `server_requests`
--

CREATE TABLE `server_requests` (
  `id` int NOT NULL,
  `machine_mac` varchar(50) NOT NULL,
  `request` varchar(11) NOT NULL,
  `user_id` int NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server_requests`
--

INSERT INTO `server_requests` (`id`, `machine_mac`, `request`, `user_id`, `date_time`) VALUES
(1, '24:6F:28:F1:6B:48d_name=ESP33', 'Hold', 59, '2021-03-25 20:36:15'),
(2, '24:6F:28:F1:6B:48d_name=ESP33', 'Hold', 59, '2021-03-25 20:36:18'),
(3, '24:6F:28:F1:6B:48d_name=ESP33', 'Hold', 59, '2021-03-25 20:36:20'),
(4, '24:6F:28:F1:6B:48d_name=ESP33', 'Hold', 59, '2021-03-25 20:36:22'),
(5, '24:6F:28:F1:6B:48d_name=ESP33', 'Hold', 59, '2021-03-25 20:36:24'),
(6, '24:6F:28:F1:6B:48d_name=ESP33', 'Hold', 59, '2021-03-25 20:43:36'),
(7, '24:6F:28:F1:6B:48d_name=ESP33', 'Hold', 59, '2021-03-25 20:43:39'),
(8, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:44:03'),
(9, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:44:06'),
(10, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:44:08'),
(11, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:44:10'),
(12, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:44:13'),
(13, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:44:15'),
(14, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:44:17'),
(15, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:01'),
(16, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:03'),
(17, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:04'),
(18, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:05'),
(19, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:06'),
(20, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:07'),
(21, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:10'),
(22, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:11'),
(23, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:12'),
(24, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:13'),
(25, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:14'),
(26, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:15'),
(27, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:29'),
(28, 'C8:2B:96:B2:71:A4', 'Open', 59, '2021-03-25 20:45:41'),
(29, 'C8:2B:96:B2:71:A4', 'Open', 59, '2021-03-25 20:45:43'),
(30, 'C8:2B:96:B2:71:A4', 'Open', 59, '2021-03-25 20:45:46'),
(31, 'C8:2B:96:B2:71:A4', 'Open', 59, '2021-03-25 20:45:49'),
(32, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:52'),
(33, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:53'),
(34, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:45:59'),
(35, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:02'),
(36, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:04'),
(37, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:06'),
(38, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:08'),
(39, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:40'),
(40, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:42'),
(41, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:43'),
(42, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:56'),
(43, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:47:59'),
(44, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:48:01'),
(45, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:48:22'),
(46, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:48:24'),
(47, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:48:27'),
(48, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:23'),
(49, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:37'),
(50, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:39'),
(51, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:42'),
(52, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:44'),
(53, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:45'),
(54, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:47'),
(55, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:48'),
(56, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:49'),
(57, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:50'),
(58, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:49:51'),
(59, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:50:24'),
(60, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:50:28'),
(61, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:50:31'),
(62, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:50:52'),
(63, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:50:57'),
(64, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:50:58'),
(65, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:50:59'),
(66, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:51:00'),
(67, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:51:01'),
(68, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:51:02'),
(69, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:51:06'),
(70, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:51:21'),
(71, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:51:58'),
(72, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:51:59'),
(73, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:01'),
(74, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:02'),
(75, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:03'),
(76, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:04'),
(77, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:06'),
(78, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:07'),
(79, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:08'),
(80, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:09'),
(81, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:10'),
(82, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:11'),
(83, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:12'),
(84, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:13'),
(85, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:14'),
(86, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:15'),
(87, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:17'),
(88, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:18'),
(89, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:19'),
(90, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:20'),
(91, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:21'),
(92, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:22'),
(93, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:23'),
(94, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:24'),
(95, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:25'),
(96, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:26'),
(97, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:28'),
(98, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:30'),
(99, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:31'),
(100, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:32'),
(101, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:33'),
(102, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:35'),
(103, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:36'),
(104, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:37'),
(105, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:38'),
(106, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:40'),
(107, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:41'),
(108, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:43'),
(109, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:44'),
(110, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:45'),
(111, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:46'),
(112, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:47'),
(113, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:48'),
(114, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:49'),
(115, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:50'),
(116, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:51'),
(117, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:52'),
(118, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:53'),
(119, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:54'),
(120, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:55'),
(121, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:56'),
(122, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:52:58'),
(123, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:00'),
(124, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:01'),
(125, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:02'),
(126, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:04'),
(127, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:05'),
(128, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:06'),
(129, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:07'),
(130, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:08'),
(131, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:09'),
(132, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:10'),
(133, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:12'),
(134, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:13'),
(135, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:14'),
(136, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:15'),
(137, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:17'),
(138, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:18'),
(139, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:20'),
(140, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:21'),
(141, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:23'),
(142, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:24'),
(143, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:25'),
(144, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:26'),
(145, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:27'),
(146, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:28'),
(147, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:30'),
(148, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:31'),
(149, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:32'),
(150, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:33'),
(151, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:34'),
(152, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:35'),
(153, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:37'),
(154, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:38'),
(155, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:39'),
(156, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:40'),
(157, '24:6F:28:F1:6B:48', 'Open', 59, '2021-03-25 20:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` int NOT NULL,
  `title` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `title`, `value`) VALUES
(1, 'Eastern Standard Time (UTC-5)', 'Pacific/Easter'),
(2, 'Central Standard Time (UTC-6)', 'US/Central'),
(3, 'Mountain Standard Time (UTC-7)', 'US/Mountain'),
(4, 'Pacific Standard Time (UTC-8)', 'US/Pacific'),
(5, 'Alaska Standard Time (UTC-9)', 'US/Alaska'),
(6, 'Hawaii-Aleutian Standard Time (UTC-10)', 'US/Hawaii'),
(7, 'Pakistan (UTC+5)', 'Asia/Karachi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_type` text NOT NULL,
  `parent_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `company` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT 'default.png',
  `mac` varchar(40) NOT NULL,
  `mobile_mac` varchar(40) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `app_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `parent_id`, `first_name`, `last_name`, `company`, `email`, `password`, `is_restricted`, `image`, `mac`, `mobile_mac`, `is_admin`, `app_token`) VALUES
(4, '', 0, 'Web', 'Administrator', 1, 'admin@admin.com', 'admin', 0, 'default.png', '', '', 1, 'sdfdsfsdfsdfmjsidf iuasufuew78r78238rey23uiwhjdn'),
(59, '', 0, 'Andrew', 'James', 1, 'esp32@esp32.com', 'user', 0, '818923982user.png', '24:6F:28:F1:6B:48', 'AA:BB:CC:DD:EE:FF', 0, 'db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo'),
(105, 'guest', 59, 'First', 'Guest', 1, 'guest@user.com', 'guest', 0, 'default.png', '', '', 0, ''),
(106, 'guest', 59, 'second', 'boy', 1, 'second@boy.com', 'SECNDBOY', 0, 'default.png', '', '', 0, ''),
(107, '', 0, 'Sample', 'Account', 1, 'sample@sample.com', 'Sample', 0, 'default.png', '22224444', '55556666', 0, 'db08GxAuQ_KP59CXZRj6CH:APA91bGflymrEQNWYT9DvHmgbPnoR_fdmZBHJtg7x7fxWg9abd-Gmu7Rv-hqRm-SjKLnXLYskiQroZmrmZ1KA47kznRdHB_f7-IZHDwLHMJk4gbHnYO9_iBVBQ1QyOIKHmA4sqmtFelo'),
(109, '', 0, 'ASJDFKLAFJK', 'ADKJF', 2, 'kashifkhan@loketa.com', '24:6F:28:F1:6B:48', 0, 'default.png', '24:6F:28:F1:6B:48', '3232232', 0, ''),
(111, 'guest', 107, 'Gardener', '', 1, 'gardener@gardener.com', 'Gardener', 0, 'default.png', '', '', 0, ''),
(112, '', 0, 'Swaminathan', 'Narayanan', 1, 'narain1971@gmail.com', 'Varshini09!', 0, 'default.png', '', 'f8:87:F1:D0:DE:F7', 0, ''),
(113, '', 0, '', '', 0, '', '', 0, 'default.png', '', '', 0, ''),
(114, '', 0, 'fname', 'lname', 2, 'mmmail@me.com', 'pass@1234', 0, 'default.png', '', '', 0, ''),
(115, '', 0, 'amir', 'amir', 1, 'amir@yahoo.com', 'amir', 0, 'default.png', '', '', 0, ''),
(116, '', 0, 'fname', 'lname', 1, 'tes@test.com', 'test', 0, 'default.png', '', '', 0, ''),
(117, '', 0, 'fname', 'lname', 1, 'test@test.com', 'test', 0, 'default.png', '', '', 0, ''),
(118, '', 0, 'fname', 'lname', 1, 'tesst@test.com', 'test', 0, 'default.png', '', '', 0, ''),
(119, '', 0, 'fname', 'lname', 1, 'test@qwtest.com', 'test', 0, 'default.png', '', '', 0, ''),
(120, '', 0, 'Amir', 'Khan', 2, 'Qtest@test.com', '1', 0, 'default.png', '', '', 0, ''),
(121, '', 0, 'Amir', 'Khan', 2, 'A test@test.com', '1', 0, 'default.png', '', '', 0, ''),
(122, '', 0, 'Uyuiyy', 'Uuy', 2, 'Yuiyui', 'u', 0, 'default.png', '', '', 0, ''),
(123, '', 0, 'kJjkljk', 'Kljljkl', 2, 'Kljkjkl', 'j', 0, 'default.png', '', '', 0, ''),
(124, '', 0, 'Jkjk', 'hkhj', 2, 'jkj', 'j', 0, 'default.png', '', '', 0, ''),
(125, '', 0, 'Uyy', 'Uiy', 2, 'U', 'y', 0, 'default.png', '', '', 0, ''),
(126, '', 0, 'KLkk', 'jKkjk', 2, 'Jk', 'k', 0, 'default.png', '', '', 0, ''),
(127, '', 0, 'Scott', 'Holmes', 1, 'testunit@testunit.com', 'testunit', 0, 'default.png', 'C8:2B:96:B4:3E:28', 'B0:72:BF:EF:50:C7', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_and_devices`
--

CREATE TABLE `user_and_devices` (
  `id` int NOT NULL,
  `device_name` varchar(30) NOT NULL,
  `timezone` int NOT NULL,
  `daylight_saving` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int NOT NULL,
  `machine_mac` varchar(64) NOT NULL,
  `mobile_mac` varchar(20) NOT NULL,
  `device_img` varchar(100) NOT NULL DEFAULT 'gate.jfif',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `guest_name` varchar(20) NOT NULL,
  `action` text NOT NULL,
  `server_request` varchar(100) NOT NULL,
  `alarm` varchar(50) NOT NULL DEFAULT 'none',
  `device_status` text NOT NULL,
  `wifi_lan_ip` varchar(30) NOT NULL,
  `wifi_server_ip` varchar(30) NOT NULL,
  `date_time` varchar(20) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `position_input` varchar(10) NOT NULL,
  `relay` varchar(10) NOT NULL,
  `momentary_time` int NOT NULL,
  `open_btn` tinyint(1) NOT NULL DEFAULT '1',
  `hold_btn` tinyint(1) NOT NULL DEFAULT '1',
  `close_btn` tinyint(1) NOT NULL DEFAULT '1',
  `event` varchar(10) NOT NULL,
  `event_server` varchar(5) DEFAULT 'Lo',
  `position` varchar(10) NOT NULL,
  `relay_from_api` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_and_devices`
--

INSERT INTO `user_and_devices` (`id`, `device_name`, `timezone`, `daylight_saving`, `user_id`, `parent_id`, `machine_mac`, `mobile_mac`, `device_img`, `is_guest`, `guest_name`, `action`, `server_request`, `alarm`, `device_status`, `wifi_lan_ip`, `wifi_server_ip`, `date_time`, `active`, `position_input`, `relay`, `momentary_time`, `open_btn`, `hold_btn`, `close_btn`, `event`, `event_server`, `position`, `relay_from_api`) VALUES
(14, 'Right Main Door', 7, 0, 57, 0, '11:22:aa:bb', '33:44:cc:dd', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '08-09-2019 11:58:28', 1, '', '', 0, 1, 1, 1, '', NULL, '', ''),
(97, 'ESP33', 6, 0, 59, 0, '24:6F:28:F1:6B:48', '00:11:22:33:44:55', 'gate.jfif', 0, '', '', 'Open', '2', 'Alive', 'XXXX', 'bbbbb', '05-01-2021 22:36:30', 1, 'none', 'Momentary', 10, 1, 1, 1, 'Hi', 'Hi', 'Lo', 'Hi'),
(103, 'Scott Test Unit 2', 7, 0, 111, 107, '24:6F:28:F1:7A:48', '24:92:0E:73:56:58', 'gate.jfif', 1, '', '', '', 'none', 'Alive', '2130815168', '67414208', '26-06-2020 05:18:12', 1, '', '', 0, 1, 1, 1, 'Lo', NULL, 'Lo', 'Hi'),
(104, 'Iphone', 7, 0, 112, 0, '', 'f8:87:F1:D0:DE:F7', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '29-05-2020 05:38:59', 1, '', '', 0, 1, 1, 1, '', NULL, '', ''),
(105, '', 7, 0, 113, 0, '', '', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '29-05-2020 05:39:12', 1, '', '', 0, 1, 1, 1, '', NULL, '', ''),
(106, 'Test device', 7, 0, 59, 0, 'C8:2B:96:B2:71:A4', 'AA:00:FF:CC:50:77', 'gate.jfif', 0, '', '', 'Close', '5', 'Alive', '1711319232', '67414208', '05-03-2021 02:57:46', 1, 'Lo', 'Latch', 10, 1, 1, 1, 'Hi', 'Hi', 'Lo', 'Hi'),
(109, 'Main Door', 7, 0, 114, 0, 'aa:bb:cc', '11:22:33', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '23-08-2020 04:21:08', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(110, 'amir device', 7, 0, 115, 0, 'amir:mac', 'amir:mb:mac', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '23-08-2020 04:27:41', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(111, 'qbskdk', 7, 0, 116, 0, 'kkkk', 'eeee', 'gate.jfif', 0, '', '', 'Open', '1', '', '', '', '11-11-2020 01:55:51', 1, 'ON', 'Momentary', 2, 1, 1, 1, '', 'Hi', '', ''),
(114, 'Main Door', 0, 0, 116, 0, 'aa:bb:cc', '11:22:33', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 00:20:35', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(115, 'Main Door', 0, 0, 117, 0, 'aa:bb:cc', '11:22:33', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 04:26:59', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(116, 'Main Door', 0, 0, 118, 0, 'aa:bb:cc', '11:22:33', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 04:29:52', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(117, 'Main Door', 0, 0, 119, 0, 'aa:bb:cc', '11:22:33', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 04:35:21', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(118, 'Amir', 0, 0, 120, 0, '22.12.1', '2131.1`', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 04:37:07', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(119, 'Amir', 0, 0, 121, 0, '22.12.1', '2131.1`', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 04:37:14', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(120, 'uy', 0, 0, 122, 0, 'uiy', 'Uiy', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 04:53:27', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(121, 'jkjkl', 0, 0, 123, 0, 'JK', 'Jkl', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 04:54:54', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(122, 'kl', 0, 0, 124, 0, 'kJ', 'k', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 04:56:14', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(123, 'yu', 0, 0, 125, 0, 'Yu', 'Yu', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 05:18:42', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(124, 'Jk', 0, 0, 126, 0, 'Kj', 'Kj', 'gate.jfif', 0, '', '', '', 'none', '', '', '', '22-11-2020 05:26:37', 1, '', '', 0, 1, 1, 1, '', 'Lo', '', ''),
(126, 'Scott Test Unit 1', 4, 1, 107, 0, 'C8:2B:96:B3:EE:00', 'b0:72:bf:ef:50:c7', 'gate.jfif', 0, '', '', '', 'none', 'Alive', '36350144', '67414208', '22-03-2021 11:34:32', 1, 'none', 'Latch', 2, 1, 1, 1, 'Lo', 'Lo', 'Lo', 'Lo'),
(132, 'Test', 1, 0, 107, 0, 'c8:2b:96:b4:3e:28', 'b0:72:bf:fe:50:c7', 'gate.jfif', 0, '', '', 'Open', 'none', '', '', '', '18-03-2021 23:32:28', 1, '', '', 0, 1, 1, 1, 'Lo', 'Lo', 'Hi', 'Lo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alive_status`
--
ALTER TABLE `alive_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_logs`
--
ALTER TABLE `api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_requests`
--
ALTER TABLE `app_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine_req_completeack`
--
ALTER TABLE `machine_req_completeack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine_req_recievedack`
--
ALTER TABLE `machine_req_recievedack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_guest`
--
ALTER TABLE `schedule_guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_requests`
--
ALTER TABLE `server_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`,`email`) USING BTREE;

--
-- Indexes for table `user_and_devices`
--
ALTER TABLE `user_and_devices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `alive_status`
--
ALTER TABLE `alive_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_logs`
--
ALTER TABLE `api_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `app_requests`
--
ALTER TABLE `app_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `machine_req_completeack`
--
ALTER TABLE `machine_req_completeack`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `machine_req_recievedack`
--
ALTER TABLE `machine_req_recievedack`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule_guest`
--
ALTER TABLE `schedule_guest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `server_requests`
--
ALTER TABLE `server_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `user_and_devices`
--
ALTER TABLE `user_and_devices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
