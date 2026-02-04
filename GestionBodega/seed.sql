
-- 1.Mostrar información de la tabla productos
SELECT * FROM Productos

-- 2.Mostrar información de la tabla categorias
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

-- 8.Mostrar nombre y precio de los productos que pertenecen a la categoría Aseo personal. 
SELECT nombreprod, Valorunitarioprod FROM Productos, Categorias
WHERE Productos.codigoCateg = Categorias.codigoCateg and Categorias.nombreCateg = 'Aseo personal'

-- 9.Mostrar el nombre de la categoria que tiene los productos con valor unitario de 2000
SELECT nombreCateg FROM Categorias, Productos
WHERE Categorias.codigoCateg = Productos.codigoCateg and Productos.Valorunitarioprod = 2000
GROUP BY nombreCateg

-- 10.Mostrar los nombres de los clientes que realizaron pedidos con 5 cantidades de productos
SELECT nombrecliente FROM Clientes, Pedidos
WHERE Pedidos.idcliente = Clientes.idcliente and Pedidos.cantidadprodped = 5

-- 11.Mostrar nombres de los proveedores de los productos que pertenecen o están en la categoria muebles
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

