-- Tabla Persona
CREATE TABLE Persona (
  ID_Persona INT PRIMARY KEY,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  Fecha_Nacimiento DATE
);

-- Tabla Alumno
CREATE TABLE Alumno (
  ID_Alumno INT PRIMARY KEY,
  ID_Persona INT,
  Grado INT,
  FOREIGN KEY (ID_Persona) REFERENCES Persona(ID_Persona)
);

-- Tabla Profesor
CREATE TABLE Profesor (
  ID_Profesor INT PRIMARY KEY,
  ID_Persona INT,
  Departamento VARCHAR(50),
  FOREIGN KEY (ID_Persona) REFERENCES Persona(ID_Persona)
);

-- Tabla Curso
CREATE TABLE Curso (
  ID_Curso INT PRIMARY KEY,
  Nombre_Curso VARCHAR(50),
  Descripcion VARCHAR(100)
);

-- Tabla Matricula
CREATE TABLE Matricula (
  ID_Matricula INT PRIMARY KEY,
  ID_Alumno INT,
  ID_Curso INT,
  Anio INT,
  FOREIGN KEY (ID_Alumno) REFERENCES Alumno(ID_Alumno),
  FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);
