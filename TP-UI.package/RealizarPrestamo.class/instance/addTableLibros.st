adding
addTableLibros  
biblioteca ifNotNil: [  
tableLibros := Table aModel: (ModelLibro aCollection: biblioteca librosDisponibles) aColumns: #('Tipo y Estado' Nombre Editorial Año Autores) asOrderedCollection extent: 630@180.
tableLibros headerColor: self colorShapes.

tableLibros left: rectangulo left + 15; top: rectangulo top + 15.

rectangulo addMorph: tableLibros.

tableLibros setClick: [ :index|
	selectedLibro := tableLibros elementAt: index.
	 ]
]