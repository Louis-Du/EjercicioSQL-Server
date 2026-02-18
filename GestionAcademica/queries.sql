-- =========================
-- QUERIES.sql
-- =========================

-- 7.1 Taller del profesor Núñez
SELECT fechaActividad, nombreAsignatura
FROM Actividades A
JOIN Asignaturas Asig ON A.nitAsignatura = Asig.nitAsignatura
JOIN Profesor P ON Asig.nitAsignatura = P.nitAsignatura
WHERE A.tipoActividad = 'Taller'
AND P.apellidoProfesor = 'Núñez';

-- 7.2 Profesor Algoritmo entre fechas
SELECT nombreProfesor, jornadaCurso
FROM Profesor P
JOIN Asignaturas A ON P.nitAsignatura = A.nitAsignatura
JOIN CursosAsignaturas CA ON A.nitAsignatura = CA.nitAsignatura
JOIN Cursos C ON CA.codigoCurso = C.codigoCurso
JOIN Actividades Act ON A.nitAsignatura = Act.nitAsignatura
WHERE A.nombreAsignatura = 'Algoritmo'
AND Act.fechaActividad BETWEEN '2025-08-20' AND '2025-08-22';

-- 7.7 Promedio edad mujeres
SELECT AVG(CAST(edadEstudiantes AS FLOAT)) AS PromedioEdadMujeres
FROM Estudiantes
WHERE generoEstudiantes = 'Femenino';

-- 7.8 Nota Juan Gómez Quiz Algoritmo Once 01
SELECT Cal.notaCalificacion, P.nombreProfesor, P.apellidoProfesor
FROM Calificacion Cal
JOIN Estudiantes E ON Cal.idEstudiantes = E.idEstudiantes
JOIN Actividades A ON Cal.idActividades = A.idActividades
JOIN Asignaturas Asig ON A.nitAsignatura = Asig.nitAsignatura
JOIN Cursos C ON E.codigoCurso = C.codigoCurso
JOIN Profesor P ON Asig.nitAsignatura = P.nitAsignatura
WHERE E.nombreEstudiantes = 'Juan Gómez'
AND C.nombreCurso = 'Once 01'
AND Asig.nombreAsignatura = 'Algoritmo'
AND A.tipoActividad = 'Quiz';

-- 7.11 Estudiantes masculinos Octavo 02
SELECT COUNT(*) AS EstudiantesMasculinos
FROM Estudiantes E
JOIN Cursos C ON E.codigoCurso = C.codigoCurso
WHERE C.nombreCurso = 'Octavo 02'
AND E.generoEstudiantes = 'Masculino';
