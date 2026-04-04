# Gestión Académica

Este ejercicio modela un sistema académico básico con estudiantes, cursos y matrículas.

## Resumen
Permite practicar la creación de relaciones entre entidades y consultas para obtener información relevante del sistema académico.

## Ejemplo de consulta
```sql
SELECT e.nombre, c.nombreCurso
FROM Estudiantes e
JOIN Matriculas m ON e.idEstudiante = m.idEstudiante
JOIN Cursos c ON m.idCurso = c.idCurso;
```

## Resultado esperado
| nombre  | nombreCurso   |
|---------|--------------|
| Pedro   | Matemáticas  |
| Lucía   | Historia     |

## Archivos
- `schema.sql`: Estructura de la base de datos
- `data.sql`: Datos de ejemplo
- `queries.sql`: Consultas de práctica
- `ModeloRelacional.png`: Diagrama relacional
