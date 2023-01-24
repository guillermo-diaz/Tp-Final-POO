initialization
addButtons  
botonCerrar := Button nombre: '×' colour: Color transparent  dimension: 24@24.

botonCerrar position: (self right - botonCerrar width)-1@1; borderWidth: 1; borderWidth: 0.

self addMorph: botonCerrar.
 