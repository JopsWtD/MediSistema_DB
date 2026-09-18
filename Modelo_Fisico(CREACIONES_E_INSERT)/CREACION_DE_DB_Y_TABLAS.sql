CREATE DATABASE IF NOT EXISTS medisistema;
USE medisistema;

CREATE TABLE estados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE tipos_empleado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE tipos_medico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE especialidades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE horarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    dia_semana VARCHAR(20) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL
);


CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estado_id INT NOT NULL,
    tipo_id INT NOT NULL,
    horario_id INT NOT NULL,
    edad INT,
    primer_nombre VARCHAR(20) NOT NULL,
    segundo_nombre VARCHAR(20),
    primer_apellido VARCHAR(20) NOT NULL,
    segundo_apellido VARCHAR(20),
    FOREIGN KEY (estado_id) REFERENCES estados(id),
    FOREIGN KEY (tipo_id) REFERENCES tipos_empleado(id),
    FOREIGN KEY (horario_id) REFERENCES horarios(id)
);

CREATE TABLE medicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estado_id INT NOT NULL,
    tipo_id INT NOT NULL,
    especialidad_id INT NOT NULL,
    horario_id INT NOT NULL,
    edad INT,
    primer_nombre VARCHAR(20) NOT NULL,
    segundo_nombre VARCHAR(20),
    primer_apellido VARCHAR(20) NOT NULL,
    segundo_apellido VARCHAR(20),
    FOREIGN KEY (estado_id) REFERENCES estados(id),
    FOREIGN KEY (tipo_id) REFERENCES tipos_medico(id),
    FOREIGN KEY (especialidad_id) REFERENCES especialidades(id),
    FOREIGN KEY (horario_id) REFERENCES horarios(id)
);


CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    edad INT,
    primer_nombre VARCHAR(20) NOT NULL,
    segundo_nombre VARCHAR(20),
    primer_apellido VARCHAR(20) NOT NULL,
    segundo_apellido VARCHAR(20),
    telefono VARCHAR(15)
);


CREATE TABLE citas_medicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    medico_id INT NOT NULL,
    paciente_id INT NOT NULL,
    FOREIGN KEY (medico_id) REFERENCES medicos(id),
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id)
);


CREATE TABLE vacaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    medico_id INT,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (empleado_id) REFERENCES empleados(id),
    FOREIGN KEY (medico_id) REFERENCES medicos(id)
);