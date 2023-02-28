adding
addButtons 
|text col| 
text := StringMorph contents: 'Agregar' font: ((Helper getFontWithSize: 10) forceBold).
text color: (Color fromString: '5d4129').
col := Color fromString: 'f0a422'.
agregar := Button stringMorphText: text colour: (col) dimension: 100@30.
agregar borderStyle: (Helper getBorderStyle: col width: 2 radius: 6).

volver := self getButtonReturn.


volver bottom: self bottom -15 ; left: self left +30.
agregar top: barra top; right: rectangleContainer right - 25.

self addMorph: volver; addMorph: agregar. 

volver mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (UserMenu sistema: sistemaGestor )
	 ]