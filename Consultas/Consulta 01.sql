USE medisistema;

SELECT
    m.id AS medico_id,
    COUNT(c.id) AS total_pacientes
FROM medicos m
LEFT JOIN citas_medicas c ON c.medico_id = m.id
GROUP BY m.id
ORDER BY total_pacientes DESC;