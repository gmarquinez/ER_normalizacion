# Normalización 
## Indice

# Introducción
Este repositorio contiene informacion sobre normalización de diagramas relacionales.

# Diagrama de normalización.
## Actividad 
Convertir un modelo ER en un modelo relacional.
+ Gererar Codigo DDL asociado.
+  Verificar la Tercera forma normal.
+ Verificar la forma normal de Boyce-Codd.

## Respuesta
El siguiente modelo esta basado  en las entidades, Persona, Profesor, Alumno, Curso y Matricula.

# IMAGEN diagrama


## Descripcion

**1FN (Primera Forma Normal)**

 ### Tabla Persona.

| ID_Persona | Nombre | Apellido | Fecha_Nacimiento |
|------------|--------|----------|------------------|
| 1          | Ana    | Perez    | 1990-01-20       |
| 2          | Juan   | Lopez    | 1992-04-15       |
| 3          | Maria  | Garcia   | 1978-08-24       |
| 4          | Luis   | Rodriguez| 1980-07-12       |

 ### Tabla Alumno.
 
 | ID_Alumno | ID_Persona | Grado |
|-----------|------------|-------|
| 1         | 1          | 10    |
| 2         | 2          | 9     |

### Tabla Matricula

| ID_Matricula | ID_Alumno | ID_Curso | Año |
|--------------|-----------|----------|-----|
| 1            | 1         | 1        | 2023|
| 2            | 1         | 2        | 2023|
| 3            | 2         | 1        | 2023|


### Tabla Profesor

| ID_Profesor | ID_Persona | Departamento |
|-------------|------------|--------------|
| 1           | 3          | Matemáticas  |
| 2           | 4          | Literatura   |

### Tabla Curso 
| ID_Curso | Nombre_Curso | Descripcion |
|----------|--------------|-------------|
| 1        | Matemáticas  | Curso de matemáticas avanzadas |
| 2        | Literatura   | Curso de literatura contemporánea |

> Para las formas normales 2FN, 3FN y BCNF las tablas permanecerán las mismas, ya que no existen dependencias parciales ni transitivas en los datos. El modelo de datos ya cumple con todas estas formas normales.
