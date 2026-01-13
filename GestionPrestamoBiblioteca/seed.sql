USE biblioteca;
GO

INSERT INTO Usuario (nombreUsuario, apellidosUsuario, edadUsuario) VALUES
('Juan Miguel', 'Alvarez Maritinez', 19),
('Luis', 'Mejia', 12),
('Lili Vanesa', 'Hernandez Hernandez', 19),
('Michael', 'Afton', 22),
('Jose Jose', 'Guzman Diaz', 43); -- Insertamos registros para la tabla usuarios 
GO

INSERT INTO Libro (nombreLibro, autorLibro, geneoLibro, Stock) VALUES
('100 años de soledad', 'Gabriel Garcia', 'Realismo magico', 5),
('El fantasma de la opera', 'Gaston Loroux', 'Poesia', 6),
('La divina comedia', 'Dante', 'Poesia', 2),
('La historia de mi vida', 'Helen Keller', 'Romance', 6),
('Boulevar', 'Flor Salvador', 'Romance', 2),
('IT', 'Stephen King', 'Terror', 1),
('Frankestein', 'Mary Sherley', 'Poesia', 11),
('El extraño', 'H.P Lovecraft', 'Terror', 17),
('Harry potter', 'J.K Rowling', 'Aventura', 8),
('Ciudades de papel', 'Jhon Green', 'Romance', 10); -- Insertamos registros para la tabla Libros

EXEC RealizarPrestamo @pIdUsuario = 1, @pIdLibro = 3, @pFechaSalida = '2025-05-20';
EXEC RealizarPrestamo @pIdUsuario = 5, @pIdLibro = 7, @pFechaSalida = '2025-05-20'; -- Se insertan registros en la tabla prestamo usando el procedimiento RealizarPrestamos

/*Devolvemos uno de los libros*/
UPDATE Prestamos SET [Fecha devolución] = '2025-06-10' WHERE id = 1
UPDATE Libros set Stock = Stock + 1 WHERE id = (SElECT id FROM Prestamos Where id = 1)


