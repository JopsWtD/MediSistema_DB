USE medisistema;

INSERT INTO estados (id, nombre) VALUES
(1, 'Activo'),
(2, 'Vacaciones'),
(3, 'Sustitución'),
(4, 'Inactivo');

INSERT INTO tipos_empleado (id, nombre) VALUES
(1, 'ATS'),
(2, 'Auxiliar enfermería'),
(3, 'Celador'),
(4, 'Administrativo');

INSERT INTO tipos_medico (id, nombre) VALUES
(1, 'Titular'),
(2, 'Interino'),
(3, 'Sustituto');

INSERT INTO especialidades (id, nombre) VALUES
(1, 'Medicina General'),
(2, 'Pediatría'),
(3, 'Cardiología'),
(4, 'Dermatología'),
(5, 'Ginecología'),
(6, 'Traumatología');

INSERT INTO horarios (id, nombre, dia_semana, hora_inicio, hora_fin) VALUES
(1, 'Turno Mañana', 'Lunes', '08:00:00', '14:00:00'),
(2, 'Turno Tarde', 'Martes', '14:00:00', '20:00:00'),
(3, 'Turno Mañana', 'Miércoles', '08:00:00', '13:00:00'),
(4, 'Turno Tarde', 'Jueves', '15:00:00', '20:00:00'),
(5, 'Turno Mañana', 'Viernes', '09:00:00', '14:00:00'),
(6, 'Turno Noche', 'Sábado', '20:00:00', '23:59:00');

INSERT INTO empleados (id, estado_id, tipo_id, horario_id, edad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido) VALUES
(1, 1, 1, 1, 28, 'Keiler', NULL, 'Serrano', 'Rojas'),
(2, 1, 1, 2, 35, 'Andrea', 'Sofía', 'Jiménez', NULL),
(3, 1, 2, 3, 24, 'Alvaro', NULL, 'Martinez', NULL),
(4, 2, 2, 1, 41, 'Joan', NULL, 'Nuñez', 'Torres'),
(5, 1, 3, 4, 50, 'Lautaro', 'David', 'Martinez', NULL),
(6, 1, 4, 5, 33, 'Guadalupe', NULL, 'Gutiérrez', NULL);

INSERT INTO medicos (id, estado_id, tipo_id, especialidad_id, horario_id, edad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido) VALUES
(1, 1, 1, 1, 1, 45, 'Andrés', NULL, 'Campestre', 'Rincón'),
(2, 1, 1, 2, 2, 39, 'Julio', 'César', 'Castro', NULL),
(3, 1, 1, 3, 3, 52, 'Jaimito', NULL, 'Pérez', NULL),
(4, 1, 2, 4, 4, 29, 'Guillermo', NULL, 'Hernandez', 'Ortiz'),
(5, 2, 2, 5, 5, 31, 'Pedro', 'Antonio', 'Jaramillo', NULL),
(6, 3, 3, 1, 6, 27, 'Gaspar', NULL, 'Murillo', NULL);

INSERT INTO pacientes (id, edad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, telefono) VALUES
(1, 34, 'Gustavo', NULL, 'Hernandez', 'Ríos', '3001234567'),
(2, 28, 'Pedro', NULL, 'González', NULL, '3002345678'),
(3, 45, 'Rasputio', 'Manuel', 'Pérez', NULL, '3003456789'),
(4, 19, 'Pepito', NULL, 'Jaimes', NULL, '3004567890'),
(5, 60, 'Mariano', NULL, 'Gutierrez', 'Salas', '3005678901'),
(6, 52, 'Julian', 'Esteban', 'Poveda', NULL, '3006789012'),
(7, 37, 'Angela', NULL, 'Hernández', NULL, '3007890123'),
(8, 23, 'Carlos', NULL, 'Velasquez', 'Duarte', '3008901234');

INSERT INTO citas_medicas (id, medico_id, paciente_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 5, 8),
(9, 1, 3),
(10, 4, 2);

INSERT INTO vacaciones (id, empleado_id, medico_id, fecha_inicio, fecha_fin, estado) VALUES
(1, 1, NULL, '2025-01-06', '2025-01-17', 'Disfrutada'),
(2, 2, NULL, '2025-03-10', '2025-03-21', 'Planificada'),
(3, NULL, 1, '2025-02-03', '2025-02-14', 'Disfrutada'),
(4, NULL, 2, '2025-06-01', '2025-06-15', 'Planificada'),
(5, 3, NULL, '2025-07-01', '2025-07-10', 'Planificada'),
(6, NULL, 3, '2025-08-04', '2025-08-15', 'Planificada');