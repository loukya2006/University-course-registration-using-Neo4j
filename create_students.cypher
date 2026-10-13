// Create students
CREATE (:Student {studentId:'S101', name:'Aarav Sharma', semester:5, email:'aarav@univ.edu'});
CREATE (:Student {studentId:'S102', name:'Priya Das', semester:5, email:'priya@univ.edu'});
CREATE (:Student {studentId:'S103', name:'Rahul Verma', semester:3, email:'rahul@univ.edu'});
CREATE (:Student {studentId:'S104', name:'Sneha Roy', semester:3, email:'sneha@univ.edu'});
CREATE (:Student {studentId:'S105', name:'Arjun Patel', semester:5, email:'arjun@univ.edu'});

// Create faculty
CREATE (:Faculty {facultyId:'F101', name:'Dr. Meera Sen',
designation:'Associate Professor', specialization:'Database Systems'});
CREATE (:Faculty {facultyId:'F102', name:'Dr. Amit Roy',
designation:'Assistant Professor', specialization:'Data Analytics'});

// Create courses
CREATE (:Course {courseCode:'CS301', title:'Graph Analytics', credits:3, level:'Advanced'});
CREATE (:Course {courseCode:'CS302', title:'Database Management Systems', credits:4, level:'Core'});
CREATE (:Course {courseCode:'CS303', title:'Data Mining', credits:3, level:'Advanced'});
CREATE (:Course {courseCode:'CS304', title:'Big Data Analytics', credits:4, level:'Advanced'});
CREATE (:Course {courseCode:'CS305', title:'NoSQL Databases', credits:3, level:'Core'});

// Create departments
CREATE (:Department {departmentId:'D101',
name:'Computer Science', building:'Block A'});
CREATE (:Department {departmentId:'D102',
name:'Information Technology', building:'Block B'});

// Match them
MATCH (s:Student {studentId:'S101'}), (c:Course {courseCode:'CS301'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:5, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S101'}), (c:Course {courseCode:'CS302'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:5, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S101'}), (c:Course {courseCode:'CS305'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:5, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S102'}), (c:Course {courseCode:'CS301'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:5, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S102'}), (c:Course {courseCode:'CS303'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:5, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S103'}), (c:Course {courseCode:'CS302'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:3, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S103'}), (c:Course {courseCode:'CS304'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:3, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S104'}), (c:Course {courseCode:'CS303'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:3, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S104'}), (c:Course {courseCode:'CS305'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:3, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S105'}), (c:Course {courseCode:'CS301'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:5, grade:'Not Published'}]->(c);

MATCH (s:Student {studentId:'S105'}), (c:Course {courseCode:'CS304'})
CREATE (s)-[:ENROLLED_IN {semesterEnrolled:5, grade:'Not Published'}]->(c);

//student enrollment 

MATCH (f:Faculty {facultyId:'F101'}), (c:Course {courseCode:'CS302'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

MATCH (f:Faculty {facultyId:'F101'}), (c:Course {courseCode:'CS305'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

MATCH (f:Faculty {facultyId:'F102'}), (c:Course {courseCode:'CS301'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

MATCH (f:Faculty {facultyId:'F102'}), (c:Course {courseCode:'CS303'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

MATCH (f:Faculty {facultyId:'F102'}), (c:Course {courseCode:'CS304'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

//faculty-teaching assignments
MATCH (f:Faculty {facultyId:'F101'}), (c:Course {courseCode:'CS302'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

MATCH (f:Faculty {facultyId:'F101'}), (c:Course {courseCode:'CS305'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

MATCH (f:Faculty {facultyId:'F102'}), (c:Course {courseCode:'CS301'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

MATCH (f:Faculty {facultyId:'F102'}), (c:Course {courseCode:'CS303'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

MATCH (f:Faculty {facultyId:'F102'}), (c:Course {courseCode:'CS304'})
CREATE (f)-[:TEACHES {academicYear:'2026-27'}]->(c);

//student-dept relationships
MATCH (s:Student {studentId:'S101'}), (d:Department {departmentId:'D101'})
CREATE (s)-[:BELONGS_TO]->(d);

MATCH (s:Student {studentId:'S102'}), (d:Department {departmentId:'D101'})
CREATE (s)-[:BELONGS_TO]->(d);

MATCH (s:Student {studentId:'S103'}), (d:Department {departmentId:'D101'})
CREATE (s)-[:BELONGS_TO]->(d);

MATCH (s:Student {studentId:'S104'}), (d:Department {departmentId:'D102'})
CREATE (s)-[:BELONGS_TO]->(d);

MATCH (s:Student {studentId:'S105'}), (d:Department {departmentId:'D102'})
CREATE (s)-[:BELONGS_TO]->(d);

//dept-course relationships
MATCH (d:Department {departmentId:'D101'}), (c:Course {courseCode:'CS302'})
CREATE (d)-[:OFFERS]->(c);

MATCH (d:Department {departmentId:'D101'}), (c:Course {courseCode:'CS303'})
CREATE (d)-[:OFFERS]->(c);

MATCH (d:Department {departmentId:'D101'}), (c:Course {courseCode:'CS305'})
CREATE (d)-[:OFFERS]->(c);

MATCH (d:Department {departmentId:'D102'}), (c:Course {courseCode:'CS301'})
CREATE (d)-[:OFFERS]->(c);

MATCH (d:Department {departmentId:'D102'}), (c:Course {courseCode:'CS304'})
CREATE (d)-[:OFFERS]->(c);

//display the complete graph 
MATCH (n)-[r]->(m)
RETURN n, r, m;

//count nodes 
MATCH (n)
RETURN labels(n) AS Label, count(n) AS TotalNodes;

//relationship type 
MATCH (a)-[r]->(b)
RETURN DISTINCT labels(a) AS FromLabel,
type(r) AS Relationship,
labels(b) AS ToLabel;

//retrieval
MATCH (s:Student)
WHERE s.semester = 5
RETURN s.name AS StudentName, s.email AS Email;

//courses with more than 3 credits 
MATCH (c:Course)
WHERE c.credits > 3
RETURN c.title AS Course, c.credits AS Credits;

//courses taught by Dr.Meera Sen 
MATCH (f:Faculty {name:'Dr. Meera Sen'})-[:TEACHES]->(c:Course)
RETURN c.title AS Course;

//students enrolled in graph analytics 
MATCH (s:Student)-[:ENROLLED_IN]->(c:Course {title:'Graph Analytics'})
RETURN s.name AS StudentName;

//students belonging to computer science
MATCH (s:Student)-[:BELONGS_TO]->(d:Department {name:'Computer Science'})
RETURN s.name AS StudentName;

//courses offered by IT 
MATCH (d:Department {name:'Information Technology'})-[:OFFERS]->(c:Course)
RETURN c.title AS Course;

//Students enrolled in NoSQL Databases, with semester and grade
MATCH (s:Student)-[r:ENROLLED_IN]->(c:Course {title:'NoSQL Databases'})
RETURN s.name AS StudentName,
       r.semesterEnrolled AS Semester,
       r.grade AS Grade;

//Students enrolled in Graph Analytics and at least one other course
MATCH (s:Student)-[:ENROLLED_IN]->(c:Course {title:'Graph Analytics'})
MATCH (s)-[:ENROLLED_IN]->(other:Course)
WHERE other.courseCode <> c.courseCode
RETURN DISTINCT s.name AS StudentName;
