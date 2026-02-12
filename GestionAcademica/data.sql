-------------------------------------------------
-- CURSOS
-------------------------------------------------
INSERT INTO Cursos VALUES
(601, 'Sexto 01', 'Mañana'),
(602, 'Sexto 02', 'Tarde'),
(701, 'Séptimo 01', 'Mañana'),
(702, 'Séptimo 02', 'Tarde'),
(802, 'Octavo 02', 'Mañana'),
(1001, 'Décimo 01', 'Mañana'),
(1101, 'Once 01', 'Tarde'),
(1102, 'Once 02', 'Mañana');

-------------------------------------------------
-- ASIGNATURAS
-------------------------------------------------
INSERT INTO Asignaturas VALUES
(1, 'Algoritmo'),
(2, 'Inglés'),
(3, 'Castellano'),
(4, 'Ética'),
(5, 'Matemáticas'),
(6, 'Ciencias'),
(7, 'Química');

-------------------------------------------------
-- PROFESORES
-------------------------------------------------
INSERT INTO Profesor VALUES
(1, 'Oscar', 'Núñez', 45, 3001111111, 'oscar@correo.com', 'Masculino', 1),
(2, 'Laura', 'Martínez', 38, 3002222222, 'laura@correo.com', 'Femenino', 2),
(3, 'Carlos', 'Pérez', 50, 3003333333, 'carlos@correo.com', 'Masculino', 3),
(4, 'Ana', 'Gómez', 42, 3004444444, 'ana@correo.com', 'Femenino', 4),
(5, 'Luis', 'Ramírez', 39, 3005555555, 'luis@correo.com', 'Masculino', 5),
(6, 'Marta', 'Torres', 41, 3006666666, 'marta@correo.com', 'Femenino', 6),
(7, 'Pedro', 'Sánchez', 48, 3007777777, 'pedro@correo.com', 'Masculino', 7);

-------------------------------------------------
-- CURSOS ASIGNATURAS
-------------------------------------------------
INSERT INTO CursosAsignaturas VALUES
(1, 601),(1, 701),(1, 1101),
(2, 601),
(3, 602),
(4, 702),
(5, 1001),
(6, 701),
(7, 1102);

-------------------------------------------------
-- ESTUDIANTES
-------------------------------------------------
INSERT INTO Estudiantes VALUES
(1, 'Juan Gómez', 16, 3011111111, 'juan@correo.com', 'Masculino', 1101),
(2, 'María Ramos', 15, 3012222222, 'maria@correo.com', 'Femenino', 1001),
(3, 'Laura Díaz', 14, 3013333333, 'laura@correo.com', 'Femenino', 1001),
(4, 'Carlos Ruiz', 13, 3014444444, 'carlos@correo.com', 'Masculino', 701),
(5, 'Ana López', 12, 3015555555, 'ana@correo.com', 'Femenino', 701),
(6, 'Pedro Castro', 13, 3016666666, 'pedro@correo.com', 'Masculino', 702),
(7, 'Sofía Herrera', 12, 3017777777, 'sofia@correo.com', 'Femenino', 601),
(8, 'Miguel Torres', 13, 3018888888, 'miguel@correo.com', 'Masculino', 802),
(9, 'Camila Rojas', 17, 3019999999, 'camila@correo.com', 'Femenino', 1102);

-------------------------------------------------
-- ACTIVIDADES
-------------------------------------------------
INSERT INTO Actividades VALUES
(1, 'Taller', 'Taller de bases de datos', '2025-08-21', 1),
(2, 'Exposición', 'Exposición general', '2026-02-05', 1),
(3, 'Quiz', 'Quiz algoritmo', '2025-03-10', 1),
(4, 'Examen', 'Examen castellano', '2025-02-05', 3),
(5, 'Examen', 'Examen matemáticas', '2025-04-15', 5),
(6, 'Exposición', 'Exposición ciencias', '2025-03-20', 6),
(7, 'Examen', 'Examen química', '2025-05-10', 7),
(8, 'Taller', 'Actividad ética', '2025-08-19', 4),
(9, 'Taller', 'Actividad ética 2', '2025-08-20', 4);

-------------------------------------------------
-- CALIFICACIONES
-------------------------------------------------
INSERT INTO Calificacion VALUES
(1, 4.5, '2025-03-11', 3),
(2, 3.8, '2025-04-16', 5),
(3, 4.9, '2025-04-16', 5),
(4, 2.5, '2025-05-11', 7),
(5, 3.5, '2025-03-21', 6),
(6, 4.2, '2025-08-19', 8),
(7, 3.9, '2025-08-20', 9);
