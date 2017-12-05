/* EJ2 Listar las salas cuya capacidad sea menor a 200 espectadores
select * from sala where sala.capacidad<200
 */
 
/* EJ2 Listar las peliculas que se proyectaron en la sala 1, indicando titulo y estilo
 Al listado ordenarlo por estilo
select peli.titulo, peli.estilo from pelicula peli join proyeccion proye on proye.nro_pelicula=peli.nro_pelicula where proye.nro_sala=1 order by peli.estilo
*/

 /* EJ2 Listar las peliculas que se proyectaron la primera quincena de diciembre de 2008
en las salas cuya capacidad es mayor a 15 personas 
select peli.*, proye.fecha_proyeccion from pelicula peli join proyeccion proye on proye.nro_pelicula=peli.nro_pelicula where (proye.fecha_proyeccion>='2008-12-1') and (proye.fecha_proyeccion<='2008-12-15') group by proye.nro_pelicula 
*/