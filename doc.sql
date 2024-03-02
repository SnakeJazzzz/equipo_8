-- Usamos la base de datos F1
USE F1;

-- Crear tabla Piloto
CREATE TABLE Piloto (
    id_piloto VARCHAR(20),
    nombre VARCHAR(50),
    nacionalidad VARCHAR(20),
    fecha_nacimiento DATE,
    id_escuderia VARCHAR(20),
    PRIMARY KEY (id_piloto),
    FOREIGN KEY (id_escuderia) REFERENCES Escuderia(id_escuderia)  -- Relación con la tabla Escuderia
);

-- Crear tabla Circuito
CREATE TABLE Circuito (
    id_circuito VARCHAR(20),
    nombre VARCHAR(50),
    localizacion VARCHAR(50),
    pais VARCHAR(20),
    longitud FLOAT,
    PRIMARY KEY (id_circuito)
);

-- Crear tabla Carrera
CREATE TABLE Carrera (
    id_carrera VARCHAR(20),
    nombre VARCHAR(50),
    fecha DATE,
    id_circuito VARCHAR(20),
    PRIMARY KEY (id_carrera),
    FOREIGN KEY (id_circuito) REFERENCES Circuito(id_circuito)  -- Relación con la tabla Circuito
);

-- Crear tabla Resultado
CREATE TABLE Resultado (
    id_resultado VARCHAR(20),
    id_carrera VARCHAR(20),
    id_piloto VARCHAR(20),
    posicion INT,
    puntos INT,
    PRIMARY KEY (id_resultado),
    FOREIGN KEY (id_carrera) REFERENCES Carrera(id_carrera),  -- Relación con la tabla Carrera
    FOREIGN KEY (id_piloto) REFERENCES Piloto(id_piloto)  -- Relación con la tabla Piloto
);

-- Inserciones de ejemplo en la tabla Piloto
INSERT INTO Piloto VALUES
    ('P1', 'Max Verstappen', 'Holandés', '1997-09-30', 'E1'),
    ('P2', 'Lewis Hamilton', 'Británico', '1985-01-07', 'E2'),
    ('P3', 'Charles Leclerc', 'Monegasco', '1997-10-16', 'E3');

-- Inserciones de ejemplo en la tabla Circuito
INSERT INTO Circuito VALUES
    ('C1', 'Circuito de Mónaco', 'Monte Carlo', 'Mónaco', 3.337),
    ('C2', 'Circuito de Silverstone', 'Silverstone', 'Reino Unido', 5.891);

-- Inserciones de ejemplo en la tabla Carrera
INSERT INTO Carrera VALUES
    ('R1', 'Gran Premio de Mónaco 2024', '2024-05-26', 'C1'),
    ('R2', 'Gran Premio de Gran Bretaña 2024', '2024-07-14', 'C2');

-- Inserciones de ejemplo en la tabla Resultado
INSERT INTO Resultado VALUES
    ('Re1', 'R1', 'P1', 1, 25),
    ('Re2', 'R1', 'P2', 2, 18),
    ('Re3', 'R2', 'P3', 1, 25);
