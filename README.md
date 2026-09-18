# MediSistema

Base de datos MySQL para la gestión de un centro de salud: médicos, empleados, pacientes, citas y vacaciones.

## Estructura

```
MediSistema/
├── Modelos_Conceptual_Y_Logico/
├── Modelo_Fisico(CREACIONES_E_INSERT)/
│   ├── CREACION_DE_DB_Y_TABLAS.sql
│   └── INSERT_A_TABLAS.sql
└── Consultas/
    ├── Consulta 01.sql
    ├── Consulta 02.sql
    ├── Consulta 03.sql
    ├── Consulta 04.sql
    └── Consulta 05.sql
```
Modelo conceptual y lógico

El modelo conceptual identifica tres entidades centrales — médicos, empleados y pacientes — junto con sus catálogos de apoyo (estados, tipos, especialidades y horarios) y dos relaciones principales: citas médicas (médico–paciente) y vacaciones (empleado o médico).

El modelo lógico traduce esas entidades en 10 tablas relacionales: 5 catálogos (estados, tipos_empleado, tipos_medico, especialidades, horarios), 3 tablas de personas (empleados, medicos, pacientes) y 2 tablas de relación (citas_medicas, vacaciones), enlazadas mediante llaves foráneas. Los diagramas están en Modelos_Conceptual_Y_Logico/.

## Ejecución

1. `CREACION_DE_DB_Y_TABLAS.sql`
2. `INSERT_A_TABLAS.sql`
3. Cualquier script de `Consultas/`

## Consultas

- **Consulta 01** (ítem 1): Número de pacientes atendidos por cada médico
- **Consulta 02** (ítem 7): Médico con mayor cantidad de pacientes asignados
- **Consulta 03** (ítem 13): Total de días de vacaciones planificadas y disfrutadas por cada tipo de empleado
- **Consulta 04** (ítem 15): Total de horas de consulta por médico y día de la semana
- **Consulta 05** (ítem 14): Total de pacientes por cada tipo de médico
