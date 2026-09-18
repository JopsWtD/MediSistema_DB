USE medisistema;

SELECT
    m.id AS medico_id,
    h.dia_semana,
    SUM(TIME_TO_SEC(TIMEDIFF(h.hora_fin, h.hora_inicio))) / 3600 AS horas_totales
FROM medicos m
JOIN horarios h ON h.id = m.horario_id
GROUP BY m.id, h.dia_semana
ORDER BY m.id;