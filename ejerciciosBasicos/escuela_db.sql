/*
    Se crea la base de datos EscuelaDB
*/
CREATE DATABASE EscuelaBD

/*
    Se crea la tabla Estudiantes
    id tiene autoincremento
*/
CREATE TABLE Estudiantes(
    id int PRIMARY KEY IDENTITY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    edad INT NOT NULL
)

/*
    Se ingresa la información de tres estudiantes
*/
INSERT INTO Estudiantes VALUES(
    'Juan Alberto', 
    'Alvarez Mejia', 
    23
    )

INSERT INTO Estudiantes VALUES(
    'Miguel',
    'Hernandez Franco',
    12
)

INSERT INTO Estudiantes VALUES(
    'Luis Miguel',
    'Peñaranda Guarin',
    35
)

/*
    Mostramos la tabla Estudiantes con los nuevos estudiantes registrados
*/
SELECT * FROM Estudiantes

/*
    Actualizamos el nombre del estudiante con el id 2
*/
UPDATE Estudiantes SET nombres = 'Jose Jose'
WHERE id = 2

/*
    Eliminamos al estudiante con el id 1
*/
DELETE Estudiantes
WHERE id = 1

SELECT * FROM Estudiantes

/*
    Vaciamos la tabla Estudiantes
*/
TRUNCATE TABLE Estudiantes

/*
    Consultamos el primer identity
*/
SELECT IDENT_SEED('Estudiantes')

/*
    Consultamos el incremento
*/
SELECT IDENT_INCR('Estudiantes')

/*
    Eliminamos la tabla
*/
DROP TABLE Estudiantes
