/* EJ2 Se realizó una reforma en el cine, lo cual permitió ampliar las salas aumentando su capacidad en 50 personas, reflejar este cambio en la base de datos. */
-- select * from sala
-- update sala set capacidad=capacidad+50 where nro_sala>0

/* EJ2 En las películas almacenadas se detectó un error, hay una pelicula cargada como “EL SECRETO DE TUS OJOS", cambiarlo por el titulo correcto: "EL SECRETO DE SUS OJOS"*/
-- select * from pelicula
-- update pelicula set titulo='EL SECRETO DE SUS OJOS' where nro_pelicula=1


