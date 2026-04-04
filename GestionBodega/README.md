# Gestión de Bodega

Este ejercicio simula la gestión de inventario y pedidos en una bodega.

## Resumen
Incluye tablas para productos, categorías, proveedores, clientes y pedidos, permitiendo practicar relaciones complejas y consultas de inventario.

## Ejemplo de consulta
```sql
SELECT p.nombreprod, c.nombreCateg
FROM Productos p
JOIN Categorias c ON p.codigoCateg = c.codigoCateg;
```

## Resultado esperado
| nombreprod | nombreCateg     |
|------------|----------------|
| Mesas      | Muebles        |
| Manzana    | Frutas         |

## Archivos
- `schema.sql`: Estructura de la base de datos
- `data.sql`: Datos de ejemplo
- `queries.sql`: Consultas de práctica
- `ModeloRelacional.png`: Diagrama relacional
