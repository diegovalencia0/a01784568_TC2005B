# Justificación forma normal

**Primera Forma Normal**: En el esquema presentado, cada tabla (Jugador, Carta, Descarte, Baraja, Mano, Combate, CartasPremio y Turno) está organizada para que cada columna contenga un solo valor y no hay repetición de grupos de valores. Cada entidad tiene sus atributos definidos y no hay combinaciones de valores en una sola columna. 

**Segunda Forma Normal**: No hay dependencias parciales en las tablas, lo que significa que cada columna depende completamente de la clave primaria, esto evita la duplicación de información y garantiza la integridad de los datos.

**Tercera Forma Normal**: Se asegura que no haya situaciones donde un atributo no clave dependa de otro atributo no clave a través de una clave primaria, ya que cada columna en una tabla debe depender solo de la clave primaria directamente, sin depender de otras columnas que no sean claves.
