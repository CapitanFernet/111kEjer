/* EJ3 Listar los bares que sirven cervezas que le gustan al bebedor "Ariel"
 select bar from legusta lg join sirve sir on sir.cerveza=lg.cerveza where lg.bebedor='ariel' group by lg.bebedor 
*/

/* EJ3 Listar los bebedores que frecuentan al menos uno de los bares
 que sirven alguna cerveza de las que le gustan */
 select frec.bebedor from frecuenta frec join legusta lg on frec.bebedor=lg.bebedor join sirve on lg.cerveza=sirve.cerveza
 
 -- Ariel no deberia aparecer, Juan si, Pedro si, Pepe no
 /* ariel gusta guines
	juan gusta iguana
    juan gusta quilmes
    pedro gusta brahma
    pedro gusta quilmes
    pepe gusta stella*/
    
/*  ariel frecuenta elvis
	ariel frecuenta milde
    juan frecuenta elvis
    juan frecuenta la barraca
    pedro frecuenta milde
    pepe frecuenta la barraca
  */ 
  
/* elvis sirve iguana
	elvis sirve quilmes
    elvis sirve stella
    la barraca sirve quilmes
    milde sirve guines
*/