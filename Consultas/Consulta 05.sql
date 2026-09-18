USE medisistema;

SELECT
    tm.nombre AS tipo_medico,
    COUNT(c.id) AS total_pacientes
FROM medicos m
JOIN tipos_medico tm ON tm.id = m.tipo_id
LEFT JOIN citas_medicas c ON c.medico_id = m.id
GROUP BY tm.nombre
ORDER BY total_pacientes DESC;