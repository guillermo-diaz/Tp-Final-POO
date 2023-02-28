adding
addBar 
barra := SearchMorph new. 
barra extent: 430@29; borderWidth: 0.
barra ghostText: 'SELECCIONE UNA BIBLIOTECA'.



barra left: rectangleContainer left + 25 ; top: rectangleContainer top + 15.


rectangleContainer addMorph: barra.
