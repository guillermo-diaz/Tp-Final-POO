adding
addTable 

usuario ifNotNil: [  
table := self tablaBibliotecasInteres: 550@280. 

table center: rectangulo  center; bottom: rectangulo bottom  - 20.

rectangulo addMorph: table . ]