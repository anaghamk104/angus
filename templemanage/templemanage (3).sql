-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 12:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `templemanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add darshana', 7, 'add_darshana'),
(26, 'Can change darshana', 7, 'change_darshana'),
(27, 'Can delete darshana', 7, 'delete_darshana'),
(28, 'Can view darshana', 7, 'view_darshana'),
(29, 'Can add donation', 8, 'add_donation'),
(30, 'Can change donation', 8, 'change_donation'),
(31, 'Can delete donation', 8, 'delete_donation'),
(32, 'Can view donation', 8, 'view_donation'),
(33, 'Can add festives', 9, 'add_festives'),
(34, 'Can change festives', 9, 'change_festives'),
(35, 'Can delete festives', 9, 'delete_festives'),
(36, 'Can view festives', 9, 'view_festives'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login'),
(41, 'Can add report', 11, 'add_report'),
(42, 'Can change report', 11, 'change_report'),
(43, 'Can delete report', 11, 'delete_report'),
(44, 'Can view report', 11, 'view_report'),
(45, 'Can add temple', 12, 'add_temple'),
(46, 'Can change temple', 12, 'change_temple'),
(47, 'Can delete temple', 12, 'delete_temple'),
(48, 'Can view temple', 12, 'view_temple'),
(49, 'Can add ureg', 13, 'add_ureg'),
(50, 'Can change ureg', 13, 'change_ureg'),
(51, 'Can delete ureg', 13, 'delete_ureg'),
(52, 'Can view ureg', 13, 'view_ureg'),
(53, 'Can add darshanabook', 14, 'add_darshanabook'),
(54, 'Can change darshanabook', 14, 'change_darshanabook'),
(55, 'Can delete darshanabook', 14, 'delete_darshanabook'),
(56, 'Can view darshanabook', 14, 'view_darshanabook');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `darshana`
--

CREATE TABLE `darshana` (
  `did` int(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `darshana`
--

INSERT INTO `darshana` (`did`, `day`, `date`, `time`, `type`, `desc`) VALUES
(1, 'sun', '2022-11-29', '04:28:00.000000', 'pooja', 'sdfghjk'),
(4, 'sun', '2022-11-08', '13:59:00.000000', 'vazhipade', 'aawsedrfghj'),
(5, 'sun', '2022-11-09', '15:57:00.000000', 'vazhipade', 'wedrfghjk');

-- --------------------------------------------------------

--
-- Table structure for table `darshanabook`
--

CREATE TABLE `darshanabook` (
  `da_id` int(10) NOT NULL,
  `date` varchar(65) NOT NULL,
  `time` time(6) NOT NULL,
  `ppls` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `address` varchar(100) NOT NULL,
  `id_proof` varchar(100) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `date_of_birth` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `star` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `darshanabook`
--

INSERT INTO `darshanabook` (`da_id`, `date`, `time`, `ppls`, `name`, `address`, `id_proof`, `id_number`, `phone_no`, `date_of_birth`, `gender`, `star`) VALUES
(1, '2022-11-02', '00:58:00.000000', 4, '0', '', '', '', '', '', '', ''),
(2, '2022-11-08', '15:51:00.000000', 23, '0', '', '', '', '', '', '', ''),
(3, '2022-11-09', '16:44:00.000000', 2, '0', '', '', '', '', '', '', ''),
(4, '2022-11-23', '04:28:00.000000', 45, '11', '', '', '', '', '', '', ''),
(5, '2022-11-23', '04:28:00.000000', 45, '11', '', '', '', '', '', '', ''),
(6, 'Nov. 29, 2022', '04:28:00.000000', 2, '7', '', '', '', '', '', '', ''),
(7, '2022-11-03', '14:29:00.000000', 2, '', '', '', '', '', '', '', ''),
(8, '2022-11-24', '14:38:00.000000', 3, '', '', '', '', '', '', '', ''),
(9, '2022-11-24', '14:38:00.000000', 3, '', '', '', '', '', '', '', ''),
(11, '2022-11-12', '14:48:00.000000', 1, 'adasd', 'dfasx', 'tr.jpg', '2', '9876543', '2022-11-18', 'male', 'savd'),
(12, '2022-11-02', '03:32:00.000000', 2, 'aa', 'qqq', 't.jpg', '123456789', '8765432', '2022-12-09', 'female', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'darshana', 'darshana'),
(14, 'darshanabook', 'darshanabook'),
(8, 'donation', 'donation'),
(9, 'festives', 'festives'),
(10, 'login', 'login'),
(11, 'report', 'report'),
(6, 'sessions', 'session'),
(12, 'temple', 'temple'),
(13, 'ureg', 'ureg');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-09 06:00:20.411387'),
(2, 'auth', '0001_initial', '2022-11-09 06:00:21.769115'),
(3, 'admin', '0001_initial', '2022-11-09 06:00:22.066188'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-09 06:00:22.081748'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-09 06:00:22.097425'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-09 06:00:22.219416'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-09 06:00:22.495864'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-09 06:00:22.546819'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-09 06:00:22.566741'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-09 06:00:22.666295'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-09 06:00:22.666295'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-09 06:00:22.699185'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-09 06:00:22.718614'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-09 06:00:22.766924'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-09 06:00:22.803179'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-09 06:00:22.818934'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-09 06:00:22.853861'),
(18, 'darshana', '0001_initial', '2022-11-09 06:00:22.869499'),
(19, 'darshanabook', '0001_initial', '2022-11-09 06:00:22.885198'),
(20, 'donation', '0001_initial', '2022-11-09 06:00:22.900748'),
(21, 'festives', '0001_initial', '2022-11-09 06:00:22.900748'),
(22, 'login', '0001_initial', '2022-11-09 06:00:22.916372'),
(23, 'report', '0001_initial', '2022-11-09 06:00:22.932059'),
(24, 'sessions', '0001_initial', '2022-11-09 06:00:23.012985'),
(25, 'temple', '0001_initial', '2022-11-09 06:00:23.028688'),
(26, 'ureg', '0001_initial', '2022-11-09 06:00:23.028688');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('v9v2nkpq99c12mdarbl4r2ibzifblhsh', 'eyJ1aWQiOjEyLCJ1X2lkIjowfQ:1otjkh:I4woaLdzMBsKti5OBY2wzeXcaXZhZS_UeMdmZYCo1rQ', '2022-11-26 06:12:27.793725');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `do_id` int(11) NOT NULL,
  `do_type` varchar(30) NOT NULL,
  `amount` int(15) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `u_id` int(25) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`do_id`, `do_type`, `amount`, `date`, `time`, `u_id`, `status`) VALUES
(1, '1', 5678, '2022-11-15', '01:46:00.000000', 1, 'contributer'),
(2, '1', 3456, '2022-11-01', '01:50:00.000000', 1, 'monthly aims'),
(4, '1', 2000, '2022-11-08', '11:39:00.000000', 1, 'good donation'),
(6, '1', 32456, '2022-11-15', '00:03:00.000000', 1, 'contributer'),
(7, '1', 2345, '2022-11-24', '00:43:00.000000', 11, 'monthly aims'),
(8, '1', 2000, '2022-11-01', '22:44:00.000000', 7, 'monthly aims'),
(9, '1', 2000, '2022-11-09', '10:47:00.000000', 7, 'good donation'),
(10, '1', 1234, '2022-11-03', '15:40:00.000000', 11, 'good donation');

-- --------------------------------------------------------

--
-- Table structure for table `festives`
--

CREATE TABLE `festives` (
  `fid` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `startsdate` varchar(20) NOT NULL,
  `enddate` varchar(20) NOT NULL,
  `about` varchar(500) NOT NULL,
  `spclpooja` varchar(500) NOT NULL,
  `opentime` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `festives`
--

INSERT INTO `festives` (`fid`, `fname`, `startsdate`, `enddate`, `about`, `spclpooja`, `opentime`, `image`) VALUES
(1, 'durgashtami', '2022-11-08', '2022-11-09', 'Historsdfghnjm,.y', 'sdfgvhjnm', '12', ''),
(2, 'durgashtami', '2022-11-08', '2022-11-09', 'Historsdfghnjm,.y', 'sdfgvhjnm', '12', ''),
(3, 'vvvv', '2022-11-08', '2022-12-01', 'eeeeee', 'eeee', 'ddd', 't.jpg'),
(4, 'qq', '2022-12-09', '2022-12-16', 'eee', 'vvv', '12', '5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(10) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `u_type` varchar(20) NOT NULL,
  `u_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `uname`, `password`, `u_type`, `u_id`) VALUES
