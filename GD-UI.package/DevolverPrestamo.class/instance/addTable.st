adding
addTable 

usuario ifNotNil: [  
table := Table aModel: (ModelBiblioteca aCollection: usuario bibliotecasInteres) aColumns: #('Nombre'  'Dirección') asOrderedCollection  extent: 300@280. 
table headerColor: theme shape.
" 'Fecha inicio' 'Fecha Limite' 'Atrasado'"

table center: rectangulo center; bottom: rectangulo bottom  - 20.

rectangulo addMorph: table . ]