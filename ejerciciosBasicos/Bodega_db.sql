CREATE DATABASE Bodega
GO
CREATE TABLE Categorias(
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
GO
INSERT INTO Categorias(codigoCateg, nombreCateg) VALUES
(111, 'Muebles'),
(112, 'Frutas'),
(113, 'Aseo Personal')

INSERT INTO Productos(codigoprod, nombreprod, Valorunitarioprod, codigoCateg) VALUES 
(1467, 'Mesas', 50000, 111),
(1468, 'Escritorio', 80000, 111), 
(1232, 'Sillas', 40000, 111),
(1345, 'Manzana', 2000, 112),
(1268, 'Jabón', 5000, 113),
(1267, 'Crema', 10000, 113),
(1214, 'Pera', 2000, 112)
select * from Productos
INSERT INTO Proveedor(nitproved, nombreproved, telefonoproved, direccionproved, emailproved) VALUES
(1045789, 'Comercializadora ABC', 65789541, 'CC la castellana Cra 25- 15', 'comercializadoraabc@gmail.com'),
(89675486, 'La granja', 6845612, 'Ceballos cra 67-89', 'lagranja@hotmail.com'),
(10457821, 'Muebles XYZ', 6321478, 'Bazurto cra 45-52-40', 'mueblesxyz@gmail.com')

INSERT INTO Clientes(idcliente, nombrecliente, apellidoscliente, direccioncliente, telefonocliente, edadcliente, generocliente) VALUES
(104789542, 'Pedro', 'Hurtad', 'Cra 34 calle56', 3008904512, 25, 'Masculino'), 
(458901256, 'Maria', 'Julio', 'Cra 23 calle90', 6587412, 32, 'Femenino'), 
(73890456, 'Joaquin', 'Diaz', 'Manzana 45 lote 4', 6894512, 39, 'Masculino'),
(1045721568, 'Lucia', 'Contreras', 'Cra 4 calle34', 3004906512, 21, 'Femenino'), 
(10235689412, 'Diego', 'Quintero', 'Manzana 56 lote 15', 3017415612, 25, 'Masculino')

INSERT INTO Pedidos(codigoped, cantidadprodped, fechaped, horaped, idcliente) VALUES
(1045, 5, '14-03-2018', '8:45', 104789542),
(1070, 3, '25-05-2018', '2:50', 73890456),
(10682, 2, '01-02-2018', '12:05', 104789542),
(1032, 10, '16-07-2018', '10:15', 73890456),
(1012, 18, '21-06-2018', '3:07', 1045721568),
(1010, 4, '11-01-2018', '4:08', 1023568941),
(1014, 7, '5-04-2018', '9:17', 458901256)

INSERT INTO ProductosPedidos(codigoprod, codigoped) VALUES
(1467, 1045),
(1468, 1070),
(1232, 1068),
(1345, 1032),
(1268, 1012),
(1267, 1010),
(1214, 1014)

INSERT INTO ProductosProveedor(codigoprod, nitproved) VALUES
(1467, 10457821),
(1468, 10457821),
(1232, 10457821),
(1345, 89675486),
(1268, 1045789),
(1267, 1045789),
(1214, 89675486)

SELECT * from Categorias
SELECT * from Productos
SELECT * from Proveedor
SELECT * from Clientes
SELECT * from Pedidos
SELECT * from ProductosPedidos
SELECT * from ProductosProveedor