(1, 'Anagha', 'anagha', 'user', 0),
(2, 'admin', 'admin', 'admin', 0),
(7, 'Asha', 'asha', 'user', 11),
(8, 'Anil', 'anil', 'user', 12);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `rid` int(11) NOT NULL,
  `caption` varchar(50) NOT NULL,
  `about` varchar(500) NOT NULL,
  `report` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`rid`, `caption`, `about`, `report`, `date`, `time`) VALUES
(1, 'qwertyh', 'Histyuktory', 'style.css', '2022-11-29', '14:27'),
(2, 'qwertyh', 'Histyuktory', 'style.css', '2022-11-29', '14:27');

-- --------------------------------------------------------

--
-- Table structure for table `temple`
--

CREATE TABLE `temple` (
  `tid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `place` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `prathishta` varchar(50) NOT NULL,
  `Estd` varchar(5) NOT NULL,
  `history` varchar(500) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temple`
--

INSERT INTO `temple` (`tid`, `name`, `place`, `address`, `prathishta`, `Estd`, `history`, `image`) VALUES
(1, 'aa', 'www', 'aaaaaaa', 'dddd', '1234', 'aaaaaannnnnnn', 'ambala.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `ureg`
--

CREATE TABLE `ureg` (
  `u_id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(15) NOT NULL,
  `nakshathra` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `cpassword` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ureg`
--

INSERT INTO `ureg` (`u_id`, `uname`, `address`, `phone`, `email`, `nakshathra`, `gender`, `dob`, `password`, `cpassword`) VALUES
(7, 'Sherin', 'Sherins home', '99234567', 'sherin@gmail.co', 'sherin', 'female', '2022-11-15', '1234', '1234'),
(11, 'Asha', 'asha', '99945678', 'asha@gmail.com', 'pooram', 'female', '2022-11-04', 'asha', 'asha'),
(12, 'Anil', '', '123', 'anil@gmail.com', 'rohini', 'male', '1995-03-08', 'anil', 'anil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `darshana`
--
ALTER TABLE `darshana`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `darshanabook`
--
ALTER TABLE `darshanabook`
  ADD PRIMARY KEY (`da_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`do_id`);

--
-- Indexes for table `festives`
--
ALTER TABLE `festives`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `temple`
--
ALTER TABLE `temple`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `ureg`
--
ALTER TABLE `ureg`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `darshana`
--
ALTER TABLE `darshana`
  MODIFY `did` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `darshanabook`
--
ALTER TABLE `darshanabook`
  MODIFY `da_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `do_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `festives`
--
ALTER TABLE `festives`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temple`
--
ALTER TABLE `temple`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ureg`
--
ALTER TABLE `ureg`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
