/*
Author: Nyaberi Brian
Zeraki Assessments Task
Sql task

a) Use the diagram above to create the tables (the database, table and column names should remain
as indicated)
b) Write a MySQL query that will display the number of students per course per institution in the
format below
*/


--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `institution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE `institution` (
  `institutionid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`institutionid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);



ALTER TABLE `student` ADD CONSTRAINT `student_fk0` FOREIGN KEY (`course`) REFERENCES `course`(`courseid`);

ALTER TABLE `course` ADD CONSTRAINT `course_fk0` FOREIGN KEY (`institution`) REFERENCES `institution`(`institutionid`);

COMMIT;

select('name')
from('institution')
join('course', 'course.institution = institution.institutionid')
join('student', 'student.course = course.courseid');

