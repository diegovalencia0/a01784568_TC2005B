DROP DATABASE IF EXISTS pokemon_tcg;
CREATE DATABASE pokemon_tcg CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE pokemon_tcg;

CREATE TABLE Jugador (
    id_jugador INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_jugador)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Carta (
    id_carta INT UNSIGNED NOT NULL AUTO_INCREMENT,
    evolucion VARCHAR(50),
    tipo VARCHAR(50),
    ps INT,
    ataque VARCHAR(50),
    daño INT,
    energiaAtaque VARCHAR(50),
    dañoRecibido INT,
    estado VARCHAR(50),
    debilidad VARCHAR(50),
    resistencia VARCHAR(50),
    energiaContenida VARCHAR(50),
    PRIMARY KEY (id_carta)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Descarte (
    id_jugador INT UNSIGNED NOT NULL,
    id_carta INT UNSIGNED NOT NULL,
    turno INT,
    PRIMARY KEY (id_jugador, id_carta),
    CONSTRAINT fk_descarte_jugador FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_descarte_carta FOREIGN KEY (id_carta) REFERENCES Carta(id_carta) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Baraja (
    id_baraja INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_jugador INT UNSIGNED NOT NULL,
    tipoCarta VARCHAR(50),
    cantidad INT,
    PRIMARY KEY (id_baraja),
    CONSTRAINT fk_baraja_jugador FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Mano (
    id_jugador INT UNSIGNED NOT NULL,
    id_carta INT UNSIGNED NOT NULL,
    ubicacion VARCHAR(50),
    estado VARCHAR(50),
    posicion INT,
    PRIMARY KEY (id_jugador, id_carta),
    CONSTRAINT fk_mano_jugador FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_mano_carta FOREIGN KEY (id_carta) REFERENCES Carta(id_carta) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Combate (
    id_jugador INT UNSIGNED NOT NULL,
    id_carta INT UNSIGNED NOT NULL,
    ubicacion VARCHAR(50),
    estado VARCHAR(50),
    PRIMARY KEY (id_jugador, id_carta),
    CONSTRAINT fk_combate_jugador FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_combate_carta FOREIGN KEY (id_carta) REFERENCES Carta(id_carta) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE CartasPremio (
    id_jugador INT UNSIGNED NOT NULL,
    id_carta INT UNSIGNED NOT NULL,
    estado VARCHAR(50),
    PRIMARY KEY (id_jugador, id_carta),
    CONSTRAINT fk_cartaspremio_jugador FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_cartaspremio_carta FOREIGN KEY (id_carta) REFERENCES Carta(id_carta) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Turno (
    id_turno INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_jugador INT UNSIGNED NOT NULL,
    accion VARCHAR(50),
    resultado VARCHAR(50),
    PRIMARY KEY (id_turno),
    CONSTRAINT fk_turno_jugador FOREIGN KEY (id_jugador) REFERENCES Jugador(id_jugador) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE VIEW VistaCartasMano AS
SELECT 
    j.nombre AS nombre_jugador, 
    c.evolucion, 
    c.tipo, 
    c.ps, 
    c.ataque, 
    c.daño, 
    m.ubicacion, 
    m.estado, 
    m.posicion
FROM Mano m
JOIN Jugador j ON m.id_jugador = j.id_jugador
JOIN Carta c ON m.id_carta = c.id_carta;

CREATE VIEW VistaCartasCombate AS
SELECT 
    j.nombre AS nombre_jugador, 
    c.evolucion, 
    c.tipo, 
    c.ps, 
    c.ataque, 
    c.daño, 
    co.ubicacion, 
    co.estado
FROM Combate co
JOIN Jugador j ON co.id_jugador = j.id_jugador
JOIN Carta c ON co.id_carta = c.id_carta;

CREATE VIEW VistaCartasDescarte AS
SELECT 
    j.nombre AS nombre_jugador, 
    c.evolucion, 
    c.tipo, 
    c.ps, 
    c.ataque, 
    c.daño, 
    d.turno
FROM Descarte d
JOIN Jugador j ON d.id_jugador = j.id_jugador
JOIN Carta c ON d.id_carta = c.id_carta;

DELIMITER //

CREATE TRIGGER after_insert_descarte
AFTER INSERT ON Descarte
FOR EACH ROW
BEGIN
    INSERT INTO Turno (id_jugador, accion, resultado) 
    VALUES (NEW.id_jugador, 'Descartar', CONCAT('Carta ID ', NEW.id_carta));
END //

CREATE TRIGGER after_insert_mano
AFTER INSERT ON Mano
FOR EACH ROW
BEGIN
    INSERT INTO Turno (id_jugador, accion, resultado) 
    VALUES (NEW.id_jugador, 'Agregar a Mano', CONCAT('Carta ID ', NEW.id_carta));
END //

CREATE TRIGGER after_insert_combate
AFTER INSERT ON Combate
FOR EACH ROW
BEGIN
    INSERT INTO Turno (id_jugador, accion, resultado) 
    VALUES (NEW.id_jugador, 'Combate', CONCAT('Carta ID ', NEW.id_carta));
END //

DELIMITER ;
