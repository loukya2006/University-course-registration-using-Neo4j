# University Course Registration System Using Neo4j

## Project Overview

This project implements a University Course Registration System using Neo4j, a graph database, and the Cypher query language.

The system represents students, faculty members, courses, and academic departments as nodes and connects them through relationships.

## Objectives

- Create nodes for students, faculty, courses, and departments.
- Establish relationships between the nodes.
- Assign properties to student enrolments and faculty teaching relationships.
- Retrieve and filter information using Cypher queries.
- Verify node counts, relationship types, and graph structure.

## Technologies Used

- Neo4j
- Cypher Query Language

## Database Entities

| Node Label | Description |
|---|---|
| Student | Stores student details |
| Faculty | Stores faculty details |
| Course | Stores course information |
| Department | Stores department details |

## Relationships

| Relationship | Direction | Description |
|---|---|---|
| ENROLLED_IN | Student → Course | Represents student enrolment |
| TEACHES | Faculty → Course | Represents faculty teaching assignments |
| BELONGS_TO | Student → Department | Represents the student's department |
| OFFERS | Department → Course | Represents courses offered by a department |

The ENROLLED_IN relationship includes the properties `semesterEnrolled` and `grade`. The TEACHES relationship includes the property `academicYear`.

## Project Structure

- `queries/` – Contains the Cypher query files used to create nodes, establish relationships, and retrieve information.
- `screenshots/` – Contains screenshots of the executed queries and their results.

## How to Run the Project

1. Open Neo4j Browser and connect to a running database.
2. Open the Cypher files in the `queries` folder.
3. Execute the node creation queries.
4. Execute the relationship creation queries.
5. Run the verification queries to check the graph structure.
6. Execute the retrieval and filtering queries.
7. View the results in Neo4j Browser.

Run the creation queries only once on a fresh database to avoid duplicate nodes and relationships.

## Queries Implemented

The project includes queries to:

- Create and connect graph nodes.
- Display the complete graph.
- Count nodes by label.
- Verify relationship types and directions.
- Retrieve students by semester.
- Find courses based on credit requirements.
- Retrieve courses taught by a faculty member.
- Find students enrolled in specific courses.
- Retrieve students by department.
- Find courses offered by a department.
- Display enrolment semester and grade properties.
- Identify students enrolled in Graph Analytics and at least one additional course.

## Screenshots

The `screenshots/` folder contains the outputs of the graph creation, verification, and retrieval queries executed in Neo4j Browser.

## Conclusion

This project demonstrates how Neo4j and Cypher can be used to model a university course registration system. The graph structure makes it possible to represent and query relationships among students, faculty members, courses, and departments.
