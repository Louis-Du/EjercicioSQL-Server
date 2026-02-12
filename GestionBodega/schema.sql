-- Creación de la base de datos Bodega
CREATE DATABASE Bodega
GO
-- Se crean las tablas 
create table Categorias(
	codigoCateg int not null PRIMARY KEY,
	nombreCateg VARCHAR(50) not null
)

CREATE TABLE Productos(
	codigoprod int not null PRIMARY KEY, 
	nombreprod varchar(50) not null, 
	Valorunitarioprod int not null,
	codigoCateg int not null,
	foreign key (codigoCateg) references Categorias
)

CREATE TABLE Proveedor(
	nitproved int not null PRIMARY KEY, 
	nombreproved varchar(50) not null, 
	telefonoproved numeric not null, 
	direccionproved varchar(50), 
	emailproved varchar(35)
)

CREATE TABLE Clientes(
	idcliente int not null primary key, 
	nombrecliente varchar(50) not null, 
	apellidoscliente varchar(50) not null, 
	direccioncliente varchar(30) not null, 
	telefonocliente numeric not null, 
	edadcliente int not null, 
	generocliente varchar(15) not null
)

CREATE TABLE Pedidos(
	codigoped int not null primary key, 
	cantidadprodped numeric not null, 
	fechaped date not null, 
	horaped time not null,  
	idcliente int not null
	foreign key (idcliente) references Clientes
)

CREATE TABLE ProductosProveedor(
	codigoprod int not null, 
	nitproved int not null
)

CREATE TABLE ProductosPedidos(
	codigoprod int not null, 
	codigoped int not null
)
