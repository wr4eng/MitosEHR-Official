-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2012 at 03:02 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mitosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl_permissions`
--

DROP TABLE IF EXISTS `acl_permissions`;
CREATE TABLE IF NOT EXISTS `acl_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `perm_key` varchar(100) CHARACTER SET latin1 NOT NULL,
  `perm_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `perm_cat` varchar(100) CHARACTER SET latin1 NOT NULL,
  `seq` int(5) NOT NULL COMMENT 'sequence',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permKey` (`perm_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `acl_permissions`
--

INSERT INTO `acl_permissions` (`id`, `perm_key`, `perm_name`, `perm_cat`, `seq`) VALUES
(7, 'add_documents', 'Add Documents', 'Documents', 2),
(5, 'edit_demographics', 'Edit Demographics', 'Demographics', 2),
(6, 'access_documents', 'Access Documents', 'Documents', 1),
(4, 'access_demographics', 'Access Demographics', 'Demographics', 1),
(3, 'remove_appointments', 'Remove Appointments', 'Calendar', 3),
(2, 'add_appointments', 'Add Appointments', 'Calendar', 2),
(1, 'access_calendar', 'Access Calendar', 'Calendar', 1),
(8, 'delete_documents', 'Delete Documents', 'Documents', 3),
(9, 'open_documents', 'Open Documents', 'Documents', 4),
(10, 'rename_documents', 'Rename Documents', 'Documents', 5),
(11, 'access_eprescription', 'Access ePrescription', 'ePrescription', 1),
(12, 'access_eprescription_transaction', 'Access ePrescription Transaction', 'ePrescription', 2),
(13, 'emergency_access', 'Emergency Access', 'Patients', 1),
(14, 'add_patient', 'Add Patient', 'Patients', 2),
(15, 'access_patient_summary', 'Access Patient Summary', 'Patients', 3),
(16, 'inactive_patient', 'Inactive Patient', 'Patients', 4),
(17, 'access_patient_search', 'Access Patient Search', 'Patients', 4),
(18, 'access_encounters', 'Access Encounters', 'Encounters', 1),
(19, 'add_encounters', 'Add Encounters', 'Encounters', 2),
(20, 'edit_encounters', 'Edit Encounters', 'Encounters', 3),
(34, 'access_dashboard', 'Access Dashboard', 'General', 1),
(35, 'access_messages', 'Access Messages', 'General', 2),
(36, 'access_gloabal_settings', 'Acces to Global Settings', 'Administrators', 1),
(37, 'access_facilities', 'Access to Facilities', 'Administrators', 2),
(38, 'access_users', 'Access to Users', 'Administrators', 3),
(39, 'access_practice', 'Access to Practice', 'Administrators', 4),
(40, 'access_services', 'Access to Services', 'Administrators', 5),
(41, 'access_roles', 'Access to Roles', 'Administrators', 6),
(42, 'access_layouts', 'Access to Layouts', 'Administrators', 7),
(43, 'access_lists', 'Access to Lists', 'Administrators', 8),
(44, 'access_event_log', 'Access to Event Log', 'Administrators', 9),
(45, 'access_patient_visits', 'Access Patient Visits', 'Patients', 3),
(46, 'add_vitals', 'Add Vitals', 'Encounters', 6),
(47, 'access_visit_payment', 'Visit Payment', 'Encounters', 50);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
CREATE TABLE IF NOT EXISTS `acl_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `role_key` varchar(40) NOT NULL,
  `seq` int(5) NOT NULL COMMENT 'Sequence',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `role_name`, `role_key`, `seq`) VALUES
(2, 'Physician', 'physician', 4),
(3, 'Clinician', 'clinician', 3),
(5, 'Front Office', 'front_office', 1),
(4, 'Auditor', 'auditor', 2),
(1, 'Administrator', 'administrator', 5);

-- --------------------------------------------------------

--
-- Table structure for table `acl_role_perms`
--

