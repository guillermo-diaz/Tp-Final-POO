adding
addTable 

usuario ifNotNil: [   
table := self tablaBibliotecasInteres: 200@290 columns: #(Nombre). 
table headerColor: self colorShapes.

table left: rectangulo left + 30 ; top: rectangulo top  + 30.

rectangulo addMorph: table . 
table setClick: [:index | 
	aviso ifNotNil: [ self removeMorph: aviso ].
	selectedBiblio := table elementAt: index.
	self actualizarPanel.
	self actualizarColorBoton.
	]
].