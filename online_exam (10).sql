-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 02:52 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicantinfo`
--

CREATE TABLE `applicantinfo` (
  `app_id` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `objectives` varchar(250) DEFAULT NULL,
  `idpic` varchar(250) DEFAULT NULL,
  `profile` varchar(250) DEFAULT NULL,
  `resume` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicantinfo`
--

INSERT INTO `applicantinfo` (`app_id`, `lname`, `fname`, `mname`, `birthdate`, `address`, `telephone`, `mobile`, `email`, `objectives`, `idpic`, `profile`, `resume`) VALUES
(1, 'Questronix', '1', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps1@mailinator.com', NULL, NULL, NULL, NULL),
(2, 'Questronix', '2', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps2@mailinator.com', NULL, NULL, NULL, NULL),
(3, 'Questronix', '3', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps3mailinator.com', NULL, NULL, NULL, NULL),
(4, 'Questronix', '4', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps4@mailinator.com', NULL, NULL, NULL, NULL),
(5, 'Questronix', '5', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps5@mailinator.com', NULL, NULL, NULL, NULL),
(6, 'Questronix', '6', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps6@mailinator.com', NULL, NULL, NULL, NULL),
(7, 'Questronix', '7', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps7@mailinator.com', NULL, NULL, NULL, NULL),
(8, 'Questronix', '8', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps8@mailinator.com', NULL, NULL, NULL, NULL),
(9, 'Questronix', '9', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps9@mailinator.com', NULL, NULL, NULL, NULL),
(10, 'Questronix', '10', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps10@mailinator.com', NULL, NULL, NULL, NULL),
(11, 'Questronix', '11', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps11@mailinator.com', NULL, NULL, NULL, NULL),
(12, 'Questronix', '12', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps12@mailinator.com', NULL, NULL, NULL, NULL),
(13, 'Questronix', '13', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps13@mailinator.com', NULL, NULL, NULL, NULL),
(14, 'Questronix', '14', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps14@mailinator.com', NULL, NULL, NULL, NULL),
(15, 'Questronix', '15', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps15@mailinator.com', NULL, NULL, NULL, NULL),
(16, 'Questronix', '16', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps16@mailinator.com', NULL, NULL, NULL, NULL),
(17, 'Questronix', '17', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps17@mailinator.com', NULL, NULL, NULL, NULL),
(18, 'Questronix', '18', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps18@mailinator.com', NULL, NULL, NULL, NULL),
(19, 'Questronix', '19', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps19@mailinator.com', NULL, NULL, NULL, NULL),
(20, 'Questronix', '20', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps20@mailinator.com', NULL, NULL, NULL, NULL),
(21, 'Questronix', '21', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps21@mailinator.com', NULL, NULL, NULL, NULL),
(22, 'Questronix', '22', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps22@mailinator.com', NULL, NULL, NULL, NULL),
(23, 'Questronix', '23', 'QPS', '1990-10-10', 'Philippines', '822-0922', '822-0922', 'qps23@mailinator.com', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicantlogin`
--

CREATE TABLE `applicantlogin` (
  `app_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(166) NOT NULL,
  `authenticator` varchar(166) DEFAULT NULL,
  `activated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicantlogin`
--

INSERT INTO `applicantlogin` (`app_id`, `email`, `password`, `authenticator`, `activated`) VALUES
(1, 'qps1@mailinator.com', 'questronix', NULL, NULL),
(2, 'qps2@mailinator.com', 'questronix', NULL, NULL),
(3, 'qps3@mailinator.com', 'questronix', NULL, NULL),
(4, 'qps4@mailinator.com', 'questronix', NULL, NULL),
(5, 'qps5@mailinator.com', 'questronix', NULL, NULL),
(6, 'qps6@mailinator.com', 'questronix', NULL, NULL),
(7, 'qps7@mailinator.com', 'questronix', NULL, NULL),
(8, 'qps8@mailinator.com', 'questronix', NULL, NULL),
(9, 'qps9@mailinator.com', 'questronix', NULL, NULL),
(10, 'qps10@mailinator.com', 'questronix', NULL, NULL),
(11, 'qps11@mailinator.com', 'questronix', NULL, NULL),
(12, 'qps12@mailinator.com', 'questronix', NULL, NULL),
(13, 'qps13@mailinator.com', 'questronix', NULL, NULL),
(14, 'qps14@mailinator.com', 'questronix', NULL, NULL),
(15, 'qps15@mailinator.com', 'questronix', NULL, NULL),
(16, 'qps16@mailinator.com', 'questronix', NULL, NULL),
(17, 'qps17@mailinator.com', 'questronix', NULL, NULL),
(18, 'qps18@mailinator.com', 'questronix', NULL, NULL),
(19, 'qps19@mailinator.com', 'questronix', NULL, NULL),
(20, 'qps20@mailinator.com', 'questronix', NULL, NULL),
(21, 'qps21@mailinator.com', 'questronix', NULL, NULL),
(22, 'qps22@mailinator.com', 'questronix', NULL, NULL),
(23, 'qps23@mailinator.com', 'questronix', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicantorg`
--

CREATE TABLE `applicantorg` (
  `org_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `organization` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicantsecondary`
--

CREATE TABLE `applicantsecondary` (
  `educ_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `secondary` varchar(100) DEFAULT NULL,
  `secondarygrad` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicantseminar`
--

CREATE TABLE `applicantseminar` (
  `sem_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `speaker` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicanttertiary`
--

CREATE TABLE `applicanttertiary` (
  `tertiary_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `tertiary` varchar(50) DEFAULT NULL,
  `yeargraduated` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicanttraining`
--

CREATE TABLE `applicanttraining` (
  `train_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `instructor` varchar(50) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicantwork`
--

CREATE TABLE `applicantwork` (
  `work_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `achievement` varchar(250) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_answers`
--

CREATE TABLE `applicant_answers` (
  `answer_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `app_answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_appliedjob`
--

CREATE TABLE `applicant_appliedjob` (
  `applied_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `essay_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_essay`
--

CREATE TABLE `applicant_essay` (
  `essay_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text,
  `started` datetime NOT NULL,
  `ended` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_manchester`
--

CREATE TABLE `applicant_manchester` (
  `mpe_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `factor` varchar(15) NOT NULL,
  `score` int(11) NOT NULL,
  `remarks` varchar(25) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_technical`
--

CREATE TABLE `applicant_technical` (
  `appscore_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `examtype_id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `remarks` varchar(25) DEFAULT NULL,
  `datestarted` datetime NOT NULL,
  `dateended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `lname`, `fname`, `mname`, `email`, `password`) VALUES
(1, 'Questronix', '1', 'QPS', 'qpshr1@mailinator.com', 'questronix'),
(2, 'Questronix', '2', 'QPS', 'qpshr2@mailinator.com', 'questronix'),
(3, 'Questronix', '3', 'QPS', 'qpshr3@mailinator.com', 'questronix'),
(4, 'Questronix', '4', 'QPS', 'qpshr4@mailinator.com', 'questronix'),
(5, 'Questronix', '5', 'QPS', 'qpshr5@mailinator.com', 'questronix'),
(6, 'Questronix', '6', 'QPS', 'qpshr6@mailinator.com', 'questronix'),
(7, 'Questronix', '7', 'QPS', 'qpshr7@mailinator.com', 'questronix'),
(8, 'Questronix', '8', 'QPS', 'qpshr8@mailinator.com', 'questronix'),
(9, 'Questronix', '9', 'QPS', 'qpshr9@mailinator.com', 'questronix'),
(10, 'Questronix', '10', 'QPS', 'qpshr10@mailinator.com', 'questronix'),
(11, 'Questronix', '11', 'QPS', 'qpshr11@mailinator.com', 'questronix'),
(12, 'Questronix', '12', 'QPS', 'qpshr12@mailinator.com', 'questronix'),
(13, 'Questronix', '13', 'QPS', 'qpshr13@mailinator.com', 'questronix'),
(14, 'Questronix', '14', 'QPS', 'qpshr14@mailinator.com', 'questronix'),
(15, 'Questronix', '15', 'QPS', 'qpshr15@mailinator.com', 'questronix'),
(16, 'Questronix', '16', 'QPS', 'qpshr16@mailinator.com', 'questronix'),
(17, 'Questronix', '17', 'QPS', 'qpshr17@mailinator.com', 'questronix'),
(18, 'Questronix', '18', 'QPS', 'qpshr18@mailinator.com', 'questronix'),
(19, 'Questronix', '19', 'QPS', 'qpshr19@mailinator.com', 'questronix'),
(20, 'Questronix', '20', 'QPS', 'qpshr20@mailinator.com', 'questronix'),
(21, 'Questronix', '21', 'QPS', 'qpshr21@mailinator.com', 'questronix'),
(22, 'Questronix', '22', 'QPS', 'qpshr22@mailinator.com', 'questronix'),
(23, 'Questronix', '23', 'QPS', 'qpshr23@mailinator.com', 'questronix');

-- --------------------------------------------------------

--
-- Table structure for table `exam_type`
--

CREATE TABLE `exam_type` (
  `examtype_id` int(11) NOT NULL,
  `examtype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_type`
--

INSERT INTO `exam_type` (`examtype_id`, `examtype`) VALUES
(1, 'Verbal Meaning'),
(2, 'Reasoning'),
(3, 'Letter Series'),
(4, 'Number Ability'),
(5, 'Ipi Aptitude '),
(6, 'Manchester Personality'),
(7, 'Essay');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `job_description` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `job_description`, `image`, `status`) VALUES
(1, 'Brand Manager | Security Solution', '<p>\r\n\r\n</p><div><p>The <strong>Brand Manager for Security Solution </strong>is mainly responsible for the security business in the company based on QNX products as well as for the security solutions targets within the company. Other responsibilities include but are not limited to the following:</p><ul><li>Developing opportunities for security solutions based on QNX range of products.</li><li>Addressing clients\' requirements by using technical solution design.</li></ul></div><p></p>', 'public/dist/img/jobs/a.jpg', 'Posted'),
(2, 'Software Developer', '<p>Software Developer</p>', 'public/dist/img/jobs/a1.jpg', 'Posted'),
(3, 'asd', '<p>asdsadasdasdsadasdasdsadasdasdasdsadsadasdasdasdasdasdasdasdasdasdasdasdsadasasdasdadsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 'public/dist/img/jobs/a2.jpg', 'Not Posted');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

CREATE TABLE `question_bank` (
  `question_id` int(11) NOT NULL,
  `examtype_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `option5` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`question_id`, `examtype_id`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `answer`) VALUES
(1, 1, 'Template', 'Storm', 'Sanctuary', 'Tendency', 'Pattern', 'System', 'Pattern'),
(2, 1, 'Facet', 'Copy', 'Quantity', 'Facient', 'Aspect', 'Cycle', 'Aspect'),
(3, 1, 'Residual', 'Remaining', 'Plentiful', 'Livable', 'Originate', 'Attach', 'Remaining'),
(4, 1, 'Amalgamate', 'Consolidate', 'Attenuate', 'Resember', 'Syndicate', 'Infiltrate', 'Consolidate'),
(5, 1, 'Aggregate', 'Totality', 'Permutation', 'Provocation', 'Partial', 'Component', 'Totality'),
(6, 1, 'Conglomerate', 'Integrate', 'Accumulate', 'Sever', 'Obstruct', 'Conjugate', 'Accumulate'),
(7, 1, 'Bias', 'Direction', 'Compulsion', 'Predisposition', 'Duality', 'Impartiality', 'Predisposition'),
(8, 1, 'Ascertain', 'Judge', 'Determine', 'Examine', 'Analyze', 'Declare', 'Determine'),
(9, 1, 'Paradox', 'Dispersion', 'Absurdity', 'Prototype', 'Concession', 'Pessimism', 'Absurdity'),
(10, 1, 'Inexorable', 'Assessable', 'Partisan', 'Unrelenting', 'Tangible', 'Faithful', 'Unrelenting'),
(11, 1, 'Premise', 'Environ', 'Presupposition', 'Apprehension', 'Deduction', 'Appraisal', 'Presupposition'),
(12, 1, 'Random', 'Instant', 'Chance', 'Widespread', 'Regular', 'Reckless', 'Chance'),
(13, 1, 'Consummation', 'Correlation', 'Periphery', 'Alliance', 'Culmination', 'Comprisal', 'Culmination'),
(14, 1, 'Inherent', 'Constituent', 'Bequeathed', 'Perceptive', 'Intrinsic', 'Attributable', 'Intrinsic'),
(15, 1, 'Autonomous', 'Exempted', 'Instinctive', 'Subordinate', 'Prone', 'Independent', 'Independent'),
(16, 1, 'Facsimile', 'Illustration', 'Contrast', 'Dexterity', 'Reproduction', 'Similarity', 'Reproduction'),
(17, 1, 'Actuate', 'Create', 'Impel', 'Deter', 'Quicken', 'Adapt', 'Impel'),
(18, 1, 'Compliant', 'Complex', 'Adjustable', 'Approving', 'Obedient', 'Persistent', 'Obedient'),
(19, 1, 'Secular', 'Civil', 'Guaranteed', 'Pious', 'Standard', 'Transitory', 'Civil'),
(20, 1, 'Proprietary', 'Conformity', 'Leased', 'Unshared', 'Owned', 'Managerial', 'Owned'),
(21, 1, 'Simultaneous', 'Relative', 'Congruent', 'Imitable', 'Contemporary', 'Collateral', 'Contemporary'),
(22, 1, 'Parameter', 'Variable', 'Scope', 'Boundary', 'Origin', 'Equidistant', 'Variable'),
(23, 1, 'Axiomatic', 'Proven', 'Theoretical', 'Self-evident', 'Central', 'Experimental', 'Self-evident'),
(24, 1, 'Preclude', 'Prevent', 'Interrupt', 'Remove', 'Defeat', 'Contain', 'Prevent'),
(25, 1, 'Disseminate', 'Promulgate', 'Disguise', 'Dispel', 'Disunite', 'Separate', 'Promulgate'),
(26, 1, 'Expropriate', 'Abandon', 'Efface', 'Exploit', 'Reproach', 'Dispossess', 'Dispossess'),
(27, 1, 'Extraneous', 'Excessive', 'Objective', 'Foreign', 'Exceptional', 'Essential', 'Foreign'),
(28, 1, 'Inertia', 'Agitation', 'Inactivity', 'Permanence', 'Indolence', 'Weakness', 'Inactivity'),
(29, 1, 'Pragmatic', 'Irresolute', 'Reactionary', 'Vulnerable', 'Unreasonable', 'Practical', 'Practical'),
(30, 1, 'Analog', 'Variation', 'Result', 'Repetition', 'Reciprocal', 'Parallel', 'Parallel'),
(31, 1, 'Proliferation', 'Maturation', 'Abundance', 'Evolution', 'Impotency', 'Propagation', 'Propagation'),
(32, 1, 'Pervasive', 'Influential', 'Corrupt', 'Diffuse', 'Void', 'Abnormal', 'Diffuse'),
(33, 1, 'Attenuate', 'Listen', 'Lessen', 'Retire', 'Decay', 'Increaase', 'Lessen'),
(34, 1, 'Debenture', 'Credit', 'Certificate', 'Discharge', 'Agreement', 'Endorsement', 'Certificate'),
(35, 1, 'Prudence', 'Obtuseness', 'Perception', 'Audacity', 'Solicitude', 'Circumspection', 'Circumspection'),
(36, 1, 'Reposit', 'Allot', 'Consign', 'Store', 'Amass', 'Reinstate', 'Store'),
(37, 1, 'Recondite', 'Obsolete', 'Recoverable', 'Strategic', 'Profound', 'Tactical', 'Profound'),
(38, 1, 'Incimal', 'Bilateral', 'Unique', 'Hostile', 'Introductory', 'Unjust', 'Hostile'),
(39, 2, 'The relation between distance, time, and average rate of speed is expressed as d = rt. If r is constant, and t increases, d', 'increases only if r is greater than t', 'decreases only if r is greater than t', 'is unchanged regardless of the size of r and t', 'increases regardless of the size of r and t', 'decreases regardless of the size of r and t', 'increases regardless of the size of r and t'),
(40, 2, 'A company places an amount of money F each month in each employee’s vacation account. This amount F is determined by multiplying the salary earned that month, S, by a fixed rate which is X percent. If S1, S2 and S3 are the salaries earned by an employee in three months, the total amount of money placed in the employee’s vacation account during this period will be', '${{XS_1\\over 100}+{2XS_2\\over 100}+{3XS_3\\over 100}}$', '${XS\\over 100}$', '${100XS}$', '${{F-X}{(S_1 + S_2 + S_3)}}$', '${{XS_1\\over 100}+{XS_2\\over 100}+{XS_3\\over 100}}$', '${{XS_1\\over 100}+{XS_2\\over 100}+{XS_3\\over 100}}$'),
(41, 2, 'It is proposed that a state income tax rate be set at X percent on the first A dollars of income and Y percent of the additional income B in dollars. The fixed allowance of K dollars is to be deducted from this estimated tax for each dependent to obtain the net amount due. If d is the number of dependents, the net amount due can be expressed as', '${{xy\\over 100}{(A + B  - Kd)}}$', '${{xy(A + B)\\over 100} - {Kd}}$', '${{x\\over100}{(A - Kd)}+{y\\over100}{B-Kd}}$', '${{xA\\over 100}+{yB\\over 100}{Kd}}$', '${{xA\\over 100}+{yB\\over100}{(B - Kd)}}$', '${{xA\\over 100}+{yB\\over 100}{Kd}}$'),
(42, 2, 'If a man takes a trip X miles and his car averages Y miles per gallon, how much will gasoline cost for the trip when gasoline is t cents per gallon?', '${tXY}$', '${tX\\over Y}$', '${x\\over tY}$', '${XY\\over t}$', '${X - tY}$', '${tX\\over Y}$'),
(43, 2, 'The charge for postage on a certain class of mail is T cents for the first ounce and W cents for each ounce over one ounce. A special handling stamp for this class of mail costs Z cents. What will be the total cost in cents of mailing a package weighing R ounces(R is a whole number greater than one), with special handling?', '${T + Z + WR}$', '${T + Z + W + R}$', '${TR + WR + Z}$', '${T + W(R - 1) + Z}$', '${R(T+W) - Z}$', '${T + W(R - 1) + Z}$'),
(44, 2, 'If A is greater than B, and B is greater than C, and C is equal to D, and D is greater than E, which of the following represents the greatest value?', '${A\\over B}$', '${A\\over C}$', '${A\\over E}$', '${B\\over D}$', '${C\\over E}$', '${A\\over E}$'),
(45, 2, 'If in the expression A multipled by B, A is divided by a given positive number C, and B is multiplied by the same number C, the value of the product will', 'increase if A is greater than B', 'decrease if A is greater than B', 'remain constant regardless of the size of A and B', 'remain constant only if A equals B', 'be either larger or smaller depending on the value C', 'remain constant regardless of the size of A and B'),
(46, 2, 'S represents the speed of a fast assembly line and R represents the speed of a slow assembly line in units-per-hour. If t represents a period of time in hours, which one of the following formulas represents the number of extra units that could be processed through the faster assembly line in time t?', '${SR\\over t}$', '${{S\\over t}-{R\\over t}}$', '${St - Rt}$', '${St\\over R}$', '${S\\over Rt}$', '${St - Rt}$'),
(47, 2, 'Multiplying by 5 is the same as dividing by', '${.02}$', '${.50}$', '${2}$', '${.20}$', '${50}$', '${.20}$'),
(48, 2, 'A research scientist contracts with a computing center to have data analyzed. The IBM cards cost X dollars for 100 cards. The researcher knows he will need a total of 1250 cards. He will have to pay Y dollars per hour to a machine operator, who can punch  T cards per-hour. A flat rate of Z dollars is set for the machine-time needed. Which of the following represents his total cost for the project?', '${{X\\over 12.5}+{YT\\over 1250}+{Z}}$', '${{1250X}+{1250Y\\over T}+{Z}}$', '${{12.5X}+{Y(1250)\\over T}+{Z}}$', '${{100\\over 1250X}+{T\\over 1250Y}+{Z}}$', '${{12.5X}+{12.5Y\\over T}+{Z}}$', '${{12.5X}+{Y(1250)\\over T}+{Z}}$'),
(49, 2, 'The area of a triangle is determined by the following formula ${1\\over2}{bh}$ If the base b of a triangle is multiplied by 4 and the height h is divided by 2, the area of the new triangle', 'is 4 times the area of the original one', 'is ${1\\over 2}$ the area of the original one', 'is  ${1\\over 4}$ the area of the original one', 'remains constant', 'is twice the area of the original one', 'is twice the area of the original one'),
(50, 2, 'An appliance store owner sent out coupons worth $5 in trade, and circulars advertising refrigerators at D% discount from list price. If a customer bought a refrigerator having a list price of R dollars and presented the coupon as partial payment, which of the following represents the amount of cash he paid for the refrigerator.', '${R-100DR-5}$', '${R-{(DR)\\over 100}-5}$', '${R- {R\\over 100D} - 5}$', '${D(R-5)\\over 100}$', '${100(R-5)}$', '${R-{(DR)\\over 100}-5}$'),
(51, 2, '${Y={kxz\\over z}}$ If k and u are each multiplied by four, Y', 'is 4 times as large', 'is 8 times as large', 'is 16 times at large', 'remains the same', 'not of the above', 'remains the same'),
(52, 2, 'S dollars are divided among 4 persons so that each person after the first one receives $10 more than the preceding person. How much does the first person L receive?', '${S\\over 4L + 60}$', '${4(S-60)}$', '${S\\over 4L + 4Q}$', '${S - 60 \\over  4}$', '${S + 60 \\over  4}$', '${S - 60 \\over  4}$'),
(53, 2, 'S is a varying value in the expression 1/8 divided by S. If S is decreased by half of its own amount, the value of the whole expression will', 'increase by ${S\\over 2}$', 'decrease by ${S\\over 2}$', 'remain unchange', 'be divided by 2', 'double', 'double'),
(54, 2, 'If 4 out of 36 samples are below standard, the percentage of samples below standard is', '${11\\%}$', '${90\\%}$', '${9\\%}$', '${.9\\%}$', '${.11\\%}$', '${11\\%}$'),
(55, 2, 'The interest payment at the end of one year on a loan of D dollars is S dollars. Which of the following expressions shows the annual interest rate if it is expressed as a percentage?', '${100S\\over D}$', '${100D\\over S}$', '${SD\\over 100}$', '${SD}$', '${100SD}$', '${100S\\over D}$'),
(56, 2, 'The loss in electrical power in high-voltage transmission lines is given by the formula  ${L=l^2R}$. L represents the power loss. L the electric current, and R the resistance of the wire. If the current is decreased by half and the resistance of the wire remains the same , the power loss is', 'reduced by one-half value of l', 'divided by 2', 'multiplied by 2', 'change in some other way than those listed', 'divided by 4', 'divided by 4'),
(57, 2, 'If you attach an additional 5 at the extreme right of the expression 46.56, the ratio of the value of the new 5 as compared to the value of the 5 two places to its left is', '10 to 1', '100 to 1', '1 to 100', ' 1 to 10', '1 to 1000', '1 to 100'),
(58, 2, 'If a car travels m miles in h hours, how much time will it take for it to travel M miles?', '${{M\\over m } hours}$', '${{mh\\over M } hours}$', '${{M\\over h } hours}$', '${{Mh\\over m } hours}$', '${{Mm\\over h } hours}$', '${{Mh\\over m } hours}$'),
(59, 2, 'The product of all positive whole numbers from 1 to a given whole number x is written as x1. According to this, 41 equals', '${4.444}$', '${8}$', '${16}$', '${24}$', '${256}$', '${24}$'),
(60, 2, '<i style=\"font-weight: normal;\">In answering items 60, 61, and 62, suppose that instead of the ten digits represented by symbols 1, 2, 3, 4, 5, 6, 7 and 0, the number system contained only eight digits, represented by the following symbols: *, #, ), S, C, ( %, /. Use the meaning of the symbols as shown, and suppose the number system is based on a scale of 8 instead of a scale of 10, and that quantities larger than 7 must be represented by more than one digit.  														<br/> Symbol:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;#&nbsp;)&nbsp;S&nbsp;C&nbsp;(&nbsp;%&nbsp;/ 													<br/>Meaning: 1 2 3 4 5 6 7 0 												</i>												<br/>												<br/>\r\nUnder this new system, the number of fingers a person has would be represented as', '8', '*/', '**', '*#', 'none of the foregoing', '*#'),
(61, 2, '<i style=\"font-weight: normal;\">In answering items 60, 61, and 62, suppose that instead of the ten digits represented by symbols 1, 2, 3, 4, 5, 6, 7 and 0, the number system contained only eight digits, represented by the following symbols: *, #, ), S, C, ( %, /. Use the meaning of the symbols as shown, and suppose the number system is based on a scale of 8 instead of a scale of 10, and that quantities larger than 7 must be represented by more than one digit.  														<br/> Symbol:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;#&nbsp;)&nbsp;S&nbsp;C&nbsp;(&nbsp;%&nbsp;/ 													<br/>Meaning: 1 2 3 4 5 6 7 0 												</i>												<br/>												<br/>\r\nOur money systems is set up in such a way  that the basic unit (the dollar) is divided into 100 equal parts(cents). If the number system were based on a scale of 8, into how many equal parts would out basic money unit probably  have been divided?', '64', '80', '96', '100', '144', '64'),
(62, 2, '<i style=\"font-weight: normal;\">In answering items 60, 61, and 62, suppose that instead of the ten digits represented by symbols 1, 2, 3, 4, 5, 6, 7 and 0, the number system contained only eight digits, represented by the following symbols: *, #, ), S, C, ( %, /. Use the meaning of the symbols as shown, and suppose the number system is based on a scale of 8 instead of a scale of 10, and that quantities larger than 7 must be represented by more than one digit.  														<br/> Symbol:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;#&nbsp;)&nbsp;S&nbsp;C&nbsp;(&nbsp;%&nbsp;/ 													<br/>Meaning: 1 2 3 4 5 6 7 0 												</i>												<br/>												<br/>\r\nWhat quantity would #) represent?', '19', '21', '23', '25', 'none of the foregoing', '19'),
(63, 3, 'f o t g o s h o r I o', 'j', 'k', 'n', 'q', 'o', 'q'),
(64, 3, 'b a m b u m s a m s u m f', 'u', 'i', 'm', 'p', 'a', 'a'),
(65, 3, 'm o n p q s r t', 's', 't', 'u', 'b', 'w', 'u'),
(66, 3, 'e f g h j k l m', 'n', 'o', 'p', 'q ', 'r', 'o'),
(67, 3, 'a a t w d d q n g g b e', 'g', 'h', 'j', 'i', 'k', 'j'),
(68, 3, 'x y z u v w r s t', 'n', 'o', 'm', 'p', 'l', 'o'),
(69, 3, 'l l m m l l m n m l l m n o m', 'n', 'o', 'p', 'm', 'l', 'l'),
(70, 3, 'b c a d f g e h j k i', 'p', 'n', 'm', 'o', 'l', 'l'),
(71, 3, 'b c d a f g h e j k l', 'm', 'p', 'h', 'i', 'q', 'i'),
(72, 3, 'c t c d n d e k e f g', 'd', 'e', 'f', 'g', 'h', 'f'),
(73, 3, 'f f b n n d q p p f y y ', 'g', 'i', 'h', 'f', 'e', 'h'),
(74, 3, 'a e I m q u', 'v', 'y', 'x', 'z', 'w', 'y'),
(75, 3, 'a d g x a k p t a c n y', 'a', 'j', 'i', 'u', 'l', 'a'),
(76, 3, 'a v b s s c q d k k e m f r', 'g', 'p', 'r', 'n', 'f', 'r'),
(77, 3, 'x t v s h r g q e', 'p', 'b', 'v', 'n', 'd', 'p'),
(78, 3, 'a b v u c d e t s f g h i', 'r', 'o', 'k', 'q', 'j', 'r'),
(79, 3, 'd e g j n s', 'z', 'v', 'w', 'x', 'y', 'y'),
(80, 3, 'a z c w e t q g i', 'n', 'k', 'l', 'm', 'o', 'n'),
(81, 3, 'h m r k h p r n h s', 'q', 'r', 's', 't', 'u', 'r'),
(82, 3, 'b k o e m v o e g p', 'k', 'w', 'o', 'e', 'd', 'o'),
(83, 3, 'b h m q t', 'v', 'w', 'x', 'y', 'u', 'v'),
(84, 3, 'h h f h f o h f o d h', 'g', 'f', 'e', 'd', 'h', 'f'),
(85, 3, 'a c b e d h g l', 'k', 'm', 'n', 'l', 'j', 'k'),
(86, 3, 'c u d f v g j w k m x n q y r', 'x', 'z', 'w', 's', 't', 't'),
(87, 3, 'z v w s t p q', 'l', 'm', 'n', 'o', 'p', 'm'),
(88, 3, 'f a g j b k o c p', 'w', 'u', 's', 't ', 'v', 'u'),
(89, 4, '${10,099 + 99}$', '10,098', '10,198', '10,998', '11,990', NULL, '10,198'),
(90, 4, '${35 + 745 - 135}$', '880', '845', '680', '645', NULL, '645'),
(91, 4, '${.75 \\times 44,000}$', '33,000', '30,000', '3300', '330', NULL, '33,000'),
(92, 4, '${{25\\%} of 592}$ (approximate)', '15', '115', '125', '150', NULL, '150'),
(93, 4, '${625\\% of 7.79}$ (approximate)', '0.048', '4.08', '4.8', '48', NULL, '48'),
(94, 4, '${3876 \\div 12.84}$ (approximate)', '50', '100', '300', '500', NULL, '300'),
(95, 4, '${842.8 \\div 60.2}$', '14.0', '1.4', '0.14', '140', NULL, '14.0'),
(96, 4, '${22.9 + 43.6 - 2.9}$', '45.5', '54.5', '63.6', '69.4', NULL, '63.6'),
(97, 4, '${5.77\\% of 418}$ (approximate)', '2.4', '24', '70', '700', NULL, '24'),
(98, 4, '${2\\over7} \\times 5.04$', '14.4', '1.76', '1.44', '0.176', NULL, '1.44'),
(99, 4, '${1\\over8} {\\times 512} \\div .125$', '500', '300', '50', '33', NULL, '500'),
(100, 4, '${{6\\over48} \\div {48\\over12}}$', '${4-1\\over 8}$', '${1\\over 2}$', '${54\\over 60}$', '12', NULL, '${4-1\\over 8}$'),
(101, 4, '${412.26 \\div .2011}$ (approximate)', '20,000', '2000', '200', '20', NULL, '2000'),
(102, 4, '${2.904 + .0006}$', '2.9046', '2.910', '2.990', '3.000', NULL, '2.9046'),
(103, 4, '${364, 157 \\div 723}$ (approximate)', '50,300', '4990', '500', '60', NULL, '500'),
(104, 4, '${.25 \\times 1496} \\div {1\\over 4}$(approximate)', '112', '1200', '1500', '1700', NULL, '1500'),
(105, 4, '${55 \\times} {1\\over 1000}$', '5.5', '0.055', '0.005', '0.005', NULL, '0.055'),
(106, 4, '${.667 \\times 3289.2}$ (approximate)', '210', '1800', '2020', '2200', NULL, '2200'),
(107, 4, '${.799 \\times .256}$ (approximate)', '0.16', '0.2', '1.6', '20', NULL, '0.2'),
(108, 4, '${608 \\times 450}$ (approximate)', '3000', '24,000', '270,000', '2,400,000', NULL, '270,000'),
(109, 4, '${385 \\times 412\\div 792}$ (approximate)', '15', '20', '150', '200', NULL, '200'),
(110, 4, '${152.8 \\div} {1\\over 10}$ (approximate)', '1.5', '15', '150', '1500', NULL, '1500'),
(111, 4, '${124.8 \\div} {1\\over 8}$ (approximate)', '1000', '150', '100', '15', NULL, '1000'),
(112, 4, '${.0471 \\times 21.2}$', '9.9852', '0.99852', '0.099852', '0.0099852', NULL, '0.99852'),
(113, 4, '${.5\\% of 8604}$ (approximate)', '4.3', '43', '430', '4300', NULL, '43'),
(114, 4, '${{29-4\\over 33}{\\div 31}}$', '${1-2\\over 31}$', '${31\\over 33}$', '${31\\over 961}$', '${957\\over 31}$', NULL, '${31\\over 33}$'),
(115, 4, '${{.33} {\\div} {1\\over 6}}$ (approximate)', '3.8', '2.0', '1.8', '0.055', NULL, '2.0'),
(116, 4, '${{28-16+16}\\over {7-4+6}}$', '1', '${1-1\\over 4}$', '2', '${2-14\\over 17}$', NULL, '2'),
(117, 5, 'Which group does NOT BELONG', 'CCCC', 'NNNN', 'KLMN', 'TTTT', NULL, 'KLMN'),
(118, 5, 'The NEXT number is: 4 5 5 6 6 6?', '6', '9', '8', '7', NULL, '7'),
(119, 5, 'The NEXT number is: 42 40 38 36 34 32?', '30', '29', '26', '28', NULL, '30'),
(120, 5, 'The NEXT number is: abbcccdddd ?', 'c', 'e', 'd', 'f', NULL, 'e'),
(121, 5, 'The NEXT number is: 25 25 20 20 15 15 ?', '15', '11', '10', '12', NULL, '10'),
(122, 5, 'The NEXT number is: 20 2 18 2 16 2?', '12', '16', '15', '14', NULL, '14'),
(123, 5, 'The NEXT number is: 9 10 11 12 13 14 ?', '13', '14', '15', '16', NULL, '15'),
(124, 5, 'The NEXT number is: 3 6 9 12 15 18 ?', '21', '22', '19', '20', NULL, '21'),
(125, 5, 'Which group does NOT BELONG?', 'RSTT', 'FGHF', 'BCDD', 'KLMM', NULL, 'FGHF'),
(126, 5, 'The NEXT letter is: ababcdcdefef?', 'v', 'e', 'f', 'g', NULL, 'g'),
(127, 5, 'The NEXT letter is: abababab?', 'b', 'a', 'd', 'c', NULL, 'a'),
(128, 5, 'The NEXT number is: 25 24 23 22 21 20?', '18', '26', '19', '20', NULL, '19'),
(129, 5, 'Which group does NOT BELONG?', 'BXKM', 'OAIU', 'EAUO', 'UEIA', NULL, 'BXKM'),
(130, 5, 'Which group does NOT BELONG?', 'SPHS', 'SMCS', 'SLPS', 'TBMT', NULL, 'TBMT'),
(131, 5, 'The NEXT number is: 2 24 24 3 25 25?', '4', '26', '27', '3', NULL, '4'),
(132, 5, 'The NEXT number is: 26 22 20 16 14 10?', '12', '8', '9', '10', NULL, '8'),
(133, 5, 'Which group does NOT BELONG?', 'NOPQ', 'BCDE', 'ZHNA', 'TUYW', NULL, 'ZHNA'),
(134, 5, 'Which group does NOT BELONG?', 'GHHI', 'CDDE', 'STTU', 'LMNN', NULL, 'LMNN'),
(135, 5, 'The NEXT letter is fffffgggghhhi?', 'j', 'k', 'l', 'i', NULL, 'i'),
(136, 5, 'The NEXT number is: 1 2 4 8 16 32?', '64', '48', '96', '36', NULL, '64'),
(137, 5, 'The NEXT number is: 5 7 10 12 15 17?', '22', '23', '20', '21', NULL, '20'),
(138, 5, 'The NEXT number is: 13 5 14 6 15 7?', '8', '16', '12', '14', NULL, '16'),
(139, 5, 'The NEXT letter is: fsgshsis?', 'i', 's', 't', 'j', NULL, 'j'),
(140, 5, 'Which group does NOT BELONG?', 'PQRS', 'BCBC', 'WXWX', 'MNMN', NULL, 'PQRS'),
(141, 5, 'Which group does NOT BELONG?', 'JABK', 'WABX', 'APQB', 'MABN', NULL, 'APQB'),
(142, 5, 'The NEXT letter is: tsrqponm?', 'k', 'm', 'l', 'n', NULL, 'l'),
(143, 5, 'Which group does NOT BELONG?', 'LLMN', 'QRSS', 'UUVW', 'CCDE', NULL, 'QRSS'),
(144, 5, 'The NEXT number is: 27 26 28 25 29 24?', '30', '23', '25', '22', NULL, '30'),
(145, 5, 'The NEXT letter is: rrsttuvvwxxy?', 'y', 'z', 'WXWX', 'x', NULL, 'z'),
(146, 5, 'The NEXT number is: 1 2 6 7  11 12?', '14', '15', '16', '13', NULL, '16'),
(147, 5, 'Which group does NOT BELONG?', 'BLMN', 'SJKL', 'SVWX', 'SBCD', NULL, 'BLMN'),
(148, 5, 'The NEXT letter is ghighjghkgh?', 'i', 'g', 'm', 'l', NULL, 'l'),
(149, 5, 'Which group does NOT BELONG?', 'TSRQ', 'UVWX', 'HGFE', 'NMLK', NULL, 'UVWX'),
(150, 5, 'The NEXT letter is: xgwhviuj?', 'k', 'v', 'i', 't', NULL, 't'),
(151, 5, 'The NEXT letter is: rstarstbrst?', 'u', 'c', 'a', 'b', NULL, 'c'),
(152, 5, 'The NEXT letter is: abcxyzdefxyzghi?', 'j', 'k', 'x', 'z', NULL, 'x'),
(153, 5, 'The NEXT letter is: kkmmooqq?', 't', 's', 'u', 'r', NULL, 's'),
(154, 5, 'Which group does NOT BELONG?', 'MDWN', 'KGTK', 'FXBF', 'VJDV', NULL, 'MDWN'),
(155, 5, 'The NEXT letter is: bcbdedfgfhih?', 'g', 'h', 'i', 'j', NULL, 'j'),
(156, 5, 'Which group does NOT BELONG?', 'CWKR', 'KRWC', 'WRCK', 'HVBP', NULL, 'HVBP'),
(157, 5, 'The NEXT number is: 42 45 15 18 6 9?', '3', '12', '6', '9', NULL, '3'),
(158, 5, 'The NEXT letter is: dresftgu?', 'g', 'h', 'v', 'w', NULL, 'h'),
(159, 5, 'The NEXT letter is: dedfdgdh?', 'g', 'h', 'd', 'i', NULL, 'd'),
(160, 5, 'Which group does NOT BELONG?', 'DRSE', 'TGHU', 'MCND', 'KABL', NULL, 'MCND'),
(161, 5, 'Which group does NOT BELONG?', 'GHIJ', 'TYWK', 'KMNO', 'ACDE', NULL, 'GHIJ'),
(162, 5, 'The NEXT letter is: gikmoqs?', 'u', 'v', 'r', 't', NULL, 'u'),
(163, 5, 'The NEXT number is 3 6 11 18 27 38?', '49', '51', '42', '45', NULL, '51'),
(164, 5, 'Which group does NOT BELONG?', 'RSTQ', 'DEFC', 'VWXU', 'KLMH', NULL, 'KLMH'),
(165, 5, 'The NEXT letter is: klnoqrtu', 't', 'UVWX', 'v', 'w', NULL, 'w'),
(166, 5, 'The NEXT letter is: jklghidef?', 'a', 'b', 'c', 'd', NULL, 'a'),
(167, 5, 'Which group does NOT BELONG?', 'LKSR', 'WVHG', 'GNFM', 'DCYX', NULL, 'GNFM'),
(168, 5, 'The NEXT number is: 3 5 10 12 24 26?', '48', '52', '28', '36', NULL, '52'),
(169, 5, 'The NEXT number is: 7 6 8 24 6 5?', '10', '15', '7', '6', NULL, '7'),
(170, 5, 'Which group does NOT BELONG?', 'OVXE', 'ABDI', 'EFGU', 'IKMO', NULL, 'EFGU'),
(171, 6, 'I seem to have the same ideas as other people', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(172, 6, 'I tend to follow the rules', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(173, 6, 'I dislike discussing theories and concept', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(174, 6, 'I fail to push my own views and ideas', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(175, 6, 'I find it hard to put people at ease', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(176, 6, 'I forgot to ask people what they think', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(177, 6, 'I keep my personal emotions under control', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(178, 6, 'I tend to dislike working on my own', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(179, 6, 'I make decisions without gathering a lot of information', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(180, 6, 'I dislike successful people', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(181, 6, 'I find my values clash with those of my colleagues', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(182, 6, 'I leave jobs unfinished', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(183, 6, 'I find it hard to take decisions', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(184, 6, 'I can handle criticisms without getting defensive', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(185, 6, 'I dislike planning ahead', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(186, 6, 'I invent new ways of doing things', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(187, 6, 'I am prepared to ignore rules and procedures', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(188, 6, 'I like to let my imagination run free', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(189, 6, 'I tend to argue my own point of view', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(190, 6, 'I find other people support my ideas', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(191, 6, 'I praise people for their efforts', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(192, 6, 'I express my feelings rather than keep them to myself', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(193, 6, 'I like to solve my own problems', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(194, 6, 'I weigh up different options before taking decisions', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(195, 6, 'I set myself challenges', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(196, 6, 'I tend to feel a strong sense of duty', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(197, 6, 'I set myself high standards', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(198, 6, 'I feel in full control of things', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(199, 6, 'I worry about what others think of me', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(200, 6, 'I am keen to try new approaches', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(201, 6, 'I find it hard to see how to improve things', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(202, 6, 'I prefer established methods to new applications', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(203, 6, 'I tend to approach task from the usual angles', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(204, 6, 'I find it difficult to hold my ground against a group', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(205, 6, 'I find it difficult to mix in social situations', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(206, 6, 'I tend to ignore other people\'s feelings', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(207, 6, 'I keep my personal views about people to myself', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(208, 6, 'I work best as a member of a team', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(209, 6, 'I take decisions without necessarily establishing the facts', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(210, 6, 'I think a lot about the present rather than the future', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(211, 6, 'I am apt to treat people with authority insensitively', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(212, 6, 'I forgot to check the quality of my work', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(213, 6, 'I take decisions slowly', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(214, 6, 'I can take unpopular decisions without any difficulty', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(215, 6, 'I tend to be unrealistic about what I can achieve', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(216, 6, 'I am a person who originates changes', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(217, 6, 'I tend to challenge rules and procedures', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(218, 6, 'I am interested in new ideas and innovations', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(219, 6, 'I have strong views on how things should be done', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(220, 6, 'People seem to ask for my advice', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(221, 6, 'In a group, I acknowledge good points other people make', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(222, 6, 'I let people know how I feel about things', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(223, 6, 'I require a lot of personal space', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(224, 6, 'I tend to check the logic of my thinking', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(225, 6, 'I need to feel I am accomplishing something', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(226, 6, 'People have a responsibility to work hard for society', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(227, 6, 'I tend to be perfectionist in my work', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(228, 6, 'I take action when I see what needs to be done', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(229, 6, 'I feel threatened by people who don\'t like me', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(230, 6, 'I remain calm in different situations', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(231, 6, 'I have to work hard to make things happen', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(232, 6, 'I am inclined to do things in fairly conventional ways', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(233, 6, 'I dislike tackling complex tasks', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(234, 6, 'I hold back if I suspect people won\'t like what I say', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(235, 6, 'I tend to be unsure of the impact I have on people', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(236, 6, 'I forget to check people\'s views', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(237, 6, 'I keep quiet about my ambitions', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(238, 6, 'I enjoy working closely with people', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(239, 6, 'I fail to predit the consequences of my actions', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(240, 6, 'I dislike the competitive aspect of work', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(241, 6, 'Traditions prevent progress in modern society', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(242, 6, 'I miss deadlines', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(243, 6, 'I dislike being in charge', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(244, 6, 'I feel content about what I am achieving', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(245, 6, 'I tend to boast about my achievements', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(246, 6, 'I seem to have original ideas', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(247, 6, 'I am apt to make things up as I go along', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(248, 6, 'I tend to need change to stay interested', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(249, 6, 'I am inclined to look critically at people in charge', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(250, 6, 'I tend to take control when others are uncertain what to do', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(251, 6, 'I apologise when I have made a mistake', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(252, 6, 'I share my problems with other people', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(253, 6, 'I prefer to find out things by myself', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(254, 6, 'I approach things in a logical manner', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(255, 6, 'I like to win', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(256, 6, 'Attitude and respect is the way to win people\'s hearts', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(257, 6, 'I work harder than the average person', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(258, 6, 'I manage to cope with stress', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(259, 6, 'I feel a need to please others', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(260, 6, 'I treat people as my equal', 'Never', 'Occasionally', 'Fairly Often', 'Generally', 'Always', NULL),
(261, 7, 'How do you see your future five(5) years from now?', NULL, NULL, NULL, NULL, NULL, NULL),
(262, 7, 'How do you see your future if you will be joining Questronix Corporation?', NULL, NULL, NULL, NULL, NULL, NULL),
(263, 7, 'What are your personal and professional plans and programs?', NULL, NULL, NULL, NULL, NULL, NULL),
(264, 7, 'Identify the roles and functions of', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicantinfo`
--
ALTER TABLE `applicantinfo`
  ADD PRIMARY KEY (`app_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `applicantlogin`
--
ALTER TABLE `applicantlogin`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `applicantorg`
--
ALTER TABLE `applicantorg`
  ADD PRIMARY KEY (`org_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `applicantsecondary`
--
ALTER TABLE `applicantsecondary`
  ADD PRIMARY KEY (`educ_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `applicantseminar`
--
ALTER TABLE `applicantseminar`
  ADD PRIMARY KEY (`sem_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `applicanttertiary`
--
ALTER TABLE `applicanttertiary`
  ADD PRIMARY KEY (`tertiary_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `applicanttraining`
--
ALTER TABLE `applicanttraining`
  ADD PRIMARY KEY (`train_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `applicantwork`
--
ALTER TABLE `applicantwork`
  ADD PRIMARY KEY (`work_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `applicant_answers`
--
ALTER TABLE `applicant_answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `answer_id` (`answer_id`,`app_id`,`question_id`),
  ADD KEY `app_id` (`app_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `applicant_appliedjob`
--
ALTER TABLE `applicant_appliedjob`
  ADD PRIMARY KEY (`applied_id`),
  ADD KEY `app_id` (`app_id`,`job_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `essay_id` (`essay_id`);

--
-- Indexes for table `applicant_essay`
--
ALTER TABLE `applicant_essay`
  ADD PRIMARY KEY (`essay_id`),
  ADD KEY `essay_id` (`essay_id`,`app_id`,`question_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `applicant_manchester`
--
ALTER TABLE `applicant_manchester`
  ADD PRIMARY KEY (`mpe_id`),
  ADD KEY `mpe_id` (`mpe_id`,`app_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `applicant_technical`
--
ALTER TABLE `applicant_technical`
  ADD PRIMARY KEY (`appscore_id`),
  ADD KEY `appscore_id` (`appscore_id`),
  ADD KEY `app_id` (`app_id`),
  ADD KEY `examtype_id` (`examtype_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `exam_type`
--
ALTER TABLE `exam_type`
  ADD PRIMARY KEY (`examtype_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `question_id` (`question_id`,`examtype_id`),
  ADD KEY `examtype_id` (`examtype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicantinfo`
--
ALTER TABLE `applicantinfo`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `applicantorg`
--
ALTER TABLE `applicantorg`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicantsecondary`
--
ALTER TABLE `applicantsecondary`
  MODIFY `educ_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicantseminar`
--
ALTER TABLE `applicantseminar`
  MODIFY `sem_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicanttertiary`
--
ALTER TABLE `applicanttertiary`
  MODIFY `tertiary_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicanttraining`
--
ALTER TABLE `applicanttraining`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicantwork`
--
ALTER TABLE `applicantwork`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicant_answers`
--
ALTER TABLE `applicant_answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicant_appliedjob`
--
ALTER TABLE `applicant_appliedjob`
  MODIFY `applied_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicant_essay`
--
ALTER TABLE `applicant_essay`
  MODIFY `essay_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicant_manchester`
--
ALTER TABLE `applicant_manchester`
  MODIFY `mpe_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applicant_technical`
--
ALTER TABLE `applicant_technical`
  MODIFY `appscore_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `exam_type`
--
ALTER TABLE `exam_type`
  MODIFY `examtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `question_bank`
--
ALTER TABLE `question_bank`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicantlogin`
--
ALTER TABLE `applicantlogin`
  ADD CONSTRAINT `applicantlogin_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE CASCADE;

--
-- Constraints for table `applicantorg`
--
ALTER TABLE `applicantorg`
  ADD CONSTRAINT `applicantorg_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE CASCADE;

--
-- Constraints for table `applicantsecondary`
--
ALTER TABLE `applicantsecondary`
  ADD CONSTRAINT `applicantsecondary_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE CASCADE;

--
-- Constraints for table `applicantseminar`
--
ALTER TABLE `applicantseminar`
  ADD CONSTRAINT `applicantseminar_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE CASCADE;

--
-- Constraints for table `applicanttertiary`
--
ALTER TABLE `applicanttertiary`
  ADD CONSTRAINT `applicanttertiary_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE CASCADE;

--
-- Constraints for table `applicanttraining`
--
ALTER TABLE `applicanttraining`
  ADD CONSTRAINT `applicanttraining_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE CASCADE;

--
-- Constraints for table `applicantwork`
--
ALTER TABLE `applicantwork`
  ADD CONSTRAINT `applicantwork_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE CASCADE;

--
-- Constraints for table `applicant_answers`
--
ALTER TABLE `applicant_answers`
  ADD CONSTRAINT `applicant_answers_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`),
  ADD CONSTRAINT `applicant_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question_bank` (`question_id`);

--
-- Constraints for table `applicant_appliedjob`
--
ALTER TABLE `applicant_appliedjob`
  ADD CONSTRAINT `applicant_appliedjob_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`),
  ADD CONSTRAINT `applicant_appliedjob_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`),
  ADD CONSTRAINT `applicant_appliedjob_ibfk_3` FOREIGN KEY (`essay_id`) REFERENCES `applicant_essay` (`essay_id`);

--
-- Constraints for table `applicant_essay`
--
ALTER TABLE `applicant_essay`
  ADD CONSTRAINT `applicant_essay_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `applicant_manchester`
--
ALTER TABLE `applicant_manchester`
  ADD CONSTRAINT `applicant_manchester_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `applicant_technical`
--
ALTER TABLE `applicant_technical`
  ADD CONSTRAINT `applicant_technical_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `applicantinfo` (`app_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `applicant_technical_ibfk_2` FOREIGN KEY (`examtype_id`) REFERENCES `exam_type` (`examtype_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD CONSTRAINT `question_bank_ibfk_1` FOREIGN KEY (`examtype_id`) REFERENCES `exam_type` (`examtype_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
