-- =========================
-- DATA.sql
-- =========================

CREATE DATABASE GestionAcademica
GO

-- =========================
-- TABLAS
-- =========================

CREATE TABLE Cursos (
    codigoCurso INT PRIMARY KEY,
    nombreCurso VARCHAR(50) NOT NULL,
    jornadaCurso VARCHAR(50) NOT NULL
)

CREATE TABLE Asignaturas (
    nitAsignatura INT PRIMARY KEY,
    nombreAsignatura VARCHAR(50) NOT NULL
)

CREATE TABLE Profesor(
    idProfesor INT PRIMARY KEY,
    nombreProfesor VARCHAR(50) NOT NULL,
    apellidoProfesor VARCHAR(50) NOT NULL,
    edadProfesor INT NOT NULL,
    telefonoProfesor BIGINT NOT NULL,
    emailProfesor VARCHAR(50) NOT NULL,
    generoProfesor VARCHAR(50) NOT NULL,
    nitAsignatura INT NOT NULL,
    FOREIGN KEY (nitAsignatura) REFERENCES Asignaturas(nitAsignatura)
)

CREATE TABLE Actividades (
    idActividades INT PRIMARY KEY,
    tipoActividad VARCHAR(50) NOT NULL,
    nombreActividad VARCHAR(50) NOT NULL,
    fechaActividad DATE NOT NULL,
    nitAsignatura INT NOT NULL,
    FOREIGN KEY (nitAsignatura) REFERENCES Asignaturas(nitAsignatura)
)

CREATE TABLE Estudiantes (
    idEstudiantes INT PRIMARY KEY,
    nombreEstudiantes VARCHAR(50) NOT NULL,
    edadEstudiantes INT NOT NULL,
    telefonoEstudiantes BIGINT NOT NULL,
    emailEstudiantes VARCHAR(50) NOT NULL,
    generoEstudiantes VARCHAR(50) NOT NULL,
    codigoCurso INT NOT NULL,
    FOREIGN KEY (codigoCurso) REFERENCES Cursos(codigoCurso)
)

CREATE TABLE CursosAsignaturas (
    nitAsignatura INT NOT NULL,
    codigoCurso INT NOT NULL,
    PRIMARY KEY (nitAsignatura, codigoCurso),
    FOREIGN KEY (nitAsignatura) REFERENCES Asignaturas(nitAsignatura),
    FOREIGN KEY (codigoCurso) REFERENCES Cursos(codigoCurso)
)

CREATE TABLE Calificacion (
    idCalificacion INT PRIMARY KEY,
    notaCalificacion DECIMAL(3,1) NOT NULL,
    fechaCalificacion DATE NOT NULL,
    idActividades INT NOT NULL,
    idEstudiantes INT NOT NULL,
    FOREIGN KEY (idActividades) REFERENCES Actividades(idActividades),
    FOREIGN KEY (idEstudiantes) REFERENCES Estudiantes(idEstudiantes)
)
