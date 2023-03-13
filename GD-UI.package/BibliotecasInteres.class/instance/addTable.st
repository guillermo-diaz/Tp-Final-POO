adding
addTable  
usuario ifNotNil: [  
table := self tablaBibliotecasInteres: 550@250.  

table center: rectangleContainer center; bottom: rectangleContainer bottom - 20.

rectangleContainer addMorph: table . ]