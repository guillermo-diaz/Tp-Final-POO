adding
addButtons 
|addBook deleteBook |
addBook := StringMorph contents: 'Agregar Libro' font: ((Helper getFontWithSize: 10) weightValue: 800). 
deleteBook := StringMorph contents: 'Dar de baja' font: ((Helper getFontWithSize: 10) weightValue: 800). 
deleteBook color: Color white.
agregarLibro := Button stringMorphText: addBook  color: self colorButtons extent: 110@30.
agregarLibro rounded.
eliminarLibro := Button stringMorphText: deleteBook  color: (Color fromString: 'E64E34') extent: 80@30.
eliminarLibro rounded.
volver := self getButtonReturn.

eliminarLibro bottom: rectangulo bottom - 15; right: rectangulo right - 20.
agregarLibro top: eliminarLibro top; left: rectangulo left + 20.



rectangulo addMorph: eliminarLibro ; addMorph: agregarLibro   .
self addMorph: volver.

volver mouseAction: [ 
	|ow|
	ow := self owner.
	self delete.
	ow addMorphCentered: (BibliotecaDetalle  sistema: sistemaGestor biblioteca: biblioteca)
	 ].

agregarLibro mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (AgregarLibro sistema: sistemaGestor  biblioteca: biblioteca)
	 ].
eliminarLibro mouseAction: [ 
	selectedLibro  ifNotNil: [ 
		
		biblioteca removeLibro: selectedLibro.
		tableLibros refresh.
		selectedLibro := nil.
	 ]]