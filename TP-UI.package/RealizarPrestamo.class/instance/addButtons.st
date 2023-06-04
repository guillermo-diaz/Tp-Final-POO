adding
addButtons 
|font| 
font := Helper getFontWithSize: 12.
volver := self getButtonReturn.
agregarLibro := Button stringMorphText: (StringMorph contents: 'Agregar Libro' font: font) color: self colorButtons extent: 130@30.
agregarLibro rounded.
realizar := Button stringMorphText: (StringMorph contents: 'Pedir Prestamo' font: font) color: self colorButtons extent: 130@30.
realizar rounded.


agregarLibro right: rectangulo right - 60; bottom: rectangulo bottom - 120.
realizar right: agregarLibro right; top: agregarLibro bottom + 30.

self addMorph: volver; addMorph: agregarLibro; addMorph: realizar .

volver mouseAction: [ 
	|ow|
	ow := self owner.
	self delete.
	ow addMorphCentered: (PedirPrestamo sistema: sistemaGestor  user: usuario).
	 ].
agregarLibro mouseAction: [ 
	selectedLibro ifNotNil: [
		(colLibros includes: selectedLibro) ifTrue: [
			(flagWarning ) ifFalse: [
				flagWarning := true.
			warning := 'El libro ya fue agregado' asMorph color: Color red.
			warning center: agregarLibro center; bottom: agregarLibro top - 5.
			self addMorph: warning.]
			] ifFalse: [ 
			|info|
			flagWarning ifTrue: [self removeMorph: warning.
				warning := nil. flagWarning := false.].
			colLibros add: (selectedLibro).
			info := 'Libros del prestamo: \' withCRs.
			colLibros do: [ :libro | info := info, '- ', libro nombre, '\'withCRs].
			panelLibros setText: info.
			 ] 
		
		
		]
].
realizar mouseAction: [ 
	(colLibros size > 0) ifTrue: [ 
		(biblioteca registrarPrestamoConUsuario: usuario libros: colLibros) ifTrue: [ 
			|ow morph ventana| 
			ow:= self owner.
			self delete.
			morph := (PedirPrestamo sistema: sistemaGestor  user: usuario).
			ventana := (self warningWindow: 'Prestamo realizado' size: 140@60).
			ventana color: (Color fromString: 'fbfbb0').
			ventana center: morph center.
			morph addMorph: ventana.
			
			ow addMorphCentered: morph .
			
		 ] ifFalse: [ 
		 	|txt|
			flagWarning ifTrue: [self removeMorph: warning.
				warning := nil. flagWarning := false.].
			warning2 ifNotNil: [self removeMorph: warning2].
			
			(biblioteca tienePrestamoActivo: usuario) ifTrue: [txt := 'Ya tiene un prestamo activo'] ifFalse: [  
			(colLibros size > 5) ifTrue: [txt := 'Máximo 5 libros'] ifFalse: [
				(usuario estaSuspendido) ifTrue: [ txt := 'Usted está suspendido' ]  ifFalse: [  
				txt := 'Debe ser plus para pedir audiolibros'.]
			]
			].
			warning2  := txt asMorph color: Color red.
			warning2 center: realizar center; bottom: realizar top - 5.
			self addMorph: warning2.
		 ]
	]
]
	