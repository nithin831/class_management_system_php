

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `dob` text NOT NULL,
  `contact` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `created_on` date NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `fname`, `lname`, `gender`, `dob`, `contact`, `address`, `image`, `created_on`, `group_id`) VALUES
(1, 'admin', 'ndbhalerao91@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Nikhil', 'Bhalerao', 'Male', '1988-05-29', '9423979339', 'Nashik', '20141025_004121_918_Developer.png', '2018-04-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, 'Institute Management System', 'Student Register', 'images.jpg', 'Nikhil Global Academy', 'INR', 'â‚¹', 'loginimage.png', '', 'background-form-login-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendence`
--

CREATE TABLE `tbl_attendence` (
  `id` int(50) NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `classname` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendence`
--

INSERT INTO `tbl_attendence` (`id`, `stud_id`, `classname`, `date`, `status`) VALUES
(14, '7', '9', '2021-01-29', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id` int(30) NOT NULL,
  `classname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`id`, `classname`) VALUES
(9, 'SampleClass');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_config`
--

CREATE TABLE `tbl_email_config` (
  `e_id` int(21) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mail_driver_host` varchar(5000) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(30) NOT NULL,
  `mail_encrypt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_email_config`
--

INSERT INTO `tbl_email_config` (`e_id`, `name`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encrypt`) VALUES
(1, '<student register> ', 'mail.gmail.com', 587, 'ndbhalerao91@gmail.com', 'abc@123', 'sdsad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin'),
(4, 'user1', 'user1'),
(5, 'user2', 'user2'),
(6, 'user3', 'class nd sub adding'),
(7, 'user4', 'user permissin'),
(8, 'liu', 'liu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(200) NOT NULL,
  `operation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`id`, `name`, `display_name`, `operation`) VALUES
(1, 'manage_student', 'Manage Student', 'manage_student'),
(2, 'add_student', 'Add Student', 'add_student'),
(3, 'edit_student', 'Edit Student', 'edit_student'),
(4, 'delete_student', 'Delete Student', 'delete_student'),
(5, 'manage_teacher', 'Manage Teacher', 'manage_teacher'),
(6, 'add_teacher', 'Add Teacher', 'add_teacher'),
(7, 'edit_teacher', 'Edit Teacher', 'edit_teacher'),
(8, 'delete_teacher', 'Delete Teacher', 'delete_teacher'),
(9, 'manage_subject', 'Manage Subject', 'manage_subject'),
(10, 'add_subject', 'Add Subject', 'add_subject'),
(11, 'edit_subject', 'Edit Subject', 'edit_subject'),
(12, 'delete_subject', 'Delete Subject', 'delete_subject'),
(13, 'manage_class', 'Manage Class', 'manage_class'),
(14, 'add_class', 'Add Class', 'add_class'),
(15, 'edit_class', 'Edit Class', 'edit_class'),
(16, 'delete_class', 'Delete Class', 'delete_class'),
(17, 'manage_attendence', 'Manage Attendence', 'manage_attendence'),
(18, 'add_attendence', 'Add Attendence', 'add_attendence'),
(20, 'delete_attendence', 'Delete Attendence', 'delete_attendence'),
(21, 'manage_user', 'Manage User', 'manage_user'),
(22, 'add_user', 'Add User', 'add_user'),
(23, 'edit_user', 'Edit User', 'edit_user'),
(24, 'delete_user', 'Delete User', 'delete_user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission_role`
--

CREATE TABLE `tbl_permission_role` (
  `id` int(30) NOT NULL,
  `permission_id` int(30) NOT NULL,
  `role_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission_role`
--

INSERT INTO `tbl_permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(27, 14, 6),
(28, 21, 7),
(29, 22, 7),
(30, 23, 7),
(31, 24, 7),
(32, 1, 5),
(33, 2, 5),
(34, 10, 5),
(35, 14, 5),
(36, 1, 4),
(37, 5, 4),
(38, 6, 4),
(39, 9, 4),
(40, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_config`
--

CREATE TABLE `tbl_sms_config` (
  `smsid` int(20) NOT NULL,
  `senderid` int(20) NOT NULL,
  `sms_username` varchar(30) NOT NULL,
  `sms_password` varchar(20) NOT NULL,
  `auth_key` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sms_config`
--

INSERT INTO `tbl_sms_config` (`smsid`, `senderid`, `sms_username`, `sms_password`, `auth_key`) VALUES
(1, 101, 'username', 'password', 'authkey');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `stud_id` int(50) NOT NULL,
  `sfname` varchar(30) NOT NULL,
  `slname` varchar(30) NOT NULL,
  `classname` varchar(30) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `sgender` varchar(30) NOT NULL,
  `sdob` date NOT NULL,
  `scontact` int(50) NOT NULL,
  `saddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `stud_id`, `sfname`, `slname`, `classname`, `semail`, `sgender`, `sdob`, `scontact`, `saddress`) VALUES
(2, 1, 'Atul', 'kadam', '3', 'Atul@gmail.com', 'Female', '2019-07-02', 2147483647, 'nasik'),
(3, 2, 'sonali', 'kadale', '6', 'sonali@gmail.com', 'Female', '2005-07-09', 2147483647, 'sinner'),
(4, 0, 'Nikhil', 'Bhalerao', '3', 'nikita@gmail.com', 'Male', '2014-11-27', 2147483647, 'nashik'),
(5, 0, 'shreyas', 'khairnar', '8', 'shreyas@gmail.com', 'Male', '1998-05-12', 2147483647, 'Cidco'),
(6, 0, 'prasad', 'sonawane', '7', 'prasad@gmail.com', 'Male', '2000-02-28', 2147483647, 'pathardi phata'),
(7, 0, 'Claire', 'Blake', '9', 'cblake@sample.com', 'Female', '2000-10-14', 1234568798, 'Sample Address');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `id` int(30) NOT NULL,
  `subjectname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`id`, `subjectname`) VALUES
(2, 'english'),
(6, 'maths'),
(13, 'marathi'),
(14, 'hindi'),
(15, 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `id` int(50) NOT NULL,
  `tfname` varchar(50) NOT NULL,
  `tlname` varchar(50) NOT NULL,
  `classname` varchar(30) NOT NULL,
  `subjectname` varchar(50) NOT NULL,
  `temail` varchar(50) NOT NULL,
  `tgender` varchar(50) NOT NULL,
  `tdob` date NOT NULL,
  `tcontact` int(50) NOT NULL,
  `taddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`id`, `tfname`, `tlname`, `classname`, `subjectname`, `temail`, `tgender`, `tdob`, `tcontact`, `taddress`) VALUES
(6, 'aboli', 'patil', '2', '2', 'aboli@gmail.com', 'Female', '1995-06-11', 2147483647, 'pune'),
(7, 'akansha', 'patil', '3', '1', 'akansha@gmail.com', 'Female', '1995-06-11', 2147483647, 'hdghfdgh'),
(11, 'pradip', 'patil', '3', '5', 'pradip@gmail.com', 'Male', '2016-06-22', 2147483647, 'nashik'),
(12, 'ram', 'wagh', '3', '2', 'ram@gmail.com', 'Male', '2001-02-19', 2147483647, 'nashik'),
(13, 'akansha', 'sharma', '3', '13', 'akansha@gmail.com', 'Female', '2019-07-16', 2147483647, 'hgchjvj'),
(14, 'John', 'Smith', '9', '15', 'jsmith@sample.com', 'Male', '1988-06-23', 2345678, 'Sample Address');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_website`
--
ALTER TABLE `manage_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendence`
--
ALTER TABLE `tbl_attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_config`
--
ALTER TABLE `tbl_sms_config`
  ADD PRIMARY KEY (`smsid`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `manage_website`
--
ALTER TABLE `manage_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_attendence`
--
ALTER TABLE `tbl_attendence`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  MODIFY `e_id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_sms_config`
--
ALTER TABLE `tbl_sms_config`
  MODIFY `smsid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
