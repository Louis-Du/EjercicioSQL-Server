-- =========================
-- QUERIES.sql
-- =========================

--Ejercicio 7.1--
select fechaActividad, nombreAsignatura from Actividades, Profesor, Asignaturas
where Asignaturas.nitAsignatura = Profesor.nitAsignatura
and Actividades.nitAsignatura = Asignaturas.nitAsignatura
and Actividades.tipoActividad = 'Taller' and Profesor.apellidoProfesor = 'Núñez'
group by fechaActividad, nombreAsignatura

--Ejercicio 7.2--
SELECT DISTINCT Profesor.nombreProfesor, Profesor.apellidoProfesor, Cursos.jornadaCurso
FROM Profesor, Asignaturas, Actividades, Cursos, CursosAsignaturas
WHERE Profesor.nitAsignatura = Asignaturas.nitAsignatura 
and Actividades.nitAsignatura = Asignaturas.nitAsignatura 
and Asignaturas.nitAsignatura = CursosAsignaturas.nitAsignatura
and CursosAsignaturas.codigoCurso = Cursos.codigoCurso
and Asignaturas.nombreAsignatura = 'Algoritmo'
and Actividades.fechaActividad between '2025-08-20' and '2025-08-22';

--Ejercicio 7.3--
update Actividades set nombreActividad = 'Exposición modelos de BD' where fechaActividad  = '2026-02-05'

--Ejercicio 7.4--
select tipoActividad, nombreProfesor from Actividades, Asignaturas, Cursos, Profesor, CursosAsignaturas
where Actividades.nitAsignatura = Asignaturas.nitAsignatura
and Cursos.codigoCurso = CursosAsignaturas.codigoCurso
and CursosAsignaturas.nitAsignatura = Asignaturas.nitAsignatura
and Profesor.nitAsignatura = Asignaturas.nitAsignatura
and nombreAsignatura = 'Inglés' 
and nombreCurso = 'Sexto 01'
and fechaActividad = '2025-02-05'

--Ejercicio 7.5--
select fechaActividad from Actividades, Asignaturas, Cursos, CursosAsignaturas
where Actividades.nitAsignatura = Asignaturas.nitAsignatura
and CursosAsignaturas.nitAsignatura = Asignaturas.nitAsignatura
and CursosAsignaturas.codigoCurso = Cursos.codigoCurso
and nombreAsignatura = 'Castellano'
and nombreCurso = 'Sexto 02'

--Ejercicio 7.6--
delete from Calificacion where fechaCalificacion between '2025-08-19' and '2025-08-20'
Select * from Calificacion where fechaCalificacion between '2025-08-19' and '2025-08-20'

--Ejercicio 7.7--
select avg (cast (Estudiantes.edadEstudiantes as float)) as Promedio_edad_mujeres from Estudiantes 
where generoEstudiantes = 'Femenino'


-- 7.8 Mostrar el valor de la calificación que obtuvo el estudiante Juan Gómez 
-- en la actividad de tipo quiz 
-- de la asignatura algoritmo 
-- del curso once 01 
-- y el nombre del profesor que publicó la actividad.
SELECT Calificacion.notaCalificacion, Profesor.nombreProfesor, Profesor.apellidoProfesor
FROM Calificacion, Estudiantes, Actividades, Asignaturas, Cursos, Profesor, CursosAsignaturas
WHERE Estudiantes.nombreEstudiantes = 'Juan Gómez'
AND Estudiantes.codigoCurso = Cursos.codigoCurso
AND Cursos.nombreCurso = 'Once 01'
AND Cursos.codigoCurso = CursosAsignaturas.codigoCurso
AND CursosAsignaturas.nitAsignatura = Asignaturas.nitAsignatura
AND Asignaturas.nombreAsignatura = 'Algoritmo'
AND Asignaturas.nitAsignatura = Actividades.nitAsignatura
AND Actividades.idActividades = Calificacion.idActividades
AND Calificacion.idEstudiantes = Estudiantes.idEstudiantes
AND Actividades.tipoActividad = 'Quiz'
AND Profesor.nitAsignatura = Asignaturas.nitAsignatura;

-- 7.9 Mostrar los nombres de los estudiantes con 
-- mayor promedio de calificaciones en la 
-- actividad de tipo examen en la asignatura matemáticas 
-- y el nombre y jornada del curso al que pertenecen.
SELECT nombreEstudiantes, AVG(notaCalificacion) as 'Promedio de calificaciones', nombreCurso, jornadaCurso 
FROM Estudiantes, Calificacion, Actividades, Asignaturas, Cursos
WHERE Estudiantes.idEstudiantes = Calificacion.idEstudiantes
and Calificacion.idActividades = Actividades.idActividades
and Actividades.tipoActividad = 'Examen'
and Actividades.nitAsignatura = Asignaturas.nitAsignatura
and Asignaturas.nombreAsignatura = 'Matemáticas'
and Estudiantes.codigoCurso = Cursos.codigoCurso 
GROUP BY nombreEstudiantes, nombreCurso, jornadaCurso 


