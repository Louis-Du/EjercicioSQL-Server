create database Formulario;
go
CREATE TABLE Grupo (
  idGrupo INT NOT NULL primary key,
  nombreGrupo VARCHAR(20) NULL
);

CREATE TABLE Inscripcion (
  idInscripcion INT NOT NULL primary key,
  fechaInscrip DATE NULL,
  modalidadInscrip VARCHAR(10) NULL
);

CREATE TABLE Programa (
  codigoProg INT NOT NULL primary key,
  nombreProg VARCHAR(50) NULL,
  fechaIniProg DATE NULL,
  duracionProg INT NULL,
  nivelProg varchar(10)
);

CREATE TABLE Usuario (
  idUsuario INT NOT NULL primary key,
  passwordUsuario VARCHAR(16) NULL,
  tipoUsuario VARCHAR(10) NULL
);

CREATE TABLE Aprendiz (
  idAprend INT NOT NULL primary key,
  nombreAprend VARCHAR(50) NULL,
  edadAprend INT NULL,
  generoAprend CHAR(1) NULL,
  correoAprend VARCHAR(20) NULL,
  numContacAprend NUMERIC NULL,
  nombreUsuario VARCHAR(50) NULL,
  passwordUsuario VARCHAR(18) NULL,
  tipoUsuario VARCHAR(10) NULL,
  codigoFicha INT NOT NULL,
  idGrupo INT NOT NULL,
  foreign KEY (codigoFicha) REFERENCES Ficha(codigoFicha),
  foreign key (idGrupo) references Grupo(idGrupo)
);

CREATE TABLE Eventos (
  idEvento INT NOT NULL primary key,
  nombreEvento VARCHAR(50) NOT NULL,
  tipoEvento VARCHAR(50) NOT NULL,
  fechaEvento DATE NOT NULL,
  lugarEvento VARCHAR(50) NOT NULL,
  idUsuario int not null,
  idInscripcion int not null,
  foreign key (idUsuario) references Usuario(idUsuario),
  foreign key (idInscripcion) references Inscripcion(idInscripcion)
);

create table AprendizEvento(
	idAprend int not null,
	idEvento int not null,
	foreign key (idAprend) references Aprendiz(idAprend),
	foreign key (idEvento) references Eventos(idEvento)
);

CREATE TABLE Ficha (
  codigoFicha INT NOT NULL primary key,
  fechaIniFicha DATE NULL,
  fechaFinFicha DATE NULL,
  codigoProg INT NOT NULL,
  foreign key (codigoProg) references Programa(codigoProg)
);

