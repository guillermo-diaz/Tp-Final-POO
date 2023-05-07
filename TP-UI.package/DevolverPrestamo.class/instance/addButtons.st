adding
addButtons 
	|font|
	font := Helper getFontWithSize: 10.
volver := self getButtonReturn.
devolverLibros := Button stringMorphText: (StringMorph contents: 'Devolver Libros' font: font) color: self colorButtons extent: 105@30.
devolverAudiolibros := Button stringMorphText: (StringMorph contents: 'Devolver Audiolibros' font: font) color: self colorButtons extent: 130@30.
devolverLibros rounded.
devolverAudiolibros rounded.

devolverLibros top: panelInfo bottom + 15; left: panelInfo left.
devolverAudiolibros top: devolverLibros top; right: panelInfo right.

self addMorph: volver; addMorph: devolverLibros; addMorph: devolverAudiolibros. 

volver mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (UserMenu sistema: sistemaGestor user: usuario)
	 ]
