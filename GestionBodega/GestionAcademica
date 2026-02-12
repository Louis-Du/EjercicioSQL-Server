create table Cursos (
codigoCurso numeric not null,
nombreCurso varchar (50) not null,
jornadaCurso varchar (50) not null,
primary key (codigoCurso))
-------------------------------------------------------------------------------------------------------------------
create table Asignaturas (
nitAsignatura numeric not null,
nombreAsignatura varchar (50) not null,
primary key (nitAsignatura))
-------------------------------------------------------------------------------------------------------------------
create table Profesor (
idProfesor numeric not null primary key,
nombreProfesor varchar (50) not null,
apellidoProfesor varchar (50)not null,
edadProfesor int not null,
telefonoProfesor int not null,
emailProfesor varchar (50) not null,
generoProfesor varchar (50) not null,
nitAsignatura numeric not null,
foreign key (nitAsignatura) references Asignaturas)
-------------------------------------------------------------------------------------------------------------------
create table Actividades (
idActividades numeric not null,
tipoActividad varchar (50) not null,
nombreActividad varchar (50) not null,
fechaActividad date not null,
primary key (idActividades),
nitAsignatura numeric not null,
foreign key (nitAsignatura) references Asignaturas)
-------------------------------------------------------------------------------------------------------------------
create table Estudiantes (
idEstudiantes numeric not null primary key,
nombreEstudiantes varchar (50) not null,
edadEstudiantes int not null,
telefonoEstudiantes int not null,
emailEstudiantes varchar (50) not null,
generoEstudiantes varchar (50) not null,
codigoCurso numeric not null,
foreign key (codigoCurso) references Cursos)
-------------------------------------------------------------------------------------------------------------------
create table Calificacion (
idCalificacion numeric not null primary key,
notaCalificacion float not null,
fechaCalificacion date not null,
idActividades numeric not null,
foreign key (idActividades) references Actividades)
-------------------------------------------------------------------------------------------------------------------
create table CursosAsignaturas (
nitAsignatura numeric not null,
codigoCurso numeric not null,)
-------------------------------------------------------------------------------------------------------------------
go
insert into Cursos (codigoCurso, nombreCurso) values
(801, 'Octavo 01'),
(1002, 'D�cimo 02'),
(801, 'Noveno 01'),
(,'Sexto 01'),
(,'Sexto 02'),
(,'S�ptimo 02'),
(,'D�cimo 01'),
(,'Once 01'),
(,'S�ptimo 01'),
(,'Octavo 02'),
(,'Once 02')

insert into Profesor (idProfesor, nombreProfesor, apellidoProfesor, edadProfesor, telefonoProfesor, emailProfesor, generoProfesor, nitAsignatura) values
(, 'Oscar', 'N��ez', , , , 'Masculino'),
(, 'Mar�a', 'Ramos', , , , 'Femenino'),
(),

insert into Actividades (idActividades, tipoActividad, nombreActividad, fechaActividad, nitAsignatura) values
(, 'Taller', 'de bases de datos',),
(, 'Taller (ing)', '','05/02/2025'),
(, 'Examen'),
(, 'Quiz'),
(, 'Exposici�n'),

insert into Asignaturas (nitAsignatura, nombreAsignatura) values
(, 'Algoritmos'),
(, 'Ingles'),
(, 'Castellano'),
(, '�tica'),
(, 'Matem�ticas'),
(, 'Ciencias'),
(, 'Qu�mica'),

insert into Estudiantes (idEstudiante, nombreEstudiante, apellidoEstudiante, edadEstudiante, telefonoEstudiante, emailEstudiante, generoEstudiante, codigoCursos) values
(, 'Juan','G�mez')
