initialization
addButtons 
|font|
font := Helper getFontWithSize: 10.
volver := self getButtonReturn.
detalleBiblioteca := Button stringMorphText: (StringMorph contents: 'Ver Detalles' font: font) color: self colorButtons extent: 105@30.
usuarios := Button stringMorphText: (StringMorph contents: 'Ver Usuarios' font: font) color: self colorButtons extent: 105@30.
detalleBiblioteca borderColor: self colorButtons; rounded .
usuarios borderColor: self colorButtons; rounded.

detalleBiblioteca left: rectangulo left + 30; bottom: rectangulo bottom - 15.
usuarios right: rectangulo right -30; bottom: rectangulo bottom -15.


self addMorph: volver.
rectangulo addMorph: detalleBiblioteca; addMorph: usuarios.


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
	 ]




