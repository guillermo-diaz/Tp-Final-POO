adding
addTable 

usuario ifNotNil: [  
table := self tablaBibliotecasInteres: 550@280. 
table headerColor: self colorShapes.

table center: rectangulo  center; bottom: rectangulo bottom  - 20.

rectangulo addMorph: table . 
table setDoubleClick: [ :index | 
	
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (RealizarPrestamo sistema: sistemaGestor  user: usuario  biblioteca: (table elementAt: index)).
	 ].
]