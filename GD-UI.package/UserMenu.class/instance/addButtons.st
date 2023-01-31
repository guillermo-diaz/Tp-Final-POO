initialization
addButtons 

addBiblio := Button nombre: 'Agregar Bibliotecas de Interes' colour: Color gray lighter dimension: 300@30.
addBiblio borderWidth: 1; borderColor:  Color black.
addBiblio center: self center.

self addMorph: addBiblio .
