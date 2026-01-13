CREATE DATABASE biblioteca --Se crea la base de datos

go
/*A continuación creamos las tablas*/
CREATE TABLE Usuario(
    idUsuario int identity primary key, 
    nombreUsuario varchar(100),
    apellidosUsuario VARCHAR(100),
    edadUsuario int
    ) -- Tabla para los usuarios

CREATE TABLE Libro(
    idLibro int IDENTITY PRIMARY key,
    nombreLibro VARCHAR(100),
    autorLibro VARCHAR(100),
    geneoLibro VARCHAR(50),
    Stock int DEFAULT 1
)-- Tabla para los libros

CREATE TABLE Prestamos (
    id int IDENTITY PRIMARY KEY,
    idUsuario int,
    [Nombre del usuario] VARCHAR(100),
    [Nombre del libro] VARCHAR(100),
    idLibros int,
    [Fecha salida] DATETIME,
    [Fecha devolución] DATETIME,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idLibros) REFERENCES Libro(idLibro)
) --Tabla para los prestamos de libros

go
/*Creamos un procedimiento almacenado que permita realizar los prestamos de los libros solo si el stock sea mayor a 0*/
CREATE PROCEDURE RealizarPrestamo 
@pIdUsuario int, @pIdLibro int, @pFechaSalida datetime --Creación de variables 
AS
if(SElECT Stock FROM Libro WHERE idLibro = @pIdLibro) > 0 -- Condicional que permite registrar el prestamos mientras que el stock sea mayor a 0
    BEGIN
        INSERT into Prestamos(idUsuario, [Nombre del usuario], [Nombre del libro], idLibros, [Fecha salida])
        SELECT u.idUsuario, u.nombreUsuario, l.nombreLibro, l.idLibro, @pFechaSalida
        FROM Usuario u, Libro l
        WHERE u.idUsuario = @pIdUsuario AND l.idLibro = @pIdLibro;

        UPDATE Libro SET Stock = Stock - 1 WHERE idLibro = @pIdLibro --Disminuye el stock en uno
    END
ELSE
    SELECT 'No hay más de este libro disponible' AS MESSAGE
