-- Insertar datos en la tabla Jugador
INSERT INTO Jugador (nombre) VALUES
('Diego'),
('Misty'),
('Brock'),
('Gary Oak'),
('Tracey Sketchit'),
('May'),
('Dawn'),
('Iris'),
('Cilan'),
('Clemont'),
('Serena'),
('Lana');

-- Insertar datos en la tabla Carta
INSERT INTO Carta (evolucion, tipo, ps, ataque, daño, energiaAtaque, dañoRecibido, estado, debilidad, resistencia, energiaContenida) VALUES
('Pikachu', 'Eléctrico', 60, 'Impactrueno', 30, 'Eléctrica', 0, 'Activo', 'Tierra', 'Aire', 'Eléctrica'),
('Charmander', 'Fuego', 50, 'Llamarada', 40, 'Fuego', 0, 'Activo', 'Agua', 'Planta', 'Fuego'),
('Squirtle', 'Agua', 50, 'Pistola Agua', 30, 'Agua', 0, 'Activo', 'Eléctrico', 'Fuego', 'Agua'),
('Bulbasaur', 'Planta', 60, 'Látigo Cepa', 40, 'Planta', 0, 'Activo', 'Fuego', 'Agua', 'Planta'),
('Eevee', 'Normal', 50, 'Mordisco', 20, 'Normal', 0, 'Activo', 'Lucha', 'Psíquico', 'Normal'),
('Jigglypuff', 'Normal', 60, 'Canto', 0, 'Normal', 0, 'Activo', 'Lucha', 'Psíquico', 'Normal'),
('Meowth', 'Normal', 50, 'Arañazo', 30, 'Normal', 0, 'Activo', 'Lucha', 'Psíquico', 'Normal'),
('Psyduck', 'Agua', 50, 'Psico Onda', 20, 'Agua', 0, 'Activo', 'Eléctrico', 'Fuego', 'Agua'),
('Machop', 'Lucha', 70, 'Golpe Karate', 40, 'Lucha', 0, 'Activo', 'Psíquico', 'Oscuridad', 'Lucha'),
('Gastly', 'Fantasma', 40, 'Lengüetazo', 20, 'Fantasma', 0, 'Activo', 'Psíquico', 'Normal', 'Fantasma'),
('Snorlax', 'Normal', 100, 'Placaje', 50, 'Normal', 0, 'Activo', 'Lucha', 'Psíquico', 'Normal'),
('Gengar', 'Fantasma', 80, 'Sombra Nocturna', 60, 'Fantasma', 0, 'Activo', 'Psíquico', 'Normal', 'Fantasma');

-- Insertar datos en la tabla Descarte
INSERT INTO Descarte (id_jugador, id_carta, turno) VALUES
(1, 2, 5),
(1, 3, 10),
(2, 4, 7),
(3, 5, 12),
(4, 6, 3),
(5, 7, 8),
(6, 8, 9),
(7, 9, 4),
(8, 10, 11),
(9, 11, 2),
(10, 12, 6),
(11, 1, 1);

-- Insertar datos en la tabla Baraja
INSERT INTO Baraja (id_jugador, tipoCarta, cantidad) VALUES
(1, 'Eléctrico', 10),
(1, 'Fuego', 8),
(2, 'Agua', 12),
(2, 'Planta', 9),
(3, 'Normal', 11),
(3, 'Lucha', 10),
(4, 'Fantasma', 5),
(4, 'Eléctrico', 7),
(5, 'Fuego', 6),
(5, 'Agua', 9),
(6, 'Planta', 8),
(6, 'Normal', 10);

-- Insertar datos en la tabla Mano
INSERT INTO Mano (id_jugador, id_carta, ubicacion, estado, posicion) VALUES
(1, 1, 'Mano', 'Activo', 1),
(1, 6, 'Mano', 'Activo', 2),
(2, 3, 'Mano', 'Activo', 1),
(2, 7, 'Mano', 'Activo', 2),
(3, 4, 'Mano', 'Activo', 1),
(3, 8, 'Mano', 'Activo', 2),
(4, 5, 'Mano', 'Activo', 1),
(4, 9, 'Mano', 'Activo', 2),
(5, 10, 'Mano', 'Activo', 1),
(5, 11, 'Mano', 'Activo', 2),
(6, 12, 'Mano', 'Activo', 1),
(6, 1, 'Mano', 'Activo', 2);

-- Insertar datos en la tabla Combate
INSERT INTO Combate (id_jugador, id_carta, ubicacion, estado) VALUES
(1, 1, 'Campo', 'Activo'),
(2, 3, 'Campo', 'Activo'),
(3, 4, 'Campo', 'Activo'),
(4, 5, 'Campo', 'Activo'),
(5, 6, 'Campo', 'Activo'),
(6, 7, 'Campo', 'Activo'),
(7, 8, 'Campo', 'Activo'),
(8, 9, 'Campo', 'Activo'),
(9, 10, 'Campo', 'Activo'),
(10, 11, 'Campo', 'Activo'),
(11, 12, 'Campo', 'Activo'),
(12, 2, 'Campo', 'Activo');

-- Insertar datos en la tabla CartasPremio
INSERT INTO CartasPremio (id_jugador, id_carta, estado) VALUES
(1, 5, 'Premio'),
(2, 6, 'Premio'),
(3, 7, 'Premio'),
(4, 8, 'Premio'),
(5, 9, 'Premio'),
(6, 10, 'Premio'),
(7, 11, 'Premio'),
(8, 12, 'Premio'),
(9, 1, 'Premio'),
(10, 2, 'Premio'),
(11, 3, 'Premio'),
(12, 4, 'Premio');

-- Insertar datos en la tabla Turno
INSERT INTO Turno (id_jugador, accion, resultado) VALUES
(1, 'Inicio de Turno', 'Jugador Diego inicia su turno'),
(2, 'Inicio de Turno', 'Jugador Misty inicia su turno'),
(3, 'Inicio de Turno', 'Jugador Brock inicia su turno'),
(4, 'Inicio de Turno', 'Jugador Gary Oak inicia su turno'),
(5, 'Inicio de Turno', 'Jugador Tracey Sketchit inicia su turno'),
(6, 'Inicio de Turno', 'Jugador May inicia su turno'),
(7, 'Inicio de Turno', 'Jugador Dawn inicia su turno'),
(8, 'Inicio de Turno', 'Jugador Iris inicia su turno'),
(9, 'Inicio de Turno', 'Jugador Cilan inicia su turno'),
(10, 'Inicio de Turno', 'Jugador Clemont inicia su turno'),
(11, 'Inicio de Turno', 'Jugador Serena inicia su turno'),
(12, 'Inicio de Turno', 'Jugador Lana inicia su turno');
