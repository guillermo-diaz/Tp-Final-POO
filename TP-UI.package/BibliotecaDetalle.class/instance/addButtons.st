initialization
addButtons 
|libro|
volver := self getButtonReturn.
libro := StringMorph contents: 'Ver Libros' font: (Helper getFontWithSize: 11).
verLibros := Button stringMorphText: libro color: (theme button2) extent: 130@30.
verLibros rounded.

verLibros center: containerInfo center; bottom: containerInfo bottom - 20.

self addMorph: volver.
containerInfo addMorph: verLibros.

volver mouseAction: [ 
	|ow|
	ow := self owner.
	self delete.
	ow addMorphCentered: (InfoBiblioteca sistema: sistemaGestor)
	 ].
verLibros mouseAction: [ 
	|ow|
	ow := self owner.
	self delete.
	ow addMorphCentered: (InfoLibro sistema: sistemaGestor biblioteca: biblioteca)
	 ].