-- 7.10 Mostrar el número de estudiantes del grado séptimo 01, 
-- que obtuvieron entre 3 y 4.5 en el valor 
-- de la calificación de la actividad de tipo exposición de la asignatura ciencias 
-- y el nombre del profesor que orienta la asignatura.
SELECT COUNT(DISTINCT Estudiantes.idEstudiantes) 'Cantidad de estudiantes con notas entre 3 y 4.5', nombreProfesor 
FROM Estudiantes, Cursos, Calificacion, Actividades, Asignaturas, CursosAsignaturas, Profesor
WHERE Calificacion.notaCalificacion BETWEEN 3 and 4.5
and Calificacion.idActividades = Actividades.idActividades
and Actividades.tipoActividad = 'Exposición'
and Actividades.nitAsignatura = Asignaturas.nitAsignatura
and Asignaturas.nombreAsignatura = 'Ciencias'
and Asignaturas.nitAsignatura = Profesor.nitAsignatura
and Cursos.nombreCurso = 'Séptimo 01'
and Cursos.codigoCurso = Estudiantes.codigoCurso
and Estudiantes.idEstudiantes = Calificacion.idEstudiantes
group by Profesor.nombreProfesor

--Ejercicio 7.11--
select count (nombreEstudiantes) as 'Estudiante masculinos en Octavo 02'
from Estudiantes, Cursos
where Estudiantes.codigoCurso = Cursos.codigoCurso
and nombreCurso = 'Octavo 02'
and generoEstudiantes = 'Masculino'

--Ejercicio 7.12--
select top 3 notaCalificacion, nombreEstudiantes from Estudiantes, Calificacion, Cursos, Asignaturas, CursosAsignaturas, Actividades
where Estudiantes.codigoCurso = Cursos.codigoCurso
and Calificacion.idActividades = Actividades.idActividades
and Calificacion.idEstudiantes = Estudiantes.idEstudiantes
and Cursos.codigoCurso = CursosAsignaturas.codigoCurso
and Asignaturas.nitAsignatura = CursosAsignaturas.nitAsignatura
and Actividades.nitAsignatura = Asignaturas.nitAsignatura
and nombreAsignatura = 'Química'
and nombreCurso = 'Once 02'
order by notaCalificacion

-- 7.13 Mostrar el promedio de las calificaciones que obtuvo el estudiante María Ramos 
-- en las actividades de la asignatura algoritmo, 
-- junto con el nombre del curso al que pertenece la estudiante.

SELECT AVG(notaCalificacion) as 'Promedio de notas de actividades', nombreCurso 
FROM Calificacion, Estudiantes, Actividades, Asignaturas, Cursos
WHERE Calificacion.idEstudiantes = Estudiantes.idEstudiantes
and Estudiantes.nombreEstudiantes = 'María Ramos'
and Calificacion.idActividades = Actividades.idActividades
and Actividades.nitAsignatura = Asignaturas.nitAsignatura
and Asignaturas.nombreAsignatura = 'Algoritmo'
and Estudiantes.codigoCurso = Cursos.codigoCurso 
GROUP BY nombreCurso 

-- 7.14 Mostrar los nombres de las asignaturas pertenecientes al grado décimo 01, 
-- junto con los nombres de los profesores que orientan cada asignatura 
-- y la cantidad de actividades de aprendizaje publicadas en cada asignatura.
SELECT nombreAsignatura, nombreProfesor, COUNT(distinct idActividades) as 'Cantidad total de actividades' 
FROM Asignaturas, Cursos, CursosAsignaturas, Profesor, Actividades
WHERE Asignaturas.nitAsignatura = CursosAsignaturas.nitAsignatura
and CursosAsignaturas.codigoCurso = Cursos.codigoCurso 
and Cursos.nombreCurso = 'Décimo 01'
and Asignaturas.nitAsignatura = Profesor.nitAsignatura
and Asignaturas.nitAsignatura = Actividades.nitAsignatura
GROUP BY nombreAsignatura, nombreProfesor


select * from Cursos
select * from CursosAsignaturas
select * from Profesor
select * from Estudiantes
select * from Asignaturas
select * from Actividades
select * from Calificacion














