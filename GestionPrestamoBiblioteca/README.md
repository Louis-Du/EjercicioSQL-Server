# Gestión de Préstamo de Biblioteca

Este ejercicio modela el préstamo de libros en una biblioteca.

## Resumen
Permite practicar la gestión de préstamos, devoluciones y consultas sobre disponibilidad de libros y usuarios.

## Ejemplo de consulta
```sql
SELECT l.titulo, u.nombre
FROM Prestamos p
JOIN Libros l ON p.idLibro = l.idLibro
JOIN Usuarios u ON p.idUsuario = u.idUsuario;
```

## Resultado esperado
| titulo           | nombre   |
|------------------|----------|
| Cien Años de Soledad | Ana     |
| El Quijote       | Juan     |

## Archivos
- `schema.sql`: Estructura de la base de datos
- `data.sql`: Datos de ejemplo
- `ModeloRelacional.png`: Diagrama relacional
