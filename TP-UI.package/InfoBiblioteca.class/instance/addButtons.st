initialization
addButtons 
|font|
font := Helper getFontWithSize: 10.
volver := self getButtonReturn.
detalleBiblioteca := Button stringMorphText: (StringMorph contents: 'Ver Detalles' font: font) color: self colorButtons extent: 105@30.
usuarios := Button stringMorphText: (StringMorph contents: 'Ver Usuarios' font: font) color: self colorButtons extent: 105@30.
detalleBiblioteca borderColor: self colorButtons; rounded .
usuarios borderColor: self colorButtons; rounded.
agregarBiblioteca := Button stringMorphText: (StringMorph contents: 'Agregar Biblioteca' font: font) color: self colorButtons extent: 120@30.
agregarBiblioteca rounded.

detalleBiblioteca left: rectangulo left + 30; bottom: rectangulo bottom - 15.
usuarios right: rectangulo right -30; bottom: rectangulo bottom -15.
agregarBiblioteca top: detalleBiblioteca top; left: detalleBiblioteca right + 20.


self addMorph: volver.
rectangulo addMorph: detalleBiblioteca; addMorph: usuarios; addMorph: agregarBiblioteca.


volver mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (Home sistema: sistemaGestor )
	 ].
usuarios mouseAction: [ 
	|ow|
	ow := self owner.
	self delete.
	ow addMorphCentered: (InfoUsuario sistema: sistemaGestor )
	 ].
detalleBiblioteca mouseAction: [ 
	biblioteca ifNotNil: [ 
		|ow|
		ow := self owner.
		self delete.
		ow addMorphCentered: (BibliotecaDetalle sistema: sistemaGestor  biblioteca: biblioteca ).
		 ]
	 ].

agregarBiblioteca mouseAction: [ 
	|ow|
		ow := self owner.
		self delete.
		ow addMorphCentered: (AgregarBiblioteca sistema: sistemaGestor).
		 ]
	




