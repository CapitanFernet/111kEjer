/* EJ4 Listar los competidores del deporte Hockey
select competidor.*, dep.denominacion from competidor join deporte dep on competidor.cod_deporte=dep.cod_deporte where med.denominacion="HOCKEY"
*/
-- No esta el deporte hockey, ergo la lista es vacia

/* EJ4 Listar los paises que han competido y no ganaron medalla
select competidor.* from competidor where competidor.pais not in (select medalla.pais from medalla where medalla.pais is not null)
*/
-- Participan Argentina, Brasil, Uruguay, los tres ganaron medallas, la lista es vacia
