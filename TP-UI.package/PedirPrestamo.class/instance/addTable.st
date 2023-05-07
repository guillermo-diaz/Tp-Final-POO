adding
addTable 

usuario ifNotNil: [  
table := self tablaBibliotecasInteres: 550@280. 
table headerColor: self colorShapes.

table center: rectangulo  center; bottom: rectangulo bottom  - 20.

rectangulo addMorph: table . ]