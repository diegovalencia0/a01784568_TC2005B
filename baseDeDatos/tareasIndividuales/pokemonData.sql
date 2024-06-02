
INSERT INTO Jugador (nombre) VALUES
('Diego'),
('Misty'),
('Brock');

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
('Gastly', 'Fantasma', 40, 'Lengüetazo', 20, 'Fantasma', 0, 'Activo', 'Psíquico', 'Normal', 'Fantasma');

INSERT INTO Descarte (id_jugador, id_carta, turno) VALUES
(1, 2, 5),
(1, 3, 10),
(2, 4, 7),
(3, 5, 12);

INSERT INTO Baraja (id_jugador, tipoCarta, cantidad) VALUES
(1, 'Eléctrico', 10),
(1, 'Fuego', 8),
(2, 'Agua', 12),
(2, 'Planta', 9),
(3, 'Normal', 11),
(3, 'Lucha', 10);

INSERT INTO Mano (id_jugador, id_carta, ubicacion, estado, posicion) VALUES
(1, 1, 'Mano', 'Activo', 1),
(1, 6, 'Mano', 'Activo', 2),
(2, 3, 'Mano', 'Activo', 1),
(2, 7, 'Mano', 'Activo', 2),
(3, 4, 'Mano', 'Activo', 1),
(3, 8, 'Mano', 'Activo', 2);

INSERT INTO Combate (id_jugador, id_carta, ubicacion, estado) VALUES
(1, 1, 'Campo', 'Activo'),
(2, 3, 'Campo', 'Activo'),
(3, 4, 'Campo', 'Activo');

INSERT INTO CartasPremio (id_jugador, id_carta, estado) VALUES
(1, 5, 'Premio'),
(2, 6, 'Premio'),
(3, 7, 'Premio');

INSERT INTO Turno (id_jugador, accion, resultado) VALUES
(1, 'Inicio de Turno', 'Jugador Diego inicia su turno'),
(2, 'Inicio de Turno', 'Jugador Misty inicia su turno'),
(3, 'Inicio de Turno', 'Jugador Brock inicia su turno');
