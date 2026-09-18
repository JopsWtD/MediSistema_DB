USE medisistema;

SELECT
    te.nombre AS tipo_empleado,
    v.estado,
    SUM(DATEDIFF(v.fecha_fin, v.fecha_inicio) + 1) AS dias_totales
FROM vacaciones v
JOIN empleados e ON e.id = v.empleado_id
JOIN tipos_empleado te ON te.id = e.tipo_id
GROUP BY te.nombre, v.estado
ORDER BY te.nombre, v.estado;