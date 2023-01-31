initialization
addButtons 

addBiblio := Button nombre: 'Agregar Bibliotecas de Interes' colour: (Color r: 193 g: 193 b: 193)  dimension: 300@30.
addBiblio borderWidth: 1; borderColor:  Color black.
addBiblio center: self center.
addBiblio position: addBiblio position + (0@100).
self addMorph: addBiblio .
