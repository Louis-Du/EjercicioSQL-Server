
-- Programa
insert into Programa values
(1001, 'ADSO', '2024-01-01', 24, 'Tecnologo'),
(34212, 'Contabilidad', '2026-03-01', 200, 'Tecnico'),
(32564, 'Mecánica', '2020-04-12', 450, 'Tecnologo'),
(25455, '3D', '2017-06-12', 200, 'Tecnico'),
(48281, 'Plantas químicas', '2019-04-23', 450, 'Tecnologo');

-- Ficha
insert into Ficha values
(300101, '2024-01-01', '2026-01-01', 1001),
(3067777, '2025-03-10', '2027-03-10', 48281),
(24446677, '2025-04-12', '2027-04-12', 32564),
(5241723, '2026-02-24', '2028-02-24', 34212),
(3426861, '2024-09-12', '2026-02-02', 32564),
(4256367, '2025-09-12', '2026-09-12', 25455),
(6382512, '2026-02-14', '2028-02-14', 48281);

-- Grupo
insert into Grupo values
(233421, 'Primer Grupo'),
(763561, 'Segundo Grupo'),
(877665, 'Tercer Grupo');

-- Aprendiz
insert into Aprendiz values
(53545556, 'Ethan Winter', 24, 'M', 'Ethan@micorreo.com', 34252422345, 'Etha', 'EthanWin', 'Aprendiz', 300101, 233421),
(45467475, 'Jairon Molina', 19, 'M', 'Jairito@micorreo.com', 362551616, 'Jaja', 'Jairooo', 'Aprendiz', 300101, 233421),
(34666778, 'Moises', 19, 'M', 'Moise@micorreo.com', 362551616, 'Nra', 'Moi', 'Aprendiz', 300101, 233421),
(67681628, 'Rebeca Chamber', 19, 'F', 'Rebeca@micorreo.com', 362551616, 'Rbca', 'Rebeca', 'Aprendiz', 300101, 233421),
(47273792, 'Lara Croft', 26, 'F', 'Lara@micorreo.com', 3232333, 'Lraf', 'LaraCroft', 'Aprendiz', 300101, 233421),
(23456671, 'Vannesa Argumedo', 16, 'F', 'Vanne@micorreo.com', 32135667, 'Vane', 'VannArg', 'Aprendiz', 3067777, 233421),
(52536627, 'Michael Martinez', 32, 'F', 'Mich@micorreo.com', 3214563245, 'Michi', 'MichMar', 'Aprendiz', 24446677, 233421),
(21334557, 'David Álvarez', 19, 'M', 'DavA@micorreo.com', 3162937192, 'Davila', 'DaValrez', 'Aprendiz', 5241723, 763561),
(15654411, 'Leon Scott Kennedy', 56, 'M', 'LeonK@micorreo.com', 3726514682, 'AdaWong', 'LeonSK', 'Aprendiz', 3426861, 763561),
(15254656, 'Miguel Angel Prieto', 16, 'M', 'Migue@micorreo.com', 321551611, 'Migue', 'Mgel3', 'Aprendiz', 4256367, 877665),
(24446677, 'Laura Santander Hernandez', 22, 'F', 'LauSA@micorreo.com', 3212455, 'LauSan', 'Laur12', 'Aprendiz', 6382512, 877665);

-- Inscripcion
insert into Inscripcion values 
(4672534, '2026-03-13', 'Presencial'),
(4545846, '2024-08-26', 'Virtual'),
(5641123, '2025-05-18', 'Presencial'),
(4568279, '2025-07-23', 'Presencial');

-- Usuario
insert into Usuario values
(45555, 'lklk22', 'Admin'),
(25112, '23edf', 'Admin'),
(55688, 'lisjc', 'Admin');

-- Eventos
insert into Eventos values
(26343, 'Dia del deporte', 'Deportivo', '2026-03-18', 'CIP', 25112, 4672534),
(89742, 'Indución', 'Académico', '2026-03-25', 'CIP', 45555, 4545846),
(25467, 'Día de la mujer', 'cultural', '2026-03-05', 'CIP', 25112, 5641123),
(84782, 'Desarrollo personal con ia', 'Académica','2026-05-12', 'CIP', 55688, 4568279);

-- AprendizEvento
insert into AprendizEvento values
(15654411, 84782),
(15254656, 89742),
(24446677, 25467);
