-- Creación de la base de datos Bodega
CREATE DATABASE Bodegas

-- Se crean las tablas 
CREATE TABLE Categorias(
	codigoCateg int NOT NULL PRIMARY KEY,
	nombreCateg VARCHAR(50) NOT NULL
);

CREATE TABLE Productos(
	codigoprod int NOT NULL PRIMARY KEY, 
	nombreprod varchar(50) NOT NULL, 
	Valorunitarioprod int NOT NULL,
	codigoCateg int NOT NULL,
	FOREIGN KEY (codigoCateg) REFERENCES Categorias(codigoCateg)
);

CREATE TABLE Proveedor(
	nitproved int NOT NULL PRIMARY KEY, 
	nombreproved varchar(50) NOT NULL, 
	telefonoproved numeric NOT NULL, 
	direccionproved varchar(50), 
	emailproved varchar(35)
);

CREATE TABLE Clientes(
	idcliente int NOT NULL PRIMARY KEY, 
	nombrecliente varchar(50) NOT NULL, 
	apellidoscliente varchar(50) NOT NULL, 
	direccioncliente varchar(30) NOT NULL, 
	telefonocliente numeric NOT NULL, 
	edadcliente int NOT NULL, 
	generocliente varchar(15) NOT NULL
);

CREATE TABLE Pedidos(
	codigoped int NOT NULL PRIMARY KEY, 
	cantidadprodped numeric NOT NULL, 
	fechaped date NOT NULL, 
	horaped time NOT NULL,  
	idcliente int NOT NULL,
	FOREIGN KEY (idcliente) REFERENCES Clientes(idcliente)
);

CREATE TABLE ProductosProveedor(
	codigoprod int NOT NULL, 
	nitproved int NOT NULL,
	PRIMARY KEY (codigoprod, nitproved),
	FOREIGN KEY (codigoprod) REFERENCES Productos(codigoprod),
	FOREIGN KEY (nitproved) REFERENCES Proveedor(nitproved)
);

CREATE TABLE ProductosPedidos(
	codigoprod int NOT NULL, 
	codigoped int NOT NULL,
	PRIMARY KEY (codigoprod, codigoped),
	FOREIGN KEY (codigoprod) REFERENCES Productos(codigoprod),
	FOREIGN KEY (codigoped) REFERENCES Pedidos(codigoped)
);
