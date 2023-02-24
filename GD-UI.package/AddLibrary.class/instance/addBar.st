adding
addBar 
barra := SearchMorph new. 
barra extent: 450@30; borderWidth: 3.



barra left: rectangleContainer left + 10; top: rectangleContainer top + 15.


rectangleContainer addMorph: barra.
