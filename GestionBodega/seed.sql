-- 1.Mostrar informaci�n de la tabla productos
SELECT * FROM Productos

-- 2.Mostrar informaci�n de la tabla categorias
SELECT * FROM Categorias

-- 3.Mostrar unicamente el nombre y el valor unitario de los productos
SELECT nombreprod, Valorunitarioprod from Productos

-- 4.Mostrar unicamente el nombre y apellido de los clientes
SELECT nombrecliente, apellidoscliente FROM Clientes

-- 5. Mostrar unicamente el nombre y la edad de los clientes femeninos
SELECT nombrecliente, edadcliente FROM Clientes 
WHERE Clientes.generocliente = 'Femenino'

-- 6.Mostrar unicamente el telefono y la direccion del proveedor con el nombre La granja
SELECT telefonoproved, direccionproved FROM Proveedor 
WHERE Proveedor.nombreproved = 'La granja'

-- 7.Mostrar unicamente el nombre de los clientes cuya edad sea de 25
SELECT nombrecliente FROM Clientes 
WHERE Clientes.edadcliente = 25

-- 8.Mostrar nombre y precio de los productos que pertenecen a la categor�a Aseo personal. 
SELECT nombreprod, Valorunitarioprod FROM Productos, Categorias
WHERE Productos.codigoCateg = Categorias.codigoCateg and Categorias.nombreCateg = 'Aseo personal'

-- 9.Mostrar el nombre de la categoria que tiene los productos con valor unitario de 2000
SELECT nombreCateg FROM Categorias, Productos
WHERE Categorias.codigoCateg = Productos.codigoCateg and Productos.Valorunitarioprod = 2000
GROUP BY nombreCateg

-- 10.Mostrar los nombres de los clientes que realizaron pedidos con 5 cantidades de productos
SELECT nombrecliente FROM Clientes, Pedidos
WHERE Pedidos.idcliente = Clientes.idcliente and Pedidos.cantidadprodped = 5

-- 11.Mostrar nombres de los proveedores de los productos que pertenecen o est�n en la categoria muebles
SELECT nombreproved FROM Proveedor, Productos, Categorias, ProductosProveedor
WHERE Proveedor.nitproved = ProductosProveedor.nitproved 
and ProductosProveedor.codigoprod = Productos.codigoprod 
and Productos.codigoCateg = Categorias.codigoCateg 
and Categorias.nombreCateg = 'Muebles'
GROUP BY nombreproved

-- 12.Mostrar los nombres de los productos, nombre de la categoria a la que pertenecen los productos relacionados en el pedido de codigo 1012
SELECT nombreprod, nombreCateg FROM Productos, Categorias, Pedidos, ProductosPedidos
WHERE Productos.codigoCateg = Categorias.codigoCateg 
and Productos.codigoprod = ProductosPedidos.codigoprod 
and ProductosPedidos.codigoped = Pedidos.codigoped 
and Pedidos.codigoped = 1012

-- 14.Mostrar nombre y nit de los proveedores que comercializan los productos de la categoría Frutas.
SELECT nombreproved, Proveedor.nitproved FROM Proveedor, ProductosProveedor, Productos, Categorias
WHERE Proveedor.nitproved = ProductosProveedor.nitproved
and ProductosProveedor.codigoprod = Productos.codigoprod
and Productos.codigoCateg = Categorias.codigoCateg
and Categorias.nombreCateg = 'Frutas'
GROUP BY nombreproved, Proveedor.nitproved;

-- 15.Mostrar el promedio de edades de los clientes que sean mujeres. 
SELECT AVG(CAST(edadcliente AS float)) AS 'Promedio edad mujeres' FROM Clientes
WHERE Clientes.generocliente = 'Femenino'

-- 16.Mostrar la edad más alta de los clientes
SELECT MAX(edadcliente) AS 'Edad más alta de los clientes' FROM Clientes

-- 17.Mostrar el total del precio de los producto
SELECT SUM(Productos.Valorunitarioprod) 'Valor total del precio de los produtos' FROM Productos

