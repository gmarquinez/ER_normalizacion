# Normalization

# Introduction
This repository contains information on relational diagram normalization.

# Activity
Convert an ER model to a relational model.
+ Generate associated DE Code.
+ Verify Third Normal Form.
+ Verify Boyce-Codd normal form.

## Answer
The following model is based on the entities, Person, Teacher, Student, Course and Enrollment.

# Normalization diagram.
![Modelo ER](images/ER_normalizacion.jpg)

## Description
The entities in the model are the following:

+ Person: Represents a person with attributes such as ID_Person (unique identifier), Name, Surname and Date_Birth.
+ Student: Represents a student with attributes such as Student_ID (unique identifier), Person_ID (foreign key for the Person table), and Grade.
+ Teacher: Represents a teacher with attributes such as ID_Professor (unique identifier), ID_Person (foreign key for the Person table) and Department.
+ Course: Represents a course with attributes such as Course_ID (unique identifier), Course_Name and Description.
+ Enrollment: Represents a student's enrollment in a course, with attributes such as ID_Matricula (unique identifier), ID_Student (foreign key for the Student table), ID_Curso (foreign key for the Course table) and Year.

**1FN (First Normal Form)**

  ### Table Person.


| ID_Persona | Nombre | Apellido | Fecha_Nacimiento |
|------------|--------|----------|------------------|
| 1          | Ana    | Perez    | 1990-01-20       |
| 2          | Juan   | Lopez    | 1992-04-15       |
| 3          | Maria  | Garcia   | 1978-08-24       |
| 4          | Luis   | Rodriguez| 1980-07-12       |

### Student Table.
 
 | ID_Alumno | ID_Persona | Grado |
|-----------|------------|-------|
| 1         | 1          | 10    |
| 2         | 2          | 9     |

### Enrollment Table

| ID_Matricula | ID_Alumno | ID_Curso | Año |
|--------------|-----------|----------|-----|
| 1            | 1         | 1        | 2023|
| 2            | 1         | 2        | 2023|
| 3            | 2         | 1        | 2023|


### Teacher Table

| ID_Profesor | ID_Persona | Departamento |
|-------------|------------|--------------|
| 1           | 3          | Matemáticas  |
| 2           | 4          | Literatura   |


### Course Table

| ID_Curso | Nombre_Curso | Descripcion |
|----------|--------------|-------------|
| 1        | Matemáticas  | Curso de matemáticas avanzadas |
| 2        | Literatura   | Curso de literatura contemporánea |


+ First Normal Form (1NF):
Tables are 1NF compliant as all data is arranged in tables and each cell contains a single atomic value. In addition, primary keys are identified in each table to guarantee the uniqueness of the records.

+ Second Normal Form (2NF):
The tables comply with the 2NF since there is no partial dependency on any of them. The attributes in each table are completely dependent on the respective primary keys. For example, in the Enrollment table, all the attributes depend directly on the composite primary key (ID_Matricula, ID_Alumno, ID_Curso).

+ Third Normal Form (3NF):
Tables are also 3NF compliant since there are no transitive dependencies between attributes. Each attribute depends directly on the corresponding primary key. For example, in the Student table, the Grade attribute depends directly on the Student_ID primary key.

+ Boyce-Codd Normal Form (BCNF):
Depending on the structure of the tables, they also conform to Boyce-Codd Normal Form (BCNF). This means that there are no non-trivial functional dependencies on tables that are not determined by primary keys. Each non-key attribute is completely dependent on the corresponding primary keys.

>There are no partial or transitive dependencies in the data.
  The data model already complies with all these normal forms.