DROP TABLE IF EXISTS `acl_role_perms`;
CREATE TABLE IF NOT EXISTS `acl_role_perms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `perm_id` bigint(20) NOT NULL,
  `value` int(5) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=571 ;

--
-- Dumping data for table `acl_role_perms`
--

INSERT INTO `acl_role_perms` (`id`, `role_id`, `perm_id`, `value`, `add_date`) VALUES
(400, 41, 12, 1, '0000-00-00 00:00:00'),
(399, 6, 12, 0, '0000-00-00 00:00:00'),
(398, 36, 12, 0, '0000-00-00 00:00:00'),
(397, 40, 12, 0, '0000-00-00 00:00:00'),
(396, 37, 12, 0, '0000-00-00 00:00:00'),
(395, 41, 11, 1, '0000-00-00 00:00:00'),
(394, 6, 11, 0, '0000-00-00 00:00:00'),
(393, 36, 11, 0, '0000-00-00 00:00:00'),
(392, 40, 11, 0, '0000-00-00 00:00:00'),
(391, 37, 11, 0, '0000-00-00 00:00:00'),
(390, 41, 10, 1, '0000-00-00 00:00:00'),
(389, 6, 10, 1, '0000-00-00 00:00:00'),
(388, 36, 10, 0, '0000-00-00 00:00:00'),
(387, 40, 10, 0, '0000-00-00 00:00:00'),
(386, 37, 10, 0, '0000-00-00 00:00:00'),
(385, 41, 9, 1, '0000-00-00 00:00:00'),
(384, 6, 9, 1, '0000-00-00 00:00:00'),
(383, 36, 9, 0, '0000-00-00 00:00:00'),
(382, 40, 9, 0, '0000-00-00 00:00:00'),
(381, 37, 9, 0, '0000-00-00 00:00:00'),
(380, 41, 8, 1, '0000-00-00 00:00:00'),
(379, 6, 8, 1, '0000-00-00 00:00:00'),
(378, 36, 8, 0, '0000-00-00 00:00:00'),
(377, 40, 8, 0, '0000-00-00 00:00:00'),
(376, 37, 8, 0, '0000-00-00 00:00:00'),
(375, 41, 7, 1, '0000-00-00 00:00:00'),
(374, 6, 7, 1, '0000-00-00 00:00:00'),
(373, 36, 7, 0, '0000-00-00 00:00:00'),
(372, 40, 7, 0, '0000-00-00 00:00:00'),
(371, 37, 7, 0, '0000-00-00 00:00:00'),
(370, 41, 6, 1, '0000-00-00 00:00:00'),
(369, 6, 6, 1, '0000-00-00 00:00:00'),
(368, 36, 6, 0, '0000-00-00 00:00:00'),
(367, 40, 6, 0, '0000-00-00 00:00:00'),
(366, 37, 6, 0, '0000-00-00 00:00:00'),
(365, 41, 5, 1, '0000-00-00 00:00:00'),
(364, 6, 5, 1, '0000-00-00 00:00:00'),
(363, 36, 5, 0, '0000-00-00 00:00:00'),
(362, 40, 5, 0, '0000-00-00 00:00:00'),
(361, 37, 5, 0, '0000-00-00 00:00:00'),
(360, 41, 4, 1, '0000-00-00 00:00:00'),
(359, 6, 4, 1, '0000-00-00 00:00:00'),
(358, 36, 4, 0, '0000-00-00 00:00:00'),
(357, 40, 4, 0, '0000-00-00 00:00:00'),
(356, 37, 4, 0, '0000-00-00 00:00:00'),
(355, 41, 20, 1, '0000-00-00 00:00:00'),
(354, 6, 20, 1, '0000-00-00 00:00:00'),
(353, 36, 20, 1, '0000-00-00 00:00:00'),
(352, 40, 20, 0, '0000-00-00 00:00:00'),
(351, 37, 20, 0, '0000-00-00 00:00:00'),
(350, 41, 19, 1, '0000-00-00 00:00:00'),
(349, 6, 19, 1, '0000-00-00 00:00:00'),
(348, 36, 19, 1, '0000-00-00 00:00:00'),
(347, 40, 19, 0, '0000-00-00 00:00:00'),
(346, 37, 19, 0, '0000-00-00 00:00:00'),
(345, 41, 18, 1, '0000-00-00 00:00:00'),
(344, 6, 18, 1, '0000-00-00 00:00:00'),
(343, 36, 18, 1, '0000-00-00 00:00:00'),
(342, 40, 18, 0, '0000-00-00 00:00:00'),
(341, 37, 18, 0, '0000-00-00 00:00:00'),
(340, 41, 16, 1, '0000-00-00 00:00:00'),
(339, 6, 16, 1, '0000-00-00 00:00:00'),
(338, 36, 16, 1, '0000-00-00 00:00:00'),
(337, 40, 16, 1, '0000-00-00 00:00:00'),
(336, 37, 16, 0, '0000-00-00 00:00:00'),
(335, 41, 17, 1, '0000-00-00 00:00:00'),
(334, 6, 17, 1, '0000-00-00 00:00:00'),
(333, 36, 17, 1, '0000-00-00 00:00:00'),
(332, 40, 17, 1, '0000-00-00 00:00:00'),
(331, 37, 17, 0, '0000-00-00 00:00:00'),
(330, 41, 15, 1, '0000-00-00 00:00:00'),
(329, 6, 15, 1, '0000-00-00 00:00:00'),
(328, 36, 15, 1, '0000-00-00 00:00:00'),
(327, 40, 15, 1, '0000-00-00 00:00:00'),
(326, 37, 15, 0, '0000-00-00 00:00:00'),
(325, 41, 14, 1, '0000-00-00 00:00:00'),
(324, 6, 14, 1, '0000-00-00 00:00:00'),
(323, 36, 14, 1, '0000-00-00 00:00:00'),
(322, 40, 14, 1, '0000-00-00 00:00:00'),
(321, 37, 14, 0, '0000-00-00 00:00:00'),
(320, 41, 13, 1, '0000-00-00 00:00:00'),
(319, 6, 13, 1, '0000-00-00 00:00:00'),
(318, 36, 13, 1, '0000-00-00 00:00:00'),
(317, 40, 13, 1, '0000-00-00 00:00:00'),
(316, 37, 13, 0, '0000-00-00 00:00:00'),
(315, 41, 3, 1, '0000-00-00 00:00:00'),
(314, 6, 3, 1, '0000-00-00 00:00:00'),
(313, 36, 3, 1, '0000-00-00 00:00:00'),
(312, 40, 3, 1, '0000-00-00 00:00:00'),
(311, 37, 3, 1, '0000-00-00 00:00:00'),
(310, 41, 2, 1, '0000-00-00 00:00:00'),
(309, 6, 2, 1, '0000-00-00 00:00:00'),
(308, 36, 2, 1, '0000-00-00 00:00:00'),
(307, 40, 2, 1, '0000-00-00 00:00:00'),
(306, 37, 2, 1, '0000-00-00 00:00:00'),
(305, 41, 1, 0, '0000-00-00 00:00:00'),
(304, 6, 1, 1, '0000-00-00 00:00:00'),
(303, 36, 1, 1, '0000-00-00 00:00:00'),
(302, 40, 1, 1, '0000-00-00 00:00:00'),
(301, 37, 1, 1, '0000-00-00 00:00:00'),
(401, 5, 1, 1, '0000-00-00 00:00:00'),
(402, 4, 1, 1, '0000-00-00 00:00:00'),
(403, 3, 1, 1, '0000-00-00 00:00:00'),
(404, 2, 1, 1, '0000-00-00 00:00:00'),
(405, 1, 1, 1, '0000-00-00 00:00:00'),
(406, 5, 2, 1, '0000-00-00 00:00:00'),
(407, 4, 2, 1, '0000-00-00 00:00:00'),
(408, 3, 2, 1, '0000-00-00 00:00:00'),
(409, 2, 2, 1, '0000-00-00 00:00:00'),
(410, 1, 2, 1, '0000-00-00 00:00:00'),
(411, 5, 3, 1, '0000-00-00 00:00:00'),
(412, 4, 3, 1, '0000-00-00 00:00:00'),
(413, 3, 3, 1, '0000-00-00 00:00:00'),
(414, 2, 3, 1, '0000-00-00 00:00:00'),
(415, 1, 3, 1, '0000-00-00 00:00:00'),
(416, 5, 13, 0, '0000-00-00 00:00:00'),
(417, 4, 13, 1, '0000-00-00 00:00:00'),
(418, 3, 13, 1, '0000-00-00 00:00:00'),
(419, 2, 13, 1, '0000-00-00 00:00:00'),
(420, 1, 13, 1, '0000-00-00 00:00:00'),
(421, 5, 14, 0, '0000-00-00 00:00:00'),
(422, 4, 14, 1, '0000-00-00 00:00:00'),
(423, 3, 14, 1, '0000-00-00 00:00:00'),
(424, 2, 14, 1, '0000-00-00 00:00:00'),
(425, 1, 14, 1, '0000-00-00 00:00:00'),
(426, 5, 15, 0, '0000-00-00 00:00:00'),
(427, 4, 15, 1, '0000-00-00 00:00:00'),
(428, 3, 15, 1, '0000-00-00 00:00:00'),
(429, 2, 15, 1, '0000-00-00 00:00:00'),
(430, 1, 15, 1, '0000-00-00 00:00:00'),
(431, 5, 17, 0, '0000-00-00 00:00:00'),
(432, 4, 17, 1, '0000-00-00 00:00:00'),
(433, 3, 17, 1, '0000-00-00 00:00:00'),
(434, 2, 17, 1, '0000-00-00 00:00:00'),
(435, 1, 17, 1, '0000-00-00 00:00:00'),
(436, 5, 16, 0, '0000-00-00 00:00:00'),
(437, 4, 16, 1, '0000-00-00 00:00:00'),
(438, 3, 16, 1, '0000-00-00 00:00:00'),
(439, 2, 16, 1, '0000-00-00 00:00:00'),
(440, 1, 16, 1, '0000-00-00 00:00:00'),
(441, 5, 18, 0, '0000-00-00 00:00:00'),
(442, 4, 18, 0, '0000-00-00 00:00:00'),
(443, 3, 18, 1, '0000-00-00 00:00:00'),
(444, 2, 18, 1, '0000-00-00 00:00:00'),
(445, 1, 18, 1, '0000-00-00 00:00:00'),
(446, 5, 19, 0, '0000-00-00 00:00:00'),
(447, 4, 19, 0, '0000-00-00 00:00:00'),
(448, 3, 19, 1, '0000-00-00 00:00:00'),
(449, 2, 19, 1, '0000-00-00 00:00:00'),
(450, 1, 19, 1, '0000-00-00 00:00:00'),
(451, 5, 20, 0, '0000-00-00 00:00:00'),
(452, 4, 20, 0, '0000-00-00 00:00:00'),
(453, 3, 20, 1, '0000-00-00 00:00:00'),
(454, 2, 20, 1, '0000-00-00 00:00:00'),
(455, 1, 20, 1, '0000-00-00 00:00:00'),
(456, 5, 4, 0, '0000-00-00 00:00:00'),
(457, 4, 4, 0, '0000-00-00 00:00:00'),
(458, 3, 4, 1, '0000-00-00 00:00:00'),
(459, 2, 4, 1, '0000-00-00 00:00:00'),
(460, 1, 4, 1, '0000-00-00 00:00:00'),
(461, 5, 5, 0, '0000-00-00 00:00:00'),
(462, 4, 5, 0, '0000-00-00 00:00:00'),
(463, 3, 5, 1, '0000-00-00 00:00:00'),
(464, 2, 5, 1, '0000-00-00 00:00:00'),
(465, 1, 5, 1, '0000-00-00 00:00:00'),
(466, 5, 6, 0, '0000-00-00 00:00:00'),
(467, 4, 6, 0, '0000-00-00 00:00:00'),
(468, 3, 6, 0, '0000-00-00 00:00:00'),
(469, 2, 6, 1, '0000-00-00 00:00:00'),
(470, 1, 6, 1, '0000-00-00 00:00:00'),
(471, 5, 7, 0, '0000-00-00 00:00:00'),
(472, 4, 7, 0, '0000-00-00 00:00:00'),
(473, 3, 7, 0, '0000-00-00 00:00:00'),
(474, 2, 7, 1, '0000-00-00 00:00:00'),
(475, 1, 7, 1, '0000-00-00 00:00:00'),
(476, 5, 8, 0, '0000-00-00 00:00:00'),
(477, 4, 8, 0, '0000-00-00 00:00:00'),
(478, 3, 8, 0, '0000-00-00 00:00:00'),
(479, 2, 8, 1, '0000-00-00 00:00:00'),
(480, 1, 8, 1, '0000-00-00 00:00:00'),
(481, 5, 9, 0, '0000-00-00 00:00:00'),
(482, 4, 9, 0, '0000-00-00 00:00:00'),
(483, 3, 9, 0, '0000-00-00 00:00:00'),
(484, 2, 9, 1, '0000-00-00 00:00:00'),
(485, 1, 9, 1, '0000-00-00 00:00:00'),
(486, 5, 10, 0, '0000-00-00 00:00:00'),
(487, 4, 10, 0, '0000-00-00 00:00:00'),
(488, 3, 10, 0, '0000-00-00 00:00:00'),
(489, 2, 10, 1, '0000-00-00 00:00:00'),
(490, 1, 10, 1, '0000-00-00 00:00:00'),
(491, 5, 11, 0, '0000-00-00 00:00:00'),
(492, 4, 11, 0, '0000-00-00 00:00:00'),
(493, 3, 11, 0, '0000-00-00 00:00:00'),
(494, 2, 11, 1, '0000-00-00 00:00:00'),
(495, 1, 11, 1, '0000-00-00 00:00:00'),
(496, 5, 12, 0, '0000-00-00 00:00:00'),
(497, 4, 12, 0, '0000-00-00 00:00:00'),
(498, 3, 12, 0, '0000-00-00 00:00:00'),
(499, 2, 12, 1, '0000-00-00 00:00:00'),
(500, 1, 12, 1, '0000-00-00 00:00:00'),
(501, 5, 34, 1, '0000-00-00 00:00:00'),
(502, 4, 34, 1, '0000-00-00 00:00:00'),
(503, 3, 34, 1, '0000-00-00 00:00:00'),
(504, 2, 34, 1, '0000-00-00 00:00:00'),
(505, 1, 34, 1, '0000-00-00 00:00:00'),
(506, 5, 35, 1, '0000-00-00 00:00:00'),
(507, 4, 35, 1, '0000-00-00 00:00:00'),
(508, 3, 35, 1, '0000-00-00 00:00:00'),
(509, 2, 35, 1, '0000-00-00 00:00:00'),
(510, 1, 35, 1, '0000-00-00 00:00:00'),
(511, 5, 36, 0, '0000-00-00 00:00:00'),
(512, 4, 36, 0, '0000-00-00 00:00:00'),
(513, 3, 36, 0, '0000-00-00 00:00:00'),
(514, 2, 36, 0, '0000-00-00 00:00:00'),
(515, 1, 36, 1, '0000-00-00 00:00:00'),
(516, 5, 37, 0, '0000-00-00 00:00:00'),
(517, 4, 37, 0, '0000-00-00 00:00:00'),
(518, 3, 37, 0, '0000-00-00 00:00:00'),
(519, 2, 37, 0, '0000-00-00 00:00:00'),
(520, 1, 37, 1, '0000-00-00 00:00:00'),
(521, 5, 38, 0, '0000-00-00 00:00:00'),
(522, 4, 38, 0, '0000-00-00 00:00:00'),
(523, 3, 38, 0, '0000-00-00 00:00:00'),
(524, 2, 38, 0, '0000-00-00 00:00:00'),
(525, 1, 38, 1, '0000-00-00 00:00:00'),
(526, 5, 39, 0, '0000-00-00 00:00:00'),
(527, 4, 39, 0, '0000-00-00 00:00:00'),
(528, 3, 39, 0, '0000-00-00 00:00:00'),
(529, 2, 39, 0, '0000-00-00 00:00:00'),
(530, 1, 39, 1, '0000-00-00 00:00:00'),
(531, 5, 40, 0, '0000-00-00 00:00:00'),
(532, 4, 40, 0, '0000-00-00 00:00:00'),
(533, 3, 40, 0, '0000-00-00 00:00:00'),
(534, 2, 40, 0, '0000-00-00 00:00:00'),
(535, 1, 40, 1, '0000-00-00 00:00:00'),
(536, 5, 41, 0, '0000-00-00 00:00:00'),
(537, 4, 41, 0, '0000-00-00 00:00:00'),
(538, 3, 41, 0, '0000-00-00 00:00:00'),
(539, 2, 41, 0, '0000-00-00 00:00:00'),
(540, 1, 41, 1, '0000-00-00 00:00:00'),
(541, 5, 42, 0, '0000-00-00 00:00:00'),
(542, 4, 42, 0, '0000-00-00 00:00:00'),
(543, 3, 42, 0, '0000-00-00 00:00:00'),
(544, 2, 42, 0, '0000-00-00 00:00:00'),
(545, 1, 42, 1, '0000-00-00 00:00:00'),
(546, 5, 44, 0, '0000-00-00 00:00:00'),
(547, 4, 44, 0, '0000-00-00 00:00:00'),
(548, 3, 44, 0, '0000-00-00 00:00:00'),
(549, 2, 44, 0, '0000-00-00 00:00:00'),
(550, 1, 44, 1, '0000-00-00 00:00:00'),
(551, 5, 43, 0, '0000-00-00 00:00:00'),
(552, 4, 43, 0, '0000-00-00 00:00:00'),
(553, 3, 43, 0, '0000-00-00 00:00:00'),
(554, 2, 43, 0, '0000-00-00 00:00:00'),
(555, 1, 43, 1, '0000-00-00 00:00:00'),
(556, 5, 45, 0, '0000-00-00 00:00:00'),
(557, 4, 45, 1, '0000-00-00 00:00:00'),
(558, 3, 45, 1, '0000-00-00 00:00:00'),
(559, 2, 45, 1, '0000-00-00 00:00:00'),
(560, 1, 45, 1, '0000-00-00 00:00:00'),
(561, 5, 46, 0, '0000-00-00 00:00:00'),
(562, 4, 46, 0, '0000-00-00 00:00:00'),
(563, 3, 46, 1, '0000-00-00 00:00:00'),
(564, 2, 46, 1, '0000-00-00 00:00:00'),
(565, 1, 46, 1, '0000-00-00 00:00:00'),
(566, 5, 47, 1, '0000-00-00 00:00:00'),
(567, 4, 47, 1, '0000-00-00 00:00:00'),
(568, 3, 47, 1, '0000-00-00 00:00:00'),
(569, 2, 47, 1, '0000-00-00 00:00:00'),
(570, 1, 47, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acl_user_perms`
--

DROP TABLE IF EXISTS `acl_user_perms`;
CREATE TABLE IF NOT EXISTS `acl_user_perms` (
  `id` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `perm_id` bigint(20) NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_user_roles`
--

DROP TABLE IF EXISTS `acl_user_roles`;
CREATE TABLE IF NOT EXISTS `acl_user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_user_roles`
--

INSERT INTO `acl_user_roles` (`user_id`, `role_id`, `add_date`) VALUES
(85, 1, '2012-01-13 04:00:00'),
(87, 2, '2012-01-30 18:50:22'),
(86, 2, '2012-01-30 18:27:50'),
(88, 1, '2012-01-30 18:51:37'),
(89, 5, '2012-02-03 19:28:34');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;