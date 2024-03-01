DROP DATABASE IF EXISTS F1;
CREATE DATABASE F1;
USE F1;

CREATE TABLE Escuderia (
    id_escuderia VARCHAR(20),
    escuderia VARCHAR(20),
    dueño VARCHAR(20),
    director VARCHAR(20),
    pais_origen VARCHAR(20),
    marca VARCHAR(20),
    PRIMARY KEY (id_escuderia),
    INDEX idx_escuderia (escuderia)  -- Add an index on escuderia column
);

INSERT INTO Escuderia VALUES
    ('E1', 'Red Bull', 'Mark Mateschit', 'Christian Horner', 'Austria', 'Honda'),
    ('E2', 'Mercedes', 'Diversos Accionistas', 'Toto Wolf', 'Alemania', 'Mercedes'),
    ('E3', 'Red Bull', 'Diversos Accionistas', 'Mattia Binotto', 'Italia', 'Ferrari');
