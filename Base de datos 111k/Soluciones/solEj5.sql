/* EJ5 Proponer consultas utilizando select, union, resta (not in), natural join */
select * from alumno natural join realiza;
select alumno.dni, nombre_y_apellido from alumno union select realiza.dni, realiza.nombre_curso from realiza;
select * from alumno where alumno.dni not in (select realiza.dni from realiza)