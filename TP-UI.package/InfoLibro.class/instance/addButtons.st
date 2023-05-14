adding
addButtons 
|addBook deleteBook font|
inputNombre := TextField transparentExtent: 230@100 ghostText: 'Nombre del Libro'. 
inputEditorial := TextField transparentExtent: 120@100 ghostText: 'Editorial'. 
inputAño  := TextField transparentExtent: 50@100 ghostText: 'Año'. 
inputAutores := TextField transparentExtent: 230@100 ghostText: 'Autores (separar c/autor con "|")'.
addBook := StringMorph contents: 'Agregar Libro' font: ((Helper getFontWithSize: 10) weightValue: 800). 
deleteBook := StringMorph contents: 'Dar de baja' font: ((Helper getFontWithSize: 10) weightValue: 800). 
deleteBook color: Color white.
agregarLibro := Button stringMorphText: addBook  color: self colorButtons extent: 110@30.
agregarLibro rounded.
eliminarLibro := Button stringMorphText: deleteBook  color: (Color fromString: 'E64E34') extent: 80@30.
eliminarLibro rounded.

inputNombre  borderColor: Color gray.
inputEditorial  borderColor: Color gray.
inputAño borderColor: Color gray.
inputAutores borderColor: Color gray.
volver := self getButtonReturn.

inputNombre bottom: rectangulo bottom - 60; left: rectangulo left + 20.
inputEditorial bottom: inputNombre bottom; left: inputNombre right + 20.
inputAño bottom: inputNombre bottom; left: inputEditorial right + 20.
inputAutores top: inputNombre bottom + 20; left: rectangulo left + 20.
eliminarLibro top: inputNombre top - 5; right: rectangulo right - 20.
agregarLibro top: eliminarLibro top; right: eliminarLibro left - 20.



rectangulo addMorph: inputNombre; addMorph: inputEditorial ; addMorph: inputAño ; addMorph: inputAutores; addMorph: eliminarLibro ; addMorph: agregarLibro   .
self addMorph: volver.

volver mouseAction: [ 
	|ow|
	ow := self owner.
	self delete.
	ow addMorphCentered: (BibliotecaDetalle  sistema: sistemaGestor biblioteca: biblioteca)
	 ].