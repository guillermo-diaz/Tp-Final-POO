adding
addButtons 
|addBook|
inputNombre := TextField transparentExtent: 230@100. 
inputEditorial := TextField transparentExtent: 150@100. 
inputAño  := TextField transparentExtent: 60@100. 
inputAutores := TextField transparentExtent: 140@100.
addBook := StringMorph contents: 'Confirmar' font: ((Helper getFontWithSize: 10) weightValue: 800). 
agregarAutor := Button nombre: 'Agregar' colour: theme button2 dimension: 80@25. 
agregarAutor rounded.
agregarLibro := Button stringMorphText: addBook  color: self colorButtons extent: 80@30.
agregarLibro rounded.
audiolibro := Checkbox nombre: 'Audiolibro' tamaño: 100@30.

inputNombre  borderColor: Color gray. 
inputEditorial  borderColor: Color gray.
inputAño borderColor: Color gray.
inputAutores borderColor: Color gray.
volver := self getButtonReturn.

inputNombre top: rectangulo top + 40; left: rectangulo left + 20.
inputEditorial top: inputNombre bottom + 40; left: inputNombre left.
inputAño top: inputEditorial top; left: inputEditorial right + 20.
inputAutores top: inputEditorial bottom + 40; left: inputEditorial left.
agregarLibro center: rectangulo center; bottom: rectangulo bottom - 15.
agregarAutor left: inputAutores right + 10; top: inputAutores top.
audiolibro top: inputAutores bottom + 15; left: inputAutores left.


rectangulo addMorph: volver; addMorph: inputNombre; addMorph: inputEditorial ; addMorph: inputAño ; addMorph: inputAutores; addMorph: agregarLibro; addMorph: agregarAutor ; addMorph: audiolibro   .

volver mouseAction: [ 
	|ow|
	ow := self owner.
	self delete.
	ow addMorphCentered: (InfoLibro sistema: sistemaGestor biblioteca: biblioteca ).
	 ].
agregarAutor mouseAction: [ 
	|info autor input|
	info := 'Autores: \' withCRs.
	input := inputAutores input.
	(Helper stringIsEmpty: input) ifFalse: [  
	autor := Autor crearAutorNombre: (inputAutores input).
	colAutores add: autor.
	colAutores do: [ :elem|  info := info, '- ', elem nombre, '\' withCRs].
	panelAutores setText: info.
	inputAutores clear.
	]
].
agregarLibro mouseAction: [ 
	|nombre editorial año |
	nombre := inputNombre input.
	editorial := inputEditorial input.
	año := inputAño input.
	
	( (Helper stringIsEmpty: nombre) or:((Helper stringIsEmpty: editorial) or: (Helper stringIsEmpty: año)) ) ifFalse: [ 
		|libro ow| 
		
		(audiolibro isSelected) ifTrue:[
			libro := Audiolibro crearLibroNombre: nombre editorial: editorial  añoEdicion: año autores: colAutores.
		] ifFalse: [  
		libro := Libro crearLibroNombre: nombre editorial: editorial  añoEdicion: año autores: colAutores.
		 ].
		biblioteca addLibro: libro.
	
		ow := self owner.
		self delete.
		ow addMorphCentered: (InfoLibro sistema: sistemaGestor biblioteca: biblioteca ).
		 ]
	
	 ].
	 