-- 18.Mostrar el nombre y el precio del producto más caro
SELECT nombreprod, Valorunitarioprod FROM Productos
WHERE Valorunitarioprod = (SELECT MAX(Valorunitarioprod) FROM Productos)

-- 19.Mostrar el nombre del cliente con menos edad
SELECT nombrecliente, edadcliente FROM Clientes
WHERE edadcliente = (SELECT MIN(edadcliente) FROM Clientes)

-- 20.Mostrar el nombre y apellidos de los clientes ordenados por edad de mayor a menor.
SELECT nombrecliente, apellidoscliente FROM Clientes 
ORDER BY edadcliente desc

-- 21.Mostrar el nombre y teléfono del cliente que realizó el pedido 1032 y la fecha en que lo realizó.
SELECT nombrecliente, telefonocliente, fechaped FROM Clientes, Pedidos
WHERE Clientes.idcliente = Pedidos.idcliente
and Pedidos.codigoped = 1032

-- 22.Mostrar los productos que contiene el pedido 1070, 
-- el nombre de la categoría a la que pertenece el o los productos, 
-- el nombre del proveedor que lo comercializa,  
-- el nombre del cliente que realizó el pedido , 
-- la fecha en que lo realizó y el valor total de la factura.
SELECT nombreprod, nombreCateg, nombreproved, nombrecliente, fechaped, (Productos.Valorunitarioprod * Pedidos.cantidadprodped) as 'Valor factura' 
FROM Productos, Categorias, Proveedor, ProductosProveedor, Clientes, Pedidos, ProductosPedidos
WHERE Productos.codigoCateg = Categorias.codigoCateg
and Productos.codigoprod = ProductosProveedor.codigoprod
and Proveedor.nitproved = ProductosProveedor.nitproved
and Productos.codigoprod = ProductosPedidos.codigoprod
and Pedidos.codigoped = ProductosPedidos.codigoped
and Pedidos.idcliente = Clientes.idcliente
and Pedidos.codigoped = 1070

-- 23.Mostrar el nombre del producto, la categoría a la que pertenece el producto, el código del pedido en que se realizó el producto facturado el 13/04/2018.
SELECT nombreprod, nombreCateg, Pedidos.codigoped, fechaped 
FROM Productos, Categorias, Pedidos, ProductosPedidos
WHERE Productos.codigoCateg = Categorias.codigoCateg
and Productos.codigoprod = ProductosPedidos.codigoprod
and Pedidos.codigoped = ProductosPedidos.codigoped
and Pedidos.fechaped = '2018-04-05'

-- 24.Mostrar los nombres de los clientes con edades entre 25 y 30
SELECT nombrecliente
FROM Clientes
WHERE Clientes.edadcliente >= 25 and Clientes.edadcliente <= 30

SELECT nombrecliente
FROM Clientes
WHERE Clientes.edadcliente between 25 and 30

-- 25.Mostrar los nombres y precios de los productos junto con sus códigos de pedidos facturados entre el 01/03/2018 y el 31 de mayo de 2018.
SELECT nombreprod, Valorunitarioprod, Pedidos.codigoped
FROM Productos, Pedidos, ProductosPedidos
WHERE Productos.codigoprod = ProductosPedidos.codigoprod
and Pedidos.codigoped = ProductosPedidos.codigoped
and Pedidos.fechaped between '01/03/2018' and '31/mayo/2018'

-- 26.Cambiar el nombre del producto de código 1214 por el nombre Fresa
UPDATE Productos
SET nombreprod = 'Fresa'
WHERE Productos.codigoprod = 1214

-- 27.Adicionar en la tabla Categorías una columna llamada Descripción.
ALTER TABLE Categorias 
ADD Descripcion varchar(30)

-- 28.Insertar 2 registros nuevos en esas tablas. 
INSERT INTO Categorias(codigoCateg, nombreCateg, Descripcion) VALUES
(114, 'Juguete', 'Infatiles'),
(115, 'Ropa', 'Deportiva')

-- 29.Eliminar la columna agregada en la tabla Categorías.
ALTER TABLE Categorias
DROP column Descripcion
