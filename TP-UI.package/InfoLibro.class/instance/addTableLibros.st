adding
addTableLibros 
biblioteca ifNotNil: [  
tableLibros := Table aModel: (ModelLibro aCollection: biblioteca colLibros) aColumns: #(D Nombre Editorial Año Autores) asOrderedCollection extent: 710@260.
tableLibros headerColor: self colorShapes.

tableLibros left: rectangulo left + 20; top: rectangulo top + 20.

rectangulo addMorph: tableLibros.

]