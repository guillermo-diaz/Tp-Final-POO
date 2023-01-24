initialization
initialize  
|fondo imagen canvas rectangulo| 
super initialize. 


self addBackground .
self addButtons.
botonCerrar mouseAction: [ self cerrar.].
