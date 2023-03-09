adding
addTable 

usuario ifNotNil: [  
table := Table aModel: (ModelBiblioteca aCollection: usuario bibliotecasInteres ) aColumns: #('Nombre' 'Dirección' 'Teléfono' 'Representante') asOrderedCollection  extent: 550@280. 
table headerColor: theme shape. 

table center: rectangulo  center; bottom: rectangulo bottom  - 20.

"rectangleContainer addMorph: m."
rectangulo addMorph: table